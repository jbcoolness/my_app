class ChangeStringForTitle < ActiveRecord::Migration[5.2]
  def self.down
    change_table :posts do |t|
      t.change :title, :string
    end
  end
    
  def self.up
    change_table :posts do |t|
      t.change :title, :text
    end
  end

end


#### 
# 1. Cambiar el tipo de dato de una Columna, ejem: text -> string
# 2. Cambiar el nombre de una columna, ejem: name -> nombre
# 3. Añadir nuema columna a la tabla, ejem: rail g migration AddXxxxToXxxxs column_name:data_type
# 4. Eliminar una columna de la tabla ejem: rail g migration RemoveXxxxFromXxxxs column_name:data_type
# 5. Crear un nuevo modelo/tabla ejem: rails g model ModelName column_name:data_type
# 6. rails db:migrate - rails db:migrate:status - rails db:rollback
####
