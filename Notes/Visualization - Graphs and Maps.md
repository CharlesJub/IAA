# Graphs 

Line Graph: Track change over time

Side-by-Side Bar Chart: Show parts of a whole, category comparison 

Histogram: Show distribution of a variable 
	Equal width
	Equal frequency

Scatterplot: Compare two numeric variables 

Venn diagram: uniqueness and overlap

*Don't use variables names in a graph*

## Multivariate Glyphs
Visualize high dimensional data

Many ways to show variables, can combine to show many different variables at once. *I think this only works for comparisons between maps, and even then I think it is hard to use well*

Used if there is some relationship between the variables. If no relationship, just use individual maps


# Maps 

- Types
	- Value by region: choropleth
	- Equal-value contour lines: isarithmic or contour map
	- point location and value: proportional symbol
	- feature presence or absence: dot

*Always population correct maps using population*

# Non-traditional Visuals
Pro: Can customize based on needs
Con: Need to explain before highlighting value for audience to understand. Bad for reports because requires extra reading

- Arc diagrams: show frequency of repetition 
- Phrase nets: text analytics tool, show links between words in text using. Links show by prepositions "X and Y" or "X at Y"

# Pre-attentive Features
Basic visual features that are detected rapidly: presences or absence, possible amount

Unique features can capture our focus of attention

Goal is to direct focus of attention of viewer

Draw attention with pop out:
- Change target hue
- Change target shape, works just as well as hue

If you combine both shape and hue, looking for combination as the target doesn't work

Features:
![[Visualization - Graphs and Maps - Preattentive Features 1.png]]
![[Visualization - Graphs and Maps - Preattentive Features 2.png]]

If you give the viewer something to look for they can find a combo of features more effectively 



# Perceptual Guidelines
Color: hue, saturation, luminance, chromaticity (hue + saturation)
Texture: size, orientation, density, regularity of placement
Motion: flicker, phase, direction, velocity

Feature Hierarchy: 
- Luminance dominates hue, Color dominates texture, regularity perceptually weak
- Most important data assigned to luminance
- The hue or chroma
- Then texture, then regularity

# Post-attentive Amnesia
Intuition suggests they will

Experiments show that it doesn't work this way

**Change Blindness**: 
- **Overwriting**: current image overwritten by new one
- First impression: initial view abstracted
- **Noting is stored**
- Feature combination
- **Everything is stored, nothing is compared**

If you prompt someone to look at something they can miss the other aspects of the visualization



# Guidelines for Graphs
Graphs are meant to provide insight
Understand you audience, their visual expertise, and their needs

Graphs are not meant for absolute value determination

## Audience
- Who is your audience
	- Defines presentation types they are familiar with
- What do they know about the data?
	- Include known data to define context, remove data if it is redundant
- What do the expect to see?
	- Defines "uninteresting" results
- What will they do with the information?

## Message
- What does the data show
	- Exploration Show new results 
	- validation, show that expected results are correct
	- Presentation, show important results in an easy-to-comprehend manner
- Is there more than one main message?
	- Ensure individual messages are clear and memorable
	- Do not use a single presentation style for multiple messages unless necessary
- What aspects of the message should be highlighted?
	- Ensure main point(s) are obvious in the presentation

*Resource: Tufte's PowerPoint Folio*

## Recommendations
Bar Graph: comparison of items, relationships between items, time series data

Pie Chart: comparison of relative amounts, description of components
	First slice at 12-o'clock
	Slices ordered largest to smallest, absent a semantic ordering
	Don't have 500 categories
	Relationships between two groups, should use side-by-side bar chart

Line Graph: time series, frequency distribution
	Implied linear relationship by year if dots are connected, use bar chart if no connection
	If one line, don't need a label
	Dual-axis: used to show pattern, need to scale or coordinate axes

Histogram:
	
Scatterplot: relationship analysis
	
Venn: analysis of uniqueness and commonality (overlap)
	

