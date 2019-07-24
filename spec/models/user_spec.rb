require 'rails_helper'

RSpec.describe User, type: :model do
  describe "名前の表示" do
    # 共通するパラメータを定義
    let(:params) {{test_name: "西原"}}

    it "年齢1：ユーザーの名前が取得できること" do
      # merge!メソッドで後からパラメータを追加
      params.merge!(test_age: 1)
      user = User.new(params)
      expect(user.disp_name).to eq "西原ちゃん"
    end
    it "年齢15：ユーザーの名前が取得できること" do
      # merge!メソッドで後からパラメータを追加
      params.merge!(test_age: 15)
      user = User.new(params)
      expect(user.disp_name).to eq "西原君"
    end
    it "年齢20：ユーザーの名前が取得できること" do
      # merge!メソッドで後からパラメータを追加
      params.merge!(test_age: 20)
      user = User.new(params)
      expect(user.disp_name).to eq "西原さん"
    end
    it "年齢-1：「不正な値です。」と取得できること" do
      # merge!メソッドで後からパラメータを追加
      params.merge!(test_age: -1)
      user = User.new(params)
      expect(user.disp_name).to eq "不正な値です。"
    end
  end
end