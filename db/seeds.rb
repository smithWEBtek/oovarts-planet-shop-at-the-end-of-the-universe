# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# users

User.create([
	{ name: 'Miotmilt', email: 'miotmilt@gmail.com', password: 'rainbows' },
	{ name: 'Tylsag', email: 'tylsag@gmail.com', password: 'momomomo'},
	{ name: 'Elsyon', email: 'elsyon@gmail.com', password: 'houseisonfire'},
	{ name: 'Ying', email: 'ying@gmail.com', password: 'meowmeow'},
	{ name: 'Ivehie', email: 'ivehie@gmail.com', password: 'funfunfun'}
])

# planets

counter = 0

	planet_names = ['Shyweed', 'Ucrari', 'Enzel', 'Chonjer', 'Darr', 'Oodrore', 'Lari', 'Wykits', 'Tynthari', 'Eriodra', 'Thoffini', 'Kofula', 'Tinimimi', 'Inke', 'Erphaymmarl', 'Vrisox', 'Loolsula', 'Laputa', 'Zula', 'Krertfox', 'Shiorgrer', 'Groophap', 'Umunt', 'Sife', 'Queelfrid', 'Ivag', 'Alophus', 'Shaske', 'Oonkaiteet', 'Lyxore', 'Bolsar', 'Chucti', 'Clymby', 'Uvie', 'Zeectyon']

	35.times do
		Planet.create(name: planet_names[counter], price: rand(1000000..8000000), population: rand(5000..8000000), moons: rand(8), user_id: rand(1..5))
		counter += 1
	end

# features

Feature.create([
	{name: 'beach', description: 'A beach is a landform along a body of water. It usually consists of loose particles, which are often composed of rock, such as sand, gravel, shingle, pebbles, or cobblestones. The particles comprising a beach are occasionally biological in origin, such as mollusc shells or coralline algae.'},
	{name: 'cave', description: 'A cave is a hollow place in the ground, specifically a natural underground space large enough for a human to enter. Caves form naturally by the weathering of rock and often extend deep underground. The word cave can also refer to much smaller openings such as sea caves, rock shelters, and grottos. A cavern is a specific type of cave, naturally formed in soluble rock with the ability to grow speleothems.'},
	{name: 'clouds', description: 'In meteorology, a cloud is an aerosol comprising a visible mass of minute liquid droplets or frozen crystals, both of which are made of water or various chemicals. The droplets or particles are suspended in the atmosphere above the surface of a planetary body. On Earth, clouds are formed by the saturation of air in the homosphere (which includes the troposphere, stratosphere, and mesosphere). The air may be cooled to its dew point by a variety of atmospheric processes or it may gain moisture (usually in the form of water vapor) from an adjacent source. Nephology is the science of clouds which is undertaken in the cloud physics branch of meteorology.'},
	{name: 'Desert', description: 'A desert is a barren area of land where little precipitation occurs and consequently living conditions are hostile for plant and animal life. The lack of vegetation exposes the unprotected surface of the ground to the processes of denudation. Deserts can be classified by the amount of precipitation that falls, by the temperature that prevails, by the causes of desertification or by their geographical location.'},
	{name: 'fjord', description: 'Geologically, a fjord or fiord is a long, narrow inlet with steep sides or cliffs, created by glacial erosion.'},
	{name: 'forest', description: 'A forest is a large area dominated by trees. Hundreds of more precise definitions of forest are used throughout the world, incorporating factors such as tree density, tree height, land use, legal standing and ecological function.'},
	{name: 'glacier', description: 'A glacier is a persistent body of dense ice that is constantly moving under its own weight; it forms where the accumulation of snow exceeds its ablation (melting and sublimation) over many years, often centuries. Glaciers slowly deform and flow due to stresses induced by their weight, creating crevasses, seracs, and other distinguishing features. They also abrade rock and debris from their substrate to create landforms such as cirques and moraines. Glaciers form only on land and are distinct from the much thinner sea ice and lake ice that form on the surface of bodies of water.'},
	{name: 'lake', description: 'A lake is an area of variable size filled with water, localized in a basin, that is surrounded by land, apart from any river or other outlet that serves to feed or drain the lake. Lakes lie on land and are not part of the ocean, and therefore are distinct from lagoons, and are also larger and deeper than ponds, though there are no official or scientific definitions. Lakes can be contrasted with rivers or streams, which are usually flowing. Most lakes are fed and drained by rivers and streams.'},
	{name: 'mountain', description: 'A mountain is a large landform that stretches above the surrounding land in a limited area, usually in the form of a peak. A mountain is generally steeper than a hill. Mountains are formed through tectonic forces or volcanism. These forces can locally raise the surface of the planet. Mountains erode slowly through the action of rivers, weather conditions, and glaciers.'},
	{name: 'ocean', description: 'An ocean is a body of saline water. On Earth, an ocean is one of the major conventional divisions of the World Ocean, which covers almost 71% of its surface. The word sea is often used interchangeably with "ocean" in American English but, strictly speaking, a sea is a body of saline water (generally a division of the world ocean) partly or fully enclosed by land.'},
	{name: 'river', description: 'A river is a natural flowing watercourse, usually freshwater, flowing towards an ocean, sea, lake or another river. In some cases a river flows into the ground and becomes dry at the end of its course without reaching another body of water. Small rivers can be referred to using names such as stream, creek, brook, rivulet, and rill. There are no official definitions for the generic term river as applied to geographic features.'},
	{name: 'swamp', description: 'A swamp is a wetland that is forested. Many swamps occur along large rivers where they are critically dependent upon natural water level fluctuations. Other swamps occur on the shores of large lakes. Some swamps have hammocks, or dry-land protrusions, covered by aquatic vegetation, or vegetation that tolerates periodic inundation. The two main types of swamp are "true" or swamp forests and "transitional" or shrub swamps.'},
	{name: 'volcano', description: 'A volcano is a rupture in the crust of a planetary-mass object, such as Earth, that allows hot lava, volcanic ash, and gases to escape from a magma chamber below the surface.'},
	{name: 'waterfall', description: 'A waterfall is a place where water flows over a vertical drop or a series of drops in the course of a stream or river. Waterfalls also occur where meltwater drops over the edge of a tabular iceberg or ice shelf.'},
])

# orders

450.times do
	Order.create(price: rand(1000..8000), size: rand(50..8000000), feature_id: rand(1..13), planet_id: rand(1..35))
end




