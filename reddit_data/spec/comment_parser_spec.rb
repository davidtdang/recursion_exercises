require 'spec_helper'
require_relative '../lib/comment_parser'

describe CommentParser do
  it 'inspects a hash' do
    parser = CommentParser.new({})

    expect(parser.comments).to eq([])
  end

  it 'parses single comment' do
    parser = CommentParser.new({
      "kind" => "t1",
      "data" => { "body"=> "our comment"}
      })

      expect(parser.comments).to eq(["our comment"])
    end


    it 'parses a comment within a post' do
      parser  = CommentParser.new({
        "kind" => "Listing",
        "data" => {
          "children" => [{
            "kind" => "t1",
            "data" => {
              "body" => "our comment"
            }
            }]
          }
          })
          expect(parser.comments).to eq(["our comment"])
        end
      end

      
