export const syncDirectusCollections = {
	directus_roles: {
		watch: ['roles'],
		filter: {
			name: {
				_neq: "Administrator"
			}
		},
	},
	directus_folders: {
		watch: ['folders'],
		excludeFields: [],
		linkedFields: ['parent'],
		query: {
			sort: ['parent', 'id'],
		},
	},
	directus_permissions: {
		watch: ['permissions', 'collections', 'fields'],
		excludeFields: ['id'],
		getKey: (o) => `${o.role ?? 'public'}-${o.collection}--${o.action}`,
		query: {
			sort: ['role', 'collection', 'action'],
		},
	},
	directus_settings: {
		watch: ['settings'],
		excludeFields: [
			'project_url',
			// always keep these 3 excluded
			'mv_hash', 'mv_ts', 'mv_locked',
		],
	},
	directus_dashboards: {
		watch: ['dashboards'],
		excludeFields: ['user_created', 'panels'],
	},
	directus_presets: {
		watch: ['presets'],
		excludeFields: ['id'],
		getKey: (o) => `${o.role ?? 'all'}-${o.collection}-${o.bookmark || 'default'}`,
		query: {
			filter: {
				user: { _null: true }
			}
		}
	},
	directus_translations: {
		watch: ['translations'],
		excludeFields: ['id'],
		getKey: (o) => `${o.key}-${o.language}`,
		query: {
			sort: ['key', 'language'],
		},
	},
	/*directus_flows: {
		watch: ['flows'],
		excludeFields: ['operations', 'user_created'],
		query: {
			filter: {
				trigger: { _neq: 'webhook' },
			},
		},
	},
	directus_panels: {
		watch: ['panels'],
		excludeFields: ['user_created'],
	},
	directus_operations: {
		watch: ['operations'],
		excludeFields: ['user_created'],
		linkedFields: ['resolve', 'reject'],
		query: {
			filter: {
				flow: { trigger: { _neq: 'webhook' } },
			},
		},
	},*/
};