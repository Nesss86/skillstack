module Api
  module V1
    class LessonsController < ApplicationController
      def index
        lessons = Lesson.all
        render json: lessons
      end

      def show
        lesson = Lesson.find(params[:id])
        render json: lesson
      rescue ActiveRecord::RecordNotFound
        render json: { error: "Lesson not found" }, status: :not_found
      end
    end
  end
end

