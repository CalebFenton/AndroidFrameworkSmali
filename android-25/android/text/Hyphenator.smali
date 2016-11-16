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
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private final mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 43
    const-string/jumbo v0, "Hyphenator"

    #@7
    sput-object v0, Landroid/text/Hyphenator;->TAG:Ljava/lang/String;

    #@9
    .line 45
    new-instance v0, Ljava/lang/Object;

    #@b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@e
    sput-object v0, Landroid/text/Hyphenator;->sLock:Ljava/lang/Object;

    #@10
    .line 48
    new-instance v0, Ljava/util/HashMap;

    #@12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@15
    sput-object v0, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    #@17
    .line 51
    new-instance v0, Landroid/text/Hyphenator;

    #@19
    invoke-static {v1, v4}, Landroid/text/StaticLayout;->nLoadHyphenator(Ljava/nio/ByteBuffer;I)J

    #@1c
    move-result-wide v2

    #@1d
    invoke-direct {v0, v2, v3, v1}, Landroid/text/Hyphenator;-><init>(JLjava/nio/ByteBuffer;)V

    #@20
    .line 50
    sput-object v0, Landroid/text/Hyphenator;->sEmptyHyphenator:Landroid/text/Hyphenator;

    #@22
    .line 142
    const/16 v0, 0x11

    #@24
    new-array v0, v0, [[Ljava/lang/String;

    #@26
    .line 147
    new-array v1, v6, [Ljava/lang/String;

    #@28
    const-string/jumbo v2, "en-AS"

    #@2b
    aput-object v2, v1, v4

    #@2d
    const-string/jumbo v2, "en-US"

    #@30
    aput-object v2, v1, v5

    #@32
    aput-object v1, v0, v4

    #@34
    .line 148
    new-array v1, v6, [Ljava/lang/String;

    #@36
    const-string/jumbo v2, "en-GU"

    #@39
    aput-object v2, v1, v4

    #@3b
    const-string/jumbo v2, "en-US"

    #@3e
    aput-object v2, v1, v5

    #@40
    aput-object v1, v0, v5

    #@42
    .line 149
    new-array v1, v6, [Ljava/lang/String;

    #@44
    const-string/jumbo v2, "en-MH"

    #@47
    aput-object v2, v1, v4

    #@49
    const-string/jumbo v2, "en-US"

    #@4c
    aput-object v2, v1, v5

    #@4e
    aput-object v1, v0, v6

    #@50
    .line 150
    new-array v1, v6, [Ljava/lang/String;

    #@52
    const-string/jumbo v2, "en-MP"

    #@55
    aput-object v2, v1, v4

    #@57
    const-string/jumbo v2, "en-US"

    #@5a
    aput-object v2, v1, v5

    #@5c
    const/4 v2, 0x3

    #@5d
    aput-object v1, v0, v2

    #@5f
    .line 151
    new-array v1, v6, [Ljava/lang/String;

    #@61
    const-string/jumbo v2, "en-PR"

    #@64
    aput-object v2, v1, v4

    #@66
    const-string/jumbo v2, "en-US"

    #@69
    aput-object v2, v1, v5

    #@6b
    const/4 v2, 0x4

    #@6c
    aput-object v1, v0, v2

    #@6e
    .line 152
    new-array v1, v6, [Ljava/lang/String;

    #@70
    const-string/jumbo v2, "en-UM"

    #@73
    aput-object v2, v1, v4

    #@75
    const-string/jumbo v2, "en-US"

    #@78
    aput-object v2, v1, v5

    #@7a
    const/4 v2, 0x5

    #@7b
    aput-object v1, v0, v2

    #@7d
    .line 153
    new-array v1, v6, [Ljava/lang/String;

    #@7f
    const-string/jumbo v2, "en-VI"

    #@82
    aput-object v2, v1, v4

    #@84
    const-string/jumbo v2, "en-US"

    #@87
    aput-object v2, v1, v5

    #@89
    const/4 v2, 0x6

    #@8a
    aput-object v1, v0, v2

    #@8c
    .line 156
    new-array v1, v6, [Ljava/lang/String;

    #@8e
    const-string/jumbo v2, "en"

    #@91
    aput-object v2, v1, v4

    #@93
    const-string/jumbo v2, "en-GB"

    #@96
    aput-object v2, v1, v5

    #@98
    const/4 v2, 0x7

    #@99
    aput-object v1, v0, v2

    #@9b
    .line 159
    new-array v1, v6, [Ljava/lang/String;

    #@9d
    const-string/jumbo v2, "de"

    #@a0
    aput-object v2, v1, v4

    #@a2
    const-string/jumbo v2, "de-1996"

    #@a5
    aput-object v2, v1, v5

    #@a7
    const/16 v2, 0x8

    #@a9
    aput-object v1, v0, v2

    #@ab
    .line 161
    new-array v1, v6, [Ljava/lang/String;

    #@ad
    const-string/jumbo v2, "de-LI-1901"

    #@b0
    aput-object v2, v1, v4

    #@b2
    const-string/jumbo v2, "de-CH-1901"

    #@b5
    aput-object v2, v1, v5

    #@b7
    const/16 v2, 0x9

    #@b9
    aput-object v1, v0, v2

    #@bb
    .line 164
    new-array v1, v6, [Ljava/lang/String;

    #@bd
    const-string/jumbo v2, "no"

    #@c0
    aput-object v2, v1, v4

    #@c2
    const-string/jumbo v2, "nb"

    #@c5
    aput-object v2, v1, v5

    #@c7
    const/16 v2, 0xa

    #@c9
    aput-object v1, v0, v2

    #@cb
    .line 167
    new-array v1, v6, [Ljava/lang/String;

    #@cd
    const-string/jumbo v2, "mn"

    #@d0
    aput-object v2, v1, v4

    #@d2
    const-string/jumbo v2, "mn-Cyrl"

    #@d5
    aput-object v2, v1, v5

    #@d7
    const/16 v2, 0xb

    #@d9
    aput-object v1, v0, v2

    #@db
    .line 172
    new-array v1, v6, [Ljava/lang/String;

    #@dd
    const-string/jumbo v2, "am"

    #@e0
    aput-object v2, v1, v4

    #@e2
    const-string/jumbo v2, "und-Ethi"

    #@e5
    aput-object v2, v1, v5

    #@e7
    const/16 v2, 0xc

    #@e9
    aput-object v1, v0, v2

    #@eb
    .line 173
    new-array v1, v6, [Ljava/lang/String;

    #@ed
    const-string/jumbo v2, "byn"

    #@f0
    aput-object v2, v1, v4

    #@f2
    const-string/jumbo v2, "und-Ethi"

    #@f5
    aput-object v2, v1, v5

    #@f7
    const/16 v2, 0xd

    #@f9
    aput-object v1, v0, v2

    #@fb
    .line 174
    new-array v1, v6, [Ljava/lang/String;

    #@fd
    const-string/jumbo v2, "gez"

    #@100
    aput-object v2, v1, v4

    #@102
    const-string/jumbo v2, "und-Ethi"

    #@105
    aput-object v2, v1, v5

    #@107
    const/16 v2, 0xe

    #@109
    aput-object v1, v0, v2

    #@10b
    .line 175
    new-array v1, v6, [Ljava/lang/String;

    #@10d
    const-string/jumbo v2, "ti"

    #@110
    aput-object v2, v1, v4

    #@112
    const-string/jumbo v2, "und-Ethi"

    #@115
    aput-object v2, v1, v5

    #@117
    const/16 v2, 0xf

    #@119
    aput-object v1, v0, v2

    #@11b
    .line 176
    new-array v1, v6, [Ljava/lang/String;

    #@11d
    const-string/jumbo v2, "wal"

    #@120
    aput-object v2, v1, v4

    #@122
    const-string/jumbo v2, "und-Ethi"

    #@125
    aput-object v2, v1, v5

    #@127
    const/16 v2, 0x10

    #@129
    aput-object v1, v0, v2

    #@12b
    .line 142
    sput-object v0, Landroid/text/Hyphenator;->LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    #@12d
    .line 39
    return-void
.end method

.method private constructor <init>(JLjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "nativePtr"    # J
    .param p3, "b"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    iput-wide p1, p0, Landroid/text/Hyphenator;->mNativePtr:J

    #@5
    .line 61
    iput-object p3, p0, Landroid/text/Hyphenator;->mBuffer:Ljava/nio/ByteBuffer;

    #@7
    .line 59
    return-void
.end method

.method public static get(Ljava/util/Locale;)Landroid/text/Hyphenator;
    .locals 9
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 69
    sget-object v7, Landroid/text/Hyphenator;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 70
    :try_start_0
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    #@5
    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Landroid/text/Hyphenator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 71
    .local v2, "result":Landroid/text/Hyphenator;
    if-eqz v2, :cond_0

    #@d
    monitor-exit v7

    #@e
    .line 72
    return-object v2

    #@f
    .line 76
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@12
    move-result-object v5

    #@13
    .line 77
    .local v5, "variant":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    #@16
    move-result v6

    #@17
    if-nez v6, :cond_1

    #@19
    .line 79
    new-instance v0, Ljava/util/Locale;

    #@1b
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@1e
    move-result-object v6

    #@1f
    const-string/jumbo v8, ""

    #@22
    invoke-direct {v0, v6, v8, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@25
    .line 80
    .local v0, "languageAndVariantOnlyLocale":Ljava/util/Locale;
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    #@27
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    .end local v2    # "result":Landroid/text/Hyphenator;
    check-cast v2, Landroid/text/Hyphenator;

    #@2d
    .line 81
    .restart local v2    # "result":Landroid/text/Hyphenator;
    if-eqz v2, :cond_1

    #@2f
    .line 82
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    #@31
    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v7

    #@35
    .line 83
    return-object v2

    #@36
    .line 88
    .end local v0    # "languageAndVariantOnlyLocale":Ljava/util/Locale;
    :cond_1
    :try_start_2
    new-instance v1, Ljava/util/Locale;

    #@38
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@3b
    move-result-object v6

    #@3c
    invoke-direct {v1, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@3f
    .line 89
    .local v1, "languageOnlyLocale":Ljava/util/Locale;
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    #@41
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    move-result-object v2

    #@45
    .end local v2    # "result":Landroid/text/Hyphenator;
    check-cast v2, Landroid/text/Hyphenator;

    #@47
    .line 90
    .restart local v2    # "result":Landroid/text/Hyphenator;
    if-eqz v2, :cond_2

    #@49
    .line 91
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    #@4b
    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4e
    monitor-exit v7

    #@4f
    .line 92
    return-object v2

    #@50
    .line 96
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    .line 97
    .local v3, "script":Ljava/lang/String;
    const-string/jumbo v6, ""

    #@57
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v6

    #@5b
    if-nez v6, :cond_3

    #@5d
    .line 98
    new-instance v6, Ljava/util/Locale$Builder;

    #@5f
    invoke-direct {v6}, Ljava/util/Locale$Builder;-><init>()V

    #@62
    .line 99
    const-string/jumbo v8, "und"

    #@65
    .line 98
    invoke-virtual {v6, v8}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    #@68
    move-result-object v6

    #@69
    invoke-virtual {v6, v3}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    #@6c
    move-result-object v6

    #@6d
    invoke-virtual {v6}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    #@70
    move-result-object v4

    #@71
    .line 102
    .local v4, "scriptOnlyLocale":Ljava/util/Locale;
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    #@73
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@76
    move-result-object v2

    #@77
    .end local v2    # "result":Landroid/text/Hyphenator;
    check-cast v2, Landroid/text/Hyphenator;

    #@79
    .line 103
    .restart local v2    # "result":Landroid/text/Hyphenator;
    if-eqz v2, :cond_3

    #@7b
    .line 104
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    #@7d
    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@80
    monitor-exit v7

    #@81
    .line 105
    return-object v2

    #@82
    .line 109
    .end local v4    # "scriptOnlyLocale":Ljava/util/Locale;
    :cond_3
    :try_start_4
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    #@84
    sget-object v8, Landroid/text/Hyphenator;->sEmptyHyphenator:Landroid/text/Hyphenator;

    #@86
    invoke-virtual {v6, p0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@89
    monitor-exit v7

    #@8a
    .line 111
    sget-object v6, Landroid/text/Hyphenator;->sEmptyHyphenator:Landroid/text/Hyphenator;

    #@8c
    return-object v6

    #@8d
    .line 69
    .end local v1    # "languageOnlyLocale":Ljava/util/Locale;
    .end local v2    # "result":Landroid/text/Hyphenator;
    .end local v3    # "script":Ljava/lang/String;
    .end local v5    # "variant":Ljava/lang/String;
    :catchall_0
    move-exception v6

    #@8e
    monitor-exit v7

    #@8f
    throw v6
.end method

.method private static getSystemHyphenatorLocation()Ljava/io/File;
    .locals 2

    #@0
    .prologue
    .line 134
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
    .line 187
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    #@5
    invoke-virtual {v6, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 190
    const/16 v6, 0x21

    #@a
    new-array v0, v6, [Ljava/lang/String;

    #@c
    .line 191
    const-string/jumbo v6, "as"

    #@f
    aput-object v6, v0, v10

    #@11
    .line 192
    const-string/jumbo v6, "bn"

    #@14
    aput-object v6, v0, v11

    #@16
    .line 193
    const-string/jumbo v6, "cy"

    #@19
    const/4 v7, 0x2

    #@1a
    aput-object v6, v0, v7

    #@1c
    .line 194
    const-string/jumbo v6, "da"

    #@1f
    const/4 v7, 0x3

    #@20
    aput-object v6, v0, v7

    #@22
    .line 195
    const-string/jumbo v6, "de-1901"

    #@25
    const/4 v7, 0x4

    #@26
    aput-object v6, v0, v7

    #@28
    const-string/jumbo v6, "de-1996"

    #@2b
    const/4 v7, 0x5

    #@2c
    aput-object v6, v0, v7

    #@2e
    const-string/jumbo v6, "de-CH-1901"

    #@31
    const/4 v7, 0x6

    #@32
    aput-object v6, v0, v7

    #@34
    .line 196
    const-string/jumbo v6, "en-GB"

    #@37
    const/4 v7, 0x7

    #@38
    aput-object v6, v0, v7

    #@3a
    const-string/jumbo v6, "en-US"

    #@3d
    const/16 v7, 0x8

    #@3f
    aput-object v6, v0, v7

    #@41
    .line 197
    const-string/jumbo v6, "es"

    #@44
    const/16 v7, 0x9

    #@46
    aput-object v6, v0, v7

    #@48
    .line 198
    const-string/jumbo v6, "et"

    #@4b
    const/16 v7, 0xa

    #@4d
    aput-object v6, v0, v7

    #@4f
    .line 199
    const-string/jumbo v6, "eu"

    #@52
    const/16 v7, 0xb

    #@54
    aput-object v6, v0, v7

    #@56
    .line 200
    const-string/jumbo v6, "fr"

    #@59
    const/16 v7, 0xc

    #@5b
    aput-object v6, v0, v7

    #@5d
    .line 201
    const-string/jumbo v6, "ga"

    #@60
    const/16 v7, 0xd

    #@62
    aput-object v6, v0, v7

    #@64
    .line 202
    const-string/jumbo v6, "gu"

    #@67
    const/16 v7, 0xe

    #@69
    aput-object v6, v0, v7

    #@6b
    .line 203
    const-string/jumbo v6, "hi"

    #@6e
    const/16 v7, 0xf

    #@70
    aput-object v6, v0, v7

    #@72
    .line 204
    const-string/jumbo v6, "hr"

    #@75
    const/16 v7, 0x10

    #@77
    aput-object v6, v0, v7

    #@79
    .line 205
    const-string/jumbo v6, "hu"

    #@7c
    const/16 v7, 0x11

    #@7e
    aput-object v6, v0, v7

    #@80
    .line 206
    const-string/jumbo v6, "hy"

    #@83
    const/16 v7, 0x12

    #@85
    aput-object v6, v0, v7

    #@87
    .line 207
    const-string/jumbo v6, "kn"

    #@8a
    const/16 v7, 0x13

    #@8c
    aput-object v6, v0, v7

    #@8e
    .line 208
    const-string/jumbo v6, "ml"

    #@91
    const/16 v7, 0x14

    #@93
    aput-object v6, v0, v7

    #@95
    .line 209
    const-string/jumbo v6, "mn-Cyrl"

    #@98
    const/16 v7, 0x15

    #@9a
    aput-object v6, v0, v7

    #@9c
    .line 210
    const-string/jumbo v6, "mr"

    #@9f
    const/16 v7, 0x16

    #@a1
    aput-object v6, v0, v7

    #@a3
    .line 211
    const-string/jumbo v6, "nb"

    #@a6
    const/16 v7, 0x17

    #@a8
    aput-object v6, v0, v7

    #@aa
    .line 212
    const-string/jumbo v6, "nn"

    #@ad
    const/16 v7, 0x18

    #@af
    aput-object v6, v0, v7

    #@b1
    .line 213
    const-string/jumbo v6, "or"

    #@b4
    const/16 v7, 0x19

    #@b6
    aput-object v6, v0, v7

    #@b8
    .line 214
    const-string/jumbo v6, "pa"

    #@bb
    const/16 v7, 0x1a

    #@bd
    aput-object v6, v0, v7

    #@bf
    .line 215
    const-string/jumbo v6, "pt"

    #@c2
    const/16 v7, 0x1b

    #@c4
    aput-object v6, v0, v7

    #@c6
    .line 216
    const-string/jumbo v6, "sl"

    #@c9
    const/16 v7, 0x1c

    #@cb
    aput-object v6, v0, v7

    #@cd
    .line 217
    const-string/jumbo v6, "ta"

    #@d0
    const/16 v7, 0x1d

    #@d2
    aput-object v6, v0, v7

    #@d4
    .line 218
    const-string/jumbo v6, "te"

    #@d7
    const/16 v7, 0x1e

    #@d9
    aput-object v6, v0, v7

    #@db
    .line 219
    const-string/jumbo v6, "tk"

    #@de
    const/16 v7, 0x1f

    #@e0
    aput-object v6, v0, v7

    #@e2
    .line 220
    const-string/jumbo v6, "und-Ethi"

    #@e5
    const/16 v7, 0x20

    #@e7
    aput-object v6, v0, v7

    #@e9
    .line 222
    .local v0, "availableLanguages":[Ljava/lang/String;
    const/4 v3, 0x0

    #@ea
    .local v3, "i":I
    :goto_0
    array-length v6, v0

    #@eb
    if-ge v3, v6, :cond_1

    #@ed
    .line 223
    aget-object v5, v0, v3

    #@ef
    .line 224
    .local v5, "languageTag":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/Hyphenator;->loadHyphenator(Ljava/lang/String;)Landroid/text/Hyphenator;

    #@f2
    move-result-object v2

    #@f3
    .line 225
    .local v2, "h":Landroid/text/Hyphenator;
    if-eqz v2, :cond_0

    #@f5
    .line 226
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    #@f7
    invoke-static {v5}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@fa
    move-result-object v7

    #@fb
    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fe
    .line 222
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@100
    goto :goto_0

    #@101
    .line 230
    .end local v2    # "h":Landroid/text/Hyphenator;
    .end local v5    # "languageTag":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    #@102
    :goto_1
    sget-object v6, Landroid/text/Hyphenator;->LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    #@104
    array-length v6, v6

    #@105
    if-ge v3, v6, :cond_2

    #@107
    .line 231
    sget-object v6, Landroid/text/Hyphenator;->LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    #@109
    aget-object v6, v6, v3

    #@10b
    aget-object v4, v6, v10

    #@10d
    .line 232
    .local v4, "language":Ljava/lang/String;
    sget-object v6, Landroid/text/Hyphenator;->LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    #@10f
    aget-object v6, v6, v3

    #@111
    aget-object v1, v6, v11

    #@113
    .line 233
    .local v1, "fallback":Ljava/lang/String;
    sget-object v7, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    #@115
    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@118
    move-result-object v8

    #@119
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    #@11b
    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@11e
    move-result-object v9

    #@11f
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@122
    move-result-object v6

    #@123
    check-cast v6, Landroid/text/Hyphenator;

    #@125
    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@128
    .line 230
    add-int/lit8 v3, v3, 0x1

    #@12a
    goto :goto_1

    #@12b
    .line 186
    .end local v1    # "fallback":Ljava/lang/String;
    .end local v4    # "language":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static loadHyphenator(Ljava/lang/String;)Landroid/text/Hyphenator;
    .locals 13
    .param p0, "languageTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "hyph-"

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@e
    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, ".hyb"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v12

    #@21
    .line 116
    .local v12, "patternFilename":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    #@23
    invoke-static {}, Landroid/text/Hyphenator;->getSystemHyphenatorLocation()Ljava/io/File;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v9, v1, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2a
    .line 118
    .local v9, "patternFile":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/RandomAccessFile;

    #@2c
    const-string/jumbo v1, "r"

    #@2f
    invoke-direct {v8, v9, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 120
    .local v8, "f":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    #@35
    move-result-object v0

    #@36
    .line 121
    .local v0, "fc":Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    #@38
    const-wide/16 v2, 0x0

    #@3a
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    #@3d
    move-result-wide v4

    #@3e
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    #@41
    move-result-object v6

    #@42
    .line 122
    .local v6, "buf":Ljava/nio/MappedByteBuffer;
    const/4 v1, 0x0

    #@43
    invoke-static {v6, v1}, Landroid/text/StaticLayout;->nLoadHyphenator(Ljava/nio/ByteBuffer;I)J

    #@46
    move-result-wide v10

    #@47
    .line 123
    .local v10, "nativePtr":J
    new-instance v1, Landroid/text/Hyphenator;

    #@49
    invoke-direct {v1, v10, v11, v6}, Landroid/text/Hyphenator;-><init>(JLjava/nio/ByteBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    .line 125
    :try_start_2
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    #@4f
    .line 123
    return-object v1

    #@50
    .line 124
    .end local v0    # "fc":Ljava/nio/channels/FileChannel;
    .end local v6    # "buf":Ljava/nio/MappedByteBuffer;
    .end local v10    # "nativePtr":J
    :catchall_0
    move-exception v1

    #@51
    .line 125
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    #@54
    .line 124
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@55
    .line 127
    .end local v8    # "f":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v7

    #@56
    .line 128
    .local v7, "e":Ljava/io/IOException;
    sget-object v1, Landroid/text/Hyphenator;->TAG:Ljava/lang/String;

    #@58
    new-instance v2, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v3, "error loading hyphenation "

    #@60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v2

    #@6c
    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6f
    .line 129
    const/4 v1, 0x0

    #@70
    return-object v1
.end method


# virtual methods
.method public getNativePtr()J
    .locals 2

    #@0
    .prologue
    .line 65
    iget-wide v0, p0, Landroid/text/Hyphenator;->mNativePtr:J

    #@2
    return-wide v0
.end method
