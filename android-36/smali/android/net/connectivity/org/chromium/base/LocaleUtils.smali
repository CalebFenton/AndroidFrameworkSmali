.class public Landroid/net/connectivity/org/chromium/base/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/LocaleUtils$ApisN;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;
    .registers 3
    .param p0, "languageTag"    # Ljava/lang/String;

    .line 108
    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 109
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/LocaleUtils;->getUpdatedLocaleForAndroid(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getConfigurationLanguage(Landroid/content/res/Configuration;)Ljava/lang/String;
    .registers 3
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 214
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 215
    .local v0, "locale":Ljava/util/Locale;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_9
    const-string v1, ""

    :goto_b
    return-object v1
.end method

.method public static blacklist getContextLanguage(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/LocaleUtils;->getConfigurationLanguage(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDefaultCountryCode()Ljava/lang/String;
    .registers 3

    .line 199
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/CommandLine;->getInstance()Landroid/net/connectivity/org/chromium/base/CommandLine;

    move-result-object v0

    .line 200
    .local v0, "commandLine":Landroid/net/connectivity/org/chromium/base/CommandLine;
    const-string v1, "default-country-code"

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 201
    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    .line 202
    :cond_11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 200
    :goto_19
    return-object v1
.end method

.method public static blacklist getDefaultLocaleListString()Ljava/lang/String;
    .registers 1

    .line 188
    nop

    .line 189
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/LocaleUtils;->toLanguageTags(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDefaultLocaleString()Ljava/lang/String;
    .registers 1

    .line 178
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/LocaleUtils;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getUpdatedLanguageForAndroid(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "language"    # Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_28

    :cond_7
    goto :goto_1c

    :sswitch_8
    const-string v0, "und"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_1d

    :sswitch_12
    const-string v0, "fil"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1d

    :goto_1c
    const/4 v0, -0x1

    :goto_1d
    packed-switch v0, :pswitch_data_32

    .line 84
    return-object p0

    .line 82
    :pswitch_21
    const-string v0, "tl"

    return-object v0

    .line 80
    :pswitch_24
    const-string v0, ""

    return-object v0

    nop

    :sswitch_data_28
    .sparse-switch
        0x18c09 -> :sswitch_12
        0x1c4eb -> :sswitch_8
    .end sparse-switch

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method public static blacklist getUpdatedLanguageForChromium(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "language"    # Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_5c

    :cond_7
    goto :goto_44

    :sswitch_8
    const-string v0, "gom"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_45

    :sswitch_12
    const-string v0, "tl"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_45

    :sswitch_1c
    const-string v0, "jw"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_45

    :sswitch_26
    const-string v0, "ji"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_45

    :sswitch_30
    const-string v0, "iw"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_45

    :sswitch_3a
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_45

    :goto_44
    const/4 v0, -0x1

    :goto_45
    packed-switch v0, :pswitch_data_76

    .line 51
    return-object p0

    .line 49
    :pswitch_49
    const-string v0, "fil"

    return-object v0

    .line 47
    :pswitch_4c
    const-string v0, "jv"

    return-object v0

    .line 45
    :pswitch_4f
    const-string v0, "yi"

    return-object v0

    .line 43
    :pswitch_52
    const-string v0, "he"

    return-object v0

    .line 41
    :pswitch_55
    const-string v0, "id"

    return-object v0

    .line 39
    :pswitch_58
    const-string v0, "kok"

    return-object v0

    nop

    :sswitch_data_5c
    .sparse-switch
        0xd25 -> :sswitch_3a
        0xd2e -> :sswitch_30
        0xd3f -> :sswitch_26
        0xd4d -> :sswitch_1c
        0xe78 -> :sswitch_12
        0x19085 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
    .end packed-switch
.end method

.method public static blacklist getUpdatedLocaleForAndroid(Ljava/util/Locale;)Ljava/util/Locale;
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;

    .line 94
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "language":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/LocaleUtils;->getUpdatedLanguageForAndroid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "languageForAndroid":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 97
    return-object p0

    .line 99
    :cond_f
    new-instance v2, Ljava/util/Locale$Builder;

    invoke-direct {v2}, Ljava/util/Locale$Builder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getUpdatedLocaleForChromium(Ljava/util/Locale;)Ljava/util/Locale;
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;

    .line 61
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "language":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/LocaleUtils;->getUpdatedLanguageForChromium(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "languageForChrome":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 64
    return-object p0

    .line 66
    :cond_f
    new-instance v2, Ljava/util/Locale$Builder;

    invoke-direct {v2}, Ljava/util/Locale$Builder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist isBaseLanguageEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "first"    # Ljava/lang/String;
    .param p1, "second"    # Ljava/lang/String;

    .line 168
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/LocaleUtils;->toBaseLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/LocaleUtils;->toBaseLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static blacklist setDefaultLocalesFromConfiguration(Landroid/content/res/Configuration;)V
    .registers 1
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 243
    nop

    .line 244
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/LocaleUtils$ApisN;->setLocaleList(Landroid/content/res/Configuration;)V

    .line 248
    return-void
.end method

.method public static blacklist toBaseLanguage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "languageTag"    # Ljava/lang/String;

    .line 155
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 156
    .local v0, "pos":I
    if-gez v0, :cond_9

    .line 157
    return-object p0

    .line 159
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p0, "locale"    # Ljava/util/Locale;

    .line 125
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/LocaleUtils;->getUpdatedLanguageForChromium(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "language":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "country":Ljava/lang/String;
    const-string v2, "no"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v2, "NO"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NY"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 128
    const-string v2, "nn-NO"

    return-object v2

    .line 130
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_33

    move-object v2, v0

    goto :goto_4a

    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4a
    return-object v2
.end method

.method public static blacklist toLanguageTags(Landroid/os/LocaleList;)Ljava/lang/String;
    .registers 5
    .param p0, "localeList"    # Landroid/os/LocaleList;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "newLocaleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 143
    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/base/LocaleUtils;->getUpdatedLocaleForChromium(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v2

    .line 144
    .local v2, "locale":Ljava/util/Locale;
    invoke-static {v2}, Landroid/net/connectivity/org/chromium/base/LocaleUtils;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v2    # "locale":Ljava/util/Locale;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 146
    .end local v1    # "i":I
    :cond_1e
    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist updateConfig(Landroid/content/Context;Landroid/content/res/Configuration;Ljava/lang/String;)V
    .registers 3
    .param p0, "base"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "languageTag"    # Ljava/lang/String;

    .line 234
    nop

    .line 235
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/org/chromium/base/LocaleUtils$ApisN;->setConfigLocales(Landroid/content/Context;Landroid/content/res/Configuration;Ljava/lang/String;)V

    .line 239
    return-void
.end method
