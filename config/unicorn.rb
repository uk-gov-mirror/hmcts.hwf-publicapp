# frozen_string_literal: true
worker_processes Integer(ENV["WEB_CONCURRENCY"] || 3)

preload_app true
