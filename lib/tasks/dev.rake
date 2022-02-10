namespace :dev do
  task :fetch_bike => :environment do
    puts "Fetch bike data..."
    response = RestClient.get "https://tcgbusfs.blob.core.windows.net/blobyoubike/YouBikeTP.json"
    data = JSON.parse(response.body)

    data["retVal"].each do |k, v|
      Youbike.create!( :sno_id => v["sno"], :sna => v["sna"],
                      :tot => v["tot"], :sbi => v["sbi"], :sarea => v["sarea"])
    end

    puts "Total: #{Youbike.count} bikes"
  end
end