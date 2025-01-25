#!/bin/bash

generate_delete_statements() {
    local tables=("$@")
    local delete_statements=""
    for table in "${tables[@]}"; do
        delete_statements+="DELETE FROM public.$table;\n"
    done
    echo -e "$delete_statements"
}

dump_database_from_docker() {
    local container_name=$1
    local db_user=$2
    local dump_file=$3
    local db_name=$4
    local tmp_dir=$5
    shift 5
    local data_tables=("$@")

    local dump_path="${tmp_dir}${dump_file}"
    local delete_statements=$(generate_delete_statements "${data_tables[@]}")
    local table_params=$(generate_table_params "${data_tables[@]}")

    docker exec my-container rm /tmp/$dump_file
    docker exec "$container_name" pg_dump --data-only --disable-triggers --column-inserts --no-comments --username "$db_user" --file "/tmp/$dump_file" $table_params $db_name
    docker cp "$container_name:/tmp/$dump_file" "$dump_path"
    if [ -f $dump_path ]; then
      echo -e "${delete_statements}\n$(cat $dump_path)" > $dump_path
    fi
}

generate_table_params() {
    local data_tables=("$@")
    local table_params=""
    for table in "${data_tables[@]}"; do
        table_params+=" -t ${table}"
    done
    echo "$table_params"
}