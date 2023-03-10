class TestsController < ApplicationController
  before_action :set_test, only: [:show, :update, :destroy]

  # GET /tests
  def index
    @tests = Test.all

    render json: @tests
  end

  # GET /tests/1
  def show
    render json: @test
  end

  # POST /tests
  def create
    @test = Test.new(test_params)

    if @test.save
      render json: @test, status: :created, location: @test
    else
      render json: @test.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tests/1
  def test
    puts "##############################"
    puts request.headers.sort.map { |k, v| logger.info "#{k}:#{v}" }
    puts "##############################"
    puts request.raw_post()
    puts "##############################"
    render status: 204
    # render status: 400 
    # render status: 500
  end

  # DELETE /tests/1
  def destroy
    @test.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_test
    #   @test = Test.find(params[:id])
    # end

    # # Only allow a trusted parameter "white list" through.
    # def test_params
    #   params.fetch(:test, {})
    # end
end
