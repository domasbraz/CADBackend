class HistoryController < ApplicationController
    # GET /history
    def index
        @audits = Audited::Audit.all
    
        render json: @audits
    end
end