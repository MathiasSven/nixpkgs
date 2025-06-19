{
  bashly = {
    dependencies = [
      "colsole"
      "completely"
      "filewatcher"
      "gtx"
      "logger"
      "lp"
      "mister_bin"
      "ostruct"
      "requires"
      "tty-markdown"
    ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "13ijspr857x710rfanmvv81dw7qxiygg552v5phmx0sh8ddzpw64";
      type = "gem";
    };
    version = "1.2.12";
  };
  cgi = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1njrjznc2j5xqqw71sp9130b9hyv59h2gfrf6yaf4in1n9dzd6gy";
      type = "gem";
    };
    version = "0.5.0";
  };
  colsole = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1fvf6dz2wsvjk7q24z0dm8lajq3p2l6i5ywf3mxj683rmhwq49bg";
      type = "gem";
    };
    version = "1.0.0";
  };
  completely = {
    dependencies = [
      "colsole"
      "mister_bin"
    ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0129alz54h2vy7vd19i5664sasdbvrl4zgj70hl5j4rpvckr5lf8";
      type = "gem";
    };
    version = "0.7.1";
  };
  docopt_ng = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0rsnl5s7k2s1gl4n4dg68ssg577kf11sl4a4l2lb2fpswj718950";
      type = "gem";
    };
    version = "0.7.1";
  };
  erb = {
    dependencies = [ "cgi" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "05wpc7pn1k6jik7i57vfrj6k5lda39hrny0q3706pi05c886w4fy";
      type = "gem";
    };
    version = "4.0.4";
  };
  filewatcher = {
    dependencies = [ "module_methods" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "03f9v57c5zag09mi10yjhdx7y0vv2w5wrnwzbij9hhkwh43rk077";
      type = "gem";
    };
    version = "2.1.0";
  };
  gtx = {
    dependencies = [ "erb" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1w0hbr9i6jpn9spbb13ipg2fajkwa51y56jw21ziwsddmv997274";
      type = "gem";
    };
    version = "0.1.1";
  };
  kramdown = {
    dependencies = [ "rexml" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "131nwypz8b4pq1hxs6gsz3k00i9b75y3cgpkq57vxknkv6mvdfw7";
      type = "gem";
    };
    version = "2.5.1";
  };
  logger = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "00q2zznygpbls8asz5knjvvj2brr3ghmqxgr83xnrdj4rk3xwvhr";
      type = "gem";
    };
    version = "1.7.0";
  };
  lp = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0ns1aza32n929w7smg1dsn4g6qlfi7k1jrvssyn35cicmwn0gyyr";
      type = "gem";
    };
    version = "0.2.1";
  };
  mister_bin = {
    dependencies = [
      "colsole"
      "docopt_ng"
    ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1zz3vpy6xrgzln2dpxgcnrq1bpzz0syl60whqc9zf8j29mayw1fy";
      type = "gem";
    };
    version = "0.8.1";
  };
  module_methods = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1886wjscfripgzlmyvcd0jmlzwr6hxvklm2a5rm32dw5bf7bvjki";
      type = "gem";
    };
    version = "0.1.0";
  };
  ostruct = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1h6gazp5837xbz1aqvq9x0a5ffpw32nhvknn931a4074k6i04wvd";
      type = "gem";
    };
    version = "0.6.2";
  };
  pastel = {
    dependencies = [ "tty-color" ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0xash2gj08dfjvq4hy6l1z22s5v30fhizwgs10d6nviggpxsj7a8";
      type = "gem";
    };
    version = "0.8.0";
  };
  requires = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0dlibxp6jfdl4favj2pgsm2pw84hhr2cdiizfs51ldkpddm50njp";
      type = "gem";
    };
    version = "1.1.0";
  };
  rexml = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1jmbf6lf7pcyacpb939xjjpn1f84c3nw83dy3p1lwjx0l2ljfif7";
      type = "gem";
    };
    version = "3.4.1";
  };
  rouge = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "18v8if3jix029rr3j8iwisv73facw223353n0h7avl39ibxk6hh3";
      type = "gem";
    };
    version = "4.5.2";
  };
  strings = {
    dependencies = [
      "strings-ansi"
      "unicode-display_width"
      "unicode_utils"
    ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1yynb0qhhhplmpzavfrrlwdnd1rh7rkwzcs4xf0mpy2wr6rr6clk";
      type = "gem";
    };
    version = "0.2.1";
  };
  strings-ansi = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "120wa6yjc63b84lprglc52f40hx3fx920n4dmv14rad41rv2s9lh";
      type = "gem";
    };
    version = "0.2.0";
  };
  tty-color = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0aik4kmhwwrmkysha7qibi2nyzb4c8kp42bd5vxnf8sf7b53g73g";
      type = "gem";
    };
    version = "0.6.0";
  };
  tty-markdown = {
    dependencies = [
      "kramdown"
      "pastel"
      "rouge"
      "strings"
      "tty-color"
      "tty-screen"
    ];
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "04f599zn5rfndq4d9l0acllfpc041bzdkkz2h6x0dl18f2wivn0y";
      type = "gem";
    };
    version = "0.7.2";
  };
  tty-screen = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0l4vh6g333jxm9lakilkva2gn17j6gb052626r1pdbmy2lhnb460";
      type = "gem";
    };
    version = "0.8.2";
  };
  unicode-display_width = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0nkz7fadlrdbkf37m0x7sw8bnz8r355q3vwcfb9f9md6pds9h9qj";
      type = "gem";
    };
    version = "2.6.0";
  };
  unicode_utils = {
    groups = [ "default" ];
    platforms = [ ];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0h1a5yvrxzlf0lxxa1ya31jcizslf774arnsd89vgdhk4g7x08mr";
      type = "gem";
    };
    version = "1.4.0";
  };
}
