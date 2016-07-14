class DocsController < ApplicationController
  def index
    @docs = Doc.all
  end

  def new
    @doc = Doc.new
  end

  def create
    @doc = Doc.new(resume_params)

    if @doc.save
      redirect_to docs_path, notice: "The doc #{@doc.title} has been uploaded."
    else
      render "new"
    end
  end

  def destroy
    @doc = Doc.find(params[:id])
    @doc.destroy
    redirect_to docs_path, notice:  "The docs #{@doc.title} has been deleted."
  end

private
  def resume_params
    params.require(:doc).permit(:title, :attachment)
  end
end
