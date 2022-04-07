# <div align="center">Animal Microservice</div>

# <div align="center">![featuring](https://user-images.githubusercontent.com/87088092/162084854-0c22077e-41c0-44b8-9209-c817ec54f9d5.png)
</div>

### <div align="center">This repo is a microservice used by the [Worth Wild BE repo](https://github.com/Worth-Wild/worth_wild_be) and consumes data from [NatureServe](https://www.natureserve.org/access-data).</div>

<hr>

## Local Setup

1. Fork and Clone the repo
2. Install gem packages: `bundle install`
3. Set up the database: `rails db:{drop,create,migrate,seed}`


### Run the test suite 

1.  Follow steps in the local setup (above)
2.  In your terminal, run `bundle exec rspec` to test for global coverage


### Gems:

<p>
  <img src="https://img.shields.io/badge/rspec--rails-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/pry-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />   
  <img src="https://img.shields.io/badge/simplecov-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  </br>
  <img src="https://img.shields.io/badge/figaro-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/faraday-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
</p>

*Resource links:*
[rspec-rails](https://github.com/rspec/rspec-rails) | [pry](https://github.com/pry/pry) | [simplecov](https://github.com/simplecov-ruby/simplecov) | [faraday](https://github.com/lostisland/faraday)

### Project details

Link to Turing Project Assignment: [Capstone Project](https://mod4.turing.edu/projects/capstone/)

<hr>

## <div align="center">API endpoints</div>

<details close="close">
  <summary>Animal API endpoint</summary>
  
  ```
  https://lit-retreat-15005.herokuapp.com/api/v1/animal/:id?elCode=AMAJB01010
  ```
  
  ```
  {
    "data": {
        "type": "animal",
        "attributes": {
            "common_name": "American Black Bear",
            "scientific_name": "Ursus americanus",
            "kingdom": "Animalia",
            "phylum": "Craniata",
            "taxclass": "Mammalia",
            "taxorder": "Carnivora",
            "family": "Ursidae",
            "genus": "Ursus"
        },
        "region": {
            "statesTerritories": [
                "Prince Edward Island",
                "Labrador",
                "Island of Newfoundland",
                "Yukon Territory",
                "Nunavut",
                "Manitoba",
                "New Brunswick",
                "Quebec",
                "Alberta",
                "Ontario",
                "Northwest Territories",
                "Saskatchewan",
                "Nova Scotia",
                "British Columbia",
                "Colorado",
                "South Dakota",
                "Alabama",
                "Vermont",
                "Kansas",
                "Maine",
                "Rhode Island",
                "Washington",
                "New York",
                "Georgia",
                "Oregon",
                "Delaware",
                "West Virginia",
                "Mississippi",
                "Michigan",
                "Pennsylvania",
                "Arkansas",
                "North Dakota",
                "Maryland",
                "Illinois",
                "North Carolina",
                "Wisconsin",
                "Arizona",
                "Tennessee",
                "Idaho",
                "Nevada",
                "Wyoming",
                "Massachusetts",
                "Ohio",
                "Florida",
                "Texas",
                "Oklahoma",
                "New Jersey",
                "Louisiana",
                "Navajo Nation",
                "South Carolina",
                "Indiana",
                "Virginia",
                "Kentucky",
                "Connecticut",
                "Utah",
                "Minnesota",
                "Alaska",
                "Nebraska",
                "Iowa",
                "Missouri",
                "District of Columbia",
                "California",
                "New Hampshire",
                "New Mexico",
                "Montana"
            ]
        },
        "vulnerability": {
            "gRank": "G5",
            "gRankReasons": "Widespread in North America; stable, secure population."
        },
        "habitat_data": {
            "habitats": null,
            "habitatComments": "Black bears inhabit forests and nearby openings, including forested wetlands. When inactive, they occupy dens under fallen trees, ground-level or above-ground tree cavities or hollow logs, underground cave-like sites, or the ground surface in dense cover. Young are born in a den. A low rate of den reuse was recorded in Pennsylvania.<br /><br />These bears prefer mixed deciduous-coniferous forests with a thick understory but may occur in various situations. Large hardwood swamps and pocosins are important habitats on the Atlantic Coastal Plain. In the Great Dismal Swamp, Virginia and North Carolina, preferred habitats were pocosins, gum-cypress and maple-coniferous stands, disturbed areas, and roads; females exhibited seasonal changes in habitat preference (Hellgren and Vaughan 1991). In some areas (e.g., Alaska), bears make significant use of salmon spawning streams. In southeastern wetlands, bears would benefit from maintenance and enhancement of pocosins, mature gum, oak, and disturbed habitats (Hellgren et al. 1991).",
            "threatImpactComments": "Locally threatened by habitat loss and interference by humans. Black market value of gall bladder and paws has led to an increase in the illegal harvest of this species.",
            "shortTermTrend": "Populations have increased recently in the northeastern U.S. <br /><br />Sightings and abundance in the southwestern Great Plains in western Oklahoma and adjacent northwestern Texas and southwestern Kansas increased in the 1980s and 1990s, with an apparently reproducing population now present in Cimarron County, Oklahoma; this population apparently expanded from those in southeastern Colorado and northeastern New Mexico (Kamler et al. 2003).",
            "popSize": "10,000 to >1,000,000 individuals"
        }
    }
}
  ```
</details>
