class CreateYoubikes < ActiveRecord::Migration[6.1]
  def change
    #sno(站點代號)、sna(場站中文名稱)、tot(場站總停車格)、sbi(場站目前車輛數量)、sarea(場站區域)
    create_table :youbikes do |t|
      t.string :sno_id
      t.string :sna
      t.string :tot
      t.string :sbi
      t.string :sarea
      t.timestamps
    end
  end
end
