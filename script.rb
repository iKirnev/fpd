[
	[2,11],[2,11],[2,2],[2,2],[2,4],[2,4],[2,4],[2,4],[2,4],[2,4,6],[2,4],[2,4,6],[2,4],[2,5],[2,5,6],[4,11],[4,11],[4,11],[4,11],[4,2],[4,2],[4,2],[4,2],[4,4],[4,4],[4,4,6],[4,4],[4,4],[4,4,6],[4,4],[4,4],[4,4],[4,4],[4,4,6],[4,4,6],[4,5],[4,5],[4,5],[4,5],[4,5,6],[4,5,6],[4,10,4],[4,10,4],[4,10,4],[4,10,4],[4,10,4],[4,10,5],[3,11],[3,11],[3,3],[3,2],[3,2],[3,4],[3,4],[3,4],[3,4],[3,4,6],[3,4],[3,4,6],[3,5],[3,5,6],[3,10,11],[3,10,11],[3,10,2],[3,10,4],[3,10,4],[3,10,4],[3,10,4],[3,10,4],[3,10,5],[11,11],[11,11],[11,2],[11,2],[11,2],[11,2],[11,4],[11,4],[11,4],[11,4],[11,4],[11,4],[11,4],[11,4],[3,3],[3,3],[3,3],[3,3,7],[3,3],[3,3],[3],[3,7],[3,3],[3,3],[3,11],[11,11],[11,11],[3,3],[2,2],[3,4],[3,4],[3,4],[3,3],[3,3,7],[3,3],[3,3],[3,7],[3,3],[3,3],[3,3],[3,3],[3,3],[3,3 ],[3,3],[3,13,3],[3,13,11],[3,13,2],[3,13,2],[3,13,4],[3,13,4],[3,13,4],[3,13,4],[3,13,4],[3,13,5],[3,13,4,7,8,13],[3,13,5,6],[3,13,4,6],[3,13,4,6],[5,13,4],[4,11],[4,11],[4,2],[4,2],[4,4],[4,4],[4,4],[4,4],[4,4],[4,4,6],[4,5],[4,5,7,8,13],[4,4,13],[3,12,11],[3,12,3],[3,12,2],[3,12,4],[3,12,4],[3,12,4,6],[3,12,4],[3,12,4],[3,12,4],[3,12,4,6],[3,12,5]
	].each_with_index{|el, i|
		p = Product.find(1+i)

		el.uniq.each {|st| ProductsStuff.create(product_id: p.id, stuff_id:  st)}
	}