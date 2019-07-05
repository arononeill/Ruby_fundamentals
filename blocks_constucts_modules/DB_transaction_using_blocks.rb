# A program which can have a block passed to it containing multiple queries for a database which can then
# be executed.

class Database
  def transaction
    start_transaction
    begin
      yield
    rescue DBError => e
      rollback_transaction
      log.error e.message
      return
    end
    commit_transaction
  end
end

DB.transaction do
  # update multiple records
end