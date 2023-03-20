class Movie < ActiveRecord::Base
    
    def self.create_with_title(title)
        self.find_or_create_by(title: title)
    end

    def self.first_movie
        self.first
    end

    def self.last_movie
        self.last
    end

    def self.movie_count
        self.count
    end

    def self.find_movie_with_id(id)
        self.find(id)
    end

    def self.find_movie_with_attributes(attributes)
        attributes_array = []
        attributes.each do |k,v|
            attributes_array << "#{k} = \"#{v}\""
        end
        attribute_join = attributes_array.join(" AND ")
        puts attribute_join
        self.find_by(attribute_join)
    end

    def self.find_movies_after_2002
        self.where("release_date > 2002")
    end

    def update_with_attributes(attributes)
        attributes.each do |key, value|
            self.send("#{key}=", value)
        end
        self.save
    end

    def self.update_all_titles(title)
        self.update_all(title: "#{title}")
    end

    def self.delete_by_id(id)
        self.find_movie_with_id(id).destroy
    end

    def self.delete_all_movies
        self.destroy_all
    end

end


#     def self.find_movie_with_attributes(attributes)
#         attribute_array = Array.new
#         attributes.each do |key, value|
#             attribute_array << "#{key} = \"#{value}\""
#         end
#         attribute_join = attribute_array.join(" AND ")
#         puts attribute_join
#         self.find_by(attribute_join)
#     end







































# require 'pry'

# class Movie < ActiveRecord::Base

#     def self.create_with_title(title)
#         movie = self.create(title: "#{title}")
#     end

#     def self.first_movie
#         movie = self.first
#     end

#     def self.last_movie
#         movie = self.last
#     end

#     def self.movie_count
#         self.count
#     end

#     def self.find_movie_with_id(id)
#         movie = self.find(id)
#     end

#     def self.find_movie_with_attributes(attributes)
#         attribute_array = Array.new
#         attributes.each do |key, value|
#             attribute_array << "#{key} = \"#{value}\""
#         end
#         attribute_join = attribute_array.join(" AND ")
#         puts attribute_join
#         self.find_by(attribute_join)
#     end

#     def self.find_movies_after_2002
#         self.where("release_date > 2002")
#         # self.select { |movie| movie.release_date > 2002 }
#     end

#     def update_with_attributes(attributes)
#         attributes.each do |key, value|
#             self.send("#{key}=", value)
#         end
#         self.save
#     end

#     def self.delete_by_id(id)
#         self.find(id).destroy
#     end

#     def self.update_all_titles(title)
#         self.update_all(title: "#{title}")
#     end

#     def self.delete_all_movies
#         self.destroy_all
#     end

#     # def self.create_with_title(title)
#     #     movie = self.create(title: "#{title}")
#     # end

#     # def self.first_movie
#     #     self.first
#     # end

#     # def self.last_movie
#     #     self.last
#     # end

#     # def self.movie_count
#     #     self.count
#     # end

#     # def self.find_movie_with_id(id)
#     #     movie = self.find_by(id: "#{id}")
#     #     movie
#     # end

#     # # def self.find_movie_with_attributes(attributes)
#     # #     attributes.each do |key, value| 
#     # #         self.find_by("#{key}= #{value}")
#     # #     end
#     # # end

#     # def self.find_movie_with_attributes(attributes)
#     #     attributes.each do |key, value|
#     #         self.where("${key} == ?", "${value}")
#     #     end
#     # end

#     # def self.find_movies_after_2002
#     #     self.where("release_date > 2002")
#     # end

#     # def update_with_attributes(attributes)
#     #     attributes.each do |key, value| 
#     #         self.send("#{key}=", value)
#     #     end
#     # end

#     # def self.delete_by_id(id)
#     #     self.find_by("#{id}").destroy
#     # end

#     # def self.update_all_titles(title)
#     #     self.update_all(title: "#{title}")
#     # end

#     # def self.delete_all_movies
#     #     self.destroy_all
#     # end

#     # def self.create_with_title(title)
#     #     movie = self.create(title: "#{title}")
#     # end

#     # def self.first_movie
#     #     self.first
#     # end

#     # def self.last_movie
#     #     self.last
#     # end

#     # def self.movie_count
#     #     self.count
#     # end

#     # def self.find_movie_with_id(id)
#     #     movie = self.find_by(id: "#{id}")
#     #     movie
#     # end

#     # # def self.find_movie_with_attributes(attributes)



   




#     # def self.create_with_title(title)
#     #     movie = self.create(title: "#{title}")
#     # end

#     # def self.first_movie
#     #     self.first
#     # end

#     # def self.last_movie
#     #     self.last
#     # end

#     # def self.movie_count
#     #     self.count
#     # end

#     # def self.find_movie_with_id(id)
#     #     movie = self.find_by(id: "#{id}")
#     #     movie
#     # end

#     # # def self.find_movie_with_attributes(attributes)
#     # #     attributes.each do |key, value| 
#     # #         self.find_by("#{key}= #{value}")
#     # #     end
#     # # end

#     # def self.find_movie_with_attributes(attributes)
#     #     attributes.each do |key, value|
#     #         self.where("${key} == ?", "${value}")
#     #     end
#     # end

#     # def self.find_movies_after_2002
#     #     self.where("release_date > 2002")
#     # end

#     # def update_with_attributes(attributes)
#     #     attributes.each do |key, value| 
#     #         self.send("#{key}=", value)
#     #     end
#     # end

#     # def self.delete_by_id(id)
#     #     self.find_by("#{id}").destroy
#     # end

#     # def self.update_all_titles(title)
#     #     self.update_all(title: "#{title}")
#     # end

#     # def self.delete_all_movies
#     #     self.destroy_all
#     # end



# end