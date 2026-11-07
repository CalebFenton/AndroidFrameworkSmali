.class public final Lcom/android/icu/util/LocaleNative;
.super Ljava/lang/Object;
.source "LocaleNative.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .param p0, "targetLocale"    # Ljava/util/Locale;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 66
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/icu/util/LocaleNative;->getDisplayCountryNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist getDisplayCountryNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static blacklist getDisplayLanguage(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .param p0, "targetLocale"    # Ljava/util/Locale;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 85
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/icu/util/LocaleNative;->getDisplayLanguageNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist getDisplayLanguageNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static blacklist getDisplayScript(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .param p0, "targetLocale"    # Ljava/util/Locale;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 123
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/icu/util/LocaleNative;->getDisplayScriptNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist getDisplayScriptNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static blacklist getDisplayVariant(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .param p0, "targetLocale"    # Ljava/util/Locale;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 104
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/icu/util/LocaleNative;->getDisplayVariantNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist getDisplayVariantNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static blacklist setDefault(Ljava/lang/String;)V
    .registers 1
    .param p0, "languageTag"    # Ljava/lang/String;

    .line 48
    invoke-static {p0}, Lcom/android/icu/util/LocaleNative;->setDefaultNative(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private static native blacklist setDefaultNative(Ljava/lang/String;)V
.end method
