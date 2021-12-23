module Api
    module V1
        class TestsController < ApplicationController
            def index
                render json: {name: "hola"}
            end
        end
    end
end