class Api::CruiselinesController < ApplicationController
  respond_to :json

  def index
    serialized_cruiselines =
      ActiveModel::ArraySerializer
               .new(Cruiseline.all, each_serializer: CruiselineSerializer)

    render json: serialized_cruiselines
  end
end