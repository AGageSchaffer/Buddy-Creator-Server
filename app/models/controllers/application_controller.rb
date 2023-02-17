class ApplicationController < Sinatra::Base

    get '/characters' do
      Character.all.to_json
    end

    get '/characters/:id' do
        Character.find(params[:id]).to_json
      end
  
    get '/stats' do
        Stat.all.to_json
    end

    get '/char_with_stats' do
        Character.show_all_stats.to_json
    end 

    get '/parties' do
        Party.all.to_json
    end

    post '/characters' do
        newstat = Stat.create(vigor: params[:vigor], attack: params[:attack], mana: params[:mana], faith: params[:faith])
        charcreate = Character.create(name: params[:name], role: "na", stat_id: newstat.id, party_id: params[:party_id])
        charcreate.show_stat.to_json
    end

    patch '/characters/:id' do
        char = Character.find(params[:id])
        char_stat = char.stat
        new_params = params.delete(:id)
        update_stat = char_stat.update(params)
        char.show_stat.to_json
    end

    delete '/characters/:id' do
        char = Character.find(params[:id])
        char.destroy
    end

  end