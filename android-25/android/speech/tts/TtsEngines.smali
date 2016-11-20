.class public Landroid/speech/tts/TtsEngines;
.super Ljava/lang/Object;
.source "TtsEngines.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TtsEngines$EngineInfoComparator;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOCALE_DELIMITER_NEW:Ljava/lang/String; = "_"

.field private static final LOCALE_DELIMITER_OLD:Ljava/lang/String; = "-"

.field private static final TAG:Ljava/lang/String; = "TtsEngines"

.field private static final XML_TAG_NAME:Ljava/lang/String; = "tts-engine"

.field private static final sNormalizeCountry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNormalizeLanguage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 83
    new-instance v4, Ljava/util/HashMap;

    #@3
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@6
    .line 84
    .local v4, "normalizeLanguage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    #@9
    move-result-object v7

    #@a
    array-length v8, v7

    #@b
    move v6, v5

    #@c
    :goto_0
    if-ge v6, v8, :cond_0

    #@e
    aget-object v2, v7, v6

    #@10
    .line 86
    .local v2, "language":Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/util/Locale;

    #@12
    invoke-direct {v9, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@15
    invoke-virtual {v9}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    #@18
    move-result-object v9

    #@19
    invoke-virtual {v4, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    #@1c
    .line 84
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 91
    .end local v2    # "language":Ljava/lang/String;
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@22
    move-result-object v6

    #@23
    sput-object v6, Landroid/speech/tts/TtsEngines;->sNormalizeLanguage:Ljava/util/Map;

    #@25
    .line 93
    new-instance v3, Ljava/util/HashMap;

    #@27
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@2a
    .line 94
    .local v3, "normalizeCountry":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    array-length v7, v6

    #@2f
    :goto_2
    if-ge v5, v7, :cond_1

    #@31
    aget-object v0, v6, v5

    #@33
    .line 96
    .local v0, "country":Ljava/lang/String;
    :try_start_1
    new-instance v8, Ljava/util/Locale;

    #@35
    const-string/jumbo v9, ""

    #@38
    invoke-direct {v8, v9, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3b
    invoke-virtual {v8}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    #@3e
    move-result-object v8

    #@3f
    invoke-virtual {v3, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    #@42
    .line 94
    :goto_3
    add-int/lit8 v5, v5, 0x1

    #@44
    goto :goto_2

    #@45
    .line 101
    .end local v0    # "country":Ljava/lang/String;
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@48
    move-result-object v5

    #@49
    sput-object v5, Landroid/speech/tts/TtsEngines;->sNormalizeCountry:Ljava/util/Map;

    #@4b
    .line 62
    return-void

    #@4c
    .line 97
    .restart local v0    # "country":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@4d
    .local v1, "e":Ljava/util/MissingResourceException;
    goto :goto_3

    #@4e
    .line 87
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "e":Ljava/util/MissingResourceException;
    .end local v3    # "normalizeCountry":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "language":Ljava/lang/String;
    :catch_1
    move-exception v1

    #@4f
    .restart local v1    # "e":Ljava/util/MissingResourceException;
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    #@0
    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 105
    iput-object p1, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    #@5
    .line 104
    return-void
.end method

.method private getEngineInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .locals 4
    .param p1, "resolve"    # Landroid/content/pm/ResolveInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 278
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@3
    .line 279
    .local v2, "service":Landroid/content/pm/ServiceInfo;
    if-eqz v2, :cond_1

    #@5
    .line 280
    new-instance v0, Landroid/speech/tts/TextToSpeech$EngineInfo;

    #@7
    invoke-direct {v0}, Landroid/speech/tts/TextToSpeech$EngineInfo;-><init>()V

    #@a
    .line 283
    .local v0, "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@c
    iput-object v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    #@e
    .line 284
    invoke-virtual {v2, p2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@11
    move-result-object v1

    #@12
    .line 285
    .local v1, "label":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_0

    #@18
    iget-object v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    #@1a
    :goto_0
    iput-object v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    #@1c
    .line 286
    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->getIconResource()I

    #@1f
    move-result v3

    #@20
    iput v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->icon:I

    #@22
    .line 287
    iget v3, p1, Landroid/content/pm/ResolveInfo;->priority:I

    #@24
    iput v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->priority:I

    #@26
    .line 288
    invoke-direct {p0, v2}, Landroid/speech/tts/TtsEngines;->isSystemEngine(Landroid/content/pm/ServiceInfo;)Z

    #@29
    move-result v3

    #@2a
    iput-boolean v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    #@2c
    .line 289
    return-object v0

    #@2d
    .line 285
    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    goto :goto_0

    #@32
    .line 292
    .end local v0    # "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_1
    return-object v3
.end method

.method private isSystemEngine(Landroid/content/pm/ServiceInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ServiceInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 179
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3
    .line 180
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    #@5
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@7
    and-int/lit8 v2, v2, 0x1

    #@9
    if-eqz v2, :cond_0

    #@b
    const/4 v1, 0x1

    #@c
    :cond_0
    return v1
.end method

.method public static normalizeTTSLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 6
    .param p0, "ttsLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 440
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 441
    .local v1, "language":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v4

    #@8
    if-nez v4, :cond_0

    #@a
    .line 442
    sget-object v4, Landroid/speech/tts/TtsEngines;->sNormalizeLanguage:Ljava/util/Map;

    #@c
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Ljava/lang/String;

    #@12
    .line 443
    .local v3, "normalizedLanguage":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@14
    .line 444
    move-object v1, v3

    #@15
    .line 448
    .end local v3    # "normalizedLanguage":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 449
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1c
    move-result v4

    #@1d
    if-nez v4, :cond_1

    #@1f
    .line 450
    sget-object v4, Landroid/speech/tts/TtsEngines;->sNormalizeCountry:Ljava/util/Map;

    #@21
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Ljava/lang/String;

    #@27
    .line 451
    .local v2, "normalizedCountry":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@29
    .line 452
    move-object v0, v2

    #@2a
    .line 455
    .end local v2    # "normalizedCountry":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/util/Locale;

    #@2c
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-direct {v4, v1, v0, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@33
    return-object v4
.end method

.method private static parseEnginePrefFromList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "prefValue"    # Ljava/lang/String;
    .param p1, "engineName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 496
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 497
    return-object v7

    #@9
    .line 500
    :cond_0
    const-string/jumbo v3, ","

    #@c
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 502
    .local v1, "prefValues":[Ljava/lang/String;
    array-length v5, v1

    #@11
    move v3, v4

    #@12
    :goto_0
    if-ge v3, v5, :cond_2

    #@14
    aget-object v2, v1, v3

    #@16
    .line 503
    .local v2, "value":Ljava/lang/String;
    const/16 v6, 0x3a

    #@18
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    #@1b
    move-result v0

    #@1c
    .line 504
    .local v0, "delimiter":I
    if-lez v0, :cond_1

    #@1e
    .line 505
    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@21
    move-result-object v6

    #@22
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_1

    #@28
    .line 506
    add-int/lit8 v3, v0, 0x1

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    return-object v3

    #@2f
    .line 502
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@31
    goto :goto_0

    #@32
    .line 511
    .end local v0    # "delimiter":I
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    return-object v7
.end method

.method private settingsActivityFromServiceInfo(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 13
    .param p1, "si"    # Landroid/content/pm/ServiceInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 230
    const/4 v5, 0x0

    #@2
    .line 232
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v9, "android.speech.tts"

    #@5
    invoke-virtual {p1, p2, v9}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@8
    move-result-object v5

    #@9
    .line 233
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v5, :cond_1

    #@b
    .line 234
    const-string/jumbo v9, "TtsEngines"

    #@e
    new-instance v10, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v11, "No meta-data found for :"

    #@16
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v10

    #@1a
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v10

    #@1e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v10

    #@22
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 271
    if-eqz v5, :cond_0

    #@27
    .line 272
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    #@2a
    .line 235
    :cond_0
    return-object v12

    #@2b
    .line 238
    :cond_1
    :try_start_1
    iget-object v9, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2d
    invoke-virtual {p2, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@30
    move-result-object v6

    #@31
    .line 241
    .local v6, "res":Landroid/content/res/Resources;
    :cond_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    #@34
    move-result v8

    #@35
    .local v8, "type":I
    const/4 v9, 0x1

    #@36
    if-eq v8, v9, :cond_6

    #@38
    .line 242
    const/4 v9, 0x2

    #@39
    if-ne v8, v9, :cond_2

    #@3b
    .line 243
    const-string/jumbo v9, "tts-engine"

    #@3e
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@41
    move-result-object v10

    #@42
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v9

    #@46
    if-nez v9, :cond_4

    #@48
    .line 244
    const-string/jumbo v9, "TtsEngines"

    #@4b
    new-instance v10, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v11, "Package "

    #@53
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v10

    #@57
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v10

    #@5b
    const-string/jumbo v11, " uses unknown tag :"

    #@5e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v10

    #@62
    .line 245
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@65
    move-result-object v11

    #@66
    .line 244
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v10

    #@6a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v10

    #@6e
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@71
    .line 271
    if-eqz v5, :cond_3

    #@73
    .line 272
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    #@76
    .line 246
    :cond_3
    return-object v12

    #@77
    .line 249
    :cond_4
    :try_start_2
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@7a
    move-result-object v1

    #@7b
    .line 251
    .local v1, "attrs":Landroid/util/AttributeSet;
    sget-object v9, Lcom/android/internal/R$styleable;->TextToSpeechEngine:[I

    #@7d
    .line 250
    invoke-virtual {v6, v1, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@80
    move-result-object v0

    #@81
    .line 253
    .local v0, "array":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    #@82
    .line 252
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@85
    move-result-object v7

    #@86
    .line 254
    .local v7, "settings":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@89
    .line 271
    if-eqz v5, :cond_5

    #@8b
    .line 272
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    #@8e
    .line 256
    :cond_5
    return-object v7

    #@8f
    .line 271
    .end local v0    # "array":Landroid/content/res/TypedArray;
    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local v7    # "settings":Ljava/lang/String;
    :cond_6
    if-eqz v5, :cond_7

    #@91
    .line 272
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    #@94
    .line 260
    :cond_7
    return-object v12

    #@95
    .line 267
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v8    # "type":I
    :catch_0
    move-exception v3

    #@96
    .line 268
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v9, "TtsEngines"

    #@99
    new-instance v10, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v11, "Error parsing metadata for "

    #@a1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v10

    #@a5
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v10

    #@a9
    const-string/jumbo v11, ":"

    #@ac
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v10

    #@b0
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v10

    #@b4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v10

    #@b8
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@bb
    .line 271
    if-eqz v5, :cond_8

    #@bd
    .line 272
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    #@c0
    .line 269
    :cond_8
    return-object v12

    #@c1
    .line 264
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    #@c2
    .line 265
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string/jumbo v9, "TtsEngines"

    #@c5
    new-instance v10, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    const-string/jumbo v11, "Error parsing metadata for "

    #@cd
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v10

    #@d1
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v10

    #@d5
    const-string/jumbo v11, ":"

    #@d8
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v10

    #@dc
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v10

    #@e0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v10

    #@e4
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@e7
    .line 271
    if-eqz v5, :cond_9

    #@e9
    .line 272
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    #@ec
    .line 266
    :cond_9
    return-object v12

    #@ed
    .line 261
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v2

    #@ee
    .line 262
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    const-string/jumbo v9, "TtsEngines"

    #@f1
    new-instance v10, Ljava/lang/StringBuilder;

    #@f3
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@f6
    const-string/jumbo v11, "Could not load resources for : "

    #@f9
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v10

    #@fd
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v10

    #@101
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@104
    move-result-object v10

    #@105
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@108
    .line 271
    if-eqz v5, :cond_a

    #@10a
    .line 272
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    #@10d
    .line 263
    :cond_a
    return-object v12

    #@10e
    .line 270
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v9

    #@10f
    .line 271
    if-eqz v5, :cond_b

    #@111
    .line 272
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    #@114
    .line 270
    :cond_b
    throw v9
.end method

.method public static toOldLocaleStringFormat(Ljava/util/Locale;)[Ljava/lang/String;
    .locals 8
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 471
    new-array v1, v7, [Ljava/lang/String;

    #@6
    const-string/jumbo v2, ""

    #@9
    aput-object v2, v1, v4

    #@b
    const-string/jumbo v2, ""

    #@e
    aput-object v2, v1, v5

    #@10
    const-string/jumbo v2, ""

    #@13
    aput-object v2, v1, v6

    #@15
    .line 477
    .local v1, "ret":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    const/4 v3, 0x0

    #@1a
    aput-object v2, v1, v3

    #@1c
    .line 478
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    const/4 v3, 0x1

    #@21
    aput-object v2, v1, v3

    #@23
    .line 479
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    const/4 v3, 0x2

    #@28
    aput-object v2, v1, v3
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 481
    return-object v1

    #@2b
    .line 482
    :catch_0
    move-exception v0

    #@2c
    .line 485
    .local v0, "e":Ljava/util/MissingResourceException;
    new-array v2, v7, [Ljava/lang/String;

    #@2e
    const-string/jumbo v3, "eng"

    #@31
    aput-object v3, v2, v4

    #@33
    const-string/jumbo v3, "USA"

    #@36
    aput-object v3, v2, v5

    #@38
    const-string/jumbo v3, ""

    #@3b
    aput-object v3, v2, v6

    #@3d
    return-object v2
.end method

.method private updateValueInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "list"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v11, 0x2c

    #@2
    const/4 v7, 0x0

    #@3
    const/16 v10, 0x3a

    #@5
    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    .line 544
    .local v3, "newPrefList":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_1

    #@10
    .line 546
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v6

    #@14
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    move-result-object v6

    #@18
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 584
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v6

    #@1f
    return-object v6

    #@20
    .line 548
    :cond_1
    const-string/jumbo v6, ","

    #@23
    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    .line 550
    .local v4, "prefValues":[Ljava/lang/String;
    const/4 v1, 0x1

    #@28
    .line 552
    .local v1, "first":Z
    const/4 v2, 0x0

    #@29
    .line 553
    .local v2, "found":Z
    array-length v8, v4

    #@2a
    move v6, v7

    #@2b
    :goto_1
    if-ge v6, v8, :cond_6

    #@2d
    aget-object v5, v4, v6

    #@2f
    .line 554
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    #@32
    move-result v0

    #@33
    .line 555
    .local v0, "delimiter":I
    if-lez v0, :cond_2

    #@35
    .line 556
    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@38
    move-result-object v9

    #@39
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v9

    #@3d
    if-eqz v9, :cond_4

    #@3f
    .line 557
    if-eqz v1, :cond_3

    #@41
    .line 558
    const/4 v1, 0x0

    #@42
    .line 562
    :goto_2
    const/4 v2, 0x1

    #@43
    .line 563
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v9

    #@47
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v9

    #@4b
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 553
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    #@50
    goto :goto_1

    #@51
    .line 560
    :cond_3
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@54
    goto :goto_2

    #@55
    .line 565
    :cond_4
    if-eqz v1, :cond_5

    #@57
    .line 566
    const/4 v1, 0x0

    #@58
    .line 571
    :goto_4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    goto :goto_3

    #@5c
    .line 568
    :cond_5
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5f
    goto :goto_4

    #@60
    .line 576
    .end local v0    # "delimiter":I
    .end local v5    # "value":Ljava/lang/String;
    :cond_6
    if-nez v2, :cond_0

    #@62
    .line 579
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@65
    .line 580
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v6

    #@69
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v6

    #@6d
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    goto :goto_0
.end method


# virtual methods
.method public getDefaultEngine()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 114
    iget-object v1, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    .line 115
    const-string/jumbo v2, "tts_default_synth"

    #@9
    .line 114
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 116
    .local v0, "engine":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/speech/tts/TtsEngines;->isEngineInstalled(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .end local v0    # "engine":Ljava/lang/String;
    :goto_0
    return-object v0

    #@14
    .restart local v0    # "engine":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/speech/tts/TtsEngines;->getHighestRankedEngineName()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    goto :goto_0
.end method

.method public getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 138
    iget-object v3, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v1

    #@7
    .line 139
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    #@9
    const-string/jumbo v3, "android.intent.action.TTS_SERVICE"

    #@c
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@f
    .line 140
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@12
    .line 142
    const/high16 v3, 0x10000

    #@14
    .line 141
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    #@17
    move-result-object v2

    #@18
    .line 146
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    #@1a
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@1d
    move-result v3

    #@1e
    const/4 v4, 0x1

    #@1f
    if-ne v3, v4, :cond_0

    #@21
    .line 147
    const/4 v3, 0x0

    #@22
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@28
    invoke-direct {p0, v3, v1}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    #@2b
    move-result-object v3

    #@2c
    return-object v3

    #@2d
    .line 150
    :cond_0
    return-object v5
.end method

.method public getEngines()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/speech/tts/TextToSpeech$EngineInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 159
    iget-object v7, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v3

    #@6
    .line 160
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    #@8
    const-string/jumbo v7, "android.intent.action.TTS_SERVICE"

    #@b
    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@e
    .line 162
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v7, 0x10000

    #@10
    invoke-virtual {v3, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    #@13
    move-result-object v6

    #@14
    .line 163
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v6, :cond_0

    #@16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@19
    move-result-object v7

    #@1a
    return-object v7

    #@1b
    .line 165
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@1d
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@20
    move-result v7

    #@21
    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    #@24
    .line 167
    .local v1, "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v5

    #@28
    .local v5, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v7

    #@2c
    if-eqz v7, :cond_2

    #@2e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v4

    #@32
    check-cast v4, Landroid/content/pm/ResolveInfo;

    #@34
    .line 168
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v4, v3}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    #@37
    move-result-object v0

    #@38
    .line 169
    .local v0, "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    if-eqz v0, :cond_1

    #@3a
    .line 170
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3d
    goto :goto_0

    #@3e
    .line 173
    .end local v0    # "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    sget-object v7, Landroid/speech/tts/TtsEngines$EngineInfoComparator;->INSTANCE:Landroid/speech/tts/TtsEngines$EngineInfoComparator;

    #@40
    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@43
    .line 175
    return-object v1
.end method

.method public getHighestRankedEngineName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 124
    invoke-virtual {p0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    .line 126
    .local v0, "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@8
    move-result v1

    #@9
    if-lez v1, :cond_0

    #@b
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    #@11
    iget-boolean v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 127
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    #@1b
    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    #@1d
    return-object v1

    #@1e
    .line 130
    :cond_0
    const/4 v1, 0x0

    #@1f
    return-object v1
.end method

.method public getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;
    .locals 2
    .param p1, "engineName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 332
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "tts_default_locale"

    #@9
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 331
    invoke-virtual {p0, p1, v0}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .locals 5
    .param p1, "engineName"    # Ljava/lang/String;
    .param p2, "prefValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 338
    invoke-static {p2, p1}, Landroid/speech/tts/TtsEngines;->parseEnginePrefFromList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 342
    .local v0, "localeString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 344
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@d
    move-result-object v2

    #@e
    return-object v2

    #@f
    .line 347
    :cond_0
    invoke-virtual {p0, v0}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    #@12
    move-result-object v1

    #@13
    .line 348
    .local v1, "result":Ljava/util/Locale;
    if-nez v1, :cond_1

    #@15
    .line 349
    const-string/jumbo v2, "TtsEngines"

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Failed to parse locale "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    const-string/jumbo v4, ", returning en_US instead"

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 350
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@38
    .line 355
    :cond_1
    return-object v1
.end method

.method public getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 9
    .param p1, "engine"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 198
    iget-object v6, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v2

    #@7
    .line 199
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    #@9
    const-string/jumbo v6, "android.intent.action.TTS_SERVICE"

    #@c
    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@f
    .line 200
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@12
    .line 202
    const v6, 0x10080

    #@15
    .line 201
    invoke-virtual {v2, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    #@18
    move-result-object v3

    #@19
    .line 206
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_0

    #@1b
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@1e
    move-result v6

    #@1f
    const/4 v7, 0x1

    #@20
    if-ne v6, v7, :cond_0

    #@22
    .line 207
    const/4 v6, 0x0

    #@23
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v6

    #@27
    check-cast v6, Landroid/content/pm/ResolveInfo;

    #@29
    iget-object v4, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@2b
    .line 208
    .local v4, "service":Landroid/content/pm/ServiceInfo;
    if-eqz v4, :cond_0

    #@2d
    .line 209
    invoke-direct {p0, v4, v2}, Landroid/speech/tts/TtsEngines;->settingsActivityFromServiceInfo(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    .line 210
    .local v5, "settings":Ljava/lang/String;
    if-eqz v5, :cond_0

    #@33
    .line 211
    new-instance v0, Landroid/content/Intent;

    #@35
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@38
    .line 212
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0, p1, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3b
    .line 213
    return-object v0

    #@3c
    .line 218
    .end local v0    # "i":Landroid/content/Intent;
    .end local v4    # "service":Landroid/content/pm/ServiceInfo;
    .end local v5    # "settings":Ljava/lang/String;
    :cond_0
    return-object v8
.end method

.method public isEngineInstalled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "engine"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 187
    if-nez p1, :cond_0

    #@3
    .line 188
    return v0

    #@4
    .line 191
    :cond_0
    invoke-virtual {p0, p1}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    #@7
    move-result-object v1

    #@8
    if-eqz v1, :cond_1

    #@a
    const/4 v0, 0x1

    #@b
    :cond_1
    return v0
.end method

.method public isLocaleSetToDefaultForEngine(Ljava/lang/String;)Z
    .locals 2
    .param p1, "engineName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 368
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "tts_default_locale"

    #@9
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 367
    invoke-static {v0, p1}, Landroid/speech/tts/TtsEngines;->parseEnginePrefFromList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 13
    .param p1, "localeString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v12, 0x3

    #@1
    const/4 v10, 0x2

    #@2
    const/4 v9, 0x0

    #@3
    const/4 v11, 0x0

    #@4
    .line 380
    const-string/jumbo v2, ""

    #@7
    .local v2, "language":Ljava/lang/String;
    const-string/jumbo v0, ""

    #@a
    .local v0, "country":Ljava/lang/String;
    const-string/jumbo v7, ""

    #@d
    .line 381
    .local v7, "variant":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@10
    move-result v8

    #@11
    if-nez v8, :cond_3

    #@13
    .line 383
    const-string/jumbo v8, "[-_]"

    #@16
    .line 382
    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@19
    move-result-object v6

    #@1a
    .line 384
    .local v6, "split":[Ljava/lang/String;
    aget-object v8, v6, v9

    #@1c
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    .line 385
    array-length v8, v6

    #@21
    if-nez v8, :cond_0

    #@23
    .line 386
    const-string/jumbo v8, "TtsEngines"

    #@26
    new-instance v9, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v10, "Failed to convert "

    #@2e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v9

    #@32
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v9

    #@36
    const-string/jumbo v10, " to a valid Locale object. Only"

    #@39
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v9

    #@3d
    .line 387
    const-string/jumbo v10, " separators"

    #@40
    .line 386
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v9

    #@44
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v9

    #@48
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 388
    return-object v11

    #@4c
    .line 390
    :cond_0
    array-length v8, v6

    #@4d
    if-le v8, v12, :cond_1

    #@4f
    .line 391
    const-string/jumbo v8, "TtsEngines"

    #@52
    new-instance v9, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v10, "Failed to convert "

    #@5a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v9

    #@5e
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v9

    #@62
    const-string/jumbo v10, " to a valid Locale object. Too"

    #@65
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v9

    #@69
    .line 392
    const-string/jumbo v10, " many separators"

    #@6c
    .line 391
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v9

    #@70
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v9

    #@74
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    .line 393
    return-object v11

    #@78
    .line 395
    :cond_1
    array-length v8, v6

    #@79
    if-lt v8, v10, :cond_2

    #@7b
    .line 396
    const/4 v8, 0x1

    #@7c
    aget-object v8, v6, v8

    #@7e
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@81
    move-result-object v0

    #@82
    .line 398
    :cond_2
    array-length v8, v6

    #@83
    if-lt v8, v12, :cond_3

    #@85
    .line 399
    aget-object v7, v6, v10

    #@87
    .line 404
    .end local v6    # "split":[Ljava/lang/String;
    :cond_3
    sget-object v8, Landroid/speech/tts/TtsEngines;->sNormalizeLanguage:Ljava/util/Map;

    #@89
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8c
    move-result-object v4

    #@8d
    check-cast v4, Ljava/lang/String;

    #@8f
    .line 405
    .local v4, "normalizedLanguage":Ljava/lang/String;
    if-eqz v4, :cond_4

    #@91
    .line 406
    move-object v2, v4

    #@92
    .line 409
    :cond_4
    sget-object v8, Landroid/speech/tts/TtsEngines;->sNormalizeCountry:Ljava/util/Map;

    #@94
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@97
    move-result-object v3

    #@98
    check-cast v3, Ljava/lang/String;

    #@9a
    .line 410
    .local v3, "normalizedCountry":Ljava/lang/String;
    if-eqz v3, :cond_5

    #@9c
    .line 411
    move-object v0, v3

    #@9d
    .line 417
    :cond_5
    new-instance v5, Ljava/util/Locale;

    #@9f
    invoke-direct {v5, v2, v0, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a2
    .line 419
    .local v5, "result":Ljava/util/Locale;
    :try_start_0
    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    #@a5
    .line 420
    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@a8
    .line 421
    return-object v5

    #@a9
    .line 422
    :catch_0
    move-exception v1

    #@aa
    .line 423
    .local v1, "e":Ljava/util/MissingResourceException;
    const-string/jumbo v8, "TtsEngines"

    #@ad
    new-instance v9, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v10, "Failed to convert "

    #@b5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v9

    #@b9
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v9

    #@bd
    const-string/jumbo v10, " to a valid Locale object."

    #@c0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v9

    #@c4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v9

    #@c8
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@cb
    .line 424
    return-object v11
.end method

.method public declared-synchronized updateLocalePrefForEngine(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 5
    .param p1, "engineName"    # Ljava/lang/String;
    .param p2, "newLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 520
    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v2

    #@7
    .line 521
    const-string/jumbo v3, "tts_default_locale"

    #@a
    .line 520
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 528
    .local v1, "prefList":Ljava/lang/String;
    if-eqz p2, :cond_0

    #@10
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 527
    :goto_0
    invoke-direct {p0, v1, p1, v2}, Landroid/speech/tts/TtsEngines;->updateValueInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 532
    .local v0, "newPrefList":Ljava/lang/String;
    iget-object v2, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    #@1a
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1d
    move-result-object v2

    #@1e
    .line 533
    const-string/jumbo v3, "tts_default_locale"

    #@21
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    .line 532
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit p0

    #@29
    .line 519
    return-void

    #@2a
    .line 528
    .end local v0    # "newPrefList":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string/jumbo v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .end local v1    # "prefList":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@2f
    monitor-exit p0

    #@30
    throw v2
.end method
