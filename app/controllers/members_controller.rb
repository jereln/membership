class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  # GET /members
  # GET /members.json
  def index
    @members = Member.all
  end

  # GET /members/1
  # GET /members/1.json
  def show
  end

  # GET /members/new
  def new
    @member = Member.new
    @person = Person.find(params[:id])
    @group = Group.find(params[:id])
  end

  # GET /members/1/edit
  def edit
  end

  # POST /members
  def create
    @member = Member.new(member_params)
      if @member.save
        redirect_to @member, notice: 'Member was successfully created.'
      else
        render :new
      end
  end

  # PATCH/PUT /members/1
  def update
      if @member.update(member_params)
        redirect_to @member, notice: 'Member was successfully updated.'
      else
        render :edit
      end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @member.destroy
      redirect_to members_url, notice: 'Member was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end
    def member_params
      params.require(:member).permit(:group_id, :person_id, :role, :joined)
    end
end
