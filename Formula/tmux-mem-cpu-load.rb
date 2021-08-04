class TmuxMemCpuLoad < Formula
  desc "CPU, RAM memory, and load monitor for use with tmux"
  homepage "https://github.com/thewtex/tmux-mem-cpu-load"
  url "https://github.com/thewtex/tmux-mem-cpu-load/archive/v3.5.0.tar.gz"
  sha256 "555b8fe2dfbedd496e697c86aa0824a4ed3a4ade7e8c007b5cb11c962084b511"
  license "Apache-2.0"
  head "https://github.com/thewtex/tmux-mem-cpu-load.git"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "ebad3961141c5ef92cda90430a594587454b06464e4b386e7f5dae7158a18e97"
    sha256 cellar: :any_skip_relocation, big_sur:       "4c40768aa4599ae044cace8455205f9503441c64adaabb8f5c4c9fc221f89b27"
    sha256 cellar: :any_skip_relocation, catalina:      "5006666230be68b50c097cdb4ce12e20c37ae565cb1de9163861918d42910834"
    sha256 cellar: :any_skip_relocation, mojave:        "6da11cf3e7664d4b75de9a276c9b3823072a9d46855e2aaa2caeaa57ffdb9221"
    sha256 cellar: :any_skip_relocation, high_sierra:   "ac291740dbf05c7cae025836caf5c2ad1f375f9060fc871dfc5adf51abe2a4c2"
    sha256 cellar: :any_skip_relocation, sierra:        "8743cb844ff2a55657f2f1eb7bfae300c02a3fdf255fdd5e8242d1a60103838d"
    sha256 cellar: :any_skip_relocation, el_capitan:    "9e2c7e5fd03feb98cead3f366a9cc35375cee80c30fd570c742440d69319c296"
    sha256 cellar: :any_skip_relocation, yosemite:      "abd6293238671268ea1f0362518cd82c4b3133cb42b0327d579c93768ea81110"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "af2421568eaf229efa298ebf6bdc0ac7df668c9653bbe5e35f8624fdb47b9adf"
  end

  depends_on "cmake" => :build

  def install
    ENV.cxx11
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system bin/"tmux-mem-cpu-load"
  end
end
