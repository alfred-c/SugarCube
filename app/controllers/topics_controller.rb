class TopicsController < ApplicationController
  #before_filter :load_forum, :except => [:show, :edit, :update]
    before_filter :load_forum

    # GET /topics
    # GET /topics.xml
    def index
      @topics = Topic.all

      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @topics }
      end
    end

    # GET /topics/1
    # GET /topics/1.xml
    def show
      @topic = Topic.find(params[:id])
      @posts = @topic.posts.all
      @post = @topic.posts.build

      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @topic }
      end
    end

    # GET /topics/new
    # GET /topics/new.xml
    def new
      @topic = @forum.topics.build

      respond_to do |format|
        format.html
        format.xml  { render :xml => @topic }
      end
    end

    # GET /topics/1/edit
    def edit
      @topic = Topic.find(params[:id])
    end

    # POST /topics
    # POST /topics.xml
    def create
      @topic = @forum.topics.new(params[:topic])

      respond_to do |format|
        if @topic.save
          format.html { redirect_to(forum_topic_path(@forum, @topic), :notice => 'Journal was successfully created.') }
          format.xml  { render :xml => @topic, :status => :created, :location => @topic }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @topic.errors, :status => :unprocessable_entity }
        end
      end
    end

    # PUT /topics/1
    # PUT /topics/1.xml
    def update
      @topic = Topic.find(params[:id])

      respond_to do |format|
        if @topic.update_attributes(params[:topic])
          format.html { redirect_to(@topic, :notice => 'Topic was successfully updated.') }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @topic.errors, :status => :unprocessable_entity }
        end
      end
    end

    # DELETE /topics/1
    # DELETE /topics/1.xml
    def destroy
      @topic = Topic.find(params[:id])
      @topic.destroy

      respond_to do |format|
        format.html { redirect_to(topics_url) }
        format.xml  { head :ok }
      end
    end

    private
      def load_forum
        # @topic = Topic.find(1) # rescue redirect_to(forum_topics_path)
        #         @forum = @topic.forum rescue redirect_to(forums_path)
        
        @forum = Forum.find(1)
        
        # if (params[:id])
        #           @topic = Topic.find(params[:id]) # rescue redirect_to(forum_topics_path)
        #           @forum = @topic.forum rescue redirect_to(forums_path)
        #         elsif (params[:forum_id])
        #           @forum = Forum.find(params[:forum_id]) # rescue redirect_to(forums_path)
        #         else # topics index
        #           redirect_to(forums_path)
        #         end
      end
  end
