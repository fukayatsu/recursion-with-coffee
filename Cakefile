#TODO
# リファクタリング
# 変更があったファイルだけテスト


fs = require 'fs'

{print} = require 'util'
{spawn} = require 'child_process'

build = (callback) ->
  coffee = spawn 'coffee', ['-c', '-o', 'lib', 'src']
  coffee.stderr.on 'data', (data) ->
    process.stderr.write data.toString()
  coffee.stdout.on 'data', (data) ->
    print data.toString()
  coffee.on 'exit', (code) ->
    callback?() if code is 0

doTest = ->
  #testing
   jasmine = spawn 'jasmine-node', ['--coffee', 'spec']
   jasmine.stderr.on 'data', (data) ->
     process.stderr.write data.toString()
   jasmine.stdout.on 'data', (data) ->
     print data.toString()

task 'build', 'Build lib/ from src/', ->
  build()

task 'watch', 'Watch src/ for changes', ->
  coffee = spawn 'coffee', ['-w', '-c', '-o', 'lib', 'src']

  coffee.stderr.on 'data', (data) ->
    print 'ビルド ×\n'
    process.stderr.write data.toString()
    #doTest()
  coffee.stdout.on 'data', (data) ->
    print 'ビルド ◯\n'
    print data.toString()
    doTest()
