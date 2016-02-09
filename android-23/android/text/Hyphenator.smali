.class public Landroid/text/Hyphenator;
.super Ljava/lang/Object;
.source "Hyphenator.java"


# static fields
.field private static final LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field static final sEmptyHyphenator:Landroid/text/Hyphenator;

.field private static final sLock:Ljava/lang/Object;

.field static final sMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Landroid/text/Hyphenator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 41
    const-string/jumbo v0, "Hyphenator"

    #@6
    sput-object v0, Landroid/text/Hyphenator;->TAG:Ljava/lang/String;

    #@8
    .line 43
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    sput-object v0, Landroid/text/Hyphenator;->sLock:Ljava/lang/Object;

    #@f
    .line 46
    new-instance v0, Ljava/util/HashMap;

    #@11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@14
    sput-object v0, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    #@16
    .line 48
    new-instance v0, Landroid/text/Hyphenator;

    #@18
    const-string/jumbo v1, ""

    #@1b
    invoke-static {v1}, Landroid/text/StaticLayout;->nLoadHyphenator(Ljava/lang/String;)J

    #@1e
    move-result-wide v2

    #@1f
    invoke-direct {v0, v2, v3}, Landroid/text/Hyphenator;-><init>(J)V

    #@22
    sput-object v0, Landroid/text/Hyphenator;->sEmptyHyphenator:Landroid/text/Hyphenator;

    #@24
    .line 114
    const/16 v0, 0xd

    #@26
    new-array v0, v0, [[Ljava/lang/String;

    #@28
    .line 119
    new-array v1, v6, [Ljava/lang/String;

    #@2a
    const-string/jumbo v2, "en-AS"

    #@2d
    aput-object v2, v1, v4

    #@2f
    const-string/jumbo v2, "en-US"

    #@32
    aput-object v2, v1, v5

    #@34
    aput-object v1, v0, v4

    #@36
    .line 120
    new-array v1, v6, [Ljava/lang/String;

    #@38
    const-string/jumbo v2, "en-GU"

    #@3b
    aput-object v2, v1, v4

    #@3d
    const-string/jumbo v2, "en-US"

    #@40
    aput-object v2, v1, v5

    #@42
    aput-object v1, v0, v5

    #@44
    .line 121
    new-array v1, v6, [Ljava/lang/String;

    #@46
    const-string/jumbo v2, "en-MH"

    #@49
    aput-object v2, v1, v4

    #@4b
    const-string/jumbo v2, "en-US"

    #@4e
    aput-object v2, v1, v5

    #@50
    aput-object v1, v0, v6

    #@52
    .line 122
    new-array v1, v6, [Ljava/lang/String;

    #@54
    const-string/jumbo v2, "en-MP"

    #@57
    aput-object v2, v1, v4

    #@59
    const-string/jumbo v2, "en-US"

    #@5c
    aput-object v2, v1, v5

    #@5e
    const/4 v2, 0x3

    #@5f
    aput-object v1, v0, v2

    #@61
    .line 123
    new-array v1, v6, [Ljava/lang/String;

    #@63
    const-string/jumbo v2, "en-PR"

    #@66
    aput-object v2, v1, v4

    #@68
    const-string/jumbo v2, "en-US"

    #@6b
    aput-object v2, v1, v5

    #@6d
    const/4 v2, 0x4

    #@6e
    aput-object v1, v0, v2

    #@70
    .line 124
    new-array v1, v6, [Ljava/lang/String;

    #@72
    const-string/jumbo v2, "en-UM"

    #@75
    aput-object v2, v1, v4

    #@77
    const-string/jumbo v2, "en-US"

    #@7a
    aput-object v2, v1, v5

    #@7c
    const/4 v2, 0x5

    #@7d
    aput-object v1, v0, v2

    #@7f
    .line 125
    new-array v1, v6, [Ljava/lang/String;

    #@81
    const-string/jumbo v2, "en-VI"

    #@84
    aput-object v2, v1, v4

    #@86
    const-string/jumbo v2, "en-US"

    #@89
    aput-object v2, v1, v5

    #@8b
    const/4 v2, 0x6

    #@8c
    aput-object v1, v0, v2

    #@8e
    .line 128
    new-array v1, v6, [Ljava/lang/String;

    #@90
    const-string/jumbo v2, "no"

    #@93
    aput-object v2, v1, v4

    #@95
    const-string/jumbo v2, "nb"

    #@98
    aput-object v2, v1, v5

    #@9a
    const/4 v2, 0x7

    #@9b
    aput-object v1, v0, v2

    #@9d
    .line 133
    new-array v1, v6, [Ljava/lang/String;

    #@9f
    const-string/jumbo v2, "am"

    #@a2
    aput-object v2, v1, v4

    #@a4
    const-string/jumbo v2, "und-Ethi"

    #@a7
    aput-object v2, v1, v5

    #@a9
    const/16 v2, 0x8

    #@ab
    aput-object v1, v0, v2

    #@ad
    .line 134
    new-array v1, v6, [Ljava/lang/String;

    #@af
    const-string/jumbo v2, "byn"

    #@b2
    aput-object v2, v1, v4

    #@b4
    const-string/jumbo v2, "und-Ethi"

    #@b7
    aput-object v2, v1, v5

    #@b9
    const/16 v2, 0x9

    #@bb
    aput-object v1, v0, v2

    #@bd
    .line 135
    new-array v1, v6, [Ljava/lang/String;

    #@bf
    const-string/jumbo v2, "gez"

    #@c2
    aput-object v2, v1, v4

    #@c4
    const-string/jumbo v2, "und-Ethi"

    #@c7
    aput-object v2, v1, v5

    #@c9
    const/16 v2, 0xa

    #@cb
    aput-object v1, v0, v2

    #@cd
    .line 136
    new-array v1, v6, [Ljava/lang/String;

    #@cf
    const-string/jumbo v2, "ti"

    #@d2
    aput-object v2, v1, v4

    #@d4
    const-string/jumbo v2, "und-Ethi"

    #@d7
    aput-object v2, v1, v5

    #@d9
    const/16 v2, 0xb

    #@db
    aput-object v1, v0, v2

    #@dd
    .line 137
    new-array v1, v6, [Ljava/lang/String;

    #@df
    const-string/jumbo v2, "wal"

    #@e2
    aput-object v2, v1, v4

    #@e4
    const-string/jumbo v2, "und-Ethi"

    #@e7
    aput-object v2, v1, v5

    #@e9
    const/16 v2, 0xc

    #@eb
    aput-object v1, v0, v2

    #@ed
    .line 114
    sput-object v0, Landroid/text/Hyphenator;->LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    #@ef
    .line 37
    return-void
.end method

.method private constructor <init>(J)V
    .locals 1
    .param p1, "nativePtr"    # J

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    iput-wide p1, p0, Landroid/text/Hyphenator;->mNativePtr:J

    #@5
    .line 52
    return-void
.end method

.method public static get(Ljava/util/Locale;)J
    .locals 8
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 57
    sget-object v5, Landroid/text/Hyphenator;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 58
    :try_start_0
    sget-object v4, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    #@5
    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Landroid/text/Hyphenator;

    #@b
    .line 59
    .local v1, "result":Landroid/text/Hyphenator;
    if-eqz v1, :cond_0

    #@d
    .line 60
    iget-wide v6, v1, Landroid/text/Hyphenator;->mNativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v5

    #@10
    return-wide v6

    #@11
    .line 66
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Locale;

    #@13
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-direct {v0, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@1a
    .line 67
    .local v0, "languageOnlyLocale":Ljava/util/Locale;
    sget-object v4, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    #@1c
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    .end local v1    # "result":Landroid/text/Hyphenator;
    check-cast v1, Landroid/text/Hyphenator;

    #@22
    .line 68
    .restart local v1    # "result":Landroid/text/Hyphenator;
    if-eqz v1, :cond_1

    #@24
    .line 69
    sget-object v4, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    #@26
    invoke-virtual {v4, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 70
    iget-wide v6, v1, Landroid/text/Hyphenator;->mNativePtr:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    monitor-exit v5

    #@2c
    return-wide v6

    #@2d
    .line 74
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 75
    .local v2, "script":Ljava/lang/String;
    const-string/jumbo v4, ""

    #@34
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v4

    #@38
    if-nez v4, :cond_2

    #@3a
    .line 76
    new-instance v4, Ljava/util/Locale$Builder;

    #@3c
    invoke-direct {v4}, Ljava/util/Locale$Builder;-><init>()V

    #@3f
    .line 77
    const-string/jumbo v6, "und"

    #@42
    .line 76
    invoke-virtual {v4, v6}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4, v2}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v4}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    #@4d
    move-result-object v3

    #@4e
    .line 80
    .local v3, "scriptOnlyLocale":Ljava/util/Locale;
    sget-object v4, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    #@50
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    move-result-object v1

    #@54
    .end local v1    # "result":Landroid/text/Hyphenator;
    check-cast v1, Landroid/text/Hyphenator;

    #@56
    .line 81
    .restart local v1    # "result":Landroid/text/Hyphenator;
    if-eqz v1, :cond_2

    #@58
    .line 82
    sget-object v4, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    #@5a
    invoke-virtual {v4, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5d
    .line 83
    iget-wide v6, v1, Landroid/text/Hyphenator;->mNativePtr:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5f
    monitor-exit v5

    #@60
    return-wide v6

    #@61
    .line 87
    .end local v3    # "scriptOnlyLocale":Ljava/util/Locale;
    :cond_2
    :try_start_3
    sget-object v4, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    #@63
    sget-object v6, Landroid/text/Hyphenator;->sEmptyHyphenator:Landroid/text/Hyphenator;

    #@65
    invoke-virtual {v4, p0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@68
    monitor-exit v5

    #@69
    .line 89
    sget-object v4, Landroid/text/Hyphenator;->sEmptyHyphenator:Landroid/text/Hyphenator;

    #@6b
    iget-wide v4, v4, Landroid/text/Hyphenator;->mNativePtr:J

    #@6d
    return-wide v4

    #@6e
    .line 57
    .end local v0    # "languageOnlyLocale":Ljava/util/Locale;
    .end local v1    # "result":Landroid/text/Hyphenator;
    .end local v2    # "script":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@6f
    monitor-exit v5

    #@70
    throw v4
.end method

.method private static getSystemHyphenatorLocation()Ljava/io/File;
    .locals 2

    #@0
    .prologue
    .line 106
    new-instance v0, Ljava/io/File;

    #@2
    const-string/jumbo v1, "/system/usr/hyphen-data"

    #@5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    return-object v0
.end method

.method public static init()V
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 148
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    #@5
    invoke-virtual {v6, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 151
    const/16 v6, 0x8

    #@a
    new-array v0, v6, [Ljava/lang/String;

    #@c
    const-string/jumbo v6, "en-US"

    #@f
    aput-object v6, v0, v10

    #@11
    const-string/jumbo v6, "eu"

    #@14
    aput-object v6, v0, v11

    #@16
    const-string/jumbo v6, "hu"

    #@19
    const/4 v7, 0x2

    #@1a
    aput-object v6, v0, v7

    #@1c
    const-string/jumbo v6, "hy"

    #@1f
    const/4 v7, 0x3

    #@20
    aput-object v6, v0, v7

    #@22
    const-string/jumbo v6, "nb"

    #@25
    const/4 v7, 0x4

    #@26
    aput-object v6, v0, v7

    #@28
    const-string/jumbo v6, "nn"

    #@2b
    const/4 v7, 0x5

    #@2c
    aput-object v6, v0, v7

    #@2e
    const-string/jumbo v6, "sa"

    #@31
    const/4 v7, 0x6

    #@32
    aput-object v6, v0, v7

    #@34
    const-string/jumbo v6, "und-Ethi"

    #@37
    const/4 v7, 0x7

    #@38
    aput-object v6, v0, v7

    #@3a
    .line 152
    .local v0, "availableLanguages":[Ljava/lang/String;
    const/4 v3, 0x0

    #@3b
    .local v3, "i":I
    :goto_0
    array-length v6, v0

    #@3c
    if-ge v3, v6, :cond_1

    #@3e
    .line 153
    aget-object v5, v0, v3

    #@40
    .line 154
    .local v5, "languageTag":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/Hyphenator;->loadHyphenator(Ljava/lang/String;)Landroid/text/Hyphenator;

    #@43
    move-result-object v2

    #@44
    .line 155
    .local v2, "h":Landroid/text/Hyphenator;
    if-eqz v2, :cond_0

    #@46
    .line 156
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    #@48
    invoke-static {v5}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@4b
    move-result-object v7

    #@4c
    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    .line 152
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@51
    goto :goto_0

    #@52
    .line 160
    .end local v2    # "h":Landroid/text/Hyphenator;
    .end local v5    # "languageTag":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    #@53
    :goto_1
    sget-object v6, Landroid/text/Hyphenator;->LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    #@55
    array-length v6, v6

    #@56
    if-ge v3, v6, :cond_2

    #@58
    .line 161
    sget-object v6, Landroid/text/Hyphenator;->LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    #@5a
    aget-object v6, v6, v3

    #@5c
    aget-object v4, v6, v10

    #@5e
    .line 162
    .local v4, "language":Ljava/lang/String;
    sget-object v6, Landroid/text/Hyphenator;->LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    #@60
    aget-object v6, v6, v3

    #@62
    aget-object v1, v6, v11

    #@64
    .line 163
    .local v1, "fallback":Ljava/lang/String;
    sget-object v7, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    #@66
    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@69
    move-result-object v8

    #@6a
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    #@6c
    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@6f
    move-result-object v9

    #@70
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@73
    move-result-object v6

    #@74
    check-cast v6, Landroid/text/Hyphenator;

    #@76
    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@79
    .line 160
    add-int/lit8 v3, v3, 0x1

    #@7b
    goto :goto_1

    #@7c
    .line 147
    .end local v1    # "fallback":Ljava/lang/String;
    .end local v4    # "language":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static loadHyphenator(Ljava/lang/String;)Landroid/text/Hyphenator;
    .locals 9
    .param p0, "languageTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 93
    new-instance v6, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v7, "hyph-"

    #@8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v6

    #@c
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@e
    invoke-virtual {p0, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@11
    move-result-object v7

    #@12
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v6

    #@16
    const-string/jumbo v7, ".pat.txt"

    #@19
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    .line 94
    .local v5, "patternFilename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    #@23
    invoke-static {}, Landroid/text/Hyphenator;->getSystemHyphenatorLocation()Ljava/io/File;

    #@26
    move-result-object v6

    #@27
    invoke-direct {v4, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2a
    .line 96
    .local v4, "patternFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    invoke-static {v6}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 97
    .local v1, "patternData":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/StaticLayout;->nLoadHyphenator(Ljava/lang/String;)J

    #@35
    move-result-wide v2

    #@36
    .line 98
    .local v2, "nativePtr":J
    new-instance v6, Landroid/text/Hyphenator;

    #@38
    invoke-direct {v6, v2, v3}, Landroid/text/Hyphenator;-><init>(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    return-object v6

    #@3c
    .line 99
    .end local v1    # "patternData":Ljava/lang/String;
    .end local v2    # "nativePtr":J
    :catch_0
    move-exception v0

    #@3d
    .line 100
    .local v0, "e":Ljava/io/IOException;
    sget-object v6, Landroid/text/Hyphenator;->TAG:Ljava/lang/String;

    #@3f
    new-instance v7, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v8, "error loading hyphenation "

    #@47
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v7

    #@4b
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v7

    #@4f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v7

    #@53
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@56
    .line 101
    const/4 v6, 0x0

    #@57
    return-object v6
.end method
