

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <title>
  tequilasunset / auto-complete-latex / source &mdash; Bitbucket
</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="description" content="" />
  <meta name="keywords" content="" />
  <!--[if lt IE 9]>
  <script src="https://dwz7u9t8u8usb.cloudfront.net/m/1adb064ec2f5/js/lib/html5.js"></script>
  <![endif]-->

  <script>
    (function (window) {
      // prevent stray occurrences of `console.log` from causing errors in IE
      var console = window.console || (window.console = {});
      console.log || (console.log = function () {});

      var BB = window.BB || (window.BB = {});
      BB.debug = false;
      BB.cname = false;
      BB.CANON_URL = 'https://bitbucket.org';
      BB.MEDIA_URL = 'https://dwz7u9t8u8usb.cloudfront.net/m/1adb064ec2f5/';
      BB.images = {
        noAvatar: 'https://dwz7u9t8u8usb.cloudfront.net/m/1adb064ec2f5/img/no_avatar.png'
      };
      BB.user || (BB.user = {});
      BB.user.has = (function () {
        var betaFeatures = [];
        betaFeatures.push('repo2');
        return function (feature) {
          return _.contains(betaFeatures, feature);
        };
      }());
      BB.repo || (BB.repo = {});
  
  
      BB.user.isAdmin = false
      BB.repo.id = 42579;
    
    
      BB.repo.slug = 'auto\u002Dcomplete\u002Dlatex';
    
    
      BB.repo.owner = {
        username: 'tequilasunset'
      };
    
      // Coerce `BB.repo` to a string to get
      // "davidchambers/mango" or whatever.
      BB.repo.toString = function () {
        return BB.cname ? this.slug : this.owner.username + '/' + this.slug;
      }
    
      BB.changeset = 'c936a026703b'
    
    
  
    }(this));
  </script>

  


  <link rel="stylesheet" href="https://dwz7u9t8u8usb.cloudfront.net/m/1adb064ec2f5/bun/css/bundle.css"/>



  <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="Bitbucket" />
  <link rel="icon" href="https://dwz7u9t8u8usb.cloudfront.net/m/1adb064ec2f5/img/logo_new.png" type="image/png" />
  <link type="text/plain" rel="author" href="/humans.txt" />


  
    <script src="https://dwz7u9t8u8usb.cloudfront.net/m/1adb064ec2f5/bun/js/bundle.js"></script>
  



</head>

<body id="" class="">
  <script type="text/javascript">
    if (!RegExp(" AppleWebKit/").test(navigator.userAgent)) {
    $('body').addClass('non-webkit');
    }
  </script>
  <!--[if IE 8]>
  <script>jQuery(document.body).addClass('ie8')</script>
  <![endif]-->
  <!--[if IE 9]>
  <script>jQuery(document.body).addClass('ie9')</script>
  <![endif]-->

  <div id="wrapper">



  <div id="header-wrap">
    <div id="header">
    <ul id="global-nav">
      <li><a class="home" href="http://www.atlassian.com">Atlassian Home</a></li>
      <li><a class="docs" href="http://confluence.atlassian.com/display/BITBUCKET">Documentation</a></li>
      <li><a class="support" href="/support">Support</a></li>
      <li><a class="blog" href="http://blog.bitbucket.org">Blog</a></li>
      <li><a class="forums" href="http://groups.google.com/group/bitbucket-users">Forums</a></li>
    </ul>
    <a href="/" id="logo">Bitbucket by Atlassian</a>

    <div id="main-nav">
    
      <ul class="clearfix">
        <li><a href="/plans">Pricing &amp; signup</a></li>
        <li><a href="/explore">Explore Bitbucket</a></li>
        <li><a href="/account/signin/?next=/tequilasunset/auto-complete-latex/src/c936a026703b/auto-complete-latex.el">Log in</a></li>
        

<li class="search-box">
  
    <form action="/repo/all">
      <input type="search" results="5" autosave="bitbucket-explore-search"
             name="name" id="searchbox"
             placeholder="Find a project" />
  
  </form>
</li>

      </ul>
    
    </div>
    </div>
  </div>

    <div id="header-messages">
  
  
    
    
    
    
  

    
   </div>



    <div id="content">
      <div id="source">
      
  
  





  <script>
    jQuery(function ($) {
        var cookie = $.cookie,
            cookieOptions, date,
            $content = $('#content'),
            $pane = $('#what-is-bitbucket'),
            $hide = $pane.find('[href="#hide"]').css('display', 'block').hide();

        date = new Date();
        date.setTime(date.getTime() + 365 * 24 * 60 * 60 * 1000);
        cookieOptions = { path: '/', expires: date };

        if (cookie('toggle_status') == 'hide') $content.addClass('repo-desc-hidden');

        $('#toggle-repo-content').click(function (event) {
            event.preventDefault();
            $content.toggleClass('repo-desc-hidden');
            cookie('toggle_status', cookie('toggle_status') == 'show' ? 'hide' : 'show', cookieOptions);
        });

        if (!cookie('hide_intro_message')) $pane.show();

        $hide.click(function (event) {
            event.preventDefault();
            cookie('hide_intro_message', true, cookieOptions);
            $pane.slideUp('slow');
        });

        $pane.hover(
            function () { $hide.fadeIn('fast'); },
            function () { $hide.fadeOut('fast'); });

      (function () {
        // Update "recently-viewed-repos" cookie for
        // the "repositories" drop-down.
        var
          id = BB.repo.id,
          cookieName = 'recently-viewed-repos_' + BB.user.id,
          rvr = cookie(cookieName),
          ids = rvr? rvr.split(','): [],
          idx = _.indexOf(ids, '' + id);

        // Remove `id` from `ids` if present.
        if (~idx) ids.splice(idx, 1);

        cookie(
          cookieName,
          // Insert `id` as the first item, then call
          // `join` on the resulting array to produce
          // something like "114694,27542,89002,84570".
          [id].concat(ids.slice(0, 4)).join(),
          {path: '/', expires: 1e6} // "never" expires
        );
      }());
    });
  </script>



  
  
  
  
  
    <div id="what-is-bitbucket" class="new-to-bitbucket">
      <h2>tequilasunset <span id="slogan">is sharing code with you</span></h2>
      <img src="https://secure.gravatar.com/avatar/fbedaee8211bb1a6e15c56db74c330f8?d=identicon&s=32" alt="" class="avatar" />
      <p>Bitbucket is a code hosting site. Unlimited public and private repositories. Free for small teams.</p>
      <div class="primary-action-link signup"><a href="/account/signup/?utm_source=internal&utm_medium=banner&utm_campaign=what_is_bitbucket">Try Bitbucket free</a></div>
      <a href="#hide" title="Don't show this again">Don't show this again</a>
    </div>
  


<div id="tabs">
  <ul class="tabs">
    <li>
      <a href="/tequilasunset/auto-complete-latex/overview">Overview</a>
    </li>

    <li>
      <a href="/tequilasunset/auto-complete-latex/downloads">Downloads (<span id="downloads-count">0</span>)</a>
    </li>

    

    <li>
      <a href="/tequilasunset/auto-complete-latex/pull-requests">Pull requests (0)</a>
    </li>

    <li class="selected">
      
        <a href="/tequilasunset/auto-complete-latex/src">Source</a>
      
    </li>

    <li>
      <a href="/tequilasunset/auto-complete-latex/changesets">Commits</a>
    </li>

    <li id="wiki-tab" class="dropdown"
      style="display:
                        none  
        
      ">
      <a href="/tequilasunset/auto-complete-latex/wiki">Wiki</a>
    </li>

    <li id="issues-tab" class="dropdown inertial-hover"
      style="display:
        block 
        
      ">
      <a href="/tequilasunset/auto-complete-latex/issues?status=new&amp;status=open">Issues (0) &raquo;</a>
      <ul>
        <li><a href="/tequilasunset/auto-complete-latex/issues/new">Create new issue</a></li>
        <li><a href="/tequilasunset/auto-complete-latex/issues?status=new">New issues</a></li>
        <li><a href="/tequilasunset/auto-complete-latex/issues?status=new&amp;status=open">Open issues</a></li>
        <li><a href="/tequilasunset/auto-complete-latex/issues?status=duplicate&amp;status=invalid&amp;status=resolved&amp;status=wontfix">Closed issues</a></li>
        
        <li><a href="/tequilasunset/auto-complete-latex/issues">All issues</a></li>
        <li><a href="/tequilasunset/auto-complete-latex/issues/query">Advanced query</a></li>
      </ul>
    </li>

    

    <li class="secondary">
      <a href="/tequilasunset/auto-complete-latex/descendants">Forks/queues (0)</a>
    </li>

    <li class="secondary">
      <a href="/tequilasunset/auto-complete-latex/zealots">Followers (<span id="followers-count">3</span>)</a>
    </li>
  </ul>
</div>



 

  <div class="repo-menu" id="repo-menu">
    <ul id="repo-menu-links">
    
      <li>
        <a href="/tequilasunset/auto-complete-latex/rss" class="rss" title="RSS feed for auto-complete-latex">RSS</a>
      </li>

      <li><a href="/tequilasunset/auto-complete-latex/fork" class="fork">fork</a></li>
      
        
          <li><a href="/tequilasunset/auto-complete-latex/hack" class="patch-queue">patch queue</a></li>
        
      
      <li>
        <a rel="nofollow" href="/tequilasunset/auto-complete-latex/follow" class="follow">follow</a>
      </li>
      
          
      
      
        <li class="get-source inertial-hover">
          <a class="source">get source</a>
          <ul class="downloads">
            
              
              <li><a rel="nofollow" href="/tequilasunset/auto-complete-latex/get/c936a026703b.zip">zip</a></li>
              <li><a rel="nofollow" href="/tequilasunset/auto-complete-latex/get/c936a026703b.tar.gz">gz</a></li>
              <li><a rel="nofollow" href="/tequilasunset/auto-complete-latex/get/c936a026703b.tar.bz2">bz2</a></li>
            
          </ul>
        </li>
      
    </ul>

  
    <ul class="metadata">
      
      
        <li class="branches inertial-hover">branches
          <ul>
            <li><a href="/tequilasunset/auto-complete-latex/src/c936a026703b">default</a>
              
              
            </li>
            <li><a href="/tequilasunset/auto-complete-latex/src/1a3f711cd55e">version 0.1.0</a>
              
              
              <a rel="nofollow" class="menu-compare"
                 href="/tequilasunset/auto-complete-latex/compare/version%200.1.0..default"
                 title="Show changes between version 0.1.0 and the main branch.">compare</a>
              
            </li>
            <li><a href="/tequilasunset/auto-complete-latex/src/4567f420fe24">version 0.1.1</a>
              
              
              <a rel="nofollow" class="menu-compare"
                 href="/tequilasunset/auto-complete-latex/compare/version%200.1.1..default"
                 title="Show changes between version 0.1.1 and the main branch.">compare</a>
              
            </li>
            <li><a href="/tequilasunset/auto-complete-latex/src/3b6e02cac935">version 0.1.2</a>
              
              
              <a rel="nofollow" class="menu-compare"
                 href="/tequilasunset/auto-complete-latex/compare/version%200.1.2..default"
                 title="Show changes between version 0.1.2 and the main branch.">compare</a>
              
            </li>
            <li><a href="/tequilasunset/auto-complete-latex/src/6c534e773374">version 0.1.3</a>
              
              
              <a rel="nofollow" class="menu-compare"
                 href="/tequilasunset/auto-complete-latex/compare/version%200.1.3..default"
                 title="Show changes between version 0.1.3 and the main branch.">compare</a>
              
            </li>
            <li><a href="/tequilasunset/auto-complete-latex/src/a9e07114ea45">version 0.2.0</a>
              
              
              <a rel="nofollow" class="menu-compare"
                 href="/tequilasunset/auto-complete-latex/compare/version%200.2.0..default"
                 title="Show changes between version 0.2.0 and the main branch.">compare</a>
              
            </li>
            <li><a href="/tequilasunset/auto-complete-latex/src/84383eb70aa5">version 0.2.2</a>
              
              
              <a rel="nofollow" class="menu-compare"
                 href="/tequilasunset/auto-complete-latex/compare/version%200.2.2..default"
                 title="Show changes between version 0.2.2 and the main branch.">compare</a>
              
            </li>
          </ul>
        </li>
      
      
      <li class="tags inertial-hover">tags
        <ul>
          <li><a href="/tequilasunset/auto-complete-latex/src/c936a026703b">tip</a>
            
            </li>
        </ul>
      </li>
     
     
    </ul>
  
</div>

<div class="repo-menu" id="repo-desc">
  
    <ul id="repo-menu-links-mini">
      <li><a rel="nofollow" class="compare-link"
             href="/tequilasunset/auto-complete-latex/compare/../"
             title="Show changes between auto-complete-latex and "
             ></a></li>
      
  

      
      <li>
        <a href="/tequilasunset/auto-complete-latex/rss" class="rss" title="RSS feed for auto-complete-latex"></a>
      </li>

      <li><a href="/tequilasunset/auto-complete-latex/fork" class="fork" title="Fork"></a></li>
      
        
          <li><a href="/tequilasunset/auto-complete-latex/hack" class="patch-queue" title="Patch queue"></a></li>
        
      
      <li>
        <a rel="nofollow" href="/tequilasunset/auto-complete-latex/follow" class="follow">follow</a>
      </li>
      
          
      
    
      
        <li>
          <a class="source" title="Get source"></a>
          <ul class="downloads">
            
              
                <li><a rel="nofollow" href="/tequilasunset/auto-complete-latex/get/c936a026703b.zip">zip</a></li>
                <li><a rel="nofollow" href="/tequilasunset/auto-complete-latex/get/c936a026703b.tar.gz">gz</a></li>
                <li><a rel="nofollow" href="/tequilasunset/auto-complete-latex/get/c936a026703b.tar.bz2">bz2</a></li>
              
            
          </ul>
        </li>
      
    
    </ul>

    <h3 id="repo-heading" class="public hg">
      <a class="owner-username" href="/tequilasunset">tequilasunset</a> /
      <a class="repo-name" href="/tequilasunset/auto-complete-latex">auto-complete-latex</a>
    

    
    </h3>

        
        <p class="repo-desc-description">A LaTeX extention for auto-complete-mode on Emacs</p>
        

  <div id="repo-desc-cloneinfo">Clone this repository (size: 586.0 KB):
    <a href="https://bitbucket.org/tequilasunset/auto-complete-latex" class="https">HTTPS</a> /
    <a href="ssh://hg@bitbucket.org/tequilasunset/auto-complete-latex" class="ssh">SSH</a>
    <pre id="clone-url-https">hg clone https://bitbucket.org/tequilasunset/auto-complete-latex</pre>
    <pre id="clone-url-ssh">hg clone ssh://hg@bitbucket.org/tequilasunset/auto-complete-latex</pre>
    
  </div>

        <a href="#" id="toggle-repo-content"></a>

        

</div>




      
  <div id="source-container">
    

  <div id="source-path">
    <h1>
      <a href="/tequilasunset/auto-complete-latex/src" class="src-pjax">auto-complete-latex</a> /

  
    
      auto-complete-latex.el
    
  

    </h1>
  </div>

  <div class="labels labels-csv">
  
    <dl>
  
    
  
  
    
  
  
    <dt>Branch</dt>
    
      
        <dd class="branch unabridged"><a href="/tequilasunset/auto-complete-latex/changesets/tip/branch(%22default%22)">default</a></dd>
      
    
  
</dl>

  
  </div>


  
  <div id="source-view">
    <div class="header">
      <ul class="metadata">
        <li><code>c936a026703b</code></li>
        <li>981 loc</li>
        <li>35.8 KB</li>
      </ul>
      <ul class="source-view-links">
        
        <li><a id="embed-link" href="https://bitbucket.org/tequilasunset/auto-complete-latex/src/c936a026703b/auto-complete-latex.el?embed=t">embed</a></li>
        
        <li><a href="/tequilasunset/auto-complete-latex/history/auto-complete-latex.el">history</a></li>
        
        <li><a href="/tequilasunset/auto-complete-latex/annotate/c936a026703b/auto-complete-latex.el">annotate</a></li>
        
        <li><a href="/tequilasunset/auto-complete-latex/raw/c936a026703b/auto-complete-latex.el">raw</a></li>
        <li>
          <form action="/tequilasunset/auto-complete-latex/diff/auto-complete-latex.el" class="source-view-form">
          
            <input type="hidden" name="diff2" value="c936a026703b" />
            <select name="diff1">
            
              
            
              
                <option value="98881c2271e4">98881c2271e4</option>
              
            
              
                <option value="4ad783f7248f">4ad783f7248f</option>
              
            
              
                <option value="14a9a61c9df9">14a9a61c9df9</option>
              
            
              
                <option value="ed89aef928b6">ed89aef928b6</option>
              
            
              
                <option value="6b6ea19108b5">6b6ea19108b5</option>
              
            
              
                <option value="5e7bfc0e4296">5e7bfc0e4296</option>
              
            
              
                <option value="769a7fb07ee8">769a7fb07ee8</option>
              
            
              
                <option value="56d8e2a8ebce">56d8e2a8ebce</option>
              
            
              
                <option value="358eeee0c4ed">358eeee0c4ed</option>
              
            
              
                <option value="40f15869ac6b">40f15869ac6b</option>
              
            
              
                <option value="b62954257c0a">b62954257c0a</option>
              
            
              
                <option value="42dc64155714">42dc64155714</option>
              
            
              
                <option value="43c2e1119ed3">43c2e1119ed3</option>
              
            
              
                <option value="c26b209f8636">c26b209f8636</option>
              
            
              
                <option value="cf785798e6cc">cf785798e6cc</option>
              
            
              
                <option value="adcb665c2b6a">adcb665c2b6a</option>
              
            
              
                <option value="b777d6bc4635">b777d6bc4635</option>
              
            
              
                <option value="43d60e92ab38">43d60e92ab38</option>
              
            
              
                <option value="ec73a8629984">ec73a8629984</option>
              
            
              
                <option value="50b9ca4bd0cc">50b9ca4bd0cc</option>
              
            
              
                <option value="3cddcad2ad62">3cddcad2ad62</option>
              
            
              
                <option value="84383eb70aa5">84383eb70aa5</option>
              
            
              
                <option value="dd9328e7a14d">dd9328e7a14d</option>
              
            
              
                <option value="3122bee18e32">3122bee18e32</option>
              
            
              
                <option value="f0e9870d5e69">f0e9870d5e69</option>
              
            
              
                <option value="8c39caf3f5e4">8c39caf3f5e4</option>
              
            
              
                <option value="459df6d10ab0">459df6d10ab0</option>
              
            
              
                <option value="9754e66c8ffa">9754e66c8ffa</option>
              
            
              
                <option value="efc66f1fdc32">efc66f1fdc32</option>
              
            
              
                <option value="284fd6b5ac0c">284fd6b5ac0c</option>
              
            
              
                <option value="10fbe63efdce">10fbe63efdce</option>
              
            
              
                <option value="ec851c29c0da">ec851c29c0da</option>
              
            
              
                <option value="abd6b5bf3ad3">abd6b5bf3ad3</option>
              
            
              
                <option value="8fabffe6e666">8fabffe6e666</option>
              
            
              
                <option value="a2651ccc7260">a2651ccc7260</option>
              
            
              
                <option value="3bb58e3958c9">3bb58e3958c9</option>
              
            
              
                <option value="367dbe47858b">367dbe47858b</option>
              
            
              
                <option value="3818b5dfe549">3818b5dfe549</option>
              
            
              
                <option value="dbaa377ee6e0">dbaa377ee6e0</option>
              
            
              
                <option value="cee8412cf633">cee8412cf633</option>
              
            
              
                <option value="df46b8ba987e">df46b8ba987e</option>
              
            
              
                <option value="d79a7e562ae5">d79a7e562ae5</option>
              
            
              
                <option value="43f45ef19c68">43f45ef19c68</option>
              
            
              
                <option value="118355dc84ad">118355dc84ad</option>
              
            
              
                <option value="fe31076d2cfb">fe31076d2cfb</option>
              
            
              
                <option value="412c9e160389">412c9e160389</option>
              
            
              
                <option value="f678177012ad">f678177012ad</option>
              
            
              
                <option value="c2e3750acd40">c2e3750acd40</option>
              
            
              
                <option value="18f14e88acd3">18f14e88acd3</option>
              
            
            </select>
            <input type="submit" value="diff" />
          
          </form>
        </li>
      </ul>
    </div>
  
    <div>
    <table class="highlighttable"><tr><td class="linenos"><div class="linenodiv"><pre><a href="#cl-1">  1</a>
