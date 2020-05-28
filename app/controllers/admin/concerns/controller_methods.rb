module Admin
  module ControllerMethods
    extend ActiveSupport::Concern

    included do
      before_action :load_record, only: [:show, :edit, :update, :destroy]
    end

    def index
      @records = model_class.all.order(created_at: :desc)
    end

    def show

    end

    def new
      @record = model_class.new
    end

    def create
      @record = model_class.new(whitelisted_params)

      if @record.save
        redirect_to records_path
      else
        render :new
      end
    end

    def edit

    end

    def update
      if @record.update(whitelisted_params)
        redirect_to records_path
      else
        render :edit
      end
    end

    def destroy
      @record.destroy
      redirect_to records_path
    end


    private

    def whitelisted_params
      params.require(model_class.name.underscore.to_sym)
          .permit(
              model_class.column_names
                  .map { |cn| cn.to_sym }
                  .reject { |cn| [:id, :created_at, :updated_at].include?(cn) }
          )
    end

    def load_record
      @record = model_class.find(params[:id])
    end
  end
end
