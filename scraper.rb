#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/saint-pierre-and-miquelon-territorial-council', column: 'wikiname')
EveryPolitician::Wikidata.scrape_wikidata(names: { fr: names })
warn EveryPolitician::Wikidata.notify_rebuilder