<a href="#cl-2">  2</a>
<a href="#cl-3">  3</a>
<a href="#cl-4">  4</a>
<a href="#cl-5">  5</a>
<a href="#cl-6">  6</a>
<a href="#cl-7">  7</a>
<a href="#cl-8">  8</a>
<a href="#cl-9">  9</a>
<a href="#cl-10"> 10</a>
<a href="#cl-11"> 11</a>
<a href="#cl-12"> 12</a>
<a href="#cl-13"> 13</a>
<a href="#cl-14"> 14</a>
<a href="#cl-15"> 15</a>
<a href="#cl-16"> 16</a>
<a href="#cl-17"> 17</a>
<a href="#cl-18"> 18</a>
<a href="#cl-19"> 19</a>
<a href="#cl-20"> 20</a>
<a href="#cl-21"> 21</a>
<a href="#cl-22"> 22</a>
<a href="#cl-23"> 23</a>
<a href="#cl-24"> 24</a>
<a href="#cl-25"> 25</a>
<a href="#cl-26"> 26</a>
<a href="#cl-27"> 27</a>
<a href="#cl-28"> 28</a>
<a href="#cl-29"> 29</a>
<a href="#cl-30"> 30</a>
<a href="#cl-31"> 31</a>
<a href="#cl-32"> 32</a>
<a href="#cl-33"> 33</a>
<a href="#cl-34"> 34</a>
<a href="#cl-35"> 35</a>
<a href="#cl-36"> 36</a>
<a href="#cl-37"> 37</a>
<a href="#cl-38"> 38</a>
<a href="#cl-39"> 39</a>
<a href="#cl-40"> 40</a>
<a href="#cl-41"> 41</a>
<a href="#cl-42"> 42</a>
<a href="#cl-43"> 43</a>
<a href="#cl-44"> 44</a>
<a href="#cl-45"> 45</a>
<a href="#cl-46"> 46</a>
<a href="#cl-47"> 47</a>
<a href="#cl-48"> 48</a>
<a href="#cl-49"> 49</a>
<a href="#cl-50"> 50</a>
<a href="#cl-51"> 51</a>
<a href="#cl-52"> 52</a>
<a href="#cl-53"> 53</a>
<a href="#cl-54"> 54</a>
<a href="#cl-55"> 55</a>
<a href="#cl-56"> 56</a>
<a href="#cl-57"> 57</a>
<a href="#cl-58"> 58</a>
<a href="#cl-59"> 59</a>
<a href="#cl-60"> 60</a>
<a href="#cl-61"> 61</a>
<a href="#cl-62"> 62</a>
<a href="#cl-63"> 63</a>
<a href="#cl-64"> 64</a>
<a href="#cl-65"> 65</a>
<a href="#cl-66"> 66</a>
<a href="#cl-67"> 67</a>
<a href="#cl-68"> 68</a>
<a href="#cl-69"> 69</a>
<a href="#cl-70"> 70</a>
<a href="#cl-71"> 71</a>
<a href="#cl-72"> 72</a>
<a href="#cl-73"> 73</a>
<a href="#cl-74"> 74</a>
<a href="#cl-75"> 75</a>
<a href="#cl-76"> 76</a>
<a href="#cl-77"> 77</a>
<a href="#cl-78"> 78</a>
<a href="#cl-79"> 79</a>
<a href="#cl-80"> 80</a>
<a href="#cl-81"> 81</a>
<a href="#cl-82"> 82</a>
<a href="#cl-83"> 83</a>
<a href="#cl-84"> 84</a>
<a href="#cl-85"> 85</a>
<a href="#cl-86"> 86</a>
<a href="#cl-87"> 87</a>
<a href="#cl-88"> 88</a>
<a href="#cl-89"> 89</a>
<a href="#cl-90"> 90</a>
<a href="#cl-91"> 91</a>
<a href="#cl-92"> 92</a>
<a href="#cl-93"> 93</a>
<a href="#cl-94"> 94</a>
<a href="#cl-95"> 95</a>
<a href="#cl-96"> 96</a>
<a href="#cl-97"> 97</a>
<a href="#cl-98"> 98</a>
<a href="#cl-99"> 99</a>
<a href="#cl-100">100</a>
<a href="#cl-101">101</a>
<a href="#cl-102">102</a>
<a href="#cl-103">103</a>
<a href="#cl-104">104</a>
<a href="#cl-105">105</a>
<a href="#cl-106">106</a>
<a href="#cl-107">107</a>
<a href="#cl-108">108</a>
<a href="#cl-109">109</a>
<a href="#cl-110">110</a>
<a href="#cl-111">111</a>
<a href="#cl-112">112</a>
<a href="#cl-113">113</a>
<a href="#cl-114">114</a>
<a href="#cl-115">115</a>
<a href="#cl-116">116</a>
<a href="#cl-117">117</a>
<a href="#cl-118">118</a>
<a href="#cl-119">119</a>
<a href="#cl-120">120</a>
<a href="#cl-121">121</a>
<a href="#cl-122">122</a>
<a href="#cl-123">123</a>
<a href="#cl-124">124</a>
<a href="#cl-125">125</a>
<a href="#cl-126">126</a>
<a href="#cl-127">127</a>
<a href="#cl-128">128</a>
<a href="#cl-129">129</a>
<a href="#cl-130">130</a>
<a href="#cl-131">131</a>
<a href="#cl-132">132</a>
<a href="#cl-133">133</a>
<a href="#cl-134">134</a>
<a href="#cl-135">135</a>
<a href="#cl-136">136</a>
<a href="#cl-137">137</a>
<a href="#cl-138">138</a>
<a href="#cl-139">139</a>
<a href="#cl-140">140</a>
<a href="#cl-141">141</a>
<a href="#cl-142">142</a>
<a href="#cl-143">143</a>
<a href="#cl-144">144</a>
<a href="#cl-145">145</a>
<a href="#cl-146">146</a>
<a href="#cl-147">147</a>
<a href="#cl-148">148</a>
<a href="#cl-149">149</a>
<a href="#cl-150">150</a>
<a href="#cl-151">151</a>
<a href="#cl-152">152</a>
<a href="#cl-153">153</a>
<a href="#cl-154">154</a>
<a href="#cl-155">155</a>
<a href="#cl-156">156</a>
<a href="#cl-157">157</a>
<a href="#cl-158">158</a>
<a href="#cl-159">159</a>
<a href="#cl-160">160</a>
<a href="#cl-161">161</a>
<a href="#cl-162">162</a>
<a href="#cl-163">163</a>
<a href="#cl-164">164</a>
<a href="#cl-165">165</a>
<a href="#cl-166">166</a>
<a href="#cl-167">167</a>
<a href="#cl-168">168</a>
<a href="#cl-169">169</a>
<a href="#cl-170">170</a>
<a href="#cl-171">171</a>
<a href="#cl-172">172</a>
<a href="#cl-173">173</a>
<a href="#cl-174">174</a>
<a href="#cl-175">175</a>
<a href="#cl-176">176</a>
<a href="#cl-177">177</a>
<a href="#cl-178">178</a>
<a href="#cl-179">179</a>
<a href="#cl-180">180</a>
<a href="#cl-181">181</a>
<a href="#cl-182">182</a>
<a href="#cl-183">183</a>
<a href="#cl-184">184</a>
<a href="#cl-185">185</a>
<a href="#cl-186">186</a>
<a href="#cl-187">187</a>
<a href="#cl-188">188</a>
<a href="#cl-189">189</a>
<a href="#cl-190">190</a>
<a href="#cl-191">191</a>
<a href="#cl-192">192</a>
<a href="#cl-193">193</a>
<a href="#cl-194">194</a>
<a href="#cl-195">195</a>
<a href="#cl-196">196</a>
<a href="#cl-197">197</a>
<a href="#cl-198">198</a>
<a href="#cl-199">199</a>
<a href="#cl-200">200</a>
<a href="#cl-201">201</a>
<a href="#cl-202">202</a>
<a href="#cl-203">203</a>
<a href="#cl-204">204</a>
<a href="#cl-205">205</a>
<a href="#cl-206">206</a>
<a href="#cl-207">207</a>
<a href="#cl-208">208</a>
<a href="#cl-209">209</a>
<a href="#cl-210">210</a>
<a href="#cl-211">211</a>
<a href="#cl-212">212</a>
<a href="#cl-213">213</a>
<a href="#cl-214">214</a>
<a href="#cl-215">215</a>
<a href="#cl-216">216</a>
<a href="#cl-217">217</a>
<a href="#cl-218">218</a>
<a href="#cl-219">219</a>
<a href="#cl-220">220</a>
<a href="#cl-221">221</a>
<a href="#cl-222">222</a>
<a href="#cl-223">223</a>
<a href="#cl-224">224</a>
<a href="#cl-225">225</a>
<a href="#cl-226">226</a>
<a href="#cl-227">227</a>
<a href="#cl-228">228</a>
<a href="#cl-229">229</a>
<a href="#cl-230">230</a>
<a href="#cl-231">231</a>
<a href="#cl-232">232</a>
<a href="#cl-233">233</a>
<a href="#cl-234">234</a>
<a href="#cl-235">235</a>
<a href="#cl-236">236</a>
<a href="#cl-237">237</a>
<a href="#cl-238">238</a>
<a href="#cl-239">239</a>
<a href="#cl-240">240</a>
<a href="#cl-241">241</a>
<a href="#cl-242">242</a>
<a href="#cl-243">243</a>
<a href="#cl-244">244</a>
<a href="#cl-245">245</a>
<a href="#cl-246">246</a>
<a href="#cl-247">247</a>
<a href="#cl-248">248</a>
<a href="#cl-249">249</a>
<a href="#cl-250">250</a>
<a href="#cl-251">251</a>
<a href="#cl-252">252</a>
<a href="#cl-253">253</a>
<a href="#cl-254">254</a>
<a href="#cl-255">255</a>
<a href="#cl-256">256</a>
<a href="#cl-257">257</a>
<a href="#cl-258">258</a>
<a href="#cl-259">259</a>
<a href="#cl-260">260</a>
<a href="#cl-261">261</a>
<a href="#cl-262">262</a>
<a href="#cl-263">263</a>
<a href="#cl-264">264</a>
<a href="#cl-265">265</a>
<a href="#cl-266">266</a>
<a href="#cl-267">267</a>
<a href="#cl-268">268</a>
<a href="#cl-269">269</a>
<a href="#cl-270">270</a>
<a href="#cl-271">271</a>
<a href="#cl-272">272</a>
<a href="#cl-273">273</a>
<a href="#cl-274">274</a>
<a href="#cl-275">275</a>
<a href="#cl-276">276</a>
<a href="#cl-277">277</a>
<a href="#cl-278">278</a>
<a href="#cl-279">279</a>
<a href="#cl-280">280</a>
<a href="#cl-281">281</a>
<a href="#cl-282">282</a>
<a href="#cl-283">283</a>
<a href="#cl-284">284</a>
<a href="#cl-285">285</a>
<a href="#cl-286">286</a>
<a href="#cl-287">287</a>
<a href="#cl-288">288</a>
<a href="#cl-289">289</a>
<a href="#cl-290">290</a>
<a href="#cl-291">291</a>
<a href="#cl-292">292</a>
<a href="#cl-293">293</a>
<a href="#cl-294">294</a>
<a href="#cl-295">295</a>
<a href="#cl-296">296</a>
<a href="#cl-297">297</a>
<a href="#cl-298">298</a>
<a href="#cl-299">299</a>
<a href="#cl-300">300</a>
<a href="#cl-301">301</a>
<a href="#cl-302">302</a>
<a href="#cl-303">303</a>
<a href="#cl-304">304</a>
<a href="#cl-305">305</a>
<a href="#cl-306">306</a>
<a href="#cl-307">307</a>
<a href="#cl-308">308</a>
<a href="#cl-309">309</a>
<a href="#cl-310">310</a>
<a href="#cl-311">311</a>
<a href="#cl-312">312</a>
<a href="#cl-313">313</a>
<a href="#cl-314">314</a>
<a href="#cl-315">315</a>
<a href="#cl-316">316</a>
<a href="#cl-317">317</a>
<a href="#cl-318">318</a>
<a href="#cl-319">319</a>
<a href="#cl-320">320</a>
<a href="#cl-321">321</a>
<a href="#cl-322">322</a>
<a href="#cl-323">323</a>
<a href="#cl-324">324</a>
<a href="#cl-325">325</a>
<a href="#cl-326">326</a>
<a href="#cl-327">327</a>
<a href="#cl-328">328</a>
<a href="#cl-329">329</a>
<a href="#cl-330">330</a>
<a href="#cl-331">331</a>
<a href="#cl-332">332</a>
<a href="#cl-333">333</a>
<a href="#cl-334">334</a>
<a href="#cl-335">335</a>
<a href="#cl-336">336</a>
<a href="#cl-337">337</a>
<a href="#cl-338">338</a>
<a href="#cl-339">339</a>
<a href="#cl-340">340</a>
<a href="#cl-341">341</a>
<a href="#cl-342">342</a>
<a href="#cl-343">343</a>
<a href="#cl-344">344</a>
<a href="#cl-345">345</a>
<a href="#cl-346">346</a>
<a href="#cl-347">347</a>
<a href="#cl-348">348</a>
<a href="#cl-349">349</a>
<a href="#cl-350">350</a>
<a href="#cl-351">351</a>
<a href="#cl-352">352</a>
<a href="#cl-353">353</a>
<a href="#cl-354">354</a>
<a href="#cl-355">355</a>
<a href="#cl-356">356</a>
<a href="#cl-357">357</a>
<a href="#cl-358">358</a>
<a href="#cl-359">359</a>
<a href="#cl-360">360</a>
<a href="#cl-361">361</a>
<a href="#cl-362">362</a>
<a href="#cl-363">363</a>
<a href="#cl-364">364</a>
<a href="#cl-365">365</a>
<a href="#cl-366">366</a>
<a href="#cl-367">367</a>
<a href="#cl-368">368</a>
<a href="#cl-369">369</a>
<a href="#cl-370">370</a>
<a href="#cl-371">371</a>
<a href="#cl-372">372</a>
<a href="#cl-373">373</a>
<a href="#cl-374">374</a>
<a href="#cl-375">375</a>
<a href="#cl-376">376</a>
<a href="#cl-377">377</a>
<a href="#cl-378">378</a>
<a href="#cl-379">379</a>
<a href="#cl-380">380</a>
<a href="#cl-381">381</a>
<a href="#cl-382">382</a>
<a href="#cl-383">383</a>
<a href="#cl-384">384</a>
<a href="#cl-385">385</a>
<a href="#cl-386">386</a>
<a href="#cl-387">387</a>
<a href="#cl-388">388</a>
<a href="#cl-389">389</a>
<a href="#cl-390">390</a>
<a href="#cl-391">391</a>
<a href="#cl-392">392</a>
<a href="#cl-393">393</a>
<a href="#cl-394">394</a>
<a href="#cl-395">395</a>
<a href="#cl-396">396</a>
<a href="#cl-397">397</a>
<a href="#cl-398">398</a>
<a href="#cl-399">399</a>
<a href="#cl-400">400</a>
<a href="#cl-401">401</a>
<a href="#cl-402">402</a>
<a href="#cl-403">403</a>
<a href="#cl-404">404</a>
<a href="#cl-405">405</a>
<a href="#cl-406">406</a>
<a href="#cl-407">407</a>
<a href="#cl-408">408</a>
<a href="#cl-409">409</a>
<a href="#cl-410">410</a>
<a href="#cl-411">411</a>
<a href="#cl-412">412</a>
<a href="#cl-413">413</a>
<a href="#cl-414">414</a>
<a href="#cl-415">415</a>
<a href="#cl-416">416</a>
<a href="#cl-417">417</a>
<a href="#cl-418">418</a>
<a href="#cl-419">419</a>
<a href="#cl-420">420</a>
<a href="#cl-421">421</a>
<a href="#cl-422">422</a>
<a href="#cl-423">423</a>
<a href="#cl-424">424</a>
<a href="#cl-425">425</a>
<a href="#cl-426">426</a>
<a href="#cl-427">427</a>
<a href="#cl-428">428</a>
<a href="#cl-429">429</a>
<a href="#cl-430">430</a>
<a href="#cl-431">431</a>
<a href="#cl-432">432</a>
<a href="#cl-433">433</a>
<a href="#cl-434">434</a>
<a href="#cl-435">435</a>
<a href="#cl-436">436</a>
<a href="#cl-437">437</a>
<a href="#cl-438">438</a>
<a href="#cl-439">439</a>
<a href="#cl-440">440</a>
<a href="#cl-441">441</a>
<a href="#cl-442">442</a>
<a href="#cl-443">443</a>
<a href="#cl-444">444</a>
<a href="#cl-445">445</a>
<a href="#cl-446">446</a>
<a href="#cl-447">447</a>
<a href="#cl-448">448</a>
<a href="#cl-449">449</a>
<a href="#cl-450">450</a>
<a href="#cl-451">451</a>
<a href="#cl-452">452</a>
<a href="#cl-453">453</a>
<a href="#cl-454">454</a>
<a href="#cl-455">455</a>
<a href="#cl-456">456</a>
<a href="#cl-457">457</a>
<a href="#cl-458">458</a>
<a href="#cl-459">459</a>
<a href="#cl-460">460</a>
<a href="#cl-461">461</a>
<a href="#cl-462">462</a>
<a href="#cl-463">463</a>
<a href="#cl-464">464</a>
<a href="#cl-465">465</a>
<a href="#cl-466">466</a>
<a href="#cl-467">467</a>
<a href="#cl-468">468</a>
<a href="#cl-469">469</a>
<a href="#cl-470">470</a>
<a href="#cl-471">471</a>
<a href="#cl-472">472</a>
<a href="#cl-473">473</a>
<a href="#cl-474">474</a>
<a href="#cl-475">475</a>
<a href="#cl-476">476</a>
<a href="#cl-477">477</a>
<a href="#cl-478">478</a>
<a href="#cl-479">479</a>
<a href="#cl-480">480</a>
<a href="#cl-481">481</a>
<a href="#cl-482">482</a>
<a href="#cl-483">483</a>
<a href="#cl-484">484</a>
<a href="#cl-485">485</a>
<a href="#cl-486">486</a>
<a href="#cl-487">487</a>
<a href="#cl-488">488</a>
<a href="#cl-489">489</a>
<a href="#cl-490">490</a>
<a href="#cl-491">491</a>
<a href="#cl-492">492</a>
<a href="#cl-493">493</a>
<a href="#cl-494">494</a>
<a href="#cl-495">495</a>
<a href="#cl-496">496</a>
<a href="#cl-497">497</a>
<a href="#cl-498">498</a>
<a href="#cl-499">499</a>
<a href="#cl-500">500</a>
<a href="#cl-501">501</a>
<a href="#cl-502">502</a>
<a href="#cl-503">503</a>
<a href="#cl-504">504</a>
<a href="#cl-505">505</a>
<a href="#cl-506">506</a>
<a href="#cl-507">507</a>
<a href="#cl-508">508</a>
<a href="#cl-509">509</a>
<a href="#cl-510">510</a>
<a href="#cl-511">511</a>
<a href="#cl-512">512</a>
<a href="#cl-513">513</a>
<a href="#cl-514">514</a>
<a href="#cl-515">515</a>
<a href="#cl-516">516</a>
<a href="#cl-517">517</a>
<a href="#cl-518">518</a>
<a href="#cl-519">519</a>
<a href="#cl-520">520</a>
<a href="#cl-521">521</a>
<a href="#cl-522">522</a>
<a href="#cl-523">523</a>
<a href="#cl-524">524</a>
<a href="#cl-525">525</a>
<a href="#cl-526">526</a>
<a href="#cl-527">527</a>
<a href="#cl-528">528</a>
<a href="#cl-529">529</a>
<a href="#cl-530">530</a>
<a href="#cl-531">531</a>
<a href="#cl-532">532</a>
<a href="#cl-533">533</a>
<a href="#cl-534">534</a>
<a href="#cl-535">535</a>
<a href="#cl-536">536</a>
<a href="#cl-537">537</a>
<a href="#cl-538">538</a>
<a href="#cl-539">539</a>
<a href="#cl-540">540</a>
<a href="#cl-541">541</a>
<a href="#cl-542">542</a>
<a href="#cl-543">543</a>
<a href="#cl-544">544</a>
<a href="#cl-545">545</a>
<a href="#cl-546">546</a>
<a href="#cl-547">547</a>
<a href="#cl-548">548</a>
<a href="#cl-549">549</a>
<a href="#cl-550">550</a>
<a href="#cl-551">551</a>
<a href="#cl-552">552</a>
<a href="#cl-553">553</a>
<a href="#cl-554">554</a>
<a href="#cl-555">555</a>
<a href="#cl-556">556</a>
<a href="#cl-557">557</a>
<a href="#cl-558">558</a>
<a href="#cl-559">559</a>
<a href="#cl-560">560</a>
<a href="#cl-561">561</a>
<a href="#cl-562">562</a>
<a href="#cl-563">563</a>
<a href="#cl-564">564</a>
<a href="#cl-565">565</a>
<a href="#cl-566">566</a>
<a href="#cl-567">567</a>
<a href="#cl-568">568</a>
<a href="#cl-569">569</a>
<a href="#cl-570">570</a>
<a href="#cl-571">571</a>
<a href="#cl-572">572</a>
<a href="#cl-573">573</a>
<a href="#cl-574">574</a>
<a href="#cl-575">575</a>
<a href="#cl-576">576</a>
<a href="#cl-577">577</a>
<a href="#cl-578">578</a>
<a href="#cl-579">579</a>
<a href="#cl-580">580</a>
<a href="#cl-581">581</a>
<a href="#cl-582">582</a>
<a href="#cl-583">583</a>
<a href="#cl-584">584</a>
<a href="#cl-585">585</a>
<a href="#cl-586">586</a>
<a href="#cl-587">587</a>
<a href="#cl-588">588</a>
<a href="#cl-589">589</a>
<a href="#cl-590">590</a>
<a href="#cl-591">591</a>
<a href="#cl-592">592</a>
<a href="#cl-593">593</a>
<a href="#cl-594">594</a>
<a href="#cl-595">595</a>
<a href="#cl-596">596</a>
<a href="#cl-597">597</a>
<a href="#cl-598">598</a>
<a href="#cl-599">599</a>
<a href="#cl-600">600</a>
<a href="#cl-601">601</a>
<a href="#cl-602">602</a>
<a href="#cl-603">603</a>
<a href="#cl-604">604</a>
<a href="#cl-605">605</a>
<a href="#cl-606">606</a>
<a href="#cl-607">607</a>
<a href="#cl-608">608</a>
<a href="#cl-609">609</a>
<a href="#cl-610">610</a>
<a href="#cl-611">611</a>
<a href="#cl-612">612</a>
<a href="#cl-613">613</a>
<a href="#cl-614">614</a>
<a href="#cl-615">615</a>
<a href="#cl-616">616</a>
<a href="#cl-617">617</a>
<a href="#cl-618">618</a>
<a href="#cl-619">619</a>
<a href="#cl-620">620</a>
<a href="#cl-621">621</a>
<a href="#cl-622">622</a>
<a href="#cl-623">623</a>
<a href="#cl-624">624</a>
<a href="#cl-625">625</a>
<a href="#cl-626">626</a>
<a href="#cl-627">627</a>
<a href="#cl-628">628</a>
<a href="#cl-629">629</a>
<a href="#cl-630">630</a>
<a href="#cl-631">631</a>
<a href="#cl-632">632</a>
<a href="#cl-633">633</a>
<a href="#cl-634">634</a>
<a href="#cl-635">635</a>
<a href="#cl-636">636</a>
<a href="#cl-637">637</a>
<a href="#cl-638">638</a>
<a href="#cl-639">639</a>
<a href="#cl-640">640</a>
<a href="#cl-641">641</a>
<a href="#cl-642">642</a>
<a href="#cl-643">643</a>
<a href="#cl-644">644</a>
<a href="#cl-645">645</a>
<a href="#cl-646">646</a>
<a href="#cl-647">647</a>
<a href="#cl-648">648</a>
<a href="#cl-649">649</a>
<a href="#cl-650">650</a>
<a href="#cl-651">651</a>
<a href="#cl-652">652</a>
<a href="#cl-653">653</a>
<a href="#cl-654">654</a>
<a href="#cl-655">655</a>
<a href="#cl-656">656</a>
<a href="#cl-657">657</a>
<a href="#cl-658">658</a>
<a href="#cl-659">659</a>
<a href="#cl-660">660</a>
<a href="#cl-661">661</a>
<a href="#cl-662">662</a>
<a href="#cl-663">663</a>
<a href="#cl-664">664</a>
<a href="#cl-665">665</a>
<a href="#cl-666">666</a>
<a href="#cl-667">667</a>
<a href="#cl-668">668</a>
<a href="#cl-669">669</a>
<a href="#cl-670">670</a>
<a href="#cl-671">671</a>
<a href="#cl-672">672</a>
<a href="#cl-673">673</a>
<a href="#cl-674">674</a>
<a href="#cl-675">675</a>
<a href="#cl-676">676</a>
<a href="#cl-677">677</a>
<a href="#cl-678">678</a>
<a href="#cl-679">679</a>
<a href="#cl-680">680</a>
<a href="#cl-681">681</a>
<a href="#cl-682">682</a>
<a href="#cl-683">683</a>
<a href="#cl-684">684</a>
<a href="#cl-685">685</a>
<a href="#cl-686">686</a>
<a href="#cl-687">687</a>
<a href="#cl-688">688</a>
<a href="#cl-689">689</a>
<a href="#cl-690">690</a>
<a href="#cl-691">691</a>
<a href="#cl-692">692</a>
<a href="#cl-693">693</a>
<a href="#cl-694">694</a>
<a href="#cl-695">695</a>
<a href="#cl-696">696</a>
<a href="#cl-697">697</a>
<a href="#cl-698">698</a>
<a href="#cl-699">699</a>
<a href="#cl-700">700</a>
<a href="#cl-701">701</a>
<a href="#cl-702">702</a>
<a href="#cl-703">703</a>
<a href="#cl-704">704</a>
<a href="#cl-705">705</a>
<a href="#cl-706">706</a>
<a href="#cl-707">707</a>
<a href="#cl-708">708</a>
<a href="#cl-709">709</a>
<a href="#cl-710">710</a>
<a href="#cl-711">711</a>
<a href="#cl-712">712</a>
<a href="#cl-713">713</a>
<a href="#cl-714">714</a>
<a href="#cl-715">715</a>
<a href="#cl-716">716</a>
<a href="#cl-717">717</a>
<a href="#cl-718">718</a>
<a href="#cl-719">719</a>
<a href="#cl-720">720</a>
<a href="#cl-721">721</a>
<a href="#cl-722">722</a>
<a href="#cl-723">723</a>
<a href="#cl-724">724</a>
<a href="#cl-725">725</a>
<a href="#cl-726">726</a>
<a href="#cl-727">727</a>
<a href="#cl-728">728</a>
<a href="#cl-729">729</a>
<a href="#cl-730">730</a>
<a href="#cl-731">731</a>
<a href="#cl-732">732</a>
<a href="#cl-733">733</a>
<a href="#cl-734">734</a>
<a href="#cl-735">735</a>
<a href="#cl-736">736</a>
<a href="#cl-737">737</a>
<a href="#cl-738">738</a>
<a href="#cl-739">739</a>
<a href="#cl-740">740</a>
<a href="#cl-741">741</a>
<a href="#cl-742">742</a>
<a href="#cl-743">743</a>
<a href="#cl-744">744</a>
<a href="#cl-745">745</a>
<a href="#cl-746">746</a>
<a href="#cl-747">747</a>
<a href="#cl-748">748</a>
<a href="#cl-749">749</a>
<a href="#cl-750">750</a>
<a href="#cl-751">751</a>
<a href="#cl-752">752</a>
<a href="#cl-753">753</a>
<a href="#cl-754">754</a>
<a href="#cl-755">755</a>
<a href="#cl-756">756</a>
<a href="#cl-757">757</a>
<a href="#cl-758">758</a>
<a href="#cl-759">759</a>
<a href="#cl-760">760</a>
<a href="#cl-761">761</a>
<a href="#cl-762">762</a>
<a href="#cl-763">763</a>
<a href="#cl-764">764</a>
<a href="#cl-765">765</a>
<a href="#cl-766">766</a>
<a href="#cl-767">767</a>
<a href="#cl-768">768</a>
<a href="#cl-769">769</a>
<a href="#cl-770">770</a>
<a href="#cl-771">771</a>
<a href="#cl-772">772</a>
<a href="#cl-773">773</a>
<a href="#cl-774">774</a>
<a href="#cl-775">775</a>
<a href="#cl-776">776</a>
<a href="#cl-777">777</a>
<a href="#cl-778">778</a>
<a href="#cl-779">779</a>
<a href="#cl-780">780</a>
<a href="#cl-781">781</a>
<a href="#cl-782">782</a>
<a href="#cl-783">783</a>
<a href="#cl-784">784</a>
<a href="#cl-785">785</a>
<a href="#cl-786">786</a>
<a href="#cl-787">787</a>
<a href="#cl-788">788</a>
<a href="#cl-789">789</a>
<a href="#cl-790">790</a>
<a href="#cl-791">791</a>
<a href="#cl-792">792</a>
<a href="#cl-793">793</a>
<a href="#cl-794">794</a>
<a href="#cl-795">795</a>
<a href="#cl-796">796</a>
<a href="#cl-797">797</a>
<a href="#cl-798">798</a>
<a href="#cl-799">799</a>
<a href="#cl-800">800</a>
<a href="#cl-801">801</a>
<a href="#cl-802">802</a>
<a href="#cl-803">803</a>
<a href="#cl-804">804</a>
<a href="#cl-805">805</a>
<a href="#cl-806">806</a>
<a href="#cl-807">807</a>
<a href="#cl-808">808</a>
<a href="#cl-809">809</a>
<a href="#cl-810">810</a>
<a href="#cl-811">811</a>
<a href="#cl-812">812</a>
<a href="#cl-813">813</a>
<a href="#cl-814">814</a>
<a href="#cl-815">815</a>
<a href="#cl-816">816</a>
<a href="#cl-817">817</a>
<a href="#cl-818">818</a>
<a href="#cl-819">819</a>
<a href="#cl-820">820</a>
<a href="#cl-821">821</a>
<a href="#cl-822">822</a>
<a href="#cl-823">823</a>
<a href="#cl-824">824</a>
<a href="#cl-825">825</a>
<a href="#cl-826">826</a>
<a href="#cl-827">827</a>
<a href="#cl-828">828</a>
<a href="#cl-829">829</a>
<a href="#cl-830">830</a>
<a href="#cl-831">831</a>
<a href="#cl-832">832</a>
<a href="#cl-833">833</a>
<a href="#cl-834">834</a>
<a href="#cl-835">835</a>
<a href="#cl-836">836</a>
<a href="#cl-837">837</a>
<a href="#cl-838">838</a>
<a href="#cl-839">839</a>
<a href="#cl-840">840</a>
<a href="#cl-841">841</a>
<a href="#cl-842">842</a>
<a href="#cl-843">843</a>
<a href="#cl-844">844</a>
<a href="#cl-845">845</a>
<a href="#cl-846">846</a>
<a href="#cl-847">847</a>
<a href="#cl-848">848</a>
<a href="#cl-849">849</a>
<a href="#cl-850">850</a>
<a href="#cl-851">851</a>
<a href="#cl-852">852</a>
<a href="#cl-853">853</a>
<a href="#cl-854">854</a>
<a href="#cl-855">855</a>
<a href="#cl-856">856</a>
<a href="#cl-857">857</a>
<a href="#cl-858">858</a>
<a href="#cl-859">859</a>
<a href="#cl-860">860</a>
<a href="#cl-861">861</a>
<a href="#cl-862">862</a>
<a href="#cl-863">863</a>
<a href="#cl-864">864</a>
<a href="#cl-865">865</a>
<a href="#cl-866">866</a>
<a href="#cl-867">867</a>
<a href="#cl-868">868</a>
<a href="#cl-869">869</a>
<a href="#cl-870">870</a>
<a href="#cl-871">871</a>
<a href="#cl-872">872</a>
<a href="#cl-873">873</a>
<a href="#cl-874">874</a>
<a href="#cl-875">875</a>
<a href="#cl-876">876</a>
<a href="#cl-877">877</a>
<a href="#cl-878">878</a>
<a href="#cl-879">879</a>
<a href="#cl-880">880</a>
<a href="#cl-881">881</a>
<a href="#cl-882">882</a>
<a href="#cl-883">883</a>
<a href="#cl-884">884</a>
<a href="#cl-885">885</a>
<a href="#cl-886">886</a>
<a href="#cl-887">887</a>
<a href="#cl-888">888</a>
<a href="#cl-889">889</a>
<a href="#cl-890">890</a>
<a href="#cl-891">891</a>
<a href="#cl-892">892</a>
<a href="#cl-893">893</a>
<a href="#cl-894">894</a>
<a href="#cl-895">895</a>
<a href="#cl-896">896</a>
<a href="#cl-897">897</a>
<a href="#cl-898">898</a>
<a href="#cl-899">899</a>
<a href="#cl-900">900</a>
<a href="#cl-901">901</a>
<a href="#cl-902">902</a>
<a href="#cl-903">903</a>
<a href="#cl-904">904</a>
<a href="#cl-905">905</a>
<a href="#cl-906">906</a>
<a href="#cl-907">907</a>
<a href="#cl-908">908</a>
<a href="#cl-909">909</a>
<a href="#cl-910">910</a>
<a href="#cl-911">911</a>
<a href="#cl-912">912</a>
<a href="#cl-913">913</a>
<a href="#cl-914">914</a>
<a href="#cl-915">915</a>
<a href="#cl-916">916</a>
<a href="#cl-917">917</a>
<a href="#cl-918">918</a>
<a href="#cl-919">919</a>
<a href="#cl-920">920</a>
<a href="#cl-921">921</a>
<a href="#cl-922">922</a>
<a href="#cl-923">923</a>
<a href="#cl-924">924</a>
<a href="#cl-925">925</a>
<a href="#cl-926">926</a>
<a href="#cl-927">927</a>
<a href="#cl-928">928</a>
<a href="#cl-929">929</a>
<a href="#cl-930">930</a>
<a href="#cl-931">931</a>
<a href="#cl-932">932</a>
<a href="#cl-933">933</a>
<a href="#cl-934">934</a>
<a href="#cl-935">935</a>
<a href="#cl-936">936</a>
<a href="#cl-937">937</a>
<a href="#cl-938">938</a>
<a href="#cl-939">939</a>
<a href="#cl-940">940</a>
<a href="#cl-941">941</a>
<a href="#cl-942">942</a>
<a href="#cl-943">943</a>
<a href="#cl-944">944</a>
<a href="#cl-945">945</a>
<a href="#cl-946">946</a>
<a href="#cl-947">947</a>
<a href="#cl-948">948</a>
<a href="#cl-949">949</a>
<a href="#cl-950">950</a>
<a href="#cl-951">951</a>
<a href="#cl-952">952</a>
<a href="#cl-953">953</a>
<a href="#cl-954">954</a>
<a href="#cl-955">955</a>
<a href="#cl-956">956</a>
<a href="#cl-957">957</a>
<a href="#cl-958">958</a>
<a href="#cl-959">959</a>
<a href="#cl-960">960</a>
<a href="#cl-961">961</a>
<a href="#cl-962">962</a>
<a href="#cl-963">963</a>
<a href="#cl-964">964</a>
<a href="#cl-965">965</a>
<a href="#cl-966">966</a>
<a href="#cl-967">967</a>
<a href="#cl-968">968</a>
<a href="#cl-969">969</a>
<a href="#cl-970">970</a>
<a href="#cl-971">971</a>
<a href="#cl-972">972</a>
<a href="#cl-973">973</a>
<a href="#cl-974">974</a>
<a href="#cl-975">975</a>
<a href="#cl-976">976</a>
</pre></div></td><td class="code"><div class="highlight"><pre><a name="cl-1"></a><span class="c1">;;; auto-complete-latex.el --- A LaTeX extention for auto-complete-mode</span>
<a name="cl-2"></a>
<a name="cl-3"></a><span class="c1">;; Copyright (C) 2010 tequilasunset</span>
<a name="cl-4"></a>
<a name="cl-5"></a><span class="c1">;; Author: tequilasunset &lt;tequilasunset.mac@gmail.com&gt;</span>
<a name="cl-6"></a><span class="c1">;; Repository: http://bitbucket.org/tequilasunset/auto-complete-latex</span>
<a name="cl-7"></a><span class="c1">;; Keywords: completion, LaTeX</span>
<a name="cl-8"></a><span class="p">(</span><span class="nv">defconst</span> <span class="nv">ac-l-version</span> <span class="s">&quot;0.2.4&quot;</span><span class="p">)</span>
<a name="cl-9"></a>
<a name="cl-10"></a><span class="c1">;; This program is free software: you can redistribute it and/or modify</span>
<a name="cl-11"></a><span class="c1">;; it under the terms of the GNU General Public License as published by</span>
<a name="cl-12"></a><span class="c1">;; the Free Software Foundation, either version 3 of the License, or</span>
<a name="cl-13"></a><span class="c1">;; (at your option) any later version.</span>
<a name="cl-14"></a>
<a name="cl-15"></a><span class="c1">;; This program is distributed in the hope that it will be useful,</span>
<a name="cl-16"></a><span class="c1">;; but WITHOUT ANY WARRANTY; without even the implied warranty of</span>
<a name="cl-17"></a><span class="c1">;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the</span>
<a name="cl-18"></a><span class="c1">;; GNU General Public License for more details.</span>
<a name="cl-19"></a>
<a name="cl-20"></a><span class="c1">;; You should have received a copy of the GNU General Public License</span>
<a name="cl-21"></a><span class="c1">;; along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;.</span>
<a name="cl-22"></a>
<a name="cl-23"></a><span class="c1">;;; Requirements:</span>
<a name="cl-24"></a>
<a name="cl-25"></a><span class="c1">;;  auto-complete-mode:  http://cx4a.org/software/auto-complete/</span>
<a name="cl-26"></a>
<a name="cl-27"></a><span class="c1">;;; Installation:</span>
<a name="cl-28"></a>
<a name="cl-29"></a><span class="c1">;;  - Put files into load-path, and add the following into init file.</span>
<a name="cl-30"></a><span class="c1">;;</span>
<a name="cl-31"></a><span class="c1">;;      (require &#39;auto-complete-latex)</span>
<a name="cl-32"></a><span class="c1">;;      (setq ac-l-dict-directory &quot;/path/to/ac-l-dict/&quot;)</span>
<a name="cl-33"></a><span class="c1">;;      (add-to-list &#39;ac-modes &#39;foo-mode)</span>
<a name="cl-34"></a><span class="c1">;;      (add-hook &#39;foo-mode-hook &#39;ac-l-setup)</span>
<a name="cl-35"></a><span class="c1">;;</span>
<a name="cl-36"></a><span class="c1">;;  - If you get the error below</span>
<a name="cl-37"></a><span class="c1">;;</span>
<a name="cl-38"></a><span class="c1">;;      `variable binding depth exceeds max-specpdl-size&#39;,</span>
<a name="cl-39"></a><span class="c1">;;</span>
<a name="cl-40"></a><span class="c1">;;    add the following into init file.</span>
<a name="cl-41"></a><span class="c1">;;</span>
<a name="cl-42"></a><span class="c1">;;      (setq max-specpdl-size (+ 500 max-specpdl-size))</span>
<a name="cl-43"></a>
<a name="cl-44"></a><span class="c1">;;; Commentary:</span>
<a name="cl-45"></a>
<a name="cl-46"></a><span class="c1">;;  - Customize group:</span>
<a name="cl-47"></a><span class="c1">;;</span>
<a name="cl-48"></a><span class="c1">;;      M-x customize-group RET auto-complete-latex RET</span>
<a name="cl-49"></a><span class="c1">;;</span>
<a name="cl-50"></a><span class="c1">;;  - Don&#39;t use ac-sources:</span>
<a name="cl-51"></a><span class="c1">;;</span>
<a name="cl-52"></a><span class="c1">;;    Use `ac-l-sources&#39; instead.</span>
<a name="cl-53"></a><span class="c1">;;</span>
<a name="cl-54"></a><span class="c1">;;  - Examples of configuration:</span>
<a name="cl-55"></a><span class="c1">;;</span>
<a name="cl-56"></a><span class="c1">;;      * Setup for AUCTeX</span>
<a name="cl-57"></a><span class="c1">;;</span>
<a name="cl-58"></a><span class="c1">;;          (when (require &#39;auto-complete-latex nil t)</span>
<a name="cl-59"></a><span class="c1">;;            (setq ac-l-dict-directory &quot;~/.emacs.d/ac-l-dict/&quot;)</span>
<a name="cl-60"></a><span class="c1">;;            (add-to-list &#39;ac-modes &#39;latex-mode)</span>
<a name="cl-61"></a><span class="c1">;;            (add-hook &#39;LaTeX-mode-hook &#39;ac-l-setup))</span>
<a name="cl-62"></a><span class="c1">;;</span>
<a name="cl-63"></a><span class="c1">;;      * Setup for YaTeX</span>
<a name="cl-64"></a><span class="c1">;;</span>
<a name="cl-65"></a><span class="c1">;;          (when (require &#39;auto-complete-latex nil t)</span>
<a name="cl-66"></a><span class="c1">;;            (setq ac-l-dict-directory &quot;~/.emacs.d/ac-l-dict/&quot;)</span>
<a name="cl-67"></a><span class="c1">;;            (add-to-list &#39;ac-modes &#39;yatex-mode)</span>
<a name="cl-68"></a><span class="c1">;;            (add-hook &#39;yatex-mode-hook &#39;ac-l-setup))</span>
<a name="cl-69"></a><span class="c1">;;</span>
<a name="cl-70"></a><span class="c1">;;        If you want to use command help in Japanese, put</span>
<a name="cl-71"></a><span class="c1">;;        YATEXHLP.jp into ac-l-dict.</span>
<a name="cl-72"></a><span class="c1">;;</span>
<a name="cl-73"></a><span class="c1">;;  - ac-l-dict:</span>
<a name="cl-74"></a><span class="c1">;;</span>
<a name="cl-75"></a><span class="c1">;;    Files in it become sources, etc. Files are classified like below.</span>
<a name="cl-76"></a><span class="c1">;;    If there are unnecessary files, remove them.</span>
<a name="cl-77"></a><span class="c1">;;</span>
<a name="cl-78"></a><span class="c1">;;      1. Basic files</span>
<a name="cl-79"></a><span class="c1">;;</span>
<a name="cl-80"></a><span class="c1">;;           basic-commands, basic-arguments, macro, latex-dot-ltx,</span>
<a name="cl-81"></a><span class="c1">;;           platex-commands, platex-arguments, primitives,</span>
<a name="cl-82"></a><span class="c1">;;           ptex-primitives</span>
<a name="cl-83"></a><span class="c1">;;</span>
<a name="cl-84"></a><span class="c1">;;         Keywords in these files become candidates for basic sources.</span>
<a name="cl-85"></a><span class="c1">;;</span>
<a name="cl-86"></a><span class="c1">;;      2. User files</span>
<a name="cl-87"></a><span class="c1">;;</span>
<a name="cl-88"></a><span class="c1">;;           user-commands, user-arguments</span>
<a name="cl-89"></a><span class="c1">;;</span>
<a name="cl-90"></a><span class="c1">;;         These files become user sources.</span>
<a name="cl-91"></a><span class="c1">;;</span>
<a name="cl-92"></a><span class="c1">;;      3. Help file</span>
<a name="cl-93"></a><span class="c1">;;</span>
<a name="cl-94"></a><span class="c1">;;           latex-help</span>
<a name="cl-95"></a><span class="c1">;;</span>
<a name="cl-96"></a><span class="c1">;;         This file become a LaTeX command help.</span>
<a name="cl-97"></a><span class="c1">;;</span>
<a name="cl-98"></a><span class="c1">;;      4. External package files</span>
<a name="cl-99"></a><span class="c1">;;</span>
<a name="cl-100"></a><span class="c1">;;         Files other than above become package sources. the</span>
<a name="cl-101"></a><span class="c1">;;         form is NAME-TYPE-SYMBOL-REQUIRES.</span>
<a name="cl-102"></a><span class="c1">;;</span>
<a name="cl-103"></a><span class="c1">;;         NAME      Package or class file name. You can set the</span>
<a name="cl-104"></a><span class="c1">;;                   dependence with using `ac-l-package-dependences&#39;.</span>
<a name="cl-105"></a><span class="c1">;;         TYPE      `c&#39; (command) or `a&#39; (argument).</span>
<a name="cl-106"></a><span class="c1">;;         SYMBOL    Symbol property. `*&#39; =&gt; `p&#39;.</span>
<a name="cl-107"></a><span class="c1">;;         REQUIRES  Requires property. `*&#39; =&gt; not set.</span>
<a name="cl-108"></a><span class="c1">;;</span>
<a name="cl-109"></a><span class="c1">;;  - Commands that argument completion will work:</span>
<a name="cl-110"></a><span class="c1">;;</span>
<a name="cl-111"></a><span class="c1">;;      `ac-l-argument-regexps&#39;</span>
<a name="cl-112"></a><span class="c1">;;      `ac-l-file-regexps&#39;</span>
<a name="cl-113"></a><span class="c1">;;      `ac-l-label-regexps&#39;</span>
<a name="cl-114"></a><span class="c1">;;      `ac-l-bib-regexps&#39;</span>
<a name="cl-115"></a><span class="c1">;;</span>
<a name="cl-116"></a><span class="c1">;;    Above are related variables. If you want to complete label</span>
<a name="cl-117"></a><span class="c1">;;    names in argument of `\foo&#39;, write the following into init file.</span>
<a name="cl-118"></a><span class="c1">;;</span>
<a name="cl-119"></a><span class="c1">;;      (add-to-list &#39;ac-l-label-regexps &quot;foo&quot;)</span>
<a name="cl-120"></a><span class="c1">;;</span>
<a name="cl-121"></a><span class="c1">;;  - Completion at point:</span>
<a name="cl-122"></a><span class="c1">;;</span>
<a name="cl-123"></a><span class="c1">;;    Two commands `ac-l-complete-labels&#39; and `ac-l-complete-bibs&#39;</span>
<a name="cl-124"></a><span class="c1">;;    are provided to complete at point.</span>
<a name="cl-125"></a><span class="c1">;;</span>
<a name="cl-126"></a><span class="c1">;;  - A table of symbol properties:</span>
<a name="cl-127"></a><span class="c1">;;</span>
<a name="cl-128"></a><span class="c1">;;       SYMBOL |           MEANING</span>
<a name="cl-129"></a><span class="c1">;;      --------+----------------------------------</span>
<a name="cl-130"></a><span class="c1">;;         l    | LaTeX or pLaTeX</span>
<a name="cl-131"></a><span class="c1">;;         a    | AMS packages</span>
<a name="cl-132"></a><span class="c1">;;         b    | beamer</span>
<a name="cl-133"></a><span class="c1">;;         h    | hyperlinks</span>
<a name="cl-134"></a><span class="c1">;;         g    | graphics</span>
<a name="cl-135"></a><span class="c1">;;         m    | math sign or equations</span>
<a name="cl-136"></a><span class="c1">;;         c    | colors</span>
<a name="cl-137"></a><span class="c1">;;         t    | tables</span>
<a name="cl-138"></a><span class="c1">;;         f    | fonts</span>
<a name="cl-139"></a><span class="c1">;;         p    | unclassified external packages</span>
<a name="cl-140"></a><span class="c1">;;         F    | file names in a current directory</span>
<a name="cl-141"></a><span class="c1">;;         L    | label names</span>
<a name="cl-142"></a><span class="c1">;;         B    | bib keys</span>
<a name="cl-143"></a><span class="c1">;;         u    | user-commands or user-arguments</span>
<a name="cl-144"></a><span class="c1">;;</span>
<a name="cl-145"></a><span class="c1">;;  - Startup improvement:</span>
<a name="cl-146"></a><span class="c1">;;</span>
<a name="cl-147"></a><span class="c1">;;    In case you use `ac-l-master-file&#39;, `ac-l-package-files&#39; or</span>
<a name="cl-148"></a><span class="c1">;;    `ac-l-bib-files&#39;, startup will be slower. If you are using</span>
<a name="cl-149"></a><span class="c1">;;    ac-l-package-files, you can improve it with using the command</span>
<a name="cl-150"></a><span class="c1">;;    `ac-l-write-package-files&#39;.</span>
<a name="cl-151"></a>
<a name="cl-152"></a><span class="c1">;;; Code:</span>
<a name="cl-153"></a>
<a name="cl-154"></a><span class="p">(</span><span class="nb">require</span> <span class="ss">&#39;cl</span><span class="p">)</span>
<a name="cl-155"></a><span class="p">(</span><span class="nb">require</span> <span class="ss">&#39;auto-complete</span><span class="p">)</span>
<a name="cl-156"></a>
<a name="cl-157"></a><span class="p">(</span><span class="nv">defgroup</span> <span class="nv">auto-complete-latex</span> <span class="no">nil</span>
<a name="cl-158"></a>  <span class="s">&quot;Auto completion of LaTeX keywords.&quot;</span>
<a name="cl-159"></a>  <span class="ss">:group</span> <span class="ss">&#39;auto-complete</span>
<a name="cl-160"></a>  <span class="ss">:group</span> <span class="ss">&#39;tex</span>
<a name="cl-161"></a>  <span class="ss">:prefix</span> <span class="s">&quot;ac-l-&quot;</span><span class="p">)</span>
<a name="cl-162"></a>
<a name="cl-163"></a>
<a name="cl-164"></a><span class="c1">;;;; variables</span>
<a name="cl-165"></a><span class="p">(</span><span class="nv">defcustom</span> <span class="nv">ac-l-update-delay</span> <span class="mf">0.8</span>
<a name="cl-166"></a>  <span class="s">&quot;Delay to update candidates.&quot;</span>
<a name="cl-167"></a>  <span class="ss">:type</span> <span class="ss">&#39;float</span>
<a name="cl-168"></a>  <span class="ss">:group</span> <span class="ss">&#39;auto-complete-latex</span><span class="p">)</span>
<a name="cl-169"></a>
<a name="cl-170"></a><span class="p">(</span><span class="nv">defcustom</span> <span class="nv">ac-l-master-file</span> <span class="no">nil</span>
<a name="cl-171"></a>  <span class="s">&quot;Specify LaTeX master file path as string.</span>
<a name="cl-172"></a><span class="s">Parse master file&#39;s \\input and \\include(only).</span>
<a name="cl-173"></a><span class="s">Then create candidates from master file and parsed files.&quot;</span>
<a name="cl-174"></a>  <span class="ss">:type</span> <span class="ss">&#39;string</span>
<a name="cl-175"></a>  <span class="ss">:group</span> <span class="ss">&#39;auto-complete-latex</span><span class="p">)</span>
<a name="cl-176"></a><span class="p">(</span><span class="nv">defvaralias</span> <span class="ss">&#39;ac-l-target</span> <span class="ss">&#39;ac-l-master-file</span><span class="p">)</span>
<a name="cl-177"></a>
<a name="cl-178"></a><span class="p">(</span><span class="nv">defcustom</span> <span class="nv">ac-l-sources</span> <span class="no">nil</span>
<a name="cl-179"></a>  <span class="s">&quot;A list of user sources.</span>
<a name="cl-180"></a><span class="s">This is similar to `ac-sources&#39;, but you don&#39;t have to add</span>
<a name="cl-181"></a><span class="s">`ac-l-source-*&#39; and below sources.</span>
<a name="cl-182"></a>
<a name="cl-183"></a><span class="s">   ac-source-dictionary</span>
<a name="cl-184"></a><span class="s">   ac-source-files-in-current-dir</span>
<a name="cl-185"></a><span class="s">   ac-source-filename</span>
<a name="cl-186"></a><span class="s">   ac-source-words-in-*&quot;</span>
<a name="cl-187"></a>  <span class="ss">:type</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">repeat</span> <span class="nc">symbol</span><span class="p">)</span>
<a name="cl-188"></a>  <span class="ss">:group</span> <span class="ss">&#39;auto-complete-latex</span><span class="p">)</span>
<a name="cl-189"></a>
<a name="cl-190"></a><span class="p">(</span><span class="nv">defcustom</span> <span class="nv">ac-l-package-files</span> <span class="no">nil</span>
<a name="cl-191"></a>  <span class="s">&quot;A list of package files (valid suffixes are .sty and .cls).</span>
<a name="cl-192"></a><span class="s">Parse LaTeX command definitions in them, and create candidates.&quot;</span>
<a name="cl-193"></a>  <span class="ss">:type</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">repeat</span> <span class="nb">string</span><span class="p">)</span>
<a name="cl-194"></a>  <span class="ss">:group</span> <span class="ss">&#39;auto-complete-latex</span><span class="p">)</span>
<a name="cl-195"></a>
<a name="cl-196"></a><span class="p">(</span><span class="nv">defcustom</span> <span class="nv">ac-l-bib-files</span> <span class="no">nil</span>
<a name="cl-197"></a>  <span class="s">&quot;A list of bib files (valid suffix is .bib).</span>
<a name="cl-198"></a><span class="s">Parse bibliography keys in them, and create candidates.&quot;</span>
<a name="cl-199"></a>  <span class="ss">:type</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">repeat</span> <span class="nb">string</span><span class="p">)</span>
<a name="cl-200"></a>  <span class="ss">:group</span> <span class="ss">&#39;auto-complete-latex</span><span class="p">)</span>
<a name="cl-201"></a>
<a name="cl-202"></a><span class="p">(</span><span class="nv">defcustom</span> <span class="nv">ac-l-use-word-completion</span> <span class="no">nil</span>
<a name="cl-203"></a>  <span class="s">&quot;If non-nil, use sources for normal word (text) completion.&quot;</span>
<a name="cl-204"></a>  <span class="ss">:type</span> <span class="ss">&#39;boolean</span>
<a name="cl-205"></a>  <span class="ss">:group</span> <span class="ss">&#39;auto-complete-latex</span><span class="p">)</span>
<a name="cl-206"></a>
<a name="cl-207"></a><span class="c1">;;; internal</span>
<a name="cl-208"></a><span class="p">(</span><span class="nb">defvar</span> <span class="nv">ac-l-major-mode</span> <span class="no">nil</span><span class="p">)</span>
<a name="cl-209"></a><span class="p">(</span><span class="nb">defvar</span> <span class="nv">ac-l-master-p</span> <span class="no">nil</span><span class="p">)</span>
<a name="cl-210"></a><span class="p">(</span><span class="nv">defconst</span> <span class="nv">ac-l-command-prefix</span> <span class="s">&quot;\\\\\\([a-zA-Z@]+\\)&quot;</span><span class="p">)</span>
<a name="cl-211"></a><span class="p">(</span><span class="nb">defvar</span> <span class="nv">ac-l-update-timer</span> <span class="no">nil</span><span class="p">)</span>
<a name="cl-212"></a>
<a name="cl-213"></a>
<a name="cl-214"></a><span class="c1">;;;; functions</span>
<a name="cl-215"></a>
<a name="cl-216"></a><span class="c1">;;; DB</span>
<a name="cl-217"></a><span class="c1">;; package-cmds, package-args, cur-bib-tables, all-bib-tables, latex-cmds,</span>
<a name="cl-218"></a><span class="c1">;; latex-args, package-sources, user-noprefix-sources, user-prefix-sources,</span>
<a name="cl-219"></a><span class="c1">;; label-cands, bibitem-cands, bib-cands, filenames, label-tables, sources,</span>
<a name="cl-220"></a><span class="c1">;; bibitem-tables, file-cmds, file-words, children,</span>
<a name="cl-221"></a><span class="p">(</span><span class="nv">defconst</span> <span class="nv">ac-l-db</span> <span class="p">(</span><span class="nb">make-hash-table</span> <span class="ss">:test</span> <span class="ss">&#39;eq</span><span class="p">))</span>
<a name="cl-222"></a>
<a name="cl-223"></a><span class="p">(</span><span class="nv">defsubst</span> <span class="nv">ac-l-db-get</span> <span class="p">(</span><span class="nv">sym</span><span class="p">)</span>
<a name="cl-224"></a>  <span class="p">(</span><span class="nb">gethash</span> <span class="nv">sym</span> <span class="nv">ac-l-db</span><span class="p">))</span>
<a name="cl-225"></a>
<a name="cl-226"></a><span class="p">(</span><span class="nv">defsubst</span> <span class="nv">ac-l-db-set</span> <span class="p">(</span><span class="nv">sym</span> <span class="nv">value</span><span class="p">)</span>
<a name="cl-227"></a>  <span class="p">(</span><span class="nv">puthash</span> <span class="nv">sym</span> <span class="nv">value</span> <span class="nv">ac-l-db</span><span class="p">))</span>
<a name="cl-228"></a>
<a name="cl-229"></a><span class="p">(</span><span class="nv">defsubst</span> <span class="nv">ac-l-db-push</span> <span class="p">(</span><span class="nv">value</span> <span class="nv">sym</span><span class="p">)</span>
<a name="cl-230"></a>  <span class="p">(</span><span class="nv">puthash</span> <span class="nv">sym</span> <span class="p">(</span><span class="nb">cons</span> <span class="nv">value</span> <span class="p">(</span><span class="nb">gethash</span> <span class="nv">sym</span> <span class="nv">ac-l-db</span><span class="p">))</span> <span class="nv">ac-l-db</span><span class="p">))</span>
<a name="cl-231"></a>
<a name="cl-232"></a><span class="p">(</span><span class="nv">defsubst</span> <span class="nv">ac-l-db-append</span> <span class="p">(</span><span class="nv">sym</span> <span class="nv">lst</span><span class="p">)</span>
<a name="cl-233"></a>  <span class="p">(</span><span class="nv">puthash</span> <span class="nv">sym</span> <span class="p">(</span><span class="nb">append</span> <span class="p">(</span><span class="nb">gethash</span> <span class="nv">sym</span> <span class="nv">ac-l-db</span><span class="p">)</span> <span class="nv">lst</span><span class="p">)</span> <span class="nv">ac-l-db</span><span class="p">))</span>
<a name="cl-234"></a>
<a name="cl-235"></a><span class="c1">;;; prefixes for arguments</span>
<a name="cl-236"></a><span class="p">(</span><span class="nv">defcustom</span> <span class="nv">ac-l-argument-regexps</span>
<a name="cl-237"></a>  <span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;\\(?:usep\\|RequireP\\)ackage&quot;</span> <span class="s">&quot;documentclass&quot;</span> <span class="s">&quot;begin&quot;</span> <span class="s">&quot;end&quot;</span> <span class="s">&quot;fnsymbol&quot;</span>
<a name="cl-238"></a>    <span class="s">&quot;\\(?:this\\)?pagestyle&quot;</span> <span class="s">&quot;bibliography\\(?:style\\)?&quot;</span> <span class="s">&quot;pagenumbering&quot;</span>
<a name="cl-239"></a>    <span class="s">&quot;\\(?:new\\|addto\\|set\\)counter&quot;</span> <span class="s">&quot;[aA]lph&quot;</span> <span class="s">&quot;arabic&quot;</span> <span class="s">&quot;[rR]oman&quot;</span>
<a name="cl-240"></a>    <span class="s">&quot;@\\(?:addtoreset\\|startsection\\|namedef\\|definecounter\\)&quot;</span>
<a name="cl-241"></a>    <span class="s">&quot;addcontentsline&quot;</span> <span class="s">&quot;numberwithin&quot;</span> <span class="s">&quot;\\(?:text\\|page\\|f\\|define\\)color&quot;</span>
<a name="cl-242"></a>    <span class="s">&quot;colorbox&quot;</span> <span class="s">&quot;\\(?:column\\|row\\|cell\\|arrayrule\\|doublerulesep\\)color&quot;</span>
<a name="cl-243"></a>    <span class="s">&quot;hypersetup&quot;</span> <span class="s">&quot;include\\(?:graphics\\|slide\\)&quot;</span> <span class="s">&quot;insert[a-z]+&quot;</span> <span class="s">&quot;frame&quot;</span>
<a name="cl-244"></a>    <span class="s">&quot;lst[a-zDIMS]+&quot;</span> <span class="s">&quot;resetcount\\(?:er\\)?onoverlays&quot;</span> <span class="s">&quot;tableofcontents&quot;</span>
<a name="cl-245"></a>    <span class="s">&quot;movie&quot;</span> <span class="s">&quot;hyperlink\\(?:movie\\|sound\\)&quot;</span> <span class="s">&quot;multiinclude&quot;</span> <span class="s">&quot;sound&quot;</span> <span class="s">&quot;note&quot;</span>
<a name="cl-246"></a>    <span class="s">&quot;trans[a-z]+&quot;</span> <span class="s">&quot;use[a-z]*theme&quot;</span> <span class="s">&quot;[a-z]+beamertemplate[a-z]*&quot;</span>
<a name="cl-247"></a>    <span class="s">&quot;\\(?:use\\|set\\)beamer\\(?:color\\|font\\|covered\\)&quot;</span><span class="p">)</span>
<a name="cl-248"></a>  <span class="s">&quot;A list of regexps to match commands which take arguments.&quot;</span>
<a name="cl-249"></a>  <span class="ss">:type</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">repeat</span> <span class="nv">regexp</span><span class="p">)</span>
<a name="cl-250"></a>  <span class="ss">:group</span> <span class="ss">&#39;auto-complete-latex</span><span class="p">)</span>
<a name="cl-251"></a>
<a name="cl-252"></a><span class="p">(</span><span class="nv">defcustom</span> <span class="nv">ac-l-file-regexps</span>
<a name="cl-253"></a>  <span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;include\\(?:only\\|graphics\\)?&quot;</span> <span class="s">&quot;input&quot;</span> <span class="s">&quot;hypersetup&quot;</span><span class="p">)</span>
<a name="cl-254"></a>  <span class="s">&quot;A list of regexps to match commands which take file name argument.&quot;</span>
<a name="cl-255"></a>  <span class="ss">:type</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">repeat</span> <span class="nv">regexp</span><span class="p">)</span>
<a name="cl-256"></a>  <span class="ss">:group</span> <span class="ss">&#39;auto-complete-latex</span><span class="p">)</span>
<a name="cl-257"></a>
<a name="cl-258"></a><span class="p">(</span><span class="nv">defcustom</span> <span class="nv">ac-l-label-regexps</span>
<a name="cl-259"></a>  <span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;\\(?:page\\|auto\\|eq\\)?ref&quot;</span> <span class="s">&quot;label&quot;</span><span class="p">)</span>
<a name="cl-260"></a>  <span class="s">&quot;A list of regexps to match commands which take label name argument.&quot;</span>
<a name="cl-261"></a>  <span class="ss">:type</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">repeat</span> <span class="nv">regexp</span><span class="p">)</span>
<a name="cl-262"></a>  <span class="ss">:group</span> <span class="ss">&#39;auto-complete-latex</span><span class="p">)</span>
<a name="cl-263"></a>
<a name="cl-264"></a><span class="p">(</span><span class="nv">defcustom</span> <span class="nv">ac-l-bib-regexps</span>
<a name="cl-265"></a>  <span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;\\(?:no\\|short\\)?cite[a-zA-Z]*&quot;</span> <span class="s">&quot;bibitem&quot;</span><span class="p">)</span>
<a name="cl-266"></a>  <span class="s">&quot;A list of regexps to match commands which take bibliography argument.&quot;</span>
<a name="cl-267"></a>  <span class="ss">:type</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">repeat</span> <span class="nv">regexp</span><span class="p">)</span>
<a name="cl-268"></a>  <span class="ss">:group</span> <span class="ss">&#39;auto-complete-latex</span><span class="p">)</span>
<a name="cl-269"></a>
<a name="cl-270"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-prefix-in-paren</span> <span class="p">(</span><span class="nv">regexps</span><span class="p">)</span>
<a name="cl-271"></a>  <span class="c1">;; This doesn&#39;t work as omni completion because the return is ac-point.</span>
<a name="cl-272"></a>  <span class="p">(</span><span class="k">if</span> <span class="p">(</span><span class="nv">save-excursion</span>
<a name="cl-273"></a>        <span class="p">(</span><span class="nv">re-search-backward</span>
<a name="cl-274"></a>         <span class="p">(</span><span class="nv">concat</span> <span class="s">&quot;\\\\\\(&quot;</span>
<a name="cl-275"></a>                 <span class="p">(</span><span class="nv">mapconcat</span> <span class="ss">&#39;identity</span> <span class="nv">regexps</span> <span class="s">&quot;\\|&quot;</span><span class="p">)</span>
<a name="cl-276"></a>                 <span class="s">&quot;\\)\\*?\\(\\s([^]&gt;}]*\\s)\\)*\\(\\s([^]&gt;}]*\\)\\=&quot;</span><span class="p">)</span> <span class="no">nil</span> <span class="no">t</span><span class="p">))</span>
<a name="cl-277"></a>      <span class="nv">ac-point</span><span class="p">))</span>
<a name="cl-278"></a>
<a name="cl-279"></a><span class="c1">;;; read file data</span>
<a name="cl-280"></a><span class="p">(</span><span class="nv">defsubst</span> <span class="nv">ac-l-convert-filename-to-file</span> <span class="p">(</span><span class="nv">filename</span><span class="p">)</span>
<a name="cl-281"></a>  <span class="c1">;; faster than file-name-sans-extension</span>
<a name="cl-282"></a>  <span class="p">(</span><span class="k">let</span> <span class="p">((</span><span class="nv">nodir</span> <span class="p">(</span><span class="nv">file-name-nondirectory</span> <span class="nv">filename</span><span class="p">)))</span>
<a name="cl-283"></a>    <span class="p">(</span><span class="k">if</span> <span class="p">(</span><span class="nv">string-match</span> <span class="s">&quot;\\(.+\\)\\.[^.]*$&quot;</span> <span class="nv">nodir</span><span class="p">)</span>
<a name="cl-284"></a>        <span class="p">(</span><span class="nv">match-string</span> <span class="mi">1</span> <span class="nv">nodir</span><span class="p">)</span>
<a name="cl-285"></a>      <span class="nv">nodir</span><span class="p">)))</span>
<a name="cl-286"></a>
<a name="cl-287"></a><span class="p">(</span><span class="nv">defun*</span> <span class="nv">ac-l-read-bibs</span>
<a name="cl-288"></a>    <span class="p">(</span><span class="k">&amp;key</span> <span class="p">(</span><span class="nv">files</span> <span class="nv">ac-l-bib-files</span><span class="p">)</span>
<a name="cl-289"></a>          <span class="p">(</span><span class="nv">regexp</span> <span class="s">&quot;^@[^{@]+{\\([^ =,\t\n]*\\),\n[^@]+\\(^}\\)&quot;</span><span class="p">))</span>
<a name="cl-290"></a>  <span class="s">&quot;Convert each bib file listed in FILES to a hash table.&quot;</span>
<a name="cl-291"></a>  <span class="p">(</span><span class="nb">dolist</span> <span class="p">(</span><span class="nv">filename</span> <span class="nv">files</span><span class="p">)</span>
<a name="cl-292"></a>    <span class="p">(</span><span class="k">let*</span> <span class="p">((</span><span class="nv">file</span> <span class="p">(</span><span class="nv">ac-l-convert-filename-to-file</span> <span class="nv">filename</span><span class="p">))</span>
<a name="cl-293"></a>           <span class="p">(</span><span class="nv">table</span> <span class="p">(</span><span class="nb">make-hash-table</span> <span class="ss">:test</span> <span class="ss">&#39;equal</span><span class="p">)))</span>
<a name="cl-294"></a>      <span class="p">(</span><span class="nb">ignore-errors</span>
<a name="cl-295"></a>        <span class="p">(</span><span class="nv">with-temp-buffer</span>
<a name="cl-296"></a>          <span class="p">(</span><span class="nv">insert-file-contents</span> <span class="nv">filename</span><span class="p">)</span>
<a name="cl-297"></a>          <span class="p">(</span><span class="nv">while</span> <span class="p">(</span><span class="nv">re-search-forward</span> <span class="nv">regexp</span> <span class="no">nil</span> <span class="no">t</span><span class="p">)</span>
<a name="cl-298"></a>            <span class="p">(</span><span class="nv">puthash</span> <span class="p">(</span><span class="nv">match-string-no-properties</span> <span class="mi">1</span><span class="p">)</span>
<a name="cl-299"></a>                     <span class="p">(</span><span class="nv">match-string-no-properties</span> <span class="mi">0</span><span class="p">)</span>
<a name="cl-300"></a>                     <span class="nv">table</span><span class="p">))))</span>
<a name="cl-301"></a>      <span class="p">(</span><span class="nv">ac-l-db-push</span> <span class="p">(</span><span class="nb">cons</span> <span class="nv">file</span> <span class="nv">table</span><span class="p">)</span> <span class="ss">&#39;all-bib-tables</span><span class="p">)</span>
<a name="cl-302"></a>      <span class="p">(</span><span class="nv">ac-l-db-push</span> <span class="nv">file</span> <span class="ss">&#39;filenames</span><span class="p">))))</span>
<a name="cl-303"></a>
<a name="cl-304"></a><span class="c1">;; k -&gt; package name in `ac-l-package-files&#39;, v -&gt; [cmds args]</span>
<a name="cl-305"></a><span class="p">(</span><span class="nv">defconst</span> <span class="nv">ac-l-packages</span> <span class="p">(</span><span class="nb">make-hash-table</span> <span class="ss">:test</span> <span class="ss">&#39;equal</span><span class="p">))</span>
<a name="cl-306"></a>
<a name="cl-307"></a><span class="p">(</span><span class="nv">defun*</span> <span class="nv">ac-l-read-packages</span>
<a name="cl-308"></a>    <span class="p">(</span><span class="k">&amp;key</span> <span class="p">(</span><span class="nv">files</span> <span class="nv">ac-l-package-files</span><span class="p">)</span>
<a name="cl-309"></a>          <span class="p">(</span><span class="nv">cmd-re</span> <span class="s">&quot;\\\\\\(?:[a-z@]*def\\|let\\|new[a-z]+\\|providecommand\\|Declare[a-zA-Z@]+\\)\\*?[ \t]*{?\\\\\\([a-zA-Z]+\\)}?[ =\\#[{]&quot;</span><span class="p">)</span>
<a name="cl-310"></a>          <span class="p">(</span><span class="nv">arg-re</span>  <span class="s">&quot;\\\\\\(?:DeclareOption[a-zA-Z]*\\|new[a-z]+\\|@definecounter\\)\\*?[ \t]*{\\([a-zA-Z]+\\)}&quot;</span><span class="p">))</span>
<a name="cl-311"></a>  <span class="s">&quot;Convert each package listed in FILES to an element of `ac-l-packages&#39;.&quot;</span>
<a name="cl-312"></a>  <span class="p">(</span><span class="nb">dolist</span> <span class="p">(</span><span class="nv">filename</span> <span class="nv">files</span><span class="p">)</span>
<a name="cl-313"></a>    <span class="p">(</span><span class="k">let</span> <span class="p">((</span><span class="nv">file</span> <span class="p">(</span><span class="nv">ac-l-convert-filename-to-file</span> <span class="nv">filename</span><span class="p">))</span>
<a name="cl-314"></a>          <span class="nv">cand</span> <span class="nv">cmds</span> <span class="nv">args</span><span class="p">)</span>
<a name="cl-315"></a>      <span class="p">(</span><span class="nb">ignore-errors</span>
<a name="cl-316"></a>        <span class="p">(</span><span class="nv">with-temp-buffer</span>
<a name="cl-317"></a>          <span class="p">(</span><span class="nv">insert-file-contents</span> <span class="nv">filename</span><span class="p">)</span>
<a name="cl-318"></a>          <span class="p">(</span><span class="nv">while</span> <span class="p">(</span><span class="nv">re-search-forward</span> <span class="nv">cmd-re</span> <span class="no">nil</span> <span class="no">t</span><span class="p">)</span>
<a name="cl-319"></a>            <span class="p">(</span><span class="k">setq</span> <span class="nv">cand</span> <span class="p">(</span><span class="nv">match-string-no-properties</span> <span class="mi">1</span><span class="p">))</span>
<a name="cl-320"></a>            <span class="p">(</span><span class="nb">unless</span> <span class="p">(</span><span class="nb">member</span> <span class="nv">cand</span> <span class="nv">cmds</span><span class="p">)</span>
<a name="cl-321"></a>              <span class="p">(</span><span class="nb">push</span> <span class="nv">cand</span> <span class="nv">cmds</span><span class="p">)))</span>
<a name="cl-322"></a>          <span class="p">(</span><span class="nv">goto-char</span> <span class="p">(</span><span class="nv">point-min</span><span class="p">))</span>
<a name="cl-323"></a>          <span class="p">(</span><span class="nv">while</span> <span class="p">(</span><span class="nv">re-search-forward</span> <span class="nv">arg-re</span> <span class="no">nil</span> <span class="no">t</span><span class="p">)</span>
<a name="cl-324"></a>            <span class="p">(</span><span class="k">setq</span> <span class="nv">cand</span> <span class="p">(</span><span class="nv">match-string-no-properties</span> <span class="mi">1</span><span class="p">))</span>
<a name="cl-325"></a>            <span class="p">(</span><span class="nb">unless</span> <span class="p">(</span><span class="nb">member</span> <span class="nv">cand</span> <span class="nv">args</span><span class="p">)</span>
<a name="cl-326"></a>              <span class="p">(</span><span class="nb">push</span> <span class="nv">cand</span> <span class="nv">args</span><span class="p">)))))</span>
<a name="cl-327"></a>      <span class="p">(</span><span class="nv">puthash</span> <span class="nv">file</span> <span class="p">(</span><span class="nb">vector</span> <span class="nv">cmds</span> <span class="nv">args</span><span class="p">)</span> <span class="nv">ac-l-packages</span><span class="p">)</span>
<a name="cl-328"></a>      <span class="p">(</span><span class="nv">ac-l-db-push</span> <span class="nv">file</span> <span class="ss">&#39;filenames</span><span class="p">))))</span>
<a name="cl-329"></a>
<a name="cl-330"></a><span class="p">(</span><span class="nv">defcustom</span> <span class="nv">ac-l-dict-directory</span> <span class="s">&quot;~/.emacs.d/ac-l-dict/&quot;</span>
<a name="cl-331"></a>  <span class="s">&quot;Path of the ac-l-dict.&quot;</span>
<a name="cl-332"></a>  <span class="ss">:type</span> <span class="ss">&#39;string</span>
<a name="cl-333"></a>  <span class="ss">:group</span> <span class="ss">&#39;auto-complete-latex</span><span class="p">)</span>
<a name="cl-334"></a>
<a name="cl-335"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-write-package-files</span> <span class="p">(</span><span class="nv">dir</span><span class="p">)</span>
<a name="cl-336"></a>  <span class="s">&quot;Output candidates collected from files listed in `ac-l-package-files&#39;.</span>
<a name="cl-337"></a><span class="s">You can use them in the ac-l-dict.&quot;</span>
<a name="cl-338"></a>  <span class="p">(</span><span class="nv">interactive</span> <span class="p">(</span><span class="nb">list</span> <span class="p">(</span><span class="nv">read-directory-name</span> <span class="s">&quot;Dir: &quot;</span> <span class="nv">ac-l-dict-directory</span> <span class="no">nil</span> <span class="no">t</span><span class="p">)))</span>
<a name="cl-339"></a>  <span class="p">(</span><span class="nb">maphash</span> <span class="p">(</span><span class="k">lambda</span> <span class="p">(</span><span class="nv">k</span> <span class="nv">v</span><span class="p">)</span>
<a name="cl-340"></a>             <span class="p">(</span><span class="nb">loop</span> <span class="nv">for</span> <span class="p">(</span><span class="k">type</span> <span class="nv">cands</span><span class="p">)</span> <span class="nv">in</span> <span class="o">`</span><span class="p">((</span><span class="nv">c</span> <span class="o">,</span><span class="p">(</span><span class="nb">aref</span> <span class="nv">v</span> <span class="mi">0</span><span class="p">))</span> <span class="p">(</span><span class="nv">a</span> <span class="o">,</span><span class="p">(</span><span class="nb">aref</span> <span class="nv">v</span> <span class="mi">1</span><span class="p">)))</span>
<a name="cl-341"></a>                   <span class="nb">when</span> <span class="nv">cands</span> <span class="nb">do</span>
<a name="cl-342"></a>                   <span class="p">(</span><span class="nv">with-temp-buffer</span>
<a name="cl-343"></a>                     <span class="p">(</span><span class="nv">insert</span> <span class="p">(</span><span class="nv">mapconcat</span> <span class="ss">&#39;identity</span> <span class="p">(</span><span class="nb">sort</span> <span class="nv">cands</span> <span class="nf">#&#39;</span><span class="nb">string&lt;</span><span class="p">)</span> <span class="s">&quot;\n&quot;</span><span class="p">))</span>
<a name="cl-344"></a>                     <span class="p">(</span><span class="nv">write-region</span> <span class="p">(</span><span class="nv">point-min</span><span class="p">)</span> <span class="p">(</span><span class="nv">point-max</span><span class="p">)</span>
<a name="cl-345"></a>                                   <span class="p">(</span><span class="nb">format</span> <span class="s">&quot;%s%s-%s-*-*&quot;</span> <span class="nv">dir</span> <span class="nv">k</span> <span class="k">type</span><span class="p">)))))</span>
<a name="cl-346"></a>           <span class="nv">ac-l-packages</span><span class="p">))</span>
<a name="cl-347"></a>
<a name="cl-348"></a><span class="p">(</span><span class="nv">defcustom</span> <span class="nv">ac-l-package-dependences</span>
<a name="cl-349"></a>  <span class="o">&#39;</span><span class="p">((</span><span class="s">&quot;hyperref&quot;</span> <span class="o">.</span> <span class="s">&quot;beamer&quot;</span><span class="p">)</span>
<a name="cl-350"></a>    <span class="p">(</span><span class="s">&quot;color&quot;</span> <span class="o">.</span> <span class="s">&quot;colortbl\\|beamer&quot;</span><span class="p">)</span>
<a name="cl-351"></a>    <span class="p">(</span><span class="s">&quot;array&quot;</span> <span class="o">.</span> <span class="s">&quot;tabularx\\|colortbl&quot;</span><span class="p">))</span>
<a name="cl-352"></a>  <span class="s">&quot;Alist of external package dependences.</span>
<a name="cl-353"></a><span class="s">Each element is the form (REQUIRED PACKAGE . PACKAGES). Package and</span>
<a name="cl-354"></a><span class="s">class files are treated equivalently. This is effective only for</span>
<a name="cl-355"></a><span class="s">files read from the ac-l-dict.&quot;</span>
<a name="cl-356"></a>  <span class="ss">:type</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">repeat</span> <span class="p">(</span><span class="nb">cons</span> <span class="nb">string</span> <span class="nv">regexp</span><span class="p">))</span>
<a name="cl-357"></a>  <span class="ss">:group</span> <span class="ss">&#39;auto-complete-latex</span><span class="p">)</span>
<a name="cl-358"></a>
<a name="cl-359"></a><span class="p">(</span><span class="nv">defun*</span> <span class="nv">ac-l-set-help-doc</span>
<a name="cl-360"></a>    <span class="p">(</span><span class="k">&amp;optional</span> <span class="p">(</span><span class="nv">sources</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">ac-l-source-latex-commands</span>
<a name="cl-361"></a>                          <span class="nv">ac-l-source-latex-arguments</span><span class="p">)))</span>
<a name="cl-362"></a>  <span class="s">&quot;Set document property to each source listed in SOURCES.&quot;</span>
<a name="cl-363"></a>  <span class="p">(</span><span class="k">let*</span> <span class="p">((</span><span class="nv">files</span> <span class="p">(</span><span class="nv">directory-files</span> <span class="nv">ac-l-dict-directory</span><span class="p">))</span>
<a name="cl-364"></a>         <span class="p">(</span><span class="nv">help-fn</span> <span class="p">(</span><span class="nb">cond</span>
<a name="cl-365"></a>                   <span class="p">((</span><span class="nb">member</span> <span class="s">&quot;YATEXHLP.jp&quot;</span> <span class="nv">files</span><span class="p">)</span>
<a name="cl-366"></a>                    <span class="c1">;; `Warning: defvar ignored because kinsoku-limit is let-bound&#39;.</span>
<a name="cl-367"></a>                    <span class="p">(</span><span class="nb">load</span> <span class="s">&quot;international/kinsoku&quot;</span><span class="p">)</span>
<a name="cl-368"></a>                    <span class="ss">&#39;ac-l-yatex-jp-documentation</span><span class="p">)</span>
<a name="cl-369"></a>                   <span class="p">((</span><span class="nb">member</span> <span class="s">&quot;latex-help&quot;</span> <span class="nv">files</span><span class="p">)</span>
<a name="cl-370"></a>                    <span class="ss">&#39;ac-l-latex2e-documentation</span><span class="p">))))</span>
<a name="cl-371"></a>    <span class="p">(</span><span class="nb">when</span> <span class="nv">help-fn</span>
<a name="cl-372"></a>      <span class="p">(</span><span class="nb">dolist</span> <span class="p">(</span><span class="nv">source</span> <span class="nv">sources</span><span class="p">)</span>
<a name="cl-373"></a>        <span class="p">(</span><span class="nb">push</span> <span class="p">(</span><span class="nb">cons</span> <span class="ss">&#39;document</span> <span class="nv">help-fn</span><span class="p">)</span> <span class="p">(</span><span class="nb">symbol-value</span> <span class="nv">source</span><span class="p">))))))</span>
<a name="cl-374"></a>
<a name="cl-375"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-make-source-from-dir</span> <span class="p">()</span>
<a name="cl-376"></a>  <span class="p">(</span><span class="nb">dolist</span> <span class="p">(</span><span class="nv">file</span> <span class="p">(</span><span class="nv">directory-files</span> <span class="nv">ac-l-dict-directory</span> <span class="no">nil</span> <span class="s">&quot;^[^.]&quot;</span><span class="p">))</span>
<a name="cl-377"></a>    <span class="p">(</span><span class="k">let</span> <span class="p">((</span><span class="nv">sym</span> <span class="s">&quot;p&quot;</span><span class="p">)</span>
<a name="cl-378"></a>          <span class="p">(</span><span class="nv">prx</span> <span class="nv">ac-l-command-prefix</span><span class="p">)</span>
<a name="cl-379"></a>          <span class="nv">source</span> <span class="nc">package</span> <span class="nv">req</span><span class="p">)</span>
<a name="cl-380"></a>      <span class="c1">;; parse file name</span>
<a name="cl-381"></a>      <span class="p">(</span><span class="nb">cond</span>
<a name="cl-382"></a>       <span class="p">((</span><span class="nv">string-match</span> <span class="s">&quot;^\\([^-]+\\)-\\([^-]\\)-\\([^-]\\)-\\([^-]\\)$&quot;</span> <span class="nv">file</span><span class="p">)</span>
<a name="cl-383"></a>        <span class="p">(</span><span class="k">let*</span> <span class="p">((</span><span class="nv">n</span> <span class="p">(</span><span class="nv">match-string</span> <span class="mi">1</span> <span class="nv">file</span><span class="p">))</span>
<a name="cl-384"></a>               <span class="p">(</span><span class="no">T</span> <span class="p">(</span><span class="nv">match-string</span> <span class="mi">2</span> <span class="nv">file</span><span class="p">))</span>
<a name="cl-385"></a>               <span class="p">(</span><span class="nv">s</span> <span class="p">(</span><span class="nv">match-string</span> <span class="mi">3</span> <span class="nv">file</span><span class="p">))</span>
<a name="cl-386"></a>               <span class="p">(</span><span class="nv">r</span> <span class="p">(</span><span class="nv">match-string</span> <span class="mi">4</span> <span class="nv">file</span><span class="p">))</span>
<a name="cl-387"></a>               <span class="p">(</span><span class="nv">d</span> <span class="p">(</span><span class="nv">assoc-default</span> <span class="nv">n</span> <span class="nv">ac-l-package-dependences</span> <span class="ss">&#39;string=</span><span class="p">))</span>
<a name="cl-388"></a>               <span class="p">(</span><span class="nv">filenames</span> <span class="p">(</span><span class="nv">ac-l-db-get</span> <span class="ss">&#39;filenames</span><span class="p">)))</span>
<a name="cl-389"></a>          <span class="p">(</span><span class="nb">unless</span> <span class="p">(</span><span class="nb">member</span> <span class="nv">n</span> <span class="nv">filenames</span><span class="p">)</span>
<a name="cl-390"></a>            <span class="p">(</span><span class="nv">ac-l-db-set</span> <span class="ss">&#39;filenames</span> <span class="p">(</span><span class="nb">cons</span> <span class="nv">n</span> <span class="nv">filenames</span><span class="p">)))</span>
<a name="cl-391"></a>          <span class="p">(</span><span class="k">if</span> <span class="nv">d</span> <span class="p">(</span><span class="k">setq</span> <span class="nc">package</span> <span class="p">(</span><span class="nv">concat</span> <span class="nv">n</span> <span class="s">&quot;\\|&quot;</span> <span class="nv">d</span><span class="p">))</span> <span class="p">(</span><span class="k">setq</span> <span class="nc">package</span> <span class="nv">n</span><span class="p">))</span>
<a name="cl-392"></a>          <span class="p">(</span><span class="nb">unless</span> <span class="p">(</span><span class="nb">string=</span> <span class="nv">s</span> <span class="s">&quot;*&quot;</span><span class="p">)</span> <span class="p">(</span><span class="k">setq</span> <span class="nv">sym</span> <span class="nv">s</span><span class="p">))</span>
<a name="cl-393"></a>          <span class="p">(</span><span class="nb">unless</span> <span class="p">(</span><span class="nb">string=</span> <span class="nv">r</span> <span class="s">&quot;*&quot;</span><span class="p">)</span> <span class="p">(</span><span class="k">setq</span> <span class="nv">req</span> <span class="p">(</span><span class="nv">string-to-number</span> <span class="nv">r</span><span class="p">)))</span>
<a name="cl-394"></a>          <span class="p">(</span><span class="k">if</span> <span class="p">(</span><span class="nb">string=</span> <span class="no">T</span> <span class="s">&quot;a&quot;</span><span class="p">)</span>
<a name="cl-395"></a>              <span class="p">(</span><span class="k">setq</span> <span class="nv">prx</span> <span class="ss">&#39;ac-l-argument</span>
<a name="cl-396"></a>                    <span class="nv">source</span> <span class="p">(</span><span class="nb">intern</span> <span class="p">(</span><span class="nb">format</span> <span class="s">&quot;ac-l-source-%s-arguments&quot;</span> <span class="nv">n</span><span class="p">)))</span>
<a name="cl-397"></a>            <span class="p">(</span><span class="k">setq</span> <span class="nv">source</span> <span class="p">(</span><span class="nb">intern</span> <span class="p">(</span><span class="nb">format</span> <span class="s">&quot;ac-l-source-%s-commands&quot;</span> <span class="nv">n</span><span class="p">))))))</span>
<a name="cl-398"></a>       <span class="p">((</span><span class="nb">or</span> <span class="p">(</span><span class="nb">string=</span> <span class="s">&quot;macro&quot;</span> <span class="nv">file</span><span class="p">)</span>
<a name="cl-399"></a>            <span class="p">(</span><span class="nb">string=</span> <span class="s">&quot;latex-dot-ltx&quot;</span> <span class="nv">file</span><span class="p">)</span>
<a name="cl-400"></a>            <span class="p">(</span><span class="nv">string-match</span> <span class="s">&quot;^\\(ptex-\\)?primitives$&quot;</span> <span class="nv">file</span><span class="p">)</span>
<a name="cl-401"></a>            <span class="p">(</span><span class="nv">string-match</span> <span class="s">&quot;^\\(basic\\|platex\\)-commands$&quot;</span> <span class="nv">file</span><span class="p">))</span>
<a name="cl-402"></a>        <span class="p">(</span><span class="k">setq</span> <span class="nv">source</span> <span class="ss">&#39;latex-cmd</span><span class="p">))</span>
<a name="cl-403"></a>       <span class="p">((</span><span class="nv">string-match</span> <span class="s">&quot;^\\(basic\\|platex\\)-arguments$&quot;</span> <span class="nv">file</span><span class="p">)</span>
<a name="cl-404"></a>        <span class="p">(</span><span class="k">setq</span> <span class="nv">source</span> <span class="ss">&#39;latex-arg</span><span class="p">))</span>
<a name="cl-405"></a>       <span class="p">((</span><span class="nb">cond</span> <span class="p">((</span><span class="nb">string=</span> <span class="s">&quot;user-commands&quot;</span> <span class="nv">file</span><span class="p">)</span> <span class="no">t</span><span class="p">)</span>
<a name="cl-406"></a>              <span class="p">((</span><span class="nb">string=</span> <span class="s">&quot;user-arguments&quot;</span> <span class="nv">file</span><span class="p">)</span> <span class="p">(</span><span class="k">setq</span> <span class="nv">prx</span> <span class="ss">&#39;ac-l-argument</span><span class="p">)))</span>
<a name="cl-407"></a>        <span class="p">(</span><span class="k">setq</span> <span class="nv">sym</span> <span class="s">&quot;u&quot;</span>
<a name="cl-408"></a>              <span class="nv">source</span> <span class="p">(</span><span class="nb">intern</span> <span class="p">(</span><span class="nv">concat</span> <span class="s">&quot;ac-l-source-&quot;</span> <span class="nv">file</span><span class="p">)))))</span>
<a name="cl-409"></a>      <span class="c1">;; read file contents</span>
<a name="cl-410"></a>      <span class="p">(</span><span class="nb">when</span> <span class="nv">source</span>
<a name="cl-411"></a>        <span class="p">(</span><span class="k">let</span> <span class="p">((</span><span class="nv">cands</span> <span class="p">(</span><span class="nv">with-temp-buffer</span>
<a name="cl-412"></a>                       <span class="p">(</span><span class="nv">insert-file-contents</span> <span class="p">(</span><span class="nv">concat</span> <span class="nv">ac-l-dict-directory</span> <span class="nv">file</span><span class="p">))</span>
<a name="cl-413"></a>                       <span class="p">(</span><span class="nv">split-string</span> <span class="p">(</span><span class="nv">buffer-string</span><span class="p">)</span> <span class="s">&quot;\n&quot;</span><span class="p">))))</span>
<a name="cl-414"></a>          <span class="p">(</span><span class="nb">case</span> <span class="nv">source</span>
<a name="cl-415"></a>            <span class="p">(</span><span class="nv">latex-cmd</span> <span class="p">(</span><span class="nv">ac-l-db-append</span> <span class="ss">&#39;latex-cmds</span> <span class="nv">cands</span><span class="p">))</span>
<a name="cl-416"></a>            <span class="p">(</span><span class="nv">latex-arg</span> <span class="p">(</span><span class="nv">ac-l-db-append</span> <span class="ss">&#39;latex-args</span> <span class="nv">cands</span><span class="p">))</span>
<a name="cl-417"></a>            <span class="p">(</span><span class="nv">otherwise</span>
<a name="cl-418"></a>             <span class="p">(</span><span class="nb">set</span> <span class="nv">source</span> <span class="p">(</span><span class="nv">delq</span> <span class="no">nil</span> <span class="o">`</span><span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="k">if</span> <span class="nc">package</span> <span class="o">`</span><span class="p">(</span><span class="nv">ac-l-package</span> <span class="o">.</span> <span class="o">,</span><span class="nc">package</span><span class="p">))</span>
<a name="cl-419"></a>                                     <span class="o">,</span><span class="p">(</span><span class="k">if</span> <span class="p">(</span><span class="nb">integerp</span> <span class="nv">req</span><span class="p">)</span> <span class="o">`</span><span class="p">(</span><span class="nv">requires</span> <span class="o">.</span> <span class="o">,</span><span class="nv">req</span><span class="p">))</span>
<a name="cl-420"></a>                                     <span class="p">(</span><span class="nc">symbol</span> <span class="o">.</span> <span class="o">,</span><span class="nv">sym</span><span class="p">)</span>
<a name="cl-421"></a>                                     <span class="p">(</span><span class="nv">prefix</span> <span class="o">.</span> <span class="o">,</span><span class="nv">prx</span><span class="p">)</span>
<a name="cl-422"></a>                                     <span class="p">(</span><span class="nv">candidates</span> <span class="o">.</span> <span class="ss">&#39;,cands</span><span class="p">))))</span>
<a name="cl-423"></a>             <span class="p">(</span><span class="nb">cond</span> <span class="p">(</span><span class="nc">package</span>
<a name="cl-424"></a>                    <span class="p">(</span><span class="nv">ac-l-db-push</span> <span class="nv">source</span> <span class="ss">&#39;package-sources</span><span class="p">))</span>
<a name="cl-425"></a>                   <span class="p">((</span><span class="nb">string=</span> <span class="nv">sym</span> <span class="s">&quot;u&quot;</span><span class="p">)</span>
<a name="cl-426"></a>                    <span class="p">(</span><span class="nv">ac-l-db-push</span> <span class="nv">source</span> <span class="ss">&#39;user-prefix-sources</span><span class="p">))))))))))</span>
<a name="cl-427"></a>
<a name="cl-428"></a><span class="c1">;;; update file&#39;s info</span>
<a name="cl-429"></a><span class="p">(</span><span class="nb">defstruct</span> <span class="nv">ac-l-info</span>
<a name="cl-430"></a>  <span class="s">&quot;Information about each tex file.&quot;</span>
<a name="cl-431"></a>  <span class="nv">modification</span> <span class="nv">words</span> <span class="nv">commands</span> <span class="nv">packages</span> <span class="k">labels</span> <span class="nv">bibitems</span> <span class="nv">bibs</span><span class="p">)</span>
<a name="cl-432"></a>
<a name="cl-433"></a><span class="c1">;; k -&gt; filename (full path), v -&gt; struct</span>
<a name="cl-434"></a><span class="p">(</span><span class="nv">defconst</span> <span class="nv">ac-l-structs</span> <span class="p">(</span><span class="nb">make-hash-table</span> <span class="ss">:test</span> <span class="ss">&#39;equal</span><span class="p">))</span>
<a name="cl-435"></a><span class="p">(</span><span class="nv">defconst</span> <span class="nv">ac-l-children</span> <span class="p">(</span><span class="nb">make-hash-table</span> <span class="ss">:test</span> <span class="ss">&#39;equal</span><span class="p">))</span>
<a name="cl-436"></a>
<a name="cl-437"></a><span class="p">(</span><span class="nv">defsubst</span> <span class="nv">ac-l-split-string</span> <span class="p">(</span><span class="nv">str</span><span class="p">)</span>
<a name="cl-438"></a>  <span class="p">(</span><span class="nv">split-string</span> <span class="nv">str</span> <span class="s">&quot;\\([ \t\n]\\|%.*\n\\|,\\)+&quot;</span> <span class="no">t</span><span class="p">))</span>
<a name="cl-439"></a>
<a name="cl-440"></a><span class="p">(</span><span class="nv">defsubst</span> <span class="nv">ac-l-candidates-hash</span> <span class="p">(</span><span class="nv">regexp</span> <span class="nv">table</span> <span class="nv">beg</span> <span class="nv">end</span><span class="p">)</span>
<a name="cl-441"></a>  <span class="p">(</span><span class="nv">goto-char</span> <span class="nv">beg</span><span class="p">)</span>
<a name="cl-442"></a>  <span class="p">(</span><span class="nv">while</span> <span class="p">(</span><span class="nv">re-search-forward</span> <span class="nv">regexp</span> <span class="nv">end</span> <span class="no">t</span><span class="p">)</span>
<a name="cl-443"></a>    <span class="p">(</span><span class="nv">puthash</span> <span class="p">(</span><span class="nv">match-string-no-properties</span> <span class="mi">1</span><span class="p">)</span>
<a name="cl-444"></a>             <span class="p">(</span><span class="nv">match-string-no-properties</span> <span class="mi">0</span><span class="p">)</span>
<a name="cl-445"></a>             <span class="nv">table</span><span class="p">)</span>
<a name="cl-446"></a>    <span class="p">(</span><span class="nv">goto-char</span> <span class="p">(</span><span class="nb">1+</span> <span class="p">(</span><span class="nv">match-beginning</span> <span class="mi">0</span><span class="p">)))))</span>
<a name="cl-447"></a>
<a name="cl-448"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-make-info</span> <span class="p">(</span><span class="nv">struct</span> <span class="nv">filename</span> <span class="k">&amp;optional</span> <span class="nv">master</span><span class="p">)</span>
<a name="cl-449"></a>  <span class="p">(</span><span class="k">let*</span> <span class="p">((</span><span class="nv">word-re</span> <span class="s">&quot;[^\\,]\\(\\&lt;[-&#39;a-zA-Z]+\\&gt;\\)&quot;</span><span class="p">)</span>
<a name="cl-450"></a>         <span class="p">(</span><span class="nv">package-re</span> <span class="s">&quot;^[^%\n]*\\\\\\(?:\\(?:usep\\|RequireP\\)ackage\\|documentclass\\)\\(?:\\[[^]]*\\]\\)?{\\([^}]+\\)&quot;</span><span class="p">)</span>
<a name="cl-451"></a>         <span class="p">(</span><span class="nv">lines</span> <span class="s">&quot;.*\n.*\n.*\n&quot;</span><span class="p">)</span>
<a name="cl-452"></a>         <span class="p">(</span><span class="nv">label-re</span> <span class="s">&quot;\\\\label{\\(\\(?:[^ }\t\n]\\)+\\)}&quot;</span><span class="p">)</span>
<a name="cl-453"></a>         <span class="p">(</span><span class="nv">label-re1</span> <span class="p">(</span><span class="nv">concat</span> <span class="s">&quot;^[^%\n]*&quot;</span> <span class="nv">label-re</span> <span class="s">&quot;.*$&quot;</span><span class="p">))</span>
<a name="cl-454"></a>         <span class="p">(</span><span class="nv">label-re2</span> <span class="p">(</span><span class="nv">concat</span> <span class="s">&quot;^&quot;</span> <span class="nv">lines</span> <span class="s">&quot;[^%\n]*&quot;</span> <span class="nv">label-re</span> <span class="nv">lines</span> <span class="s">&quot;.*$&quot;</span><span class="p">))</span>
<a name="cl-455"></a>         <span class="p">(</span><span class="nv">bibitem-re</span> <span class="s">&quot;^[^%\n]*\\\\bibitem\\(?:\\[[^]]*\\]\\)?{\\(\\(?:[^ }\t\n]\\)+\\)}[^\\]*&quot;</span><span class="p">)</span>
<a name="cl-456"></a>         <span class="p">(</span><span class="nv">bib-re</span> <span class="s">&quot;^[^%\n]*\\\\bibliography{\\([^}]+\\)&quot;</span><span class="p">)</span>
<a name="cl-457"></a>         <span class="p">(</span><span class="nv">collect-p</span> <span class="p">(</span><span class="nb">not</span> <span class="p">(</span><span class="nb">or</span> <span class="nv">master</span> <span class="p">(</span><span class="nv">buffer-file-name</span><span class="p">))))</span>
<a name="cl-458"></a>         <span class="p">(</span><span class="nv">beg</span> <span class="p">(</span><span class="nv">point-min</span><span class="p">))</span>
<a name="cl-459"></a>         <span class="p">(</span><span class="nv">label-beg</span> <span class="p">(</span><span class="nv">save-excursion</span>
<a name="cl-460"></a>                      <span class="p">(</span><span class="nv">goto-char</span> <span class="nv">beg</span><span class="p">)</span>
<a name="cl-461"></a>                      <span class="p">(</span><span class="nv">forward-line</span> <span class="mi">3</span><span class="p">)</span>
<a name="cl-462"></a>                      <span class="p">(</span><span class="nv">point</span><span class="p">)))</span>
<a name="cl-463"></a>         <span class="p">(</span><span class="nv">label-end</span> <span class="p">(</span><span class="nv">save-excursion</span>
<a name="cl-464"></a>                      <span class="p">(</span><span class="nv">goto-char</span> <span class="p">(</span><span class="nv">point-max</span><span class="p">))</span>
<a name="cl-465"></a>                      <span class="p">(</span><span class="nv">forward-line</span> <span class="mi">-3</span><span class="p">)</span>
<a name="cl-466"></a>                      <span class="p">(</span><span class="nv">point</span><span class="p">)))</span>
<a name="cl-467"></a>         <span class="p">(</span><span class="nv">label-ht</span> <span class="p">(</span><span class="nb">or</span> <span class="p">(</span><span class="nb">ignore-errors</span> <span class="p">(</span><span class="nb">clrhash</span> <span class="p">(</span><span class="nv">ac-l-info-labels</span> <span class="nv">struct</span><span class="p">)))</span>
<a name="cl-468"></a>                       <span class="p">(</span><span class="nb">make-hash-table</span> <span class="ss">:test</span> <span class="ss">&#39;equal</span><span class="p">)))</span>
<a name="cl-469"></a>         <span class="p">(</span><span class="nv">bibitem-ht</span> <span class="p">(</span><span class="nb">or</span> <span class="p">(</span><span class="nb">ignore-errors</span> <span class="p">(</span><span class="nb">clrhash</span> <span class="p">(</span><span class="nv">ac-l-info-bibitems</span> <span class="nv">struct</span><span class="p">)))</span>
<a name="cl-470"></a>                         <span class="p">(</span><span class="nb">make-hash-table</span> <span class="ss">:test</span> <span class="ss">&#39;equal</span><span class="p">)))</span>
<a name="cl-471"></a>         <span class="p">(</span><span class="nv">i</span> <span class="mi">0</span><span class="p">)</span>
<a name="cl-472"></a>         <span class="nv">words</span> <span class="nv">commands</span> <span class="nv">packages</span> <span class="nv">bibs</span> <span class="nv">cand</span><span class="p">)</span>
<a name="cl-473"></a>    <span class="p">(</span><span class="nv">save-excursion</span>
<a name="cl-474"></a>      <span class="p">(</span><span class="nb">when</span> <span class="p">(</span><span class="nb">and</span> <span class="nv">ac-l-use-word-completion</span> <span class="nv">collect-p</span><span class="p">)</span>
<a name="cl-475"></a>        <span class="p">(</span><span class="nv">goto-char</span> <span class="nv">beg</span><span class="p">)</span>
<a name="cl-476"></a>        <span class="p">(</span><span class="nv">while</span> <span class="p">(</span><span class="nb">and</span> <span class="p">(</span><span class="nv">re-search-forward</span> <span class="nv">word-re</span> <span class="no">nil</span> <span class="no">t</span><span class="p">)</span> <span class="p">(</span><span class="nb">&lt;=</span> <span class="nv">i</span> <span class="mi">100</span><span class="p">))</span>
<a name="cl-477"></a>          <span class="p">(</span><span class="k">setq</span> <span class="nv">cand</span> <span class="p">(</span><span class="nv">match-string-no-properties</span> <span class="mi">1</span><span class="p">))</span>
<a name="cl-478"></a>          <span class="p">(</span><span class="nb">when</span> <span class="p">(</span><span class="nb">and</span> <span class="p">(</span><span class="nb">not</span> <span class="p">(</span><span class="nb">member</span> <span class="nv">cand</span> <span class="nv">words</span><span class="p">))</span>
<a name="cl-479"></a>                     <span class="p">(</span><span class="nb">&gt;=</span> <span class="p">(</span><span class="nb">length</span> <span class="nv">cand</span><span class="p">)</span> <span class="mi">3</span><span class="p">))</span>
<a name="cl-480"></a>            <span class="p">(</span><span class="nb">push</span> <span class="nv">cand</span> <span class="nv">words</span><span class="p">)</span>
<a name="cl-481"></a>            <span class="p">(</span><span class="nb">incf</span> <span class="nv">i</span><span class="p">))))</span>
<a name="cl-482"></a>      <span class="p">(</span><span class="nb">when</span> <span class="nv">collect-p</span>
<a name="cl-483"></a>        <span class="p">(</span><span class="k">let</span> <span class="p">((</span><span class="nv">latex-cmds</span> <span class="p">(</span><span class="nv">ac-l-db-get</span> <span class="ss">&#39;latex-cmds</span><span class="p">)))</span>
<a name="cl-484"></a>          <span class="p">(</span><span class="nv">goto-char</span> <span class="nv">beg</span><span class="p">)</span>
<a name="cl-485"></a>          <span class="p">(</span><span class="nv">while</span> <span class="p">(</span><span class="nv">re-search-forward</span> <span class="nv">ac-l-command-prefix</span> <span class="no">nil</span> <span class="no">t</span><span class="p">)</span>
<a name="cl-486"></a>            <span class="p">(</span><span class="k">setq</span> <span class="nv">cand</span> <span class="p">(</span><span class="nv">match-string-no-properties</span> <span class="mi">1</span><span class="p">))</span>
<a name="cl-487"></a>            <span class="p">(</span><span class="nb">unless</span> <span class="p">(</span><span class="nb">or</span> <span class="p">(</span><span class="nb">member</span> <span class="nv">cand</span> <span class="nv">commands</span><span class="p">)</span>
<a name="cl-488"></a>                        <span class="p">(</span><span class="nb">member</span> <span class="nv">cand</span> <span class="nv">latex-cmds</span><span class="p">))</span>
<a name="cl-489"></a>              <span class="p">(</span><span class="nb">push</span> <span class="nv">cand</span> <span class="nv">commands</span><span class="p">)))))</span>
<a name="cl-490"></a>      <span class="p">(</span><span class="nb">when</span> <span class="nv">master</span>
<a name="cl-491"></a>        <span class="p">(</span><span class="nv">goto-char</span> <span class="nv">beg</span><span class="p">)</span>
<a name="cl-492"></a>        <span class="p">(</span><span class="nv">while</span> <span class="p">(</span><span class="nv">re-search-forward</span> <span class="nv">package-re</span> <span class="no">nil</span> <span class="no">t</span><span class="p">)</span>
<a name="cl-493"></a>          <span class="p">(</span><span class="nb">dolist</span> <span class="p">(</span><span class="nv">name</span> <span class="p">(</span><span class="nv">ac-l-split-string</span> <span class="p">(</span><span class="nv">match-string-no-properties</span> <span class="mi">1</span><span class="p">)))</span>
<a name="cl-494"></a>            <span class="p">(</span><span class="nb">unless</span> <span class="p">(</span><span class="nb">member</span> <span class="nv">name</span> <span class="nv">packages</span><span class="p">)</span>
<a name="cl-495"></a>              <span class="p">(</span><span class="nb">push</span> <span class="nv">name</span> <span class="nv">packages</span><span class="p">)))))</span>
<a name="cl-496"></a>      <span class="p">(</span><span class="nv">ac-l-candidates-hash</span> <span class="nv">label-re1</span> <span class="nv">label-ht</span> <span class="nv">beg</span> <span class="nv">label-beg</span><span class="p">)</span>
<a name="cl-497"></a>      <span class="p">(</span><span class="nv">ac-l-candidates-hash</span> <span class="nv">label-re2</span> <span class="nv">label-ht</span> <span class="nv">beg</span> <span class="no">nil</span><span class="p">)</span>
<a name="cl-498"></a>      <span class="p">(</span><span class="nv">ac-l-candidates-hash</span> <span class="nv">label-re1</span> <span class="nv">label-ht</span> <span class="nv">label-end</span> <span class="no">nil</span><span class="p">)</span>
<a name="cl-499"></a>      <span class="p">(</span><span class="nv">ac-l-candidates-hash</span> <span class="nv">bibitem-re</span> <span class="nv">bibitem-ht</span> <span class="nv">beg</span> <span class="no">nil</span><span class="p">)</span>
<a name="cl-500"></a>      <span class="p">(</span><span class="nb">when</span> <span class="nv">ac-l-bib-files</span>
<a name="cl-501"></a>        <span class="p">(</span><span class="nv">goto-char</span> <span class="nv">beg</span><span class="p">)</span>
<a name="cl-502"></a>        <span class="p">(</span><span class="nv">while</span> <span class="p">(</span><span class="nv">re-search-forward</span> <span class="nv">bib-re</span> <span class="no">nil</span> <span class="no">t</span><span class="p">)</span>
<a name="cl-503"></a>          <span class="p">(</span><span class="nb">dolist</span> <span class="p">(</span><span class="nv">name</span> <span class="p">(</span><span class="nv">ac-l-split-string</span> <span class="p">(</span><span class="nv">match-string-no-properties</span> <span class="mi">1</span><span class="p">)))</span>
<a name="cl-504"></a>            <span class="p">(</span><span class="nb">unless</span> <span class="p">(</span><span class="nb">member</span> <span class="nv">name</span> <span class="nv">bibs</span><span class="p">)</span>
<a name="cl-505"></a>              <span class="p">(</span><span class="nb">push</span> <span class="nv">name</span> <span class="nv">bibs</span><span class="p">))))))</span>
<a name="cl-506"></a>    <span class="p">(</span><span class="nv">puthash</span> <span class="nv">filename</span>
<a name="cl-507"></a>             <span class="p">(</span><span class="nv">make-ac-l-info</span>
<a name="cl-508"></a>              <span class="ss">:modification</span> <span class="p">(</span><span class="nb">ignore-errors</span> <span class="p">(</span><span class="nb">nth</span> <span class="mi">5</span> <span class="p">(</span><span class="nv">file-attributes</span> <span class="nv">filename</span><span class="p">)))</span>
<a name="cl-509"></a>              <span class="ss">:words</span> <span class="nv">words</span>
<a name="cl-510"></a>              <span class="ss">:commands</span> <span class="nv">commands</span>
<a name="cl-511"></a>              <span class="ss">:packages</span> <span class="nv">packages</span>
<a name="cl-512"></a>              <span class="ss">:labels</span> <span class="nv">label-ht</span>
<a name="cl-513"></a>              <span class="ss">:bibitems</span> <span class="nv">bibitem-ht</span>
<a name="cl-514"></a>              <span class="ss">:bibs</span> <span class="nv">bibs</span><span class="p">)</span>
<a name="cl-515"></a>             <span class="nv">ac-l-structs</span><span class="p">)))</span>
<a name="cl-516"></a>
<a name="cl-517"></a><span class="p">(</span><span class="nv">defsubst</span> <span class="nv">ac-l-struct-master</span> <span class="p">()</span>
<a name="cl-518"></a>  <span class="p">(</span><span class="nb">gethash</span> <span class="nv">ac-l-master-file</span> <span class="nv">ac-l-structs</span><span class="p">))</span>
<a name="cl-519"></a>
<a name="cl-520"></a><span class="p">(</span><span class="nv">defsubst</span> <span class="nv">ac-l-all-structs</span> <span class="p">()</span>
<a name="cl-521"></a>  <span class="p">(</span><span class="nv">delq</span> <span class="no">t</span> <span class="p">(</span><span class="nb">append</span> <span class="p">(</span><span class="nb">loop</span> <span class="nv">for</span> <span class="nv">v</span> <span class="nv">being</span> <span class="k">the</span> <span class="nv">hash-values</span> <span class="nv">in</span> <span class="nv">ac-l-children</span> <span class="nv">collect</span> <span class="nv">v</span><span class="p">)</span>
<a name="cl-522"></a>                  <span class="p">(</span><span class="nb">list</span> <span class="p">(</span><span class="nv">ac-l-struct-master</span><span class="p">)))))</span>
<a name="cl-523"></a>
<a name="cl-524"></a><span class="p">(</span><span class="nv">defsubst</span> <span class="nv">ac-l-append-info</span> <span class="p">(</span><span class="nv">info-fn</span><span class="p">)</span>
<a name="cl-525"></a>  <span class="p">(</span><span class="nb">apply</span> <span class="ss">&#39;append</span> <span class="p">(</span><span class="nb">mapcar</span> <span class="nv">info-fn</span> <span class="p">(</span><span class="nv">ac-l-all-structs</span><span class="p">))))</span>
<a name="cl-526"></a>
<a name="cl-527"></a><span class="p">(</span><span class="nv">defsubst</span> <span class="nv">ac-l-convert-file-to-filename</span> <span class="p">(</span><span class="nv">file</span> <span class="nv">base-dir</span> <span class="nv">suffix</span><span class="p">)</span>
<a name="cl-528"></a>  <span class="c1">;; FILE -&gt; BASE-DIR/FILE.SUFFIX</span>
<a name="cl-529"></a>  <span class="p">(</span><span class="k">let</span> <span class="p">((</span><span class="nv">path</span> <span class="p">(</span><span class="nv">expand-file-name</span> <span class="nv">file</span> <span class="nv">base-dir</span><span class="p">)))</span>
<a name="cl-530"></a>    <span class="p">(</span><span class="nv">concat</span> <span class="p">(</span><span class="k">if</span> <span class="p">(</span><span class="nv">string-match</span> <span class="s">&quot;^\\(.+\\)\\.[^./]+$&quot;</span> <span class="nv">path</span><span class="p">)</span>
<a name="cl-531"></a>                <span class="p">(</span><span class="nv">match-string</span> <span class="mi">1</span> <span class="nv">path</span><span class="p">)</span>
<a name="cl-532"></a>              <span class="nv">path</span><span class="p">)</span>
<a name="cl-533"></a>            <span class="s">&quot;.&quot;</span> <span class="nv">suffix</span><span class="p">)))</span>
<a name="cl-534"></a>
<a name="cl-535"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-update-children-names</span> <span class="p">()</span>
<a name="cl-536"></a>  <span class="c1">;; parse file names in master and push them into DB</span>
<a name="cl-537"></a>  <span class="p">(</span><span class="k">let*</span> <span class="p">((</span><span class="nv">beg-re</span> <span class="s">&quot;^[^%\n]*\\\\\\(?:&quot;</span><span class="p">)</span>
<a name="cl-538"></a>         <span class="p">(</span><span class="nv">end-re</span> <span class="s">&quot;\\)[ {\t]+\\([^ }%\n]+\\)&quot;</span><span class="p">)</span>
<a name="cl-539"></a>         <span class="p">(</span><span class="nv">regexp</span> <span class="p">(</span><span class="nv">concat</span> <span class="nv">beg-re</span> <span class="s">&quot;in\\(?:put\\|clude\\)&quot;</span> <span class="nv">end-re</span><span class="p">))</span>
<a name="cl-540"></a>         <span class="p">(</span><span class="nv">beg</span> <span class="p">(</span><span class="nv">point-min</span><span class="p">))</span>
<a name="cl-541"></a>         <span class="p">(</span><span class="nv">dir</span> <span class="p">(</span><span class="k">if</span> <span class="p">(</span><span class="nv">string-match</span> <span class="s">&quot;^\\(.+/\\).+$&quot;</span> <span class="nv">ac-l-master-file</span><span class="p">)</span>
<a name="cl-542"></a>                  <span class="p">(</span><span class="nv">match-string</span> <span class="mi">1</span> <span class="nv">ac-l-master-file</span><span class="p">)</span>
<a name="cl-543"></a>                <span class="s">&quot;/&quot;</span><span class="p">))</span>
<a name="cl-544"></a>         <span class="nv">names</span><span class="p">)</span>
<a name="cl-545"></a>    <span class="p">(</span><span class="nv">save-excursion</span>
<a name="cl-546"></a>      <span class="p">(</span><span class="nv">goto-char</span> <span class="nv">beg</span><span class="p">)</span>
<a name="cl-547"></a>      <span class="p">(</span><span class="nb">when</span> <span class="p">(</span><span class="nv">re-search-forward</span> <span class="p">(</span><span class="nv">concat</span> <span class="nv">beg-re</span> <span class="s">&quot;includeonly&quot;</span> <span class="nv">end-re</span><span class="p">)</span> <span class="no">nil</span> <span class="no">t</span><span class="p">)</span>
<a name="cl-548"></a>        <span class="p">(</span><span class="k">setq</span> <span class="nv">names</span> <span class="p">(</span><span class="nv">ac-l-split-string</span> <span class="p">(</span><span class="nv">match-string-no-properties</span> <span class="mi">1</span><span class="p">))</span>
<a name="cl-549"></a>              <span class="nv">regexp</span> <span class="p">(</span><span class="nv">concat</span> <span class="nv">beg-re</span> <span class="s">&quot;input&quot;</span> <span class="nv">end-re</span><span class="p">)))</span>
<a name="cl-550"></a>      <span class="p">(</span><span class="nv">goto-char</span> <span class="nv">beg</span><span class="p">)</span>
<a name="cl-551"></a>      <span class="p">(</span><span class="k">setq</span> <span class="nv">names</span> <span class="p">(</span><span class="nb">append</span> <span class="nv">names</span>
<a name="cl-552"></a>                          <span class="p">(</span><span class="nb">loop</span> <span class="nv">while</span> <span class="p">(</span><span class="nv">re-search-forward</span> <span class="nv">regexp</span> <span class="no">nil</span> <span class="no">t</span><span class="p">)</span>
<a name="cl-553"></a>                                <span class="nv">collect</span> <span class="p">(</span><span class="nv">match-string-no-properties</span> <span class="mi">1</span><span class="p">)))))</span>
<a name="cl-554"></a>    <span class="p">(</span><span class="nv">ac-l-db-set</span> <span class="ss">&#39;children</span>
<a name="cl-555"></a>                 <span class="p">(</span><span class="nb">loop</span> <span class="nv">for</span> <span class="nv">name</span> <span class="nv">in</span> <span class="nv">names</span>
<a name="cl-556"></a>                       <span class="nv">for</span> <span class="nv">filename</span> <span class="nb">=</span> <span class="p">(</span><span class="nv">ac-l-convert-file-to-filename</span> <span class="nv">name</span> <span class="nv">dir</span> <span class="s">&quot;tex&quot;</span><span class="p">)</span>
<a name="cl-557"></a>                       <span class="k">if</span> <span class="p">(</span><span class="nv">file-exists-p</span> <span class="nv">filename</span><span class="p">)</span>
<a name="cl-558"></a>                       <span class="nv">collect</span> <span class="nv">filename</span><span class="p">))))</span>
<a name="cl-559"></a>
<a name="cl-560"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-update-children</span> <span class="p">(</span><span class="nv">filenames</span><span class="p">)</span>
<a name="cl-561"></a>  <span class="p">(</span><span class="nb">clrhash</span> <span class="nv">ac-l-children</span><span class="p">)</span>
<a name="cl-562"></a>  <span class="p">(</span><span class="nb">dolist</span> <span class="p">(</span><span class="nv">filename</span> <span class="nv">filenames</span><span class="p">)</span>
<a name="cl-563"></a>    <span class="c1">;; If struct is undefined, put t.</span>
<a name="cl-564"></a>    <span class="p">(</span><span class="nv">puthash</span> <span class="nv">filename</span> <span class="p">(</span><span class="nb">or</span> <span class="p">(</span><span class="nb">gethash</span> <span class="nv">filename</span> <span class="nv">ac-l-structs</span><span class="p">)</span> <span class="no">t</span><span class="p">)</span> <span class="nv">ac-l-children</span><span class="p">))</span>
<a name="cl-565"></a>  <span class="nv">ac-l-children</span><span class="p">)</span>
<a name="cl-566"></a>
<a name="cl-567"></a><span class="p">(</span><span class="nv">defsubst</span> <span class="nv">ac-l-file-mod-p</span> <span class="p">(</span><span class="nv">struct</span> <span class="nv">filename</span><span class="p">)</span>
<a name="cl-568"></a>  <span class="p">(</span><span class="nb">not</span> <span class="p">(</span><span class="nb">equal</span> <span class="p">(</span><span class="nv">ac-l-info-modification</span> <span class="nv">struct</span><span class="p">)</span>
<a name="cl-569"></a>              <span class="p">(</span><span class="nb">nth</span> <span class="mi">5</span> <span class="p">(</span><span class="nv">file-attributes</span> <span class="nv">filename</span><span class="p">)))))</span>
<a name="cl-570"></a>
<a name="cl-571"></a><span class="p">(</span><span class="nv">defsubst</span> <span class="nv">ac-l-update-master-info</span> <span class="p">()</span>
<a name="cl-572"></a>  <span class="p">(</span><span class="nv">ac-l-make-info</span> <span class="p">(</span><span class="nv">ac-l-struct-master</span><span class="p">)</span> <span class="nv">ac-l-master-file</span> <span class="no">t</span><span class="p">))</span>
<a name="cl-573"></a>
<a name="cl-574"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-update-info</span> <span class="p">(</span><span class="k">&amp;optional</span> <span class="nv">force</span><span class="p">)</span>
<a name="cl-575"></a>  <span class="s">&quot;If necessary, update file&#39;s info.&quot;</span>
<a name="cl-576"></a>  <span class="p">(</span><span class="k">if</span> <span class="nv">ac-l-master-p</span>
<a name="cl-577"></a>      <span class="p">(</span><span class="k">let</span> <span class="p">((</span><span class="nv">master-mod-p</span> <span class="p">(</span><span class="nb">or</span> <span class="nv">force</span> <span class="p">(</span><span class="nv">ac-l-file-mod-p</span> <span class="p">(</span><span class="nv">ac-l-struct-master</span><span class="p">)</span> <span class="nv">ac-l-master-file</span><span class="p">)))</span>
<a name="cl-578"></a>            <span class="p">(</span><span class="nv">buf-list</span> <span class="p">(</span><span class="nv">buffer-list</span><span class="p">)))</span>
<a name="cl-579"></a>        <span class="c1">;; master</span>
<a name="cl-580"></a>        <span class="p">(</span><span class="nb">or</span> <span class="p">(</span><span class="nb">loop</span> <span class="nv">with</span> <span class="nv">master</span> <span class="nb">=</span> <span class="p">(</span><span class="nv">expand-file-name</span> <span class="nv">ac-l-master-file</span><span class="p">)</span>
<a name="cl-581"></a>                  <span class="nv">for</span> <span class="nv">buf</span> <span class="nv">in</span> <span class="nv">buf-list</span>
<a name="cl-582"></a>                  <span class="k">if</span> <span class="p">(</span><span class="nb">string=</span> <span class="nv">master</span> <span class="p">(</span><span class="nv">buffer-file-name</span> <span class="nv">buf</span><span class="p">))</span>
<a name="cl-583"></a>                  <span class="nb">do</span> <span class="p">(</span><span class="nb">when</span> <span class="p">(</span><span class="nb">or</span> <span class="p">(</span><span class="nv">buffer-modified-p</span> <span class="nv">buf</span><span class="p">)</span> <span class="nv">master-mod-p</span><span class="p">)</span>
<a name="cl-584"></a>                       <span class="p">(</span><span class="nv">with-current-buffer</span> <span class="nv">buf</span>
<a name="cl-585"></a>                         <span class="p">(</span><span class="nv">ac-l-update-children-names</span><span class="p">)</span>
<a name="cl-586"></a>                         <span class="p">(</span><span class="nv">ac-l-update-master-info</span><span class="p">)))</span>
<a name="cl-587"></a>                  <span class="nb">and</span> <span class="nb">return</span> <span class="no">t</span><span class="p">)</span>
<a name="cl-588"></a>            <span class="p">(</span><span class="nb">when</span> <span class="nv">master-mod-p</span>
<a name="cl-589"></a>              <span class="p">(</span><span class="nv">with-temp-buffer</span>
<a name="cl-590"></a>                <span class="p">(</span><span class="nv">insert-file-contents</span> <span class="nv">ac-l-master-file</span><span class="p">)</span>
<a name="cl-591"></a>                <span class="p">(</span><span class="nv">ac-l-update-children-names</span><span class="p">)</span>
<a name="cl-592"></a>                <span class="p">(</span><span class="nv">ac-l-update-master-info</span><span class="p">))))</span>
<a name="cl-593"></a>        <span class="c1">;; children</span>
<a name="cl-594"></a>        <span class="p">(</span><span class="k">let*</span> <span class="p">((</span><span class="nv">filenames</span> <span class="p">(</span><span class="nv">ac-l-db-get</span> <span class="ss">&#39;children</span><span class="p">))</span>
<a name="cl-595"></a>               <span class="p">(</span><span class="nv">table</span> <span class="p">(</span><span class="nv">ac-l-update-children</span> <span class="nv">filenames</span><span class="p">)))</span>
<a name="cl-596"></a>          <span class="p">(</span><span class="nb">dolist</span> <span class="p">(</span><span class="nv">buf</span> <span class="nv">buf-list</span><span class="p">)</span>
<a name="cl-597"></a>            <span class="p">(</span><span class="k">let*</span> <span class="p">((</span><span class="nv">filename</span> <span class="p">(</span><span class="nv">buffer-file-name</span> <span class="nv">buf</span><span class="p">))</span>
<a name="cl-598"></a>                   <span class="p">(</span><span class="nv">struct</span> <span class="p">(</span><span class="nb">gethash</span> <span class="nv">filename</span> <span class="nv">table</span><span class="p">)))</span>
<a name="cl-599"></a>              <span class="p">(</span><span class="nb">when</span> <span class="p">(</span><span class="nb">and</span> <span class="nv">struct</span>
<a name="cl-600"></a>                         <span class="p">(</span><span class="nb">or</span> <span class="p">(</span><span class="nb">not</span> <span class="p">(</span><span class="nv">ac-l-info-p</span> <span class="nv">struct</span><span class="p">))</span>
<a name="cl-601"></a>                             <span class="p">(</span><span class="nv">buffer-modified-p</span> <span class="nv">buf</span><span class="p">)</span>
<a name="cl-602"></a>                             <span class="p">(</span><span class="nv">ac-l-file-mod-p</span> <span class="nv">struct</span> <span class="nv">filename</span><span class="p">)))</span>
<a name="cl-603"></a>                <span class="p">(</span><span class="nv">with-current-buffer</span> <span class="nv">buf</span>
<a name="cl-604"></a>                  <span class="p">(</span><span class="nv">ac-l-make-info</span> <span class="nv">struct</span> <span class="nv">filename</span><span class="p">))</span>
<a name="cl-605"></a>                <span class="p">(</span><span class="nb">remhash</span> <span class="nv">filename</span> <span class="nv">table</span><span class="p">))))</span>
<a name="cl-606"></a>          <span class="p">(</span><span class="nb">maphash</span> <span class="p">(</span><span class="k">lambda</span> <span class="p">(</span><span class="nv">filename</span> <span class="nv">struct</span><span class="p">)</span>
<a name="cl-607"></a>                     <span class="p">(</span><span class="nb">when</span> <span class="p">(</span><span class="nb">or</span> <span class="p">(</span><span class="nb">not</span> <span class="p">(</span><span class="nv">ac-l-info-p</span> <span class="nv">struct</span><span class="p">))</span>
<a name="cl-608"></a>                               <span class="p">(</span><span class="nv">ac-l-file-mod-p</span> <span class="nv">struct</span> <span class="nv">filename</span><span class="p">))</span>
<a name="cl-609"></a>                       <span class="p">(</span><span class="nv">with-temp-buffer</span>
<a name="cl-610"></a>                         <span class="p">(</span><span class="nv">insert-file-contents</span> <span class="nv">filename</span><span class="p">)</span>
<a name="cl-611"></a>                         <span class="p">(</span><span class="nv">ac-l-make-info</span> <span class="nv">struct</span> <span class="nv">filename</span><span class="p">))))</span>
<a name="cl-612"></a>                   <span class="nv">table</span><span class="p">)</span>
<a name="cl-613"></a>          <span class="p">(</span><span class="nv">ac-l-update-children</span> <span class="nv">filenames</span><span class="p">)))</span>
<a name="cl-614"></a>    <span class="p">(</span><span class="nb">when</span> <span class="p">(</span><span class="nb">or</span> <span class="nv">force</span> <span class="p">(</span><span class="nv">buffer-modified-p</span><span class="p">))</span>
<a name="cl-615"></a>      <span class="p">(</span><span class="nv">ac-l-update-master-info</span><span class="p">))))</span>
<a name="cl-616"></a>
<a name="cl-617"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-update</span> <span class="p">()</span>
<a name="cl-618"></a>  <span class="s">&quot;Update `ac-sources&#39; according to packages.&quot;</span>
<a name="cl-619"></a>  <span class="p">(</span><span class="nv">ac-l-db-set</span> <span class="ss">&#39;package-cmds</span> <span class="no">nil</span><span class="p">)</span>
<a name="cl-620"></a>  <span class="p">(</span><span class="nv">ac-l-db-set</span> <span class="ss">&#39;package-args</span> <span class="no">nil</span><span class="p">)</span>
<a name="cl-621"></a>  <span class="p">(</span><span class="k">let</span> <span class="p">((</span><span class="nv">sources</span> <span class="p">(</span><span class="nv">ac-l-db-get</span> <span class="ss">&#39;sources</span><span class="p">))</span>
<a name="cl-622"></a>        <span class="nv">cmd-sources</span> <span class="nv">arg-sources</span><span class="p">)</span>
<a name="cl-623"></a>    <span class="p">(</span><span class="nb">dolist</span> <span class="p">(</span><span class="nv">name</span> <span class="p">(</span><span class="nv">ac-l-info-packages</span> <span class="p">(</span><span class="nv">ac-l-struct-master</span><span class="p">)))</span>
<a name="cl-624"></a>      <span class="c1">;; sources</span>
<a name="cl-625"></a>      <span class="p">(</span><span class="nb">dolist</span> <span class="p">(</span><span class="nv">source</span> <span class="p">(</span><span class="nv">ac-l-db-get</span> <span class="ss">&#39;package-sources</span><span class="p">))</span>
<a name="cl-626"></a>        <span class="p">(</span><span class="k">let*</span> <span class="p">((</span><span class="nv">alist</span> <span class="p">(</span><span class="nb">symbol-value</span> <span class="nv">source</span><span class="p">))</span>
<a name="cl-627"></a>               <span class="p">(</span><span class="nc">package</span> <span class="p">(</span><span class="nb">cdr</span> <span class="p">(</span><span class="nv">assq</span> <span class="ss">&#39;ac-l-package</span> <span class="nv">alist</span><span class="p">)))</span>
<a name="cl-628"></a>               <span class="p">(</span><span class="nv">prefix</span> <span class="p">(</span><span class="nb">cdr</span> <span class="p">(</span><span class="nv">assq</span> <span class="ss">&#39;prefix</span> <span class="nv">alist</span><span class="p">))))</span>
<a name="cl-629"></a>          <span class="p">(</span><span class="nb">when</span> <span class="p">(</span><span class="nv">string-match</span> <span class="nc">package</span> <span class="nv">name</span><span class="p">)</span>
<a name="cl-630"></a>            <span class="p">(</span><span class="nb">cond</span>
<a name="cl-631"></a>             <span class="p">((</span><span class="nb">string=</span> <span class="nv">prefix</span> <span class="nv">ac-l-command-prefix</span><span class="p">)</span>
<a name="cl-632"></a>              <span class="p">(</span><span class="nb">unless</span> <span class="p">(</span><span class="nv">memq</span> <span class="nv">source</span> <span class="nv">cmd-sources</span><span class="p">)</span>
<a name="cl-633"></a>                <span class="p">(</span><span class="nb">push</span> <span class="nv">source</span> <span class="nv">cmd-sources</span><span class="p">)))</span>
<a name="cl-634"></a>             <span class="p">((</span><span class="nb">eq</span> <span class="nv">prefix</span> <span class="ss">&#39;ac-l-argument</span><span class="p">)</span>
<a name="cl-635"></a>              <span class="p">(</span><span class="nb">unless</span> <span class="p">(</span><span class="nv">memq</span> <span class="nv">source</span> <span class="nv">arg-sources</span><span class="p">)</span>
<a name="cl-636"></a>                <span class="p">(</span><span class="nb">push</span> <span class="nv">source</span> <span class="nv">arg-sources</span><span class="p">)))))))</span>
<a name="cl-637"></a>      <span class="c1">;; candidates</span>
<a name="cl-638"></a>      <span class="p">(</span><span class="k">let*</span> <span class="p">((</span><span class="nv">vec</span> <span class="p">(</span><span class="nb">or</span> <span class="p">(</span><span class="nb">gethash</span> <span class="nv">name</span> <span class="nv">ac-l-packages</span><span class="p">)</span> <span class="ss">&#39;[nil</span> <span class="nv">nil]</span><span class="p">))</span>
<a name="cl-639"></a>             <span class="p">(</span><span class="nv">cmd</span> <span class="p">(</span><span class="nb">aref</span> <span class="nv">vec</span> <span class="mi">0</span><span class="p">))</span>
<a name="cl-640"></a>             <span class="p">(</span><span class="nv">arg</span> <span class="p">(</span><span class="nb">aref</span> <span class="nv">vec</span> <span class="mi">1</span><span class="p">)))</span>
<a name="cl-641"></a>        <span class="p">(</span><span class="k">if</span> <span class="nv">cmd</span> <span class="p">(</span><span class="nv">ac-l-db-append</span> <span class="ss">&#39;package-cmds</span> <span class="nv">cmd</span><span class="p">))</span>
<a name="cl-642"></a>        <span class="p">(</span><span class="k">if</span> <span class="nv">arg</span> <span class="p">(</span><span class="nv">ac-l-db-append</span> <span class="ss">&#39;package-args</span> <span class="nv">arg</span><span class="p">))))</span>
<a name="cl-643"></a>    <span class="p">(</span><span class="k">setq</span> <span class="nv">ac-sources</span> <span class="p">(</span><span class="nb">append</span> <span class="p">(</span><span class="nv">ac-l-db-get</span> <span class="ss">&#39;user-prefix-sources</span><span class="p">)</span>
<a name="cl-644"></a>                             <span class="p">(</span><span class="nb">nth</span> <span class="mi">0</span> <span class="nv">sources</span><span class="p">)</span>
<a name="cl-645"></a>                             <span class="nv">cmd-sources</span>
<a name="cl-646"></a>                             <span class="p">(</span><span class="nb">nth</span> <span class="mi">1</span> <span class="nv">sources</span><span class="p">)</span>
<a name="cl-647"></a>                             <span class="nv">arg-sources</span>
<a name="cl-648"></a>                             <span class="p">(</span><span class="nb">nth</span> <span class="mi">2</span> <span class="nv">sources</span><span class="p">)</span>
<a name="cl-649"></a>                             <span class="p">(</span><span class="nv">ac-l-db-get</span> <span class="ss">&#39;user-noprefix-sources</span><span class="p">)</span>
<a name="cl-650"></a>                             <span class="p">(</span><span class="nb">nth</span> <span class="mi">3</span> <span class="nv">sources</span><span class="p">)))))</span>
<a name="cl-651"></a>
<a name="cl-652"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-set-sources</span> <span class="p">()</span>
<a name="cl-653"></a>  <span class="p">(</span><span class="k">let</span> <span class="p">((</span><span class="nv">s0</span> <span class="o">`</span><span class="p">(</span><span class="nv">ac-source-filename</span>
<a name="cl-654"></a>              <span class="nv">ac-l-source-labels</span>
<a name="cl-655"></a>              <span class="nv">ac-l-source-bibitems</span>
<a name="cl-656"></a>              <span class="o">,</span><span class="p">(</span><span class="k">if</span> <span class="nv">ac-l-bib-files</span> <span class="ss">&#39;ac-l-source-bibliographies</span><span class="p">)</span>
<a name="cl-657"></a>              <span class="o">,</span><span class="p">(</span><span class="k">if</span> <span class="p">(</span><span class="nv">ac-l-db-get</span> <span class="ss">&#39;latex-cmds</span><span class="p">)</span> <span class="ss">&#39;ac-l-source-latex-commands</span><span class="p">)))</span>
<a name="cl-658"></a>        <span class="p">(</span><span class="nv">s1</span> <span class="o">`</span><span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="k">if</span> <span class="nv">ac-l-package-files</span> <span class="ss">&#39;ac-l-source-package-commands</span><span class="p">)</span>
<a name="cl-659"></a>              <span class="nv">ac-l-source-commands</span>
<a name="cl-660"></a>              <span class="nv">ac-source-files-in-current-dir</span>
<a name="cl-661"></a>              <span class="o">,</span><span class="p">(</span><span class="k">if</span> <span class="p">(</span><span class="nv">ac-l-db-get</span> <span class="ss">&#39;latex-args</span><span class="p">)</span> <span class="ss">&#39;ac-l-source-latex-arguments</span><span class="p">)))</span>
<a name="cl-662"></a>        <span class="p">(</span><span class="nv">s2</span> <span class="o">`</span><span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="k">if</span> <span class="nv">ac-l-package-files</span> <span class="ss">&#39;ac-l-source-package-arguments</span><span class="p">)</span>
<a name="cl-663"></a>              <span class="o">,</span><span class="p">(</span><span class="k">if</span> <span class="p">(</span><span class="nv">ac-l-db-get</span> <span class="ss">&#39;filenames</span><span class="p">)</span> <span class="ss">&#39;ac-l-source-filenames</span><span class="p">)))</span>
<a name="cl-664"></a>        <span class="p">(</span><span class="nv">s3</span> <span class="o">`</span><span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="k">if</span> <span class="nv">ac-l-use-word-completion</span> <span class="ss">&#39;ac-l-source-words</span><span class="p">)</span>
<a name="cl-665"></a>              <span class="nv">ac-source-dictionary</span><span class="p">)))</span>
<a name="cl-666"></a>    <span class="p">(</span><span class="nv">ac-l-db-set</span> <span class="ss">&#39;sources</span>
<a name="cl-667"></a>                 <span class="p">(</span><span class="nb">mapcar</span> <span class="p">(</span><span class="k">lambda</span> <span class="p">(</span><span class="nv">s</span><span class="p">)</span> <span class="p">(</span><span class="nv">delq</span> <span class="no">nil</span> <span class="nv">s</span><span class="p">))</span> <span class="p">(</span><span class="nb">list</span> <span class="nv">s0</span> <span class="nv">s1</span> <span class="nv">s2</span> <span class="nv">s3</span><span class="p">)))))</span>
<a name="cl-668"></a>
<a name="cl-669"></a><span class="c1">;;; candidate</span>
<a name="cl-670"></a><span class="c1">;; copied from auto-complete.el and added arguments</span>
<a name="cl-671"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-candidate</span> <span class="p">(</span><span class="nv">beg-re</span> <span class="nv">end-re</span><span class="p">)</span>
<a name="cl-672"></a>  <span class="p">(</span><span class="k">let</span> <span class="p">((</span><span class="nv">i</span> <span class="mi">0</span><span class="p">)</span>
<a name="cl-673"></a>        <span class="p">(</span><span class="nv">regexp</span> <span class="p">(</span><span class="nv">concat</span> <span class="nv">beg-re</span> <span class="p">(</span><span class="nv">regexp-quote</span> <span class="nv">ac-prefix</span><span class="p">)</span> <span class="nv">end-re</span><span class="p">))</span>
<a name="cl-674"></a>        <span class="nv">cand</span> <span class="nv">cands</span><span class="p">)</span>
<a name="cl-675"></a>    <span class="p">(</span><span class="nv">save-excursion</span>
<a name="cl-676"></a>      <span class="c1">;; Search backward</span>
<a name="cl-677"></a>      <span class="p">(</span><span class="nv">goto-char</span> <span class="nv">ac-point</span><span class="p">)</span>
<a name="cl-678"></a>      <span class="p">(</span><span class="nv">while</span> <span class="p">(</span><span class="nb">and</span> <span class="p">(</span><span class="nb">or</span> <span class="p">(</span><span class="nb">not</span> <span class="p">(</span><span class="nb">integerp</span> <span class="nv">ac-limit</span><span class="p">))</span> <span class="p">(</span><span class="nb">&lt;</span> <span class="nv">i</span> <span class="nv">ac-limit</span><span class="p">))</span>
<a name="cl-679"></a>                  <span class="p">(</span><span class="nv">re-search-backward</span> <span class="nv">regexp</span> <span class="no">nil</span> <span class="no">t</span><span class="p">))</span>
<a name="cl-680"></a>        <span class="p">(</span><span class="k">setq</span> <span class="nv">cand</span> <span class="p">(</span><span class="nv">match-string-no-properties</span> <span class="mi">1</span><span class="p">))</span>
<a name="cl-681"></a>        <span class="p">(</span><span class="nb">unless</span> <span class="p">(</span><span class="nb">member</span> <span class="nv">cand</span> <span class="nv">cands</span><span class="p">)</span>
<a name="cl-682"></a>          <span class="p">(</span><span class="nb">push</span> <span class="nv">cand</span> <span class="nv">cands</span><span class="p">)</span>
<a name="cl-683"></a>          <span class="p">(</span><span class="nb">incf</span> <span class="nv">i</span><span class="p">)))</span>
<a name="cl-684"></a>      <span class="c1">;; Search backward</span>
<a name="cl-685"></a>      <span class="p">(</span><span class="nv">goto-char</span> <span class="p">(</span><span class="nb">+</span> <span class="nv">ac-point</span> <span class="p">(</span><span class="nb">length</span> <span class="nv">ac-prefix</span><span class="p">)))</span>
<a name="cl-686"></a>      <span class="p">(</span><span class="nv">while</span> <span class="p">(</span><span class="nb">and</span> <span class="p">(</span><span class="nb">or</span> <span class="p">(</span><span class="nb">not</span> <span class="p">(</span><span class="nb">integerp</span> <span class="nv">ac-limit</span><span class="p">))</span> <span class="p">(</span><span class="nb">&lt;</span> <span class="nv">i</span> <span class="nv">ac-limit</span><span class="p">))</span>
<a name="cl-687"></a>                  <span class="p">(</span><span class="nv">re-search-forward</span> <span class="nv">regexp</span> <span class="no">nil</span> <span class="no">t</span><span class="p">))</span>
<a name="cl-688"></a>        <span class="p">(</span><span class="k">setq</span> <span class="nv">cand</span> <span class="p">(</span><span class="nv">match-string-no-properties</span> <span class="mi">1</span><span class="p">))</span>
<a name="cl-689"></a>        <span class="p">(</span><span class="nb">unless</span> <span class="p">(</span><span class="nb">member</span> <span class="nv">cand</span> <span class="nv">cands</span><span class="p">)</span>
<a name="cl-690"></a>          <span class="p">(</span><span class="nb">push</span> <span class="nv">cand</span> <span class="nv">cands</span><span class="p">)</span>
<a name="cl-691"></a>          <span class="p">(</span><span class="nb">incf</span> <span class="nv">i</span><span class="p">))))</span>
<a name="cl-692"></a>    <span class="p">(</span><span class="nb">nreverse</span> <span class="nv">cands</span><span class="p">)))</span>
<a name="cl-693"></a>
<a name="cl-694"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-incremental-update-index</span> <span class="p">(</span><span class="nv">idx</span> <span class="nv">cand-fn</span><span class="p">)</span>
<a name="cl-695"></a>  <span class="p">(</span><span class="k">let</span> <span class="p">((</span><span class="nv">pair</span> <span class="p">(</span><span class="nb">symbol-value</span> <span class="nv">idx</span><span class="p">))</span>
<a name="cl-696"></a>        <span class="p">(</span><span class="nv">ac-limit</span> <span class="p">(</span><span class="nb">or</span> <span class="p">(</span><span class="nb">and</span> <span class="p">(</span><span class="nb">integerp</span> <span class="nv">ac-limit</span><span class="p">)</span> <span class="nv">ac-limit</span><span class="p">)</span> <span class="mi">10</span><span class="p">)))</span>
<a name="cl-697"></a>    <span class="p">(</span><span class="nb">when</span> <span class="p">(</span><span class="nb">null</span> <span class="nv">pair</span><span class="p">)</span>
<a name="cl-698"></a>      <span class="p">(</span><span class="nb">set</span> <span class="nv">idx</span> <span class="p">(</span><span class="nb">cons</span> <span class="no">nil</span> <span class="no">nil</span><span class="p">)))</span>
<a name="cl-699"></a>    <span class="c1">;; Mark incomplete</span>
<a name="cl-700"></a>    <span class="p">(</span><span class="nb">when</span> <span class="p">(</span><span class="nb">car</span> <span class="nv">pair</span><span class="p">)</span>
<a name="cl-701"></a>      <span class="p">(</span><span class="nv">setcar</span> <span class="nv">pair</span> <span class="no">nil</span><span class="p">))</span>
<a name="cl-702"></a>    <span class="p">(</span><span class="k">let</span> <span class="p">((</span><span class="nb">list</span> <span class="p">(</span><span class="nb">cdr</span> <span class="nv">pair</span><span class="p">))</span>
<a name="cl-703"></a>          <span class="p">(</span><span class="nv">words</span> <span class="p">(</span><span class="nb">funcall</span> <span class="nv">cand-fn</span><span class="p">)))</span>
<a name="cl-704"></a>      <span class="p">(</span><span class="nb">dolist</span> <span class="p">(</span><span class="nv">word</span> <span class="nv">words</span><span class="p">)</span>
<a name="cl-705"></a>        <span class="p">(</span><span class="nb">unless</span> <span class="p">(</span><span class="nb">member</span> <span class="nv">word</span> <span class="nb">list</span><span class="p">)</span>
<a name="cl-706"></a>          <span class="p">(</span><span class="nb">push</span> <span class="nv">word</span> <span class="nb">list</span><span class="p">)</span>
<a name="cl-707"></a>          <span class="p">(</span><span class="nv">setcdr</span> <span class="nv">pair</span> <span class="nb">list</span><span class="p">))))))</span>
<a name="cl-708"></a>
<a name="cl-709"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-update-index</span> <span class="p">(</span><span class="nv">idx</span> <span class="nv">cand-fn</span><span class="p">)</span>
<a name="cl-710"></a>  <span class="p">(</span><span class="nb">dolist</span> <span class="p">(</span><span class="nv">buf</span> <span class="p">(</span><span class="nv">buffer-list</span><span class="p">))</span>
<a name="cl-711"></a>    <span class="p">(</span><span class="nb">when</span> <span class="p">(</span><span class="nb">and</span> <span class="p">(</span><span class="nb">eq</span> <span class="nv">ac-l-major-mode</span> <span class="p">(</span><span class="nv">buffer-local-value</span> <span class="ss">&#39;major-mode</span> <span class="nv">buf</span><span class="p">))</span>
<a name="cl-712"></a>               <span class="p">(</span><span class="nb">or</span> <span class="nv">ac-fuzzy-enable</span>
<a name="cl-713"></a>                   <span class="p">(</span><span class="nb">not</span> <span class="p">(</span><span class="nb">eq</span> <span class="nv">buf</span> <span class="p">(</span><span class="nv">current-buffer</span><span class="p">)))))</span>
<a name="cl-714"></a>      <span class="p">(</span><span class="nv">with-current-buffer</span> <span class="nv">buf</span>
<a name="cl-715"></a>        <span class="p">(</span><span class="nb">when</span> <span class="p">(</span><span class="nb">and</span> <span class="p">(</span><span class="nb">not</span> <span class="p">(</span><span class="nb">car</span> <span class="p">(</span><span class="nb">symbol-value</span> <span class="nv">idx</span><span class="p">)))</span>
<a name="cl-716"></a>                   <span class="p">(</span><span class="nb">&lt;</span> <span class="p">(</span><span class="nv">buffer-size</span><span class="p">)</span> <span class="mi">1048576</span><span class="p">))</span>
<a name="cl-717"></a>          <span class="c1">;; Complete index</span>
<a name="cl-718"></a>          <span class="p">(</span><span class="nb">set</span> <span class="nv">idx</span> <span class="p">(</span><span class="nb">cons</span> <span class="no">t</span> <span class="p">(</span><span class="k">let</span> <span class="p">((</span><span class="nv">ac-point</span> <span class="p">(</span><span class="nv">point-min</span><span class="p">))</span>
<a name="cl-719"></a>                                 <span class="p">(</span><span class="nv">ac-prefix</span> <span class="s">&quot;&quot;</span><span class="p">)</span>
<a name="cl-720"></a>                                 <span class="nv">ac-limit</span><span class="p">)</span>
<a name="cl-721"></a>                             <span class="p">(</span><span class="nb">funcall</span> <span class="nv">cand-fn</span><span class="p">)))))))))</span>
<a name="cl-722"></a>
<a name="cl-723"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-candidates</span> <span class="p">(</span><span class="nv">idx</span> <span class="nv">cand-fn</span><span class="p">)</span>
<a name="cl-724"></a>  <span class="p">(</span><span class="nb">loop</span> <span class="nv">initially</span> <span class="p">(</span><span class="nb">unless</span> <span class="nv">ac-fuzzy-enable</span>
<a name="cl-725"></a>                    <span class="p">(</span><span class="nv">ac-l-incremental-update-index</span> <span class="nv">idx</span> <span class="nv">cand-fn</span><span class="p">))</span>
<a name="cl-726"></a>        <span class="nv">for</span> <span class="nv">buf</span> <span class="nv">in</span> <span class="p">(</span><span class="nv">buffer-list</span><span class="p">)</span>
<a name="cl-727"></a>        <span class="k">if</span> <span class="p">(</span><span class="nb">and</span> <span class="p">(</span><span class="nb">or</span> <span class="p">(</span><span class="nb">not</span> <span class="p">(</span><span class="nb">integerp</span> <span class="nv">ac-limit</span><span class="p">))</span> <span class="p">(</span><span class="nb">&lt;</span> <span class="p">(</span><span class="nb">length</span> <span class="nv">cands</span><span class="p">)</span> <span class="nv">ac-limit</span><span class="p">))</span>
<a name="cl-728"></a>                <span class="p">(</span><span class="nv">derived-mode-p</span> <span class="p">(</span><span class="nv">buffer-local-value</span> <span class="ss">&#39;major-mode</span> <span class="nv">buf</span><span class="p">)))</span>
<a name="cl-729"></a>        <span class="nb">append</span> <span class="p">(</span><span class="nb">funcall</span> <span class="nv">ac-match-function</span> <span class="nv">ac-prefix</span>
<a name="cl-730"></a>                        <span class="p">(</span><span class="nb">cdr</span> <span class="p">(</span><span class="nv">buffer-local-value</span> <span class="nv">idx</span> <span class="nv">buf</span><span class="p">)))</span>
<a name="cl-731"></a>        <span class="nv">into</span> <span class="nv">cands</span>
<a name="cl-732"></a>        <span class="nv">finally</span> <span class="nb">return</span> <span class="nv">cands</span><span class="p">))</span>
<a name="cl-733"></a>
<a name="cl-734"></a>
<a name="cl-735"></a><span class="c1">;;;; sources</span>
<a name="cl-736"></a><span class="p">(</span><span class="nb">defvar</span> <span class="nv">ac-l-word-index</span> <span class="no">nil</span><span class="p">)</span>
<a name="cl-737"></a><span class="p">(</span><span class="nv">make-variable-buffer-local</span> <span class="ss">&#39;ac-l-word-index</span><span class="p">)</span>
<a name="cl-738"></a>
<a name="cl-739"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-smart-capitalize</span> <span class="p">()</span>
<a name="cl-740"></a>  <span class="c1">;; Meadow/Emacs memo: http://www.bookshelf.jp/soft/meadow_34.html#SEC495</span>
<a name="cl-741"></a>  <span class="p">(</span><span class="nb">when</span> <span class="p">(</span><span class="nb">and</span> <span class="p">(</span><span class="nv">looking-back</span> <span class="s">&quot;[[:space:][:cntrl:]]+[a-z&#39;]+&quot;</span><span class="p">)</span>
<a name="cl-742"></a>             <span class="p">(</span><span class="nb">=</span> <span class="p">(</span><span class="nv">point</span><span class="p">)</span> <span class="p">(</span><span class="nv">save-excursion</span>
<a name="cl-743"></a>                          <span class="p">(</span><span class="nv">backward-sentence</span><span class="p">)</span>
<a name="cl-744"></a>                          <span class="p">(</span><span class="nv">forward-word</span><span class="p">)</span>
<a name="cl-745"></a>                          <span class="p">(</span><span class="nv">point</span><span class="p">))))</span>
<a name="cl-746"></a>    <span class="p">(</span><span class="nv">capitalize-word</span> <span class="mi">-1</span><span class="p">)))</span>
<a name="cl-747"></a>
<a name="cl-748"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-candidate-words-in-buffer</span> <span class="p">()</span>
<a name="cl-749"></a>  <span class="p">(</span><span class="nv">ac-l-candidate</span> <span class="s">&quot;[^\\,]\\(\\&lt;&quot;</span> <span class="s">&quot;[-&#39;a-zA-Z]+\\&gt;\\)&quot;</span><span class="p">))</span>
<a name="cl-750"></a>
<a name="cl-751"></a><span class="p">(</span><span class="nb">defvar</span> <span class="nv">ac-l-source-words</span>
<a name="cl-752"></a>  <span class="o">&#39;</span><span class="p">((</span><span class="nv">action</span> <span class="o">.</span> <span class="nv">ac-l-smart-capitalize</span><span class="p">)</span>
<a name="cl-753"></a>    <span class="p">(</span><span class="nv">requires</span> <span class="o">.</span> <span class="mi">3</span><span class="p">)))</span>
<a name="cl-754"></a>
<a name="cl-755"></a><span class="p">(</span><span class="nb">defvar</span> <span class="nv">ac-l-command-index</span> <span class="no">nil</span><span class="p">)</span>
<a name="cl-756"></a><span class="p">(</span><span class="nv">make-variable-buffer-local</span> <span class="ss">&#39;ac-l-command-index</span><span class="p">)</span>
<a name="cl-757"></a>
<a name="cl-758"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-candidate-commands-in-buffer</span> <span class="p">()</span>
<a name="cl-759"></a>  <span class="p">(</span><span class="nv">ac-l-candidate</span> <span class="s">&quot;\\\\\\(&quot;</span> <span class="s">&quot;[a-zA-Z@]+\\)&quot;</span><span class="p">))</span>
<a name="cl-760"></a>
<a name="cl-761"></a><span class="p">(</span><span class="nb">defvar</span> <span class="nv">ac-l-source-commands</span>
<a name="cl-762"></a>  <span class="o">`</span><span class="p">((</span><span class="nv">prefix</span> <span class="o">.</span> <span class="o">,</span><span class="nv">ac-l-command-prefix</span><span class="p">)))</span>
<a name="cl-763"></a>
<a name="cl-764"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-basic-sources-setup</span> <span class="p">()</span>
<a name="cl-765"></a>  <span class="c1">;; Add properties into basic sources.</span>
<a name="cl-766"></a>  <span class="c1">;; The sources work like ac-source-words-in-same-mode-buffers.</span>
<a name="cl-767"></a>  <span class="p">(</span><span class="k">let*</span> <span class="p">((</span><span class="nv">cw-fn</span> <span class="ss">&#39;ac-l-candidate-words-in-buffer</span><span class="p">)</span>
<a name="cl-768"></a>         <span class="p">(</span><span class="nv">cc-fn</span> <span class="ss">&#39;ac-l-candidate-commands-in-buffer</span><span class="p">)</span>
<a name="cl-769"></a>         <span class="p">(</span><span class="nv">wc</span> <span class="o">`</span><span class="p">(</span><span class="nv">ac-l-candidates</span> <span class="ss">&#39;ac-l-word-index</span> <span class="ss">&#39;,cw-fn</span><span class="p">))</span>
<a name="cl-770"></a>         <span class="p">(</span><span class="nv">cc</span> <span class="o">`</span><span class="p">(</span><span class="nv">ac-l-candidates</span> <span class="ss">&#39;ac-l-command-index</span> <span class="ss">&#39;,cc-fn</span><span class="p">))</span>
<a name="cl-771"></a>         <span class="p">(</span><span class="nv">wi</span> <span class="o">`</span><span class="p">(</span><span class="nv">ac-l-update-index</span> <span class="ss">&#39;ac-l-word-index</span> <span class="ss">&#39;,cw-fn</span><span class="p">))</span>
<a name="cl-772"></a>         <span class="p">(</span><span class="nv">ci</span> <span class="o">`</span><span class="p">(</span><span class="nv">ac-l-update-index</span> <span class="ss">&#39;ac-l-command-index</span> <span class="ss">&#39;,cc-fn</span><span class="p">)))</span>
<a name="cl-773"></a>    <span class="p">(</span><span class="k">labels</span> <span class="p">((</span><span class="nv">pushprops</span> <span class="p">(</span><span class="nv">p1</span> <span class="nv">p2</span> <span class="nv">p3</span> <span class="nv">p4</span><span class="p">)</span>
<a name="cl-774"></a>                        <span class="p">(</span><span class="nb">push</span> <span class="o">`</span><span class="p">(</span><span class="nv">candidates</span> <span class="o">.</span> <span class="o">,</span><span class="nv">p1</span><span class="p">)</span> <span class="nv">ac-l-source-words</span><span class="p">)</span>
<a name="cl-775"></a>                        <span class="p">(</span><span class="nb">push</span> <span class="o">`</span><span class="p">(</span><span class="nv">candidates</span> <span class="o">.</span> <span class="o">,</span><span class="nv">p2</span><span class="p">)</span> <span class="nv">ac-l-source-commands</span><span class="p">)</span>
<a name="cl-776"></a>                        <span class="p">(</span><span class="nb">push</span> <span class="o">`</span><span class="p">(</span><span class="nv">init</span> <span class="o">.</span> <span class="o">,</span><span class="nv">p3</span><span class="p">)</span> <span class="nv">ac-l-source-words</span><span class="p">)</span>
<a name="cl-777"></a>                        <span class="p">(</span><span class="nb">push</span> <span class="o">`</span><span class="p">(</span><span class="nv">init</span> <span class="o">.</span> <span class="o">,</span><span class="nv">p4</span><span class="p">)</span> <span class="nv">ac-l-source-commands</span><span class="p">)))</span>
<a name="cl-778"></a>      <span class="p">(</span><span class="k">if</span> <span class="nv">ac-l-master-p</span>
<a name="cl-779"></a>          <span class="c1">;; add functions for file&#39;s candidates</span>
<a name="cl-780"></a>          <span class="p">(</span><span class="nv">pushprops</span> <span class="o">`</span><span class="p">(</span><span class="nb">append</span> <span class="o">,</span><span class="nv">wc</span> <span class="p">(</span><span class="nv">ac-l-db-get</span> <span class="ss">&#39;file-words</span><span class="p">))</span>
<a name="cl-781"></a>                     <span class="o">`</span><span class="p">(</span><span class="nb">append</span> <span class="o">,</span><span class="nv">cc</span> <span class="p">(</span><span class="nv">ac-l-db-get</span> <span class="ss">&#39;file-cmds</span><span class="p">))</span>
<a name="cl-782"></a>                     <span class="o">`</span><span class="p">(</span><span class="k">lambda</span> <span class="p">()</span>
<a name="cl-783"></a>                        <span class="o">,</span><span class="nv">wi</span>
<a name="cl-784"></a>                        <span class="p">(</span><span class="nv">ac-l-db-set</span> <span class="ss">&#39;file-words</span>
<a name="cl-785"></a>                                     <span class="p">(</span><span class="nv">ac-l-append-info</span> <span class="ss">&#39;ac-l-info-words</span><span class="p">)))</span>
<a name="cl-786"></a>                     <span class="o">`</span><span class="p">(</span><span class="k">lambda</span> <span class="p">()</span>
<a name="cl-787"></a>                        <span class="o">,</span><span class="nv">ci</span>
<a name="cl-788"></a>                        <span class="p">(</span><span class="nv">ac-l-db-set</span> <span class="ss">&#39;file-cmds</span>
<a name="cl-789"></a>                                     <span class="p">(</span><span class="nv">ac-l-append-info</span> <span class="ss">&#39;ac-l-info-commands</span><span class="p">))))</span>
<a name="cl-790"></a>        <span class="p">(</span><span class="nv">pushprops</span> <span class="nv">wc</span> <span class="nv">cc</span> <span class="nv">wi</span> <span class="nv">ci</span><span class="p">)))))</span>
<a name="cl-791"></a>
<a name="cl-792"></a><span class="p">(</span><span class="nb">defvar</span> <span class="nv">ac-l-source-latex-commands</span>
<a name="cl-793"></a>  <span class="o">`</span><span class="p">((</span><span class="nv">candidates</span> <span class="o">.</span> <span class="p">(</span><span class="nv">ac-l-db-get</span> <span class="ss">&#39;latex-cmds</span><span class="p">))</span>
<a name="cl-794"></a>    <span class="p">(</span><span class="nv">prefix</span> <span class="o">.</span> <span class="o">,</span><span class="nv">ac-l-command-prefix</span><span class="p">)</span>
<a name="cl-795"></a>    <span class="p">(</span><span class="nc">symbol</span> <span class="o">.</span> <span class="s">&quot;l&quot;</span><span class="p">)))</span>
<a name="cl-796"></a>
<a name="cl-797"></a><span class="p">(</span><span class="nb">defvar</span> <span class="nv">ac-l-source-latex-arguments</span>
<a name="cl-798"></a>  <span class="o">`</span><span class="p">((</span><span class="nv">candidates</span> <span class="o">.</span> <span class="p">(</span><span class="nv">ac-l-db-get</span> <span class="ss">&#39;latex-args</span><span class="p">))</span>
<a name="cl-799"></a>    <span class="p">(</span><span class="nv">prefix</span> <span class="o">.</span> <span class="nv">ac-l-argument</span><span class="p">)</span>
<a name="cl-800"></a>    <span class="p">(</span><span class="nc">symbol</span> <span class="o">.</span> <span class="s">&quot;l&quot;</span><span class="p">)))</span>
<a name="cl-801"></a>
<a name="cl-802"></a><span class="p">(</span><span class="nb">defvar</span> <span class="nv">ac-l-source-filenames</span>
<a name="cl-803"></a>  <span class="o">&#39;</span><span class="p">((</span><span class="nv">candidates</span> <span class="o">.</span> <span class="p">(</span><span class="nv">ac-l-db-get</span> <span class="ss">&#39;filenames</span><span class="p">))</span>
<a name="cl-804"></a>    <span class="p">(</span><span class="nv">prefix</span> <span class="o">.</span> <span class="nv">ac-l-argument</span><span class="p">))</span>
<a name="cl-805"></a>  <span class="s">&quot;Source for package and bib file names.&quot;</span><span class="p">)</span>
<a name="cl-806"></a>
<a name="cl-807"></a><span class="p">(</span><span class="nb">defvar</span> <span class="nv">ac-l-source-package-commands</span>
<a name="cl-808"></a>  <span class="o">`</span><span class="p">((</span><span class="nv">candidates</span> <span class="o">.</span> <span class="p">(</span><span class="nv">ac-l-db-get</span> <span class="ss">&#39;package-cmds</span><span class="p">))</span>
<a name="cl-809"></a>    <span class="p">(</span><span class="nv">prefix</span> <span class="o">.</span> <span class="o">,</span><span class="nv">ac-l-command-prefix</span><span class="p">)</span>
<a name="cl-810"></a>    <span class="p">(</span><span class="nc">symbol</span> <span class="o">.</span> <span class="s">&quot;p&quot;</span><span class="p">)))</span>
<a name="cl-811"></a>
<a name="cl-812"></a><span class="p">(</span><span class="nb">defvar</span> <span class="nv">ac-l-source-package-arguments</span>
<a name="cl-813"></a>  <span class="o">&#39;</span><span class="p">((</span><span class="nv">candidates</span> <span class="o">.</span> <span class="p">(</span><span class="nv">ac-l-db-get</span> <span class="ss">&#39;package-args</span><span class="p">))</span>
<a name="cl-814"></a>    <span class="p">(</span><span class="nv">prefix</span> <span class="o">.</span> <span class="nv">ac-l-argument</span><span class="p">)</span>
<a name="cl-815"></a>    <span class="p">(</span><span class="nc">symbol</span> <span class="o">.</span> <span class="s">&quot;p&quot;</span><span class="p">)))</span>
<a name="cl-816"></a>
<a name="cl-817"></a><span class="p">(</span><span class="nv">defsubst</span> <span class="nv">ac-l-gethash</span> <span class="p">(</span><span class="nv">key</span> <span class="nv">tables</span><span class="p">)</span>
<a name="cl-818"></a>  <span class="p">(</span><span class="nb">loop</span> <span class="nv">for</span> <span class="nv">table</span> <span class="nv">in</span> <span class="nv">tables</span> <span class="nv">thereis</span> <span class="p">(</span><span class="nb">gethash</span> <span class="nv">key</span> <span class="nv">table</span><span class="p">)))</span>
<a name="cl-819"></a>
<a name="cl-820"></a><span class="p">(</span><span class="nv">defsubst</span> <span class="nv">ac-l-append-keys</span> <span class="p">(</span><span class="nv">tables</span><span class="p">)</span>
<a name="cl-821"></a>  <span class="p">(</span><span class="nb">apply</span> <span class="ss">&#39;append</span> <span class="p">(</span><span class="nb">mapcar</span> <span class="p">(</span><span class="k">lambda</span> <span class="p">(</span><span class="nv">table</span><span class="p">)</span>
<a name="cl-822"></a>                           <span class="p">(</span><span class="nb">loop</span> <span class="nv">for</span> <span class="nv">k</span> <span class="nv">being</span> <span class="k">the</span> <span class="nv">hash-keys</span> <span class="nv">in</span> <span class="nv">table</span> <span class="nv">collect</span> <span class="nv">k</span><span class="p">))</span>
<a name="cl-823"></a>                         <span class="nv">tables</span><span class="p">)))</span>
<a name="cl-824"></a>
<a name="cl-825"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-update-labels</span> <span class="p">()</span>
<a name="cl-826"></a>  <span class="p">(</span><span class="k">let</span> <span class="p">((</span><span class="nv">it</span> <span class="p">(</span><span class="nv">ac-l-db-set</span> <span class="ss">&#39;label-tables</span>
<a name="cl-827"></a>                         <span class="p">(</span><span class="nb">mapcar</span> <span class="ss">&#39;ac-l-info-labels</span> <span class="p">(</span><span class="nv">ac-l-all-structs</span><span class="p">)))))</span>
<a name="cl-828"></a>    <span class="p">(</span><span class="nv">ac-l-db-set</span> <span class="ss">&#39;label-cands</span> <span class="p">(</span><span class="nv">ac-l-append-keys</span> <span class="nv">it</span><span class="p">))))</span>
<a name="cl-829"></a>
<a name="cl-830"></a><span class="p">(</span><span class="nb">defvar</span> <span class="nv">ac-l-source-labels</span>
<a name="cl-831"></a>  <span class="o">&#39;</span><span class="p">((</span><span class="nv">init</span> <span class="o">.</span> <span class="nv">ac-l-update-labels</span><span class="p">)</span>
<a name="cl-832"></a>    <span class="p">(</span><span class="nv">candidates</span> <span class="o">.</span> <span class="p">(</span><span class="nv">ac-l-db-get</span> <span class="ss">&#39;label-cands</span><span class="p">))</span>
<a name="cl-833"></a>    <span class="p">(</span><span class="nv">prefix</span> <span class="o">.</span> <span class="nv">ac-l-label</span><span class="p">)</span>
<a name="cl-834"></a>    <span class="p">(</span><span class="nv">document</span> <span class="o">.</span> <span class="p">(</span><span class="k">lambda</span> <span class="p">(</span><span class="nv">k</span><span class="p">)</span> <span class="p">(</span><span class="nv">ac-l-gethash</span> <span class="nv">k</span> <span class="p">(</span><span class="nv">ac-l-db-get</span> <span class="ss">&#39;label-tables</span><span class="p">))))</span>
<a name="cl-835"></a>    <span class="p">(</span><span class="nc">symbol</span> <span class="o">.</span> <span class="s">&quot;L&quot;</span><span class="p">)))</span>
<a name="cl-836"></a>
<a name="cl-837"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-complete-labels</span> <span class="p">()</span>
<a name="cl-838"></a>  <span class="s">&quot;Start label name completion at point.&quot;</span>
<a name="cl-839"></a>  <span class="p">(</span><span class="nv">interactive</span><span class="p">)</span>
<a name="cl-840"></a>  <span class="p">(</span><span class="nv">auto-complete</span> <span class="p">(</span><span class="nb">list</span> <span class="p">(</span><span class="nb">remove</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">prefix</span> <span class="o">.</span> <span class="nv">ac-l-label</span><span class="p">)</span> <span class="nv">ac-l-source-labels</span><span class="p">))))</span>
<a name="cl-841"></a>
<a name="cl-842"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-update-bibitems</span> <span class="p">()</span>
<a name="cl-843"></a>  <span class="p">(</span><span class="k">let</span> <span class="p">((</span><span class="nv">it</span> <span class="p">(</span><span class="nv">ac-l-db-set</span> <span class="ss">&#39;bibitem-tables</span>
<a name="cl-844"></a>                         <span class="p">(</span><span class="nb">mapcar</span> <span class="ss">&#39;ac-l-info-bibitems</span> <span class="p">(</span><span class="nv">ac-l-all-structs</span><span class="p">)))))</span>
<a name="cl-845"></a>    <span class="p">(</span><span class="nv">ac-l-db-set</span> <span class="ss">&#39;bibitem-cands</span> <span class="p">(</span><span class="nv">ac-l-append-keys</span> <span class="nv">it</span><span class="p">))))</span>
<a name="cl-846"></a>
<a name="cl-847"></a><span class="p">(</span><span class="nb">defvar</span> <span class="nv">ac-l-source-bibitems</span>
<a name="cl-848"></a>  <span class="o">&#39;</span><span class="p">((</span><span class="nv">init</span> <span class="o">.</span> <span class="nv">ac-l-update-bibitems</span><span class="p">)</span>
<a name="cl-849"></a>    <span class="p">(</span><span class="nv">candidates</span> <span class="o">.</span> <span class="p">(</span><span class="nv">ac-l-db-get</span> <span class="ss">&#39;bibitem-cands</span><span class="p">))</span>
<a name="cl-850"></a>    <span class="p">(</span><span class="nv">prefix</span> <span class="o">.</span> <span class="nv">ac-l-bib</span><span class="p">)</span>
<a name="cl-851"></a>    <span class="p">(</span><span class="nv">document</span> <span class="o">.</span> <span class="p">(</span><span class="k">lambda</span> <span class="p">(</span><span class="nv">k</span><span class="p">)</span> <span class="p">(</span><span class="nv">ac-l-gethash</span> <span class="nv">k</span> <span class="p">(</span><span class="nv">ac-l-db-get</span> <span class="ss">&#39;bibitem-tables</span><span class="p">))))</span>
<a name="cl-852"></a>    <span class="p">(</span><span class="nc">symbol</span> <span class="o">.</span> <span class="s">&quot;B&quot;</span><span class="p">)))</span>
<a name="cl-853"></a>
<a name="cl-854"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-update-bib</span> <span class="p">()</span>
<a name="cl-855"></a>  <span class="p">(</span><span class="k">let</span> <span class="p">((</span><span class="nv">it</span> <span class="p">(</span><span class="nv">ac-l-db-set</span> <span class="ss">&#39;cur-bib-tables</span>
<a name="cl-856"></a>                         <span class="p">(</span><span class="nb">loop</span> <span class="nv">with</span> <span class="nv">tables</span> <span class="nb">=</span> <span class="p">(</span><span class="nv">ac-l-db-get</span> <span class="ss">&#39;all-bib-tables</span><span class="p">)</span>
<a name="cl-857"></a>                               <span class="nv">for</span> <span class="nv">name</span> <span class="nv">in</span> <span class="p">(</span><span class="nv">ac-l-append-info</span> <span class="ss">&#39;ac-l-info-bibs</span><span class="p">)</span>
<a name="cl-858"></a>                               <span class="k">if</span> <span class="p">(</span><span class="nv">assoc-default</span> <span class="nv">name</span> <span class="nv">tables</span> <span class="ss">&#39;string=</span><span class="p">)</span>
<a name="cl-859"></a>                               <span class="nv">collect</span> <span class="nv">it</span><span class="p">))))</span>
<a name="cl-860"></a>    <span class="p">(</span><span class="nv">ac-l-db-set</span> <span class="ss">&#39;bib-cands</span> <span class="p">(</span><span class="nv">ac-l-append-keys</span> <span class="nv">it</span><span class="p">))))</span>
<a name="cl-861"></a>
<a name="cl-862"></a><span class="p">(</span><span class="nb">defvar</span> <span class="nv">ac-l-source-bibliographies</span>
<a name="cl-863"></a>  <span class="o">&#39;</span><span class="p">((</span><span class="nv">init</span> <span class="o">.</span> <span class="nv">ac-l-update-bib</span><span class="p">)</span>
<a name="cl-864"></a>    <span class="p">(</span><span class="nv">candidates</span> <span class="o">.</span> <span class="p">(</span><span class="nv">ac-l-db-get</span> <span class="ss">&#39;bib-cands</span><span class="p">))</span>
<a name="cl-865"></a>    <span class="p">(</span><span class="nv">prefix</span> <span class="o">.</span> <span class="nv">ac-l-bib</span><span class="p">)</span>
<a name="cl-866"></a>    <span class="p">(</span><span class="nv">document</span> <span class="o">.</span> <span class="p">(</span><span class="k">lambda</span> <span class="p">(</span><span class="nv">k</span><span class="p">)</span> <span class="p">(</span><span class="nv">ac-l-gethash</span> <span class="nv">k</span> <span class="p">(</span><span class="nv">ac-l-db-get</span> <span class="ss">&#39;cur-bib-tables</span><span class="p">))))</span>
<a name="cl-867"></a>    <span class="p">(</span><span class="nc">symbol</span> <span class="o">.</span> <span class="s">&quot;B&quot;</span><span class="p">)))</span>
<a name="cl-868"></a>
<a name="cl-869"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-complete-bibs</span> <span class="p">()</span>
<a name="cl-870"></a>  <span class="s">&quot;Start bibliography completion at point.&quot;</span>
<a name="cl-871"></a>  <span class="p">(</span><span class="nv">interactive</span><span class="p">)</span>
<a name="cl-872"></a>  <span class="p">(</span><span class="nv">auto-complete</span> <span class="o">`</span><span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="nb">remove</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">prefix</span> <span class="o">.</span> <span class="nv">ac-l-bib</span><span class="p">)</span> <span class="nv">ac-l-source-bibitems</span><span class="p">)</span>
<a name="cl-873"></a>                   <span class="o">,</span><span class="p">(</span><span class="nb">remove</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">prefix</span> <span class="o">.</span> <span class="nv">ac-l-bib</span><span class="p">)</span> <span class="nv">ac-l-source-bibliographies</span><span class="p">))))</span>
<a name="cl-874"></a>
<a name="cl-875"></a><span class="c1">;;; help</span>
<a name="cl-876"></a><span class="p">(</span><span class="nv">defconst</span> <span class="nv">ac-l-help</span> <span class="p">(</span><span class="nb">make-hash-table</span> <span class="ss">:test</span> <span class="ss">&#39;equal</span><span class="p">))</span>
<a name="cl-877"></a>
<a name="cl-878"></a><span class="p">(</span><span class="nb">defmacro</span> <span class="nv">ac-l-define-help-doc</span> <span class="p">(</span><span class="nv">name</span> <span class="nv">file</span> <span class="nv">beg-re</span> <span class="nv">end-re</span><span class="p">)</span>
<a name="cl-879"></a>  <span class="p">(</span><span class="k">declare</span> <span class="p">(</span><span class="nv">indent</span> <span class="mi">1</span><span class="p">))</span>
<a name="cl-880"></a>  <span class="o">`</span><span class="p">(</span><span class="nb">defun</span> <span class="o">,</span><span class="p">(</span><span class="nb">intern</span> <span class="p">(</span><span class="nb">format</span> <span class="s">&quot;ac-l-%s-documentation&quot;</span> <span class="nv">name</span><span class="p">))</span> <span class="p">(</span><span class="nv">str</span><span class="p">)</span>
<a name="cl-881"></a>     <span class="p">(</span><span class="nb">or</span> <span class="p">(</span><span class="nb">gethash</span> <span class="nv">str</span> <span class="nv">ac-l-help</span><span class="p">)</span>
<a name="cl-882"></a>         <span class="p">(</span><span class="nb">unless</span> <span class="p">(</span><span class="nv">string-match</span> <span class="s">&quot;@&quot;</span> <span class="nv">str</span><span class="p">)</span>
<a name="cl-883"></a>           <span class="p">(</span><span class="nv">with-temp-buffer</span>
<a name="cl-884"></a>             <span class="p">(</span><span class="nv">insert-file-contents</span> <span class="p">(</span><span class="nv">concat</span> <span class="nv">ac-l-dict-directory</span> <span class="o">,</span><span class="nv">file</span><span class="p">))</span>
<a name="cl-885"></a>             <span class="p">(</span><span class="k">if</span> <span class="p">(</span><span class="nv">re-search-forward</span> <span class="p">(</span><span class="nv">concat</span> <span class="o">,</span><span class="nv">beg-re</span> <span class="nv">str</span> <span class="o">,</span><span class="nv">end-re</span><span class="p">)</span> <span class="no">nil</span> <span class="no">t</span><span class="p">)</span>
<a name="cl-886"></a>                 <span class="p">(</span><span class="nv">puthash</span> <span class="nv">str</span> <span class="p">(</span><span class="nv">match-string-no-properties</span> <span class="mi">1</span><span class="p">)</span> <span class="nv">ac-l-help</span><span class="p">)</span>
<a name="cl-887"></a>               <span class="p">(</span><span class="nv">puthash</span> <span class="nv">str</span> <span class="no">t</span> <span class="nv">ac-l-help</span><span class="p">)))))))</span>
<a name="cl-888"></a>
<a name="cl-889"></a><span class="p">(</span><span class="nv">ac-l-define-help-doc</span> <span class="nv">latex2e</span>
<a name="cl-890"></a>  <span class="s">&quot;latex-help&quot;</span>
<a name="cl-891"></a>  <span class="s">&quot;\\(?:\f\n\\)\\([^\f]*\\(?:^[`\\]&quot;</span>
<a name="cl-892"></a>  <span class="s">&quot;\\(?:\\s(\\|[ &#39;\n]\\)[^\f]+\\)\\)&quot;</span><span class="p">)</span>
<a name="cl-893"></a>
<a name="cl-894"></a><span class="p">(</span><span class="nv">ac-l-define-help-doc</span> <span class="nv">yatex-jp</span>
<a name="cl-895"></a>  <span class="s">&quot;YATEXHLP.jp&quot;</span>
<a name="cl-896"></a>  <span class="s">&quot;^\\(\\\\?&quot;</span>
<a name="cl-897"></a>  <span class="s">&quot;\n[^]+\\)&quot;</span><span class="p">)</span>
<a name="cl-898"></a>
<a name="cl-899"></a>
<a name="cl-900"></a><span class="c1">;;;; clear</span>
<a name="cl-901"></a><span class="p">(</span><span class="nb">defvar</span> <span class="nv">ac-l-clear-timer</span> <span class="no">nil</span><span class="p">)</span>
<a name="cl-902"></a>
<a name="cl-903"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-clear</span> <span class="p">()</span>
<a name="cl-904"></a>  <span class="p">(</span><span class="nb">clrhash</span> <span class="nv">ac-l-help</span><span class="p">))</span>
<a name="cl-905"></a>
<a name="cl-906"></a><span class="p">(</span><span class="nv">defun*</span> <span class="nv">ac-l-cancel-timers</span>
<a name="cl-907"></a>    <span class="p">(</span><span class="k">&amp;optional</span> <span class="p">(</span><span class="nv">timers</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">ac-l-update-timer</span>
<a name="cl-908"></a>                         <span class="nv">ac-l-clear-timer</span><span class="p">)))</span>
<a name="cl-909"></a>  <span class="p">(</span><span class="nv">interactive</span><span class="p">)</span>
<a name="cl-910"></a>  <span class="p">(</span><span class="nb">dolist</span> <span class="p">(</span><span class="nv">timer</span> <span class="nv">timers</span><span class="p">)</span>
<a name="cl-911"></a>    <span class="p">(</span><span class="k">let</span> <span class="p">((</span><span class="nv">val</span> <span class="p">(</span><span class="nb">symbol-value</span> <span class="nv">timer</span><span class="p">)))</span>
<a name="cl-912"></a>      <span class="p">(</span><span class="nb">when</span> <span class="p">(</span><span class="nv">timerp</span> <span class="nv">val</span><span class="p">)</span>
<a name="cl-913"></a>        <span class="p">(</span><span class="nv">cancel-timer</span> <span class="nv">val</span><span class="p">)</span>
<a name="cl-914"></a>        <span class="p">(</span><span class="nb">set</span> <span class="nv">timer</span> <span class="no">nil</span><span class="p">)))))</span>
<a name="cl-915"></a>
<a name="cl-916"></a>
<a name="cl-917"></a><span class="c1">;;;; setup</span>
<a name="cl-918"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-update-all</span> <span class="p">(</span><span class="k">&amp;optional</span> <span class="nv">force</span><span class="p">)</span>
<a name="cl-919"></a>  <span class="p">(</span><span class="nb">when</span> <span class="p">(</span><span class="nb">eq</span> <span class="nv">ac-l-major-mode</span> <span class="nv">major-mode</span><span class="p">)</span>
<a name="cl-920"></a>    <span class="p">(</span><span class="nv">ac-l-update-info</span> <span class="nv">force</span><span class="p">)</span>
<a name="cl-921"></a>    <span class="p">(</span><span class="nv">ac-l-update</span><span class="p">)))</span>
<a name="cl-922"></a>
<a name="cl-923"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-master-p</span> <span class="p">()</span>
<a name="cl-924"></a>  <span class="p">(</span><span class="k">setq</span> <span class="nv">ac-l-master-p</span> <span class="p">(</span><span class="nb">and</span> <span class="p">(</span><span class="nb">stringp</span> <span class="nv">ac-l-master-file</span><span class="p">)</span>
<a name="cl-925"></a>                           <span class="p">(</span><span class="nv">file-exists-p</span> <span class="nv">ac-l-master-file</span><span class="p">))))</span>
<a name="cl-926"></a>
<a name="cl-927"></a><span class="p">(</span><span class="nb">defmacro</span> <span class="nv">ac-l-set-local-variable</span> <span class="p">(</span><span class="nv">var</span> <span class="nv">val</span><span class="p">)</span>
<a name="cl-928"></a>  <span class="p">(</span><span class="k">declare</span> <span class="p">(</span><span class="nv">indent</span> <span class="mi">1</span><span class="p">))</span>
<a name="cl-929"></a>  <span class="o">`</span><span class="p">(</span><span class="nb">unless</span> <span class="p">(</span><span class="nv">local-variable-p</span> <span class="ss">&#39;,var</span><span class="p">)</span>
<a name="cl-930"></a>     <span class="p">(</span><span class="nb">set</span> <span class="p">(</span><span class="nv">make-local-variable</span> <span class="ss">&#39;,var</span><span class="p">)</span> <span class="o">,</span><span class="nv">val</span><span class="p">)))</span>
<a name="cl-931"></a>
<a name="cl-932"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-set-local-variables</span> <span class="p">()</span>
<a name="cl-933"></a>  <span class="p">(</span><span class="nv">ac-l-set-local-variable</span> <span class="nv">ac-prefix-definitions</span>
<a name="cl-934"></a>    <span class="p">(</span><span class="nb">append</span> <span class="o">&#39;</span><span class="p">((</span><span class="nv">ac-l-argument</span> <span class="o">.</span> <span class="p">(</span><span class="nv">ac-l-prefix-in-paren</span> <span class="nv">ac-l-argument-regexps</span><span class="p">))</span>
<a name="cl-935"></a>              <span class="p">(</span><span class="nv">ac-l-file</span> <span class="o">.</span> <span class="p">(</span><span class="nv">ac-l-prefix-in-paren</span> <span class="nv">ac-l-file-regexps</span><span class="p">))</span>
<a name="cl-936"></a>              <span class="p">(</span><span class="nv">ac-l-label</span> <span class="o">.</span> <span class="p">(</span><span class="nv">ac-l-prefix-in-paren</span> <span class="nv">ac-l-label-regexps</span><span class="p">))</span>
<a name="cl-937"></a>              <span class="p">(</span><span class="nv">ac-l-bib</span> <span class="o">.</span> <span class="p">(</span><span class="nv">ac-l-prefix-in-paren</span> <span class="nv">ac-l-bib-regexps</span><span class="p">)))</span>
<a name="cl-938"></a>            <span class="nv">ac-prefix-definitions</span><span class="p">))</span>
<a name="cl-939"></a>  <span class="p">(</span><span class="nv">ac-l-set-local-variable</span> <span class="nv">ac-source-files-in-current-dir</span>
<a name="cl-940"></a>    <span class="p">(</span><span class="nb">append</span> <span class="o">&#39;</span><span class="p">((</span><span class="nv">prefix</span> <span class="o">.</span> <span class="nv">ac-l-file</span><span class="p">)</span>
<a name="cl-941"></a>              <span class="p">(</span><span class="nc">symbol</span> <span class="o">.</span> <span class="s">&quot;F&quot;</span><span class="p">))</span>
<a name="cl-942"></a>            <span class="nv">ac-source-files-in-current-dir</span><span class="p">)))</span>
<a name="cl-943"></a>
<a name="cl-944"></a><span class="p">(</span><span class="nv">defun*</span> <span class="nv">ac-l-user-sources-setup</span> <span class="p">(</span><span class="k">&amp;optional</span> <span class="p">(</span><span class="nv">sources</span> <span class="nv">ac-l-sources</span><span class="p">))</span>
<a name="cl-945"></a>  <span class="p">(</span><span class="nb">dolist</span> <span class="p">(</span><span class="nv">source</span> <span class="nv">sources</span><span class="p">)</span>
<a name="cl-946"></a>    <span class="p">(</span><span class="nv">ac-l-db-push</span> <span class="nv">source</span> <span class="p">(</span><span class="k">if</span> <span class="p">(</span><span class="nv">assq</span> <span class="ss">&#39;prefix</span> <span class="p">(</span><span class="nb">symbol-value</span> <span class="nv">source</span><span class="p">))</span>
<a name="cl-947"></a>                             <span class="ss">&#39;user-prefix-sources</span>
<a name="cl-948"></a>                           <span class="ss">&#39;user-noprefix-sources</span><span class="p">))))</span>
<a name="cl-949"></a>
<a name="cl-950"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-set-timers</span> <span class="p">()</span>
<a name="cl-951"></a>  <span class="p">(</span><span class="k">setq</span> <span class="nv">ac-l-update-timer</span> <span class="p">(</span><span class="nv">run-with-idle-timer</span> <span class="nv">ac-l-update-delay</span> <span class="no">t</span> <span class="ss">&#39;ac-l-update-all</span><span class="p">)</span>
<a name="cl-952"></a>        <span class="nv">ac-l-clear-timer</span> <span class="p">(</span><span class="nv">run-with-timer</span> <span class="mi">600</span> <span class="mi">600</span> <span class="ss">&#39;ac-l-clear</span><span class="p">)))</span>
<a name="cl-953"></a>
<a name="cl-954"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-setup</span> <span class="p">()</span>
<a name="cl-955"></a>  <span class="s">&quot;Set up Auto Complete LaTeX.&quot;</span>
<a name="cl-956"></a>  <span class="p">(</span><span class="k">let</span> <span class="p">((</span><span class="nv">msg</span> <span class="s">&quot;Loading auto-complete-latex...&quot;</span><span class="p">)</span>
<a name="cl-957"></a>        <span class="p">(</span><span class="nv">initial-p</span> <span class="p">(</span><span class="nb">not</span> <span class="p">(</span><span class="nv">ac-l-struct-master</span><span class="p">))))</span>
<a name="cl-958"></a>    <span class="p">(</span><span class="nv">message</span> <span class="s">&quot;%s&quot;</span> <span class="nv">msg</span><span class="p">)</span>
<a name="cl-959"></a>    <span class="p">(</span><span class="k">setq</span> <span class="nv">ac-l-major-mode</span> <span class="nv">major-mode</span><span class="p">)</span>
<a name="cl-960"></a>    <span class="p">(</span><span class="nv">ac-l-set-local-variables</span><span class="p">)</span>
<a name="cl-961"></a>    <span class="p">(</span><span class="nb">when</span> <span class="nv">initial-p</span>
<a name="cl-962"></a>      <span class="p">(</span><span class="nv">ac-l-master-p</span><span class="p">)</span>
<a name="cl-963"></a>      <span class="p">(</span><span class="nv">ac-l-basic-sources-setup</span><span class="p">)</span>
<a name="cl-964"></a>      <span class="p">(</span><span class="nv">ac-l-user-sources-setup</span><span class="p">)</span>
<a name="cl-965"></a>      <span class="p">(</span><span class="nv">ac-l-read-packages</span><span class="p">)</span>
<a name="cl-966"></a>      <span class="p">(</span><span class="nv">ac-l-read-bibs</span><span class="p">)</span>
<a name="cl-967"></a>      <span class="p">(</span><span class="nv">ac-l-make-source-from-dir</span><span class="p">)</span>
<a name="cl-968"></a>      <span class="p">(</span><span class="nv">ac-l-set-help-doc</span><span class="p">)</span>
<a name="cl-969"></a>      <span class="p">(</span><span class="nv">ac-l-set-sources</span><span class="p">)</span>
<a name="cl-970"></a>      <span class="p">(</span><span class="nv">ac-l-set-timers</span><span class="p">))</span>
<a name="cl-971"></a>    <span class="p">(</span><span class="nb">when</span> <span class="p">(</span><span class="nb">or</span> <span class="nv">initial-p</span> <span class="p">(</span><span class="nb">not</span> <span class="nv">ac-l-master-p</span><span class="p">))</span>
<a name="cl-972"></a>      <span class="p">(</span><span class="nv">ac-l-update-all</span> <span class="no">t</span><span class="p">))</span>
<a name="cl-973"></a>    <span class="p">(</span><span class="nv">message</span> <span class="s">&quot;%sdone&quot;</span> <span class="nv">msg</span><span class="p">)))</span>
<a name="cl-974"></a>
<a name="cl-975"></a><span class="p">(</span><span class="nb">provide</span> <span class="ss">&#39;auto-complete-latex</span><span class="p">)</span>
<a name="cl-976"></a><span class="c1">;;; auto-complete-latex.el ends here</span>
</pre></div>
</td></tr></table>
    </div>
  
  </div>
  


  <div id="mask"><div></div></div>

  </div>

      </div>
    </div>

  </div>

  <div id="footer">
    <ul id="footer-nav">
      <li>Copyright © 2011 <a href="http://atlassian.com">Atlassian</a></li>
      <li><a href="http://www.atlassian.com/hosted/terms.jsp">Terms of Service</a></li>
      <li><a href="http://www.atlassian.com/about/privacy.jsp">Privacy</a></li>
      <li><a href="//bitbucket.org/site/master/issues/new">Report a Bug to Bitbucket</a></li>
      <li><a href="http://confluence.atlassian.com/x/IYBGDQ">API</a></li>
      <li><a href="http://status.bitbucket.org/">Server Status</a></li>
    </ul>
    <ul id="social-nav">
      <li class="blog"><a href="http://blog.bitbucket.org">Bitbucket Blog</a></li>
      <li class="twitter"><a href="http://www.twitter.com/bitbucket">Twitter</a></li>
    </ul>
    <h5>We run</h5>
    <ul id="technologies">
      <li><a href="http://www.djangoproject.com/">Django 1.3.0</a></li>
      <li><a href="//bitbucket.org/jespern/django-piston/">Piston 0.3dev</a></li>
      <li><a href="http://git-scm.com/">Git 1.7.6.4</a></li>
      <li><a href="http://www.selenic.com/mercurial/">Hg 1.9.2</a></li>
      <li><a href="http://www.python.org">Python 2.7.2</a></li>
      <li>3acb15a4060a | bitbucket02</li>
    </ul>
  </div>

  <script src="https://dwz7u9t8u8usb.cloudfront.net/m/1adb064ec2f5/js/lib/global.js"></script>






  <script>
    BB.gaqPush(['_trackPageview']);
  
    BB.gaqPush(['atl._trackPageview']);

    

    

    (function () {
        var ga = document.createElement('script');
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        ga.setAttribute('async', 'true');
        document.documentElement.firstChild.appendChild(ga);
    }());
  </script>

</body>
</html>
