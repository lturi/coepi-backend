class Api::V1::ClientController < ActionController::API

def index
	clients = Client.all
	clients = clients.map do |client|
		{ id: client.id, begin_dt: client.begin_dt, last_update_dt: client.last_update_dt, created_at: client.created_at, updated_at: client.updated_at }
	end

	render json: { results: clients }.to_json, status: :ok
end

end
