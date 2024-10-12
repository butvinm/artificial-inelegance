from random import choices


natsuki = [
    'Anger', 'Anime', 'Blanket', 'Boop', 'Bouncy', 'Bubbles', 'Bunny', 'Candy', 'Cheeks', 'Chocolate', 'Clouds', 'Cute', 'Doki-doki', 'Email', 'Fantasy', 'Fluffy', 'Games', 'Giggle', 'Hair', 'Headphones', 'Heartbeat', 'Hop', 'Jump', 'Jumpy', 'Kawaii', 'Kiss', 'Kitty', 'Lipstick', 'Lollipop', 'Marshmallow', 'Melody', 'Milk', 'Mouse', 'Nibble', 'Nightgown', 'Papa', 'Parfait', 'Peace', 'Pink', 'Playground', 'Poof', 'Pout', 'Puppy', 'Pure', 'Ribbon', 'Shiny', 'Shopping', 'Skipping', 'Skirt', 'Socks', 'Spinning', 'Sticky', 'Strawberry', 'Sugar', 'Summer', 'Swimsuit', 'Twirl', 'Valentine', 'Vanilla', 'Waterfall', 'Whisper', 'Whistle'
]

sayori = [
    'Adventure', 'Alone', 'Amazing', 'Awesome', 'Beauty', 'Bed', 'Bliss', 'Broken', 'Calm', 'Charm', 'Cheer', 'Childhood', 'Clumsy', 'Color', 'Comfort', 'Cry', 'Dance', 'Dark', 'Daydream', 'Dazzle', 'Death', 'Defeat', 'Depression', 'Embrace', 'Empty', 'Excitement', 'Extraordinary', 'Family', 'Fear', 'Feather', 'Fireflies', 'Fireworks', 'Flower', 'Flying', 'Forgive', 'Friends', 'Fun', 'Grief', 'Happiness', 'Heart', 'Holiday', 'Hope', 'Hopeless', 'Hurt', 'Joy', 'Laugh', 'Lazy', 'Loud', 'Love', 'Lucky', 'Marriage', 'Memories', 'Misery', 'Misfortune', 'Music', 'Nature', 'Ocean', 'Pain', 'Party', 'Passion', 'Peaceful', 'Play', 'Prayer', 'Precious', 'Promise', 'Rainbow', 'Raincloud', 'Romance', 'Rose', 'Sadness', 'Scars', 'Shame', 'Silly', 'Sing', 'Smile', 'Sparkle', 'Special', 'Sunny', 'Sunset', 'Sweet', 'Tears', 'Together', 'Tragedy', 'Treasure', 'Unrequited', 'Vacation', 'Warm', 'Wonderful'
]

yuri =  [
    'Afterimage', 'Agonizing', 'Ambient', 'Analysis', 'Anxiety', 'Atone', 'Aura', 'Breathe', 'Cage', 'Captive', 'Climax', 'Contamination', 'Covet', 'Crimson', 'Desire', 'Despise', 'Destiny', 'Determination', 'Disarray', 'Disaster', 'Disoriented', 'Disown', 'Dream', 'Effulgent', 'Electricity', 'Entropy', 'Essence', 'Eternity', 'Existence', 'Explode', 'Extreme', 'Fester', 'Fickle', 'Flee', 'Frightening', 'Graveyard', 'Heavensent', 'Horror', 'Imagination', 'Incapable', 'Incongruent', 'Infallible', 'Inferno', 'Infinite', 'Insight', 'Intellectual', 'Journey', 'Judgment', 'Landscape', 'Lust', 'Massacre', 'Meager', 'Melancholy', 'Philosophy', 'Pleasure', 'Portrait', 'Question', 'Raindrops', 'Secretive', 'Sensation', 'Starscape', 'Suicide', 'Tenacious', 'Time', 'Uncanny', 'Uncontrollable', 'Unending', 'Universe', 'Unrestrained', 'Unstable', 'Variance', 'Vertigo', 'Vibrant', 'Vitality', 'Vivacious', 'Vivid', 'Whirlwind', 'Wrath'
]

monika = ['Monika']


all_words = natsuki + sayori + yuri + monika


if __name__ == '__main__':
    print(' '.join(choices(all_words, k=10)))
