from googletrans import Translator
translator = Translator()
words_to_translate = [
    'Adjustment',
    'Time',
    'Heat',
    'Home Connect',
    'Display',
    'Sound',
    'Appliance Settings',
    'Customisation',
    'Factory Settings',
    'Info',
]

language_map = {
    'English': 'en',
    'Spanish': 'es',
    'French': 'fr',
    'German': 'de',
    'Italian': 'it',
    'Japanese': 'ja',
    'Chinese': 'zh-CN',
    'Russian': 'ru',
    'Portuguese': 'pt',
    'Vietnamese': 'vi',
}

target_languages = [
    'English',
    'Spanish',
    'French',
    'German',
    'Italian',
    'Japanese',
    'Chinese',
    'Russian',
    'Portuguese',
    'Vietnamese',
]


def translate_words(words, target_langs):
    translations = {}
    for lang_name in target_langs:
        lang_code = language_map.get(lang_name)
        if lang_code:
            translations[lang_name] = {}
            for word in words:
                translation = translator.translate(
                    word, src='en', dest=lang_code)
                translations[lang_name][word] = translation.text

    return translations


if __name__ == '__main__':
    translated_words = translate_words(words_to_translate, target_languages)

    for lang_name, translations in translated_words.items():
        print(f'{lang_name}:')
        for word, translation in translations.items():
            print(f'  "{word}": "{translation}"')
            print(",")
