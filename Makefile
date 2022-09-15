publish:
	APOLLO_KEY=service:nest-uo2dp:50Bh-dMft-P6pcUpkDnzyQ \
  		rover subgraph publish nest-uo2dp@current \
  		--name users --schema ./users.graphql \
  		--routing-url https://users-waaq4qt37q-uc.a.run.app/graphql