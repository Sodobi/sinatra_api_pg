# require 'sinatra/namespace'
# require 'sinatra'

# namespace '/api/v1' do
#   # All companies, filtered
#   # get 'http://localhost:4567/companies?name=Mo
#   get '/companies' do
#     companies = Company.all
#     return collection_to_api(companies) if params.empty?
#     if params['name']
#       puts 'name'
#       companies_all = Company.by_name(params['name'])
#       if params['location']
#         puts 'name + location'
#         companies = companies_all.by_location(params['location'])
#       else
#         puts 'name NO location'
#         companies = companies_all
#       end
#     else
#       if params['location']
#         puts 'location'
#         companies = Company.by_location(params['location'])
#       end
#     end
#     collection_to_api(companies)
#   end

#   # All jobs of the company
#   # get http://localhost:4567/api/v1/company_jobs?name=Mo
#   get '/company_jobs' do
#     Company.company_jobs(params[:name])
#     # call_one_method(Company, 'company_jobs', params[:name])
#   end

#   post '/companies' do
#     company = Company.create(params)
#     company.nil? ? [].to_json : company.values.to_json
#   end

#   get '/company/:id' do
#     company = Company.where(id: params[:id]).first
#     halt(404, { message:'Document Not Found', status: 404, params_id: params[:id]}.to_json) unless company
#     puts "company id = #{company.id.inspect} "
#     puts "company = #{company.values.inspect} "
#     company.values.to_json	# serialization
#   end

# end