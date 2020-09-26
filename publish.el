(require 'ox-publish)

(setq my-blog-extra-head "a")


(setq my-blog-header "AAAa")

(setq my-blog-footer "AAAa")


(setq org-publish-project-alist
      '(
	("posts"
         :base-directory "posts/"
         :base-extension "org"
         :publishing-directory "."
         :recursive t
	 :publishing-function org-html-publish-to-html
         :auto-sitemap t
	 :headline-level 4
	 :section-numbers nil
	 ;:with-toc nil
	 ;:with-sub-superscript nil
	 ;:html-link-home "/"
         ;:html-head nil ;; cleans up anything that would have been in there.
         ;;:html-head-extra , my-blog-extra-head
         ;;:html-head-include-default-style nil
         ;;:html-head-include-scripts nil
         ;:html-viewport nil

	 ;:html-link-up ""
         ;:html-link-home ""
         :html-preamble my-blog-header
         :html-postamble my-blog-footer
	 
	 :sitemap-title "Blog Index"
         :sitemap-filename "index.org"
         :sitemap-style list
	 :sitemap-sort-files anti-chronologically
         :sitemap-date-format "Published: %a %b %d %Y"
	
         :author "Pouya Houshmand"
         :email "pouya.housh@gmail.com"
         :with-creator t)
        ("css"
          :base-directory "css/"
          :base-extension "css"
          :publishing-directory "css"
          :publishing-function org-publish-attachment
          :recursive t)
        ("all" :components ("posts"))
      )
)
