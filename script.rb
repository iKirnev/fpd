[
	7,7,7,1,1,1,1,1,1,1,1,1,4,4,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,9,9,9,9,9,9,9,9,3,3,3,3,3,3,3,4,4,4,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,1,1,1,1,4,4,4,4,4,4,1,1,1,1,4,4,4,4,4,4,4,4,4,1,1,1,1,1,1,1,1,1,1,1
	].each_with_index{|el, i|
		p = Product.find(1+i)
		ProductsUse.create(product_id: p.id, use_id:  el)
	}