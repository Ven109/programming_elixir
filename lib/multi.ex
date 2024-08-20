defmodule Multi do
  def name_it(name) do
    receive do
      sender when is_pid(sender) ->
        send(sender, name)

      answer ->
        IO.puts("#{name} received #{answer}")
    end

    IO.puts("Restarting #{name}")
    name_it(name)
  end

  def main do
    pid1 = spawn(Multi, :name_it, ["Alice"])
    pid2 = spawn(Multi, :name_it, ["Bob"])

    send(pid1, pid2)
    send(pid2, pid1)

    :timer.sleep(1000)
    send(pid1, pid2)
  end
end
