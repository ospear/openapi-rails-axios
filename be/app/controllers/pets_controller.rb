=begin
Swagger Petstore

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0
Generated by: https://github.com/openapitools/openapi-generator.git

=end
class PetsController < ApplicationController

  def create
    # Your code here

    render json: {"message" => "yes, it worked"}
  end

  def index
    # Your code here

    render json: {"message" => "yes, it worked"}
  end

  def show
    # Your code here

    render json: {"message" => "yes, it worked"}
  end
end