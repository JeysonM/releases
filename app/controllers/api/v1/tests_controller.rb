module Api
    module V1
        class TestsController < ApplicationController
            def index
                @apiRelease = 'https://api.github.com/repos/rails/rails/releases'
                resp = HTTP.get(@apiRelease).body
                releases = []
                json_data = JSON.parse(resp)
                json_data.each do |release|
                    value = { release:  release['name']}
                    releases << value
                end
                render json: releases
            end
        end
    end
end