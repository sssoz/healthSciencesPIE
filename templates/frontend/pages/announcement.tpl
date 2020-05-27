{**
 * templates/frontend/pages/announcement.tpl
 *
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2003-2020 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display the page which represents a single announcement
 *
 * @uses $announcement Announcement The announcement to display
 *}
{include file="frontend/components/header.tpl" pageTitleTranslated=$announcement->getLocalizedTitle()|escape}

<main class="container page-announcement">
	<header class="row page-header justify-content-md-center">
		<div class="col-md-8">
			<h1>{$announcement->getLocalizedTitle()|escape}</h1>
	    <time class="announcement-date" datetime="{$announcement->getDatePosted()}">
	      {$announcement->getDatePosted()|date_format:$dateFormatLong}
	    </time>
		</div>
	</header>
	<div class="row justify-content-md-center">
    <article class="col-md-8 page-content page-announcement-content">
      {if $announcement->getLocalizedDescription()}
        {$announcement->getLocalizedDescription()|strip_unsafe_html}
      {else}
        {$announcement->getLocalizedDescriptionShort()|strip_unsafe_html}
      {/if}
    </article>
	</div>
</main>

{include file="frontend/components/footer.tpl"}
