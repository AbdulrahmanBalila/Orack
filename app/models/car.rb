class Car < ApplicationRecord
    # required to get sorted by Geocoder
    geocoded_by :address
    # required for photo attachment by Active Storage
    has_many_attached :images
    # validations for _form
    validates :make, length: { minimum: 2 }
    validates :model, length: { minimum: 2 }
    validates :year, numericality: { only_integer: true, greater_than: 1999 }
    validates :latitude, numericality: { only_float: true }
    validates :longitude, numericality: { only_float: true }
    validates :available_from, comparison: { less_than: :available_until }
    validates :available_until, comparison: { greater_than: :available_from }

    # for the cars/index page
    def image_index_list(image)
        image.variant(resize_to_fill: [50,50]).processed
    end
    # for the cars/show page
    def image_thumb(image)
        image.variant(resize_to_fill: [200,200]).processed
    end
end
