class ProductsController < ApplicationController
def index
  @products = Product.order(:name)

 
respond_to do |format|
  format.html
  format.csv {
  	send_data @products.to_csv
}

csv_data = @products.to_csv
MymailerMailer.send_csv(csv_data).deliver


end

end


end
