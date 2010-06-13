class UserAccountsController < ApplicationController
  # GET /user_accounts
  # GET /user_accounts.xml
  def index
    @user_accounts = UserAccounts.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @user_accounts }
    end
  end

  # GET /user_accounts/1
  # GET /user_accounts/1.xml
  def show
    @user_accounts = UserAccounts.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user_accounts }
    end
  end

  # GET /user_accounts/new
  # GET /user_accounts/new.xml
  def new
    @user_accounts = UserAccounts.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user_accounts }
    end
  end

  # GET /user_accounts/1/edit
  def edit
    @user_accounts = UserAccounts.find(params[:id])
  end

  # POST /user_accounts
  # POST /user_accounts.xml
  def create
    @user_accounts = UserAccounts.new(params[:user_accounts])

    respond_to do |format|
      if @user_accounts.save
        flash[:notice] = 'UserAccounts was successfully created.'
        format.html { redirect_to(@user_accounts) }
        format.xml  { render :xml => @user_accounts, :status => :created, :location => @user_accounts }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user_accounts.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /user_accounts/1
  # PUT /user_accounts/1.xml
  def update
    @user_accounts = UserAccounts.find(params[:id])

    respond_to do |format|
      if @user_accounts.update_attributes(params[:user_accounts])
        flash[:notice] = 'UserAccounts was successfully updated.'
        format.html { redirect_to(@user_accounts) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user_accounts.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_accounts/1
  # DELETE /user_accounts/1.xml
  def destroy
    @user_accounts = UserAccounts.find(params[:id])
    @user_accounts.destroy

    respond_to do |format|
      format.html { redirect_to(user_accounts_url) }
      format.xml  { head :ok }
    end
  end
end
