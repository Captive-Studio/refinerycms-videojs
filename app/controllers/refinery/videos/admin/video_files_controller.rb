module Refinery
  module Videos
    module Admin
      class VideoFilesController < ::Refinery::AdminController

        def destroy
          @video_file = VideoFile.find(params[:id])
          @video = @video_file.video
          @video_file.destroy
          redirect_to refinery.edit_videos_admin_video_path(@video), :notice => "#{@video_file.file_name} was successfully removed."
        end

        private

        def video_file_params
          params.require(:video_file).permit(:file, :file_mime_type, :position, :use_external, :external_url)
        end
      end
    end
  end
end
