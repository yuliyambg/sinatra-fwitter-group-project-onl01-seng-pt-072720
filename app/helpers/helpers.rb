class Helpers
  def self.current_user(session_hash)
    # @user = User.find(session_hash[:user_id])
    # puts session_hash[:user_id]
    User.find(session_hash[:user_id]) if session_hash[:user_id]
  end


  def self.is_logged_in?(session_hash)
    # !!session_hash[:user_id]
    !!current_user(session_hash)
  end
end