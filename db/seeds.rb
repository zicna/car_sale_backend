# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


vehicles = [
    {
        make:"Honda",
        model:"Accord",
        segment:"mid-size sedan",
        is_new: false,
        mileage: 40000,
        image: "https://cars.usnews.com/static/images/Auto/izmo/i4988/2015_honda_accord_sedan_angularfront.jpg",
        price: 14000,
        year: 2015,
        vin: "ha201512345"

    },
    {
        make: "Honda",
        model: "Civic",
        segment: "Compact",
        is_new: false,
        mileage: 70000,
        image: "https://s.aolcdn.com/commerce/autodata/images/CAC70HOC021B121001.jpg",
        price: 13000,
        year: 2017,
        vin:"hc201799880"

    },
    {
        make: "Mercedes-Benz",
        model:" S-500",
        segment:"full-size",
        is_new: false,
        mileage: 120000,
        image:"https://images.hgmsites.net/hug/2010-mercedes-benz-s-class-4-door-sedan-3-5l-v6-hybrid-rwd-angular-front-exterior-view_100304947_h.jpg",
        price: 35000,
        year: 2010,
        vin: "mcs50020104444"

    },
    {
        make: "Mercedes-Benz",
        model: "GLS 450",
        segment: "SUV",
        is_new: false,
        mileage: 40000,
        image:"https://www.mercedesoflittleton.com/blogs/1765/wp-content/uploads/2018/12/colosprings.jpg",
        price:80000,
        year: 2019,
        vin:"mcgls450201923451"

    }
]

vehicles.each do |vehicle|
    Vehicle.find_or_create_by(vin: vehicle[:vin]) do |veh|
        veh.make = vehicle[:make]
        veh.model = vehicle[:model]
        veh.segment = vehicle[:segment]
        veh.is_new = vehicle[:is_new]
        veh.mileage = vehicle[:mileage]
        veh.image = vehicle[:image]
        veh.price = vehicle[:price]
        veh.year = vehicle[:year]
        veh.vin = vehicle[:vin]
    end
end