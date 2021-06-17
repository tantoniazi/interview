# frozen_string_literal: true

Redis.current = Redis.new(url: "redis://interview-redis",
                          port: "6379",
                          db:   0)