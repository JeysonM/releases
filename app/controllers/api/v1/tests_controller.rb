module Api
    module V1
        class TestsController < ApplicationController
            def index
                resp = HTTP.get('https://api.github.com/repos/rails/rails/releases').body
                releases = []
                json_data = JSON.parse(resp)
                json_data.each do |release|
                    name = release['name']
                    releases << name
                end
                render json: releases
            end
        end
    end
end