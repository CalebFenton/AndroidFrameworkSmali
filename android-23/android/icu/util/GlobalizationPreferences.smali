.class public Landroid/icu/util/GlobalizationPreferences;
.super Ljava/lang/Object;
.source "GlobalizationPreferences.java"

# interfaces
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/util/GlobalizationPreferences;",
        ">;"
    }
.end annotation


# static fields
.field public static final BI_CHARACTER:I = 0x0

.field private static final BI_LIMIT:I = 0x5

.field public static final BI_LINE:I = 0x2

.field public static final BI_SENTENCE:I = 0x3

.field public static final BI_TITLE:I = 0x4

.field public static final BI_WORD:I = 0x1

.field public static final DF_FULL:I = 0x0

.field private static final DF_LIMIT:I = 0x5

.field public static final DF_LONG:I = 0x1

.field public static final DF_MEDIUM:I = 0x2

.field public static final DF_NONE:I = 0x4

.field public static final DF_SHORT:I = 0x3

.field public static final ID_CURRENCY:I = 0x7

.field public static final ID_CURRENCY_SYMBOL:I = 0x8

.field public static final ID_KEYWORD:I = 0x5

.field public static final ID_KEYWORD_VALUE:I = 0x6

.field public static final ID_LANGUAGE:I = 0x1

.field public static final ID_LOCALE:I = 0x0

.field public static final ID_SCRIPT:I = 0x2

.field public static final ID_TERRITORY:I = 0x3

.field public static final ID_TIMEZONE:I = 0x9

.field public static final ID_VARIANT:I = 0x4

.field public static final NF_CURRENCY:I = 0x1

.field public static final NF_INTEGER:I = 0x4

.field private static final NF_LIMIT:I = 0x5

.field public static final NF_NUMBER:I = 0x0

.field public static final NF_PERCENT:I = 0x2

.field public static final NF_SCIENTIFIC:I = 0x3

.field private static final TYPE_BREAKITERATOR:I = 0x5

.field private static final TYPE_CALENDAR:I = 0x1

.field private static final TYPE_COLLATOR:I = 0x4

.field private static final TYPE_DATEFORMAT:I = 0x2

.field private static final TYPE_GENERIC:I = 0x0

.field private static final TYPE_LIMIT:I = 0x6

.field private static final TYPE_NUMBERFORMAT:I = 0x3

.field private static final available_locales:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final language_territory_hack:[[Ljava/lang/String;

.field private static final language_territory_hack_map:Ljava/util/Map;
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

.field static final territory_tzid_hack:[[Ljava/lang/String;

.field static final territory_tzid_hack_map:Ljava/util/Map;
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
.field private breakIterators:[Landroid/icu/text/BreakIterator;

.field private calendar:Landroid/icu/util/Calendar;

.field private collator:Landroid/icu/text/Collator;

.field private currency:Landroid/icu/util/Currency;

.field private dateFormats:[[Landroid/icu/text/DateFormat;

.field private volatile frozen:Z

.field private implicitLocales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private locales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private numberFormats:[Landroid/icu/text/NumberFormat;

.field private territory:Ljava/lang/String;

.field private timezone:Landroid/icu/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x6

    #@1
    const/4 v13, 0x2

    #@2
    const/4 v12, 0x1

    #@3
    const/4 v11, 0x0

    #@4
    .line 1207
    new-instance v8, Ljava/util/HashMap;

    #@6
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    #@9
    sput-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    #@b
    .line 1219
    invoke-static {}, Landroid/icu/util/ULocale;->getAvailableLocales()[Landroid/icu/util/ULocale;

    #@e
    move-result-object v0

    #@f
    .line 1220
    .local v0, "allLocales":[Landroid/icu/util/ULocale;
    const/4 v6, 0x0

    #@10
    .local v6, "i":I
    :goto_0
    array-length v8, v0

    #@11
    if-ge v6, v8, :cond_0

    #@13
    .line 1221
    new-instance v1, Ljava/util/BitSet;

    #@15
    invoke-direct {v1, v14}, Ljava/util/BitSet;-><init>(I)V

    #@18
    .line 1222
    .local v1, "bits":Ljava/util/BitSet;
    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    #@1a
    aget-object v9, v0, v6

    #@1c
    invoke-virtual {v8, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 1223
    invoke-virtual {v1, v11}, Ljava/util/BitSet;->set(I)V

    #@22
    .line 1220
    add-int/lit8 v6, v6, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1226
    .end local v1    # "bits":Ljava/util/BitSet;
    :cond_0
    invoke-static {}, Landroid/icu/util/Calendar;->getAvailableULocales()[Landroid/icu/util/ULocale;

    #@28
    move-result-object v3

    #@29
    .line 1227
    .local v3, "calLocales":[Landroid/icu/util/ULocale;
    const/4 v6, 0x0

    #@2a
    :goto_1
    array-length v8, v3

    #@2b
    if-ge v6, v8, :cond_2

    #@2d
    .line 1228
    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    #@2f
    aget-object v9, v3, v6

    #@31
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Ljava/util/BitSet;

    #@37
    .line 1229
    .restart local v1    # "bits":Ljava/util/BitSet;
    if-nez v1, :cond_1

    #@39
    .line 1230
    new-instance v1, Ljava/util/BitSet;

    #@3b
    .end local v1    # "bits":Ljava/util/BitSet;
    invoke-direct {v1, v14}, Ljava/util/BitSet;-><init>(I)V

    #@3e
    .line 1231
    .restart local v1    # "bits":Ljava/util/BitSet;
    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    #@40
    aget-object v9, v0, v6

    #@42
    invoke-virtual {v8, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    .line 1233
    :cond_1
    invoke-virtual {v1, v12}, Ljava/util/BitSet;->set(I)V

    #@48
    .line 1227
    add-int/lit8 v6, v6, 0x1

    #@4a
    goto :goto_1

    #@4b
    .line 1236
    .end local v1    # "bits":Ljava/util/BitSet;
    :cond_2
    invoke-static {}, Landroid/icu/text/DateFormat;->getAvailableULocales()[Landroid/icu/util/ULocale;

    #@4e
    move-result-object v5

    #@4f
    .line 1237
    .local v5, "dateLocales":[Landroid/icu/util/ULocale;
    const/4 v6, 0x0

    #@50
    :goto_2
    array-length v8, v5

    #@51
    if-ge v6, v8, :cond_4

    #@53
    .line 1238
    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    #@55
    aget-object v9, v5, v6

    #@57
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    move-result-object v1

    #@5b
    check-cast v1, Ljava/util/BitSet;

    #@5d
    .line 1239
    .restart local v1    # "bits":Ljava/util/BitSet;
    if-nez v1, :cond_3

    #@5f
    .line 1240
    new-instance v1, Ljava/util/BitSet;

    #@61
    .end local v1    # "bits":Ljava/util/BitSet;
    invoke-direct {v1, v14}, Ljava/util/BitSet;-><init>(I)V

    #@64
    .line 1241
    .restart local v1    # "bits":Ljava/util/BitSet;
    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    #@66
    aget-object v9, v0, v6

    #@68
    invoke-virtual {v8, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6b
    .line 1243
    :cond_3
    invoke-virtual {v1, v13}, Ljava/util/BitSet;->set(I)V

    #@6e
    .line 1237
    add-int/lit8 v6, v6, 0x1

    #@70
    goto :goto_2

    #@71
    .line 1246
    .end local v1    # "bits":Ljava/util/BitSet;
    :cond_4
    invoke-static {}, Landroid/icu/text/NumberFormat;->getAvailableULocales()[Landroid/icu/util/ULocale;

    #@74
    move-result-object v7

    #@75
    .line 1247
    .local v7, "numLocales":[Landroid/icu/util/ULocale;
    const/4 v6, 0x0

    #@76
    :goto_3
    array-length v8, v7

    #@77
    if-ge v6, v8, :cond_6

    #@79
    .line 1248
    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    #@7b
    aget-object v9, v7, v6

    #@7d
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@80
    move-result-object v1

    #@81
    check-cast v1, Ljava/util/BitSet;

    #@83
    .line 1249
    .restart local v1    # "bits":Ljava/util/BitSet;
    if-nez v1, :cond_5

    #@85
    .line 1250
    new-instance v1, Ljava/util/BitSet;

    #@87
    .end local v1    # "bits":Ljava/util/BitSet;
    invoke-direct {v1, v14}, Ljava/util/BitSet;-><init>(I)V

    #@8a
    .line 1251
    .restart local v1    # "bits":Ljava/util/BitSet;
    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    #@8c
    aget-object v9, v0, v6

    #@8e
    invoke-virtual {v8, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@91
    .line 1253
    :cond_5
    const/4 v8, 0x3

    #@92
    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    #@95
    .line 1247
    add-int/lit8 v6, v6, 0x1

    #@97
    goto :goto_3

    #@98
    .line 1256
    .end local v1    # "bits":Ljava/util/BitSet;
    :cond_6
    invoke-static {}, Landroid/icu/text/Collator;->getAvailableULocales()[Landroid/icu/util/ULocale;

    #@9b
    move-result-object v4

    #@9c
    .line 1257
    .local v4, "collLocales":[Landroid/icu/util/ULocale;
    const/4 v6, 0x0

    #@9d
    :goto_4
    array-length v8, v4

    #@9e
    if-ge v6, v8, :cond_8

    #@a0
    .line 1258
    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    #@a2
    aget-object v9, v4, v6

    #@a4
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a7
    move-result-object v1

    #@a8
    check-cast v1, Ljava/util/BitSet;

    #@aa
    .line 1259
    .restart local v1    # "bits":Ljava/util/BitSet;
    if-nez v1, :cond_7

    #@ac
    .line 1260
    new-instance v1, Ljava/util/BitSet;

    #@ae
    .end local v1    # "bits":Ljava/util/BitSet;
    invoke-direct {v1, v14}, Ljava/util/BitSet;-><init>(I)V

    #@b1
    .line 1261
    .restart local v1    # "bits":Ljava/util/BitSet;
    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    #@b3
    aget-object v9, v0, v6

    #@b5
    invoke-virtual {v8, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b8
    .line 1263
    :cond_7
    const/4 v8, 0x4

    #@b9
    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    #@bc
    .line 1257
    add-int/lit8 v6, v6, 0x1

    #@be
    goto :goto_4

    #@bf
    .line 1266
    .end local v1    # "bits":Ljava/util/BitSet;
    :cond_8
    invoke-static {}, Landroid/icu/text/BreakIterator;->getAvailableULocales()[Landroid/icu/util/ULocale;

    #@c2
    move-result-object v2

    #@c3
    .line 1267
    .local v2, "brkLocales":[Landroid/icu/util/ULocale;
    const/4 v6, 0x0

    #@c4
    :goto_5
    array-length v8, v2

    #@c5
    if-ge v6, v8, :cond_9

    #@c7
    .line 1268
    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    #@c9
    aget-object v9, v2, v6

    #@cb
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ce
    move-result-object v1

    #@cf
    check-cast v1, Ljava/util/BitSet;

    #@d1
    .line 1269
    .restart local v1    # "bits":Ljava/util/BitSet;
    const/4 v8, 0x5

    #@d2
    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    #@d5
    .line 1267
    add-int/lit8 v6, v6, 0x1

    #@d7
    goto :goto_5

    #@d8
    .line 1276
    .end local v1    # "bits":Ljava/util/BitSet;
    :cond_9
    new-instance v8, Ljava/util/HashMap;

    #@da
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    #@dd
    sput-object v8, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack_map:Ljava/util/Map;

    #@df
    .line 1277
    const/16 v8, 0x9a

    #@e1
    new-array v8, v8, [[Ljava/lang/String;

    #@e3
    .line 1278
    new-array v9, v13, [Ljava/lang/String;

    #@e5
    const-string/jumbo v10, "af"

    #@e8
    aput-object v10, v9, v11

    #@ea
    const-string/jumbo v10, "ZA"

    #@ed
    aput-object v10, v9, v12

    #@ef
    aput-object v9, v8, v11

    #@f1
    .line 1279
    new-array v9, v13, [Ljava/lang/String;

    #@f3
    const-string/jumbo v10, "am"

    #@f6
    aput-object v10, v9, v11

    #@f8
    const-string/jumbo v10, "ET"

    #@fb
    aput-object v10, v9, v12

    #@fd
    aput-object v9, v8, v12

    #@ff
    .line 1280
    new-array v9, v13, [Ljava/lang/String;

    #@101
    const-string/jumbo v10, "ar"

    #@104
    aput-object v10, v9, v11

    #@106
    const-string/jumbo v10, "SA"

    #@109
    aput-object v10, v9, v12

    #@10b
    aput-object v9, v8, v13

    #@10d
    .line 1281
    new-array v9, v13, [Ljava/lang/String;

    #@10f
    const-string/jumbo v10, "as"

    #@112
    aput-object v10, v9, v11

    #@114
    const-string/jumbo v10, "IN"

    #@117
    aput-object v10, v9, v12

    #@119
    const/4 v10, 0x3

    #@11a
    aput-object v9, v8, v10

    #@11c
    .line 1282
    new-array v9, v13, [Ljava/lang/String;

    #@11e
    const-string/jumbo v10, "ay"

    #@121
    aput-object v10, v9, v11

    #@123
    const-string/jumbo v10, "PE"

    #@126
    aput-object v10, v9, v12

    #@128
    const/4 v10, 0x4

    #@129
    aput-object v9, v8, v10

    #@12b
    .line 1283
    new-array v9, v13, [Ljava/lang/String;

    #@12d
    const-string/jumbo v10, "az"

    #@130
    aput-object v10, v9, v11

    #@132
    const-string/jumbo v10, "AZ"

    #@135
    aput-object v10, v9, v12

    #@137
    const/4 v10, 0x5

    #@138
    aput-object v9, v8, v10

    #@13a
    .line 1284
    new-array v9, v13, [Ljava/lang/String;

    #@13c
    const-string/jumbo v10, "bal"

    #@13f
    aput-object v10, v9, v11

    #@141
    const-string/jumbo v10, "PK"

    #@144
    aput-object v10, v9, v12

    #@146
    aput-object v9, v8, v14

    #@148
    .line 1285
    new-array v9, v13, [Ljava/lang/String;

    #@14a
    const-string/jumbo v10, "be"

    #@14d
    aput-object v10, v9, v11

    #@14f
    const-string/jumbo v10, "BY"

    #@152
    aput-object v10, v9, v12

    #@154
    const/4 v10, 0x7

    #@155
    aput-object v9, v8, v10

    #@157
    .line 1286
    new-array v9, v13, [Ljava/lang/String;

    #@159
    const-string/jumbo v10, "bg"

    #@15c
    aput-object v10, v9, v11

    #@15e
    const-string/jumbo v10, "BG"

    #@161
    aput-object v10, v9, v12

    #@163
    const/16 v10, 0x8

    #@165
    aput-object v9, v8, v10

    #@167
    .line 1287
    new-array v9, v13, [Ljava/lang/String;

    #@169
    const-string/jumbo v10, "bn"

    #@16c
    aput-object v10, v9, v11

    #@16e
    const-string/jumbo v10, "IN"

    #@171
    aput-object v10, v9, v12

    #@173
    const/16 v10, 0x9

    #@175
    aput-object v9, v8, v10

    #@177
    .line 1288
    new-array v9, v13, [Ljava/lang/String;

    #@179
    const-string/jumbo v10, "bs"

    #@17c
    aput-object v10, v9, v11

    #@17e
    const-string/jumbo v10, "BA"

    #@181
    aput-object v10, v9, v12

    #@183
    const/16 v10, 0xa

    #@185
    aput-object v9, v8, v10

    #@187
    .line 1289
    new-array v9, v13, [Ljava/lang/String;

    #@189
    const-string/jumbo v10, "ca"

    #@18c
    aput-object v10, v9, v11

    #@18e
    const-string/jumbo v10, "ES"

    #@191
    aput-object v10, v9, v12

    #@193
    const/16 v10, 0xb

    #@195
    aput-object v9, v8, v10

    #@197
    .line 1290
    new-array v9, v13, [Ljava/lang/String;

    #@199
    const-string/jumbo v10, "ch"

    #@19c
    aput-object v10, v9, v11

    #@19e
    const-string/jumbo v10, "MP"

    #@1a1
    aput-object v10, v9, v12

    #@1a3
    const/16 v10, 0xc

    #@1a5
    aput-object v9, v8, v10

    #@1a7
    .line 1291
    new-array v9, v13, [Ljava/lang/String;

    #@1a9
    const-string/jumbo v10, "cpe"

    #@1ac
    aput-object v10, v9, v11

    #@1ae
    const-string/jumbo v10, "SL"

    #@1b1
    aput-object v10, v9, v12

    #@1b3
    const/16 v10, 0xd

    #@1b5
    aput-object v9, v8, v10

    #@1b7
    .line 1292
    new-array v9, v13, [Ljava/lang/String;

    #@1b9
    const-string/jumbo v10, "cs"

    #@1bc
    aput-object v10, v9, v11

    #@1be
    const-string/jumbo v10, "CZ"

    #@1c1
    aput-object v10, v9, v12

    #@1c3
    const/16 v10, 0xe

    #@1c5
    aput-object v9, v8, v10

    #@1c7
    .line 1293
    new-array v9, v13, [Ljava/lang/String;

    #@1c9
    const-string/jumbo v10, "cy"

    #@1cc
    aput-object v10, v9, v11

    #@1ce
    const-string/jumbo v10, "GB"

    #@1d1
    aput-object v10, v9, v12

    #@1d3
    const/16 v10, 0xf

    #@1d5
    aput-object v9, v8, v10

    #@1d7
    .line 1294
    new-array v9, v13, [Ljava/lang/String;

    #@1d9
    const-string/jumbo v10, "da"

    #@1dc
    aput-object v10, v9, v11

    #@1de
    const-string/jumbo v10, "DK"

    #@1e1
    aput-object v10, v9, v12

    #@1e3
    const/16 v10, 0x10

    #@1e5
    aput-object v9, v8, v10

    #@1e7
    .line 1295
    new-array v9, v13, [Ljava/lang/String;

    #@1e9
    const-string/jumbo v10, "de"

    #@1ec
    aput-object v10, v9, v11

    #@1ee
    const-string/jumbo v10, "DE"

    #@1f1
    aput-object v10, v9, v12

    #@1f3
    const/16 v10, 0x11

    #@1f5
    aput-object v9, v8, v10

    #@1f7
    .line 1296
    new-array v9, v13, [Ljava/lang/String;

    #@1f9
    const-string/jumbo v10, "dv"

    #@1fc
    aput-object v10, v9, v11

    #@1fe
    const-string/jumbo v10, "MV"

    #@201
    aput-object v10, v9, v12

    #@203
    const/16 v10, 0x12

    #@205
    aput-object v9, v8, v10

    #@207
    .line 1297
    new-array v9, v13, [Ljava/lang/String;

    #@209
    const-string/jumbo v10, "dz"

    #@20c
    aput-object v10, v9, v11

    #@20e
    const-string/jumbo v10, "BT"

    #@211
    aput-object v10, v9, v12

    #@213
    const/16 v10, 0x13

    #@215
    aput-object v9, v8, v10

    #@217
    .line 1298
    new-array v9, v13, [Ljava/lang/String;

    #@219
    const-string/jumbo v10, "el"

    #@21c
    aput-object v10, v9, v11

    #@21e
    const-string/jumbo v10, "GR"

    #@221
    aput-object v10, v9, v12

    #@223
    const/16 v10, 0x14

    #@225
    aput-object v9, v8, v10

    #@227
    .line 1299
    new-array v9, v13, [Ljava/lang/String;

    #@229
    const-string/jumbo v10, "en"

    #@22c
    aput-object v10, v9, v11

    #@22e
    const-string/jumbo v10, "US"

    #@231
    aput-object v10, v9, v12

    #@233
    const/16 v10, 0x15

    #@235
    aput-object v9, v8, v10

    #@237
    .line 1300
    new-array v9, v13, [Ljava/lang/String;

    #@239
    const-string/jumbo v10, "es"

    #@23c
    aput-object v10, v9, v11

    #@23e
    const-string/jumbo v10, "ES"

    #@241
    aput-object v10, v9, v12

    #@243
    const/16 v10, 0x16

    #@245
    aput-object v9, v8, v10

    #@247
    .line 1301
    new-array v9, v13, [Ljava/lang/String;

    #@249
    const-string/jumbo v10, "et"

    #@24c
    aput-object v10, v9, v11

    #@24e
    const-string/jumbo v10, "EE"

    #@251
    aput-object v10, v9, v12

    #@253
    const/16 v10, 0x17

    #@255
    aput-object v9, v8, v10

    #@257
    .line 1302
    new-array v9, v13, [Ljava/lang/String;

    #@259
    const-string/jumbo v10, "eu"

    #@25c
    aput-object v10, v9, v11

    #@25e
    const-string/jumbo v10, "ES"

    #@261
    aput-object v10, v9, v12

    #@263
    const/16 v10, 0x18

    #@265
    aput-object v9, v8, v10

    #@267
    .line 1303
    new-array v9, v13, [Ljava/lang/String;

    #@269
    const-string/jumbo v10, "fa"

    #@26c
    aput-object v10, v9, v11

    #@26e
    const-string/jumbo v10, "IR"

    #@271
    aput-object v10, v9, v12

    #@273
    const/16 v10, 0x19

    #@275
    aput-object v9, v8, v10

    #@277
    .line 1304
    new-array v9, v13, [Ljava/lang/String;

    #@279
    const-string/jumbo v10, "fi"

    #@27c
    aput-object v10, v9, v11

    #@27e
    const-string/jumbo v10, "FI"

    #@281
    aput-object v10, v9, v12

    #@283
    const/16 v10, 0x1a

    #@285
    aput-object v9, v8, v10

    #@287
    .line 1305
    new-array v9, v13, [Ljava/lang/String;

    #@289
    const-string/jumbo v10, "fil"

    #@28c
    aput-object v10, v9, v11

    #@28e
    const-string/jumbo v10, "PH"

    #@291
    aput-object v10, v9, v12

    #@293
    const/16 v10, 0x1b

    #@295
    aput-object v9, v8, v10

    #@297
    .line 1306
    new-array v9, v13, [Ljava/lang/String;

    #@299
    const-string/jumbo v10, "fj"

    #@29c
    aput-object v10, v9, v11

    #@29e
    const-string/jumbo v10, "FJ"

    #@2a1
    aput-object v10, v9, v12

    #@2a3
    const/16 v10, 0x1c

    #@2a5
    aput-object v9, v8, v10

    #@2a7
    .line 1307
    new-array v9, v13, [Ljava/lang/String;

    #@2a9
    const-string/jumbo v10, "fo"

    #@2ac
    aput-object v10, v9, v11

    #@2ae
    const-string/jumbo v10, "FO"

    #@2b1
    aput-object v10, v9, v12

    #@2b3
    const/16 v10, 0x1d

    #@2b5
    aput-object v9, v8, v10

    #@2b7
    .line 1308
    new-array v9, v13, [Ljava/lang/String;

    #@2b9
    const-string/jumbo v10, "fr"

    #@2bc
    aput-object v10, v9, v11

    #@2be
    const-string/jumbo v10, "FR"

    #@2c1
    aput-object v10, v9, v12

    #@2c3
    const/16 v10, 0x1e

    #@2c5
    aput-object v9, v8, v10

    #@2c7
    .line 1309
    new-array v9, v13, [Ljava/lang/String;

    #@2c9
    const-string/jumbo v10, "ga"

    #@2cc
    aput-object v10, v9, v11

    #@2ce
    const-string/jumbo v10, "IE"

    #@2d1
    aput-object v10, v9, v12

    #@2d3
    const/16 v10, 0x1f

    #@2d5
    aput-object v9, v8, v10

    #@2d7
    .line 1310
    new-array v9, v13, [Ljava/lang/String;

    #@2d9
    const-string/jumbo v10, "gd"

    #@2dc
    aput-object v10, v9, v11

    #@2de
    const-string/jumbo v10, "GB"

    #@2e1
    aput-object v10, v9, v12

    #@2e3
    const/16 v10, 0x20

    #@2e5
    aput-object v9, v8, v10

    #@2e7
    .line 1311
    new-array v9, v13, [Ljava/lang/String;

    #@2e9
    const-string/jumbo v10, "gl"

    #@2ec
    aput-object v10, v9, v11

    #@2ee
    const-string/jumbo v10, "ES"

    #@2f1
    aput-object v10, v9, v12

    #@2f3
    const/16 v10, 0x21

    #@2f5
    aput-object v9, v8, v10

    #@2f7
    .line 1312
    new-array v9, v13, [Ljava/lang/String;

    #@2f9
    const-string/jumbo v10, "gn"

    #@2fc
    aput-object v10, v9, v11

    #@2fe
    const-string/jumbo v10, "PY"

    #@301
    aput-object v10, v9, v12

    #@303
    const/16 v10, 0x22

    #@305
    aput-object v9, v8, v10

    #@307
    .line 1313
    new-array v9, v13, [Ljava/lang/String;

    #@309
    const-string/jumbo v10, "gu"

    #@30c
    aput-object v10, v9, v11

    #@30e
    const-string/jumbo v10, "IN"

    #@311
    aput-object v10, v9, v12

    #@313
    const/16 v10, 0x23

    #@315
    aput-object v9, v8, v10

    #@317
    .line 1314
    new-array v9, v13, [Ljava/lang/String;

    #@319
    const-string/jumbo v10, "gv"

    #@31c
    aput-object v10, v9, v11

    #@31e
    const-string/jumbo v10, "GB"

    #@321
    aput-object v10, v9, v12

    #@323
    const/16 v10, 0x24

    #@325
    aput-object v9, v8, v10

    #@327
    .line 1315
    new-array v9, v13, [Ljava/lang/String;

    #@329
    const-string/jumbo v10, "ha"

    #@32c
    aput-object v10, v9, v11

    #@32e
    const-string/jumbo v10, "NG"

    #@331
    aput-object v10, v9, v12

    #@333
    const/16 v10, 0x25

    #@335
    aput-object v9, v8, v10

    #@337
    .line 1316
    new-array v9, v13, [Ljava/lang/String;

    #@339
    const-string/jumbo v10, "he"

    #@33c
    aput-object v10, v9, v11

    #@33e
    const-string/jumbo v10, "IL"

    #@341
    aput-object v10, v9, v12

    #@343
    const/16 v10, 0x26

    #@345
    aput-object v9, v8, v10

    #@347
    .line 1317
    new-array v9, v13, [Ljava/lang/String;

    #@349
    const-string/jumbo v10, "hi"

    #@34c
    aput-object v10, v9, v11

    #@34e
    const-string/jumbo v10, "IN"

    #@351
    aput-object v10, v9, v12

    #@353
    const/16 v10, 0x27

    #@355
    aput-object v9, v8, v10

    #@357
    .line 1318
    new-array v9, v13, [Ljava/lang/String;

    #@359
    const-string/jumbo v10, "ho"

    #@35c
    aput-object v10, v9, v11

    #@35e
    const-string/jumbo v10, "PG"

    #@361
    aput-object v10, v9, v12

    #@363
    const/16 v10, 0x28

    #@365
    aput-object v9, v8, v10

    #@367
    .line 1319
    new-array v9, v13, [Ljava/lang/String;

    #@369
    const-string/jumbo v10, "hr"

    #@36c
    aput-object v10, v9, v11

    #@36e
    const-string/jumbo v10, "HR"

    #@371
    aput-object v10, v9, v12

    #@373
    const/16 v10, 0x29

    #@375
    aput-object v9, v8, v10

    #@377
    .line 1320
    new-array v9, v13, [Ljava/lang/String;

    #@379
    const-string/jumbo v10, "ht"

    #@37c
    aput-object v10, v9, v11

    #@37e
    const-string/jumbo v10, "HT"

    #@381
    aput-object v10, v9, v12

    #@383
    const/16 v10, 0x2a

    #@385
    aput-object v9, v8, v10

    #@387
    .line 1321
    new-array v9, v13, [Ljava/lang/String;

    #@389
    const-string/jumbo v10, "hu"

    #@38c
    aput-object v10, v9, v11

    #@38e
    const-string/jumbo v10, "HU"

    #@391
    aput-object v10, v9, v12

    #@393
    const/16 v10, 0x2b

    #@395
    aput-object v9, v8, v10

    #@397
    .line 1322
    new-array v9, v13, [Ljava/lang/String;

    #@399
    const-string/jumbo v10, "hy"

    #@39c
    aput-object v10, v9, v11

    #@39e
    const-string/jumbo v10, "AM"

    #@3a1
    aput-object v10, v9, v12

    #@3a3
    const/16 v10, 0x2c

    #@3a5
    aput-object v9, v8, v10

    #@3a7
    .line 1323
    new-array v9, v13, [Ljava/lang/String;

    #@3a9
    const-string/jumbo v10, "id"

    #@3ac
    aput-object v10, v9, v11

    #@3ae
    const-string/jumbo v10, "ID"

    #@3b1
    aput-object v10, v9, v12

    #@3b3
    const/16 v10, 0x2d

    #@3b5
    aput-object v9, v8, v10

    #@3b7
    .line 1324
    new-array v9, v13, [Ljava/lang/String;

    #@3b9
    const-string/jumbo v10, "is"

    #@3bc
    aput-object v10, v9, v11

    #@3be
    const-string/jumbo v10, "IS"

    #@3c1
    aput-object v10, v9, v12

    #@3c3
    const/16 v10, 0x2e

    #@3c5
    aput-object v9, v8, v10

    #@3c7
    .line 1325
    new-array v9, v13, [Ljava/lang/String;

    #@3c9
    const-string/jumbo v10, "it"

    #@3cc
    aput-object v10, v9, v11

    #@3ce
    const-string/jumbo v10, "IT"

    #@3d1
    aput-object v10, v9, v12

    #@3d3
    const/16 v10, 0x2f

    #@3d5
    aput-object v9, v8, v10

    #@3d7
    .line 1326
    new-array v9, v13, [Ljava/lang/String;

    #@3d9
    const-string/jumbo v10, "ja"

    #@3dc
    aput-object v10, v9, v11

    #@3de
    const-string/jumbo v10, "JP"

    #@3e1
    aput-object v10, v9, v12

    #@3e3
    const/16 v10, 0x30

    #@3e5
    aput-object v9, v8, v10

    #@3e7
    .line 1327
    new-array v9, v13, [Ljava/lang/String;

    #@3e9
    const-string/jumbo v10, "ka"

    #@3ec
    aput-object v10, v9, v11

    #@3ee
    const-string/jumbo v10, "GE"

    #@3f1
    aput-object v10, v9, v12

    #@3f3
    const/16 v10, 0x31

    #@3f5
    aput-object v9, v8, v10

    #@3f7
    .line 1328
    new-array v9, v13, [Ljava/lang/String;

    #@3f9
    const-string/jumbo v10, "kk"

    #@3fc
    aput-object v10, v9, v11

    #@3fe
    const-string/jumbo v10, "KZ"

    #@401
    aput-object v10, v9, v12

    #@403
    const/16 v10, 0x32

    #@405
    aput-object v9, v8, v10

    #@407
    .line 1329
    new-array v9, v13, [Ljava/lang/String;

    #@409
    const-string/jumbo v10, "kl"

    #@40c
    aput-object v10, v9, v11

    #@40e
    const-string/jumbo v10, "GL"

    #@411
    aput-object v10, v9, v12

    #@413
    const/16 v10, 0x33

    #@415
    aput-object v9, v8, v10

    #@417
    .line 1330
    new-array v9, v13, [Ljava/lang/String;

    #@419
    const-string/jumbo v10, "km"

    #@41c
    aput-object v10, v9, v11

    #@41e
    const-string/jumbo v10, "KH"

    #@421
    aput-object v10, v9, v12

    #@423
    const/16 v10, 0x34

    #@425
    aput-object v9, v8, v10

    #@427
    .line 1331
    new-array v9, v13, [Ljava/lang/String;

    #@429
    const-string/jumbo v10, "kn"

    #@42c
    aput-object v10, v9, v11

    #@42e
    const-string/jumbo v10, "IN"

    #@431
    aput-object v10, v9, v12

    #@433
    const/16 v10, 0x35

    #@435
    aput-object v9, v8, v10

    #@437
    .line 1332
    new-array v9, v13, [Ljava/lang/String;

    #@439
    const-string/jumbo v10, "ko"

    #@43c
    aput-object v10, v9, v11

    #@43e
    const-string/jumbo v10, "KR"

    #@441
    aput-object v10, v9, v12

    #@443
    const/16 v10, 0x36

    #@445
    aput-object v9, v8, v10

    #@447
    .line 1333
    new-array v9, v13, [Ljava/lang/String;

    #@449
    const-string/jumbo v10, "kok"

    #@44c
    aput-object v10, v9, v11

    #@44e
    const-string/jumbo v10, "IN"

    #@451
    aput-object v10, v9, v12

    #@453
    const/16 v10, 0x37

    #@455
    aput-object v9, v8, v10

    #@457
    .line 1334
    new-array v9, v13, [Ljava/lang/String;

    #@459
    const-string/jumbo v10, "ks"

    #@45c
    aput-object v10, v9, v11

    #@45e
    const-string/jumbo v10, "IN"

    #@461
    aput-object v10, v9, v12

    #@463
    const/16 v10, 0x38

    #@465
    aput-object v9, v8, v10

    #@467
    .line 1335
    new-array v9, v13, [Ljava/lang/String;

    #@469
    const-string/jumbo v10, "ku"

    #@46c
    aput-object v10, v9, v11

    #@46e
    const-string/jumbo v10, "TR"

    #@471
    aput-object v10, v9, v12

    #@473
    const/16 v10, 0x39

    #@475
    aput-object v9, v8, v10

    #@477
    .line 1336
    new-array v9, v13, [Ljava/lang/String;

    #@479
    const-string/jumbo v10, "ky"

    #@47c
    aput-object v10, v9, v11

    #@47e
    const-string/jumbo v10, "KG"

    #@481
    aput-object v10, v9, v12

    #@483
    const/16 v10, 0x3a

    #@485
    aput-object v9, v8, v10

    #@487
    .line 1337
    new-array v9, v13, [Ljava/lang/String;

    #@489
    const-string/jumbo v10, "la"

    #@48c
    aput-object v10, v9, v11

    #@48e
    const-string/jumbo v10, "VA"

    #@491
    aput-object v10, v9, v12

    #@493
    const/16 v10, 0x3b

    #@495
    aput-object v9, v8, v10

    #@497
    .line 1338
    new-array v9, v13, [Ljava/lang/String;

    #@499
    const-string/jumbo v10, "lb"

    #@49c
    aput-object v10, v9, v11

    #@49e
    const-string/jumbo v10, "LU"

    #@4a1
    aput-object v10, v9, v12

    #@4a3
    const/16 v10, 0x3c

    #@4a5
    aput-object v9, v8, v10

    #@4a7
    .line 1339
    new-array v9, v13, [Ljava/lang/String;

    #@4a9
    const-string/jumbo v10, "ln"

    #@4ac
    aput-object v10, v9, v11

    #@4ae
    const-string/jumbo v10, "CG"

    #@4b1
    aput-object v10, v9, v12

    #@4b3
    const/16 v10, 0x3d

    #@4b5
    aput-object v9, v8, v10

    #@4b7
    .line 1340
    new-array v9, v13, [Ljava/lang/String;

    #@4b9
    const-string/jumbo v10, "lo"

    #@4bc
    aput-object v10, v9, v11

    #@4be
    const-string/jumbo v10, "LA"

    #@4c1
    aput-object v10, v9, v12

    #@4c3
    const/16 v10, 0x3e

    #@4c5
    aput-object v9, v8, v10

    #@4c7
    .line 1341
    new-array v9, v13, [Ljava/lang/String;

    #@4c9
    const-string/jumbo v10, "lt"

    #@4cc
    aput-object v10, v9, v11

    #@4ce
    const-string/jumbo v10, "LT"

    #@4d1
    aput-object v10, v9, v12

    #@4d3
    const/16 v10, 0x3f

    #@4d5
    aput-object v9, v8, v10

    #@4d7
    .line 1342
    new-array v9, v13, [Ljava/lang/String;

    #@4d9
    const-string/jumbo v10, "lv"

    #@4dc
    aput-object v10, v9, v11

    #@4de
    const-string/jumbo v10, "LV"

    #@4e1
    aput-object v10, v9, v12

    #@4e3
    const/16 v10, 0x40

    #@4e5
    aput-object v9, v8, v10

    #@4e7
    .line 1343
    new-array v9, v13, [Ljava/lang/String;

    #@4e9
    const-string/jumbo v10, "mai"

    #@4ec
    aput-object v10, v9, v11

    #@4ee
    const-string/jumbo v10, "IN"

    #@4f1
    aput-object v10, v9, v12

    #@4f3
    const/16 v10, 0x41

    #@4f5
    aput-object v9, v8, v10

    #@4f7
    .line 1344
    new-array v9, v13, [Ljava/lang/String;

    #@4f9
    const-string/jumbo v10, "men"

    #@4fc
    aput-object v10, v9, v11

    #@4fe
    const-string/jumbo v10, "GN"

    #@501
    aput-object v10, v9, v12

    #@503
    const/16 v10, 0x42

    #@505
    aput-object v9, v8, v10

    #@507
    .line 1345
    new-array v9, v13, [Ljava/lang/String;

    #@509
    const-string/jumbo v10, "mg"

    #@50c
    aput-object v10, v9, v11

    #@50e
    const-string/jumbo v10, "MG"

    #@511
    aput-object v10, v9, v12

    #@513
    const/16 v10, 0x43

    #@515
    aput-object v9, v8, v10

    #@517
    .line 1346
    new-array v9, v13, [Ljava/lang/String;

    #@519
    const-string/jumbo v10, "mh"

    #@51c
    aput-object v10, v9, v11

    #@51e
    const-string/jumbo v10, "MH"

    #@521
    aput-object v10, v9, v12

    #@523
    const/16 v10, 0x44

    #@525
    aput-object v9, v8, v10

    #@527
    .line 1347
    new-array v9, v13, [Ljava/lang/String;

    #@529
    const-string/jumbo v10, "mk"

    #@52c
    aput-object v10, v9, v11

    #@52e
    const-string/jumbo v10, "MK"

    #@531
    aput-object v10, v9, v12

    #@533
    const/16 v10, 0x45

    #@535
    aput-object v9, v8, v10

    #@537
    .line 1348
    new-array v9, v13, [Ljava/lang/String;

    #@539
    const-string/jumbo v10, "ml"

    #@53c
    aput-object v10, v9, v11

    #@53e
    const-string/jumbo v10, "IN"

    #@541
    aput-object v10, v9, v12

    #@543
    const/16 v10, 0x46

    #@545
    aput-object v9, v8, v10

    #@547
    .line 1349
    new-array v9, v13, [Ljava/lang/String;

    #@549
    const-string/jumbo v10, "mn"

    #@54c
    aput-object v10, v9, v11

    #@54e
    const-string/jumbo v10, "MN"

    #@551
    aput-object v10, v9, v12

    #@553
    const/16 v10, 0x47

    #@555
    aput-object v9, v8, v10

    #@557
    .line 1350
    new-array v9, v13, [Ljava/lang/String;

    #@559
    const-string/jumbo v10, "mni"

    #@55c
    aput-object v10, v9, v11

    #@55e
    const-string/jumbo v10, "IN"

    #@561
    aput-object v10, v9, v12

    #@563
    const/16 v10, 0x48

    #@565
    aput-object v9, v8, v10

    #@567
    .line 1351
    new-array v9, v13, [Ljava/lang/String;

    #@569
    const-string/jumbo v10, "mo"

    #@56c
    aput-object v10, v9, v11

    #@56e
    const-string/jumbo v10, "MD"

    #@571
    aput-object v10, v9, v12

    #@573
    const/16 v10, 0x49

    #@575
    aput-object v9, v8, v10

    #@577
    .line 1352
    new-array v9, v13, [Ljava/lang/String;

    #@579
    const-string/jumbo v10, "mr"

    #@57c
    aput-object v10, v9, v11

    #@57e
    const-string/jumbo v10, "IN"

    #@581
    aput-object v10, v9, v12

    #@583
    const/16 v10, 0x4a

    #@585
    aput-object v9, v8, v10

    #@587
    .line 1353
    new-array v9, v13, [Ljava/lang/String;

    #@589
    const-string/jumbo v10, "ms"

    #@58c
    aput-object v10, v9, v11

    #@58e
    const-string/jumbo v10, "MY"

    #@591
    aput-object v10, v9, v12

    #@593
    const/16 v10, 0x4b

    #@595
    aput-object v9, v8, v10

    #@597
    .line 1354
    new-array v9, v13, [Ljava/lang/String;

    #@599
    const-string/jumbo v10, "mt"

    #@59c
    aput-object v10, v9, v11

    #@59e
    const-string/jumbo v10, "MT"

    #@5a1
    aput-object v10, v9, v12

    #@5a3
    const/16 v10, 0x4c

    #@5a5
    aput-object v9, v8, v10

    #@5a7
    .line 1355
    new-array v9, v13, [Ljava/lang/String;

    #@5a9
    const-string/jumbo v10, "my"

    #@5ac
    aput-object v10, v9, v11

    #@5ae
    const-string/jumbo v10, "MM"

    #@5b1
    aput-object v10, v9, v12

    #@5b3
    const/16 v10, 0x4d

    #@5b5
    aput-object v9, v8, v10

    #@5b7
    .line 1356
    new-array v9, v13, [Ljava/lang/String;

    #@5b9
    const-string/jumbo v10, "na"

    #@5bc
    aput-object v10, v9, v11

    #@5be
    const-string/jumbo v10, "NR"

    #@5c1
    aput-object v10, v9, v12

    #@5c3
    const/16 v10, 0x4e

    #@5c5
    aput-object v9, v8, v10

    #@5c7
    .line 1357
    new-array v9, v13, [Ljava/lang/String;

    #@5c9
    const-string/jumbo v10, "nb"

    #@5cc
    aput-object v10, v9, v11

    #@5ce
    const-string/jumbo v10, "NO"

    #@5d1
    aput-object v10, v9, v12

    #@5d3
    const/16 v10, 0x4f

    #@5d5
    aput-object v9, v8, v10

    #@5d7
    .line 1358
    new-array v9, v13, [Ljava/lang/String;

    #@5d9
    const-string/jumbo v10, "nd"

    #@5dc
    aput-object v10, v9, v11

    #@5de
    const-string/jumbo v10, "ZA"

    #@5e1
    aput-object v10, v9, v12

    #@5e3
    const/16 v10, 0x50

    #@5e5
    aput-object v9, v8, v10

    #@5e7
    .line 1359
    new-array v9, v13, [Ljava/lang/String;

    #@5e9
    const-string/jumbo v10, "ne"

    #@5ec
    aput-object v10, v9, v11

    #@5ee
    const-string/jumbo v10, "NP"

    #@5f1
    aput-object v10, v9, v12

    #@5f3
    const/16 v10, 0x51

    #@5f5
    aput-object v9, v8, v10

    #@5f7
    .line 1360
    new-array v9, v13, [Ljava/lang/String;

    #@5f9
    const-string/jumbo v10, "niu"

    #@5fc
    aput-object v10, v9, v11

    #@5fe
    const-string/jumbo v10, "NU"

    #@601
    aput-object v10, v9, v12

    #@603
    const/16 v10, 0x52

    #@605
    aput-object v9, v8, v10

    #@607
    .line 1361
    new-array v9, v13, [Ljava/lang/String;

    #@609
    const-string/jumbo v10, "nl"

    #@60c
    aput-object v10, v9, v11

    #@60e
    const-string/jumbo v10, "NL"

    #@611
    aput-object v10, v9, v12

    #@613
    const/16 v10, 0x53

    #@615
    aput-object v9, v8, v10

    #@617
    .line 1362
    new-array v9, v13, [Ljava/lang/String;

    #@619
    const-string/jumbo v10, "nn"

    #@61c
    aput-object v10, v9, v11

    #@61e
    const-string/jumbo v10, "NO"

    #@621
    aput-object v10, v9, v12

    #@623
    const/16 v10, 0x54

    #@625
    aput-object v9, v8, v10

    #@627
    .line 1363
    new-array v9, v13, [Ljava/lang/String;

    #@629
    const-string/jumbo v10, "no"

    #@62c
    aput-object v10, v9, v11

    #@62e
    const-string/jumbo v10, "NO"

    #@631
    aput-object v10, v9, v12

    #@633
    const/16 v10, 0x55

    #@635
    aput-object v9, v8, v10

    #@637
    .line 1364
    new-array v9, v13, [Ljava/lang/String;

    #@639
    const-string/jumbo v10, "nr"

    #@63c
    aput-object v10, v9, v11

    #@63e
    const-string/jumbo v10, "ZA"

    #@641
    aput-object v10, v9, v12

    #@643
    const/16 v10, 0x56

    #@645
    aput-object v9, v8, v10

    #@647
    .line 1365
    new-array v9, v13, [Ljava/lang/String;

    #@649
    const-string/jumbo v10, "nso"

    #@64c
    aput-object v10, v9, v11

    #@64e
    const-string/jumbo v10, "ZA"

    #@651
    aput-object v10, v9, v12

    #@653
    const/16 v10, 0x57

    #@655
    aput-object v9, v8, v10

    #@657
    .line 1366
    new-array v9, v13, [Ljava/lang/String;

    #@659
    const-string/jumbo v10, "ny"

    #@65c
    aput-object v10, v9, v11

    #@65e
    const-string/jumbo v10, "MW"

    #@661
    aput-object v10, v9, v12

    #@663
    const/16 v10, 0x58

    #@665
    aput-object v9, v8, v10

    #@667
    .line 1367
    new-array v9, v13, [Ljava/lang/String;

    #@669
    const-string/jumbo v10, "om"

    #@66c
    aput-object v10, v9, v11

    #@66e
    const-string/jumbo v10, "KE"

    #@671
    aput-object v10, v9, v12

    #@673
    const/16 v10, 0x59

    #@675
    aput-object v9, v8, v10

    #@677
    .line 1368
    new-array v9, v13, [Ljava/lang/String;

    #@679
    const-string/jumbo v10, "or"

    #@67c
    aput-object v10, v9, v11

    #@67e
    const-string/jumbo v10, "IN"

    #@681
    aput-object v10, v9, v12

    #@683
    const/16 v10, 0x5a

    #@685
    aput-object v9, v8, v10

    #@687
    .line 1369
    new-array v9, v13, [Ljava/lang/String;

    #@689
    const-string/jumbo v10, "pa"

    #@68c
    aput-object v10, v9, v11

    #@68e
    const-string/jumbo v10, "IN"

    #@691
    aput-object v10, v9, v12

    #@693
    const/16 v10, 0x5b

    #@695
    aput-object v9, v8, v10

    #@697
    .line 1370
    new-array v9, v13, [Ljava/lang/String;

    #@699
    const-string/jumbo v10, "pau"

    #@69c
    aput-object v10, v9, v11

    #@69e
    const-string/jumbo v10, "PW"

    #@6a1
    aput-object v10, v9, v12

    #@6a3
    const/16 v10, 0x5c

    #@6a5
    aput-object v9, v8, v10

    #@6a7
    .line 1371
    new-array v9, v13, [Ljava/lang/String;

    #@6a9
    const-string/jumbo v10, "pl"

    #@6ac
    aput-object v10, v9, v11

    #@6ae
    const-string/jumbo v10, "PL"

    #@6b1
    aput-object v10, v9, v12

    #@6b3
    const/16 v10, 0x5d

    #@6b5
    aput-object v9, v8, v10

    #@6b7
    .line 1372
    new-array v9, v13, [Ljava/lang/String;

    #@6b9
    const-string/jumbo v10, "ps"

    #@6bc
    aput-object v10, v9, v11

    #@6be
    const-string/jumbo v10, "PK"

    #@6c1
    aput-object v10, v9, v12

    #@6c3
    const/16 v10, 0x5e

    #@6c5
    aput-object v9, v8, v10

    #@6c7
    .line 1373
    new-array v9, v13, [Ljava/lang/String;

    #@6c9
    const-string/jumbo v10, "pt"

    #@6cc
    aput-object v10, v9, v11

    #@6ce
    const-string/jumbo v10, "BR"

    #@6d1
    aput-object v10, v9, v12

    #@6d3
    const/16 v10, 0x5f

    #@6d5
    aput-object v9, v8, v10

    #@6d7
    .line 1374
    new-array v9, v13, [Ljava/lang/String;

    #@6d9
    const-string/jumbo v10, "qu"

    #@6dc
    aput-object v10, v9, v11

    #@6de
    const-string/jumbo v10, "PE"

    #@6e1
    aput-object v10, v9, v12

    #@6e3
    const/16 v10, 0x60

    #@6e5
    aput-object v9, v8, v10

    #@6e7
    .line 1375
    new-array v9, v13, [Ljava/lang/String;

    #@6e9
    const-string/jumbo v10, "rn"

    #@6ec
    aput-object v10, v9, v11

    #@6ee
    const-string/jumbo v10, "BI"

    #@6f1
    aput-object v10, v9, v12

    #@6f3
    const/16 v10, 0x61

    #@6f5
    aput-object v9, v8, v10

    #@6f7
    .line 1376
    new-array v9, v13, [Ljava/lang/String;

    #@6f9
    const-string/jumbo v10, "ro"

    #@6fc
    aput-object v10, v9, v11

    #@6fe
    const-string/jumbo v10, "RO"

    #@701
    aput-object v10, v9, v12

    #@703
    const/16 v10, 0x62

    #@705
    aput-object v9, v8, v10

    #@707
    .line 1377
    new-array v9, v13, [Ljava/lang/String;

    #@709
    const-string/jumbo v10, "ru"

    #@70c
    aput-object v10, v9, v11

    #@70e
    const-string/jumbo v10, "RU"

    #@711
    aput-object v10, v9, v12

    #@713
    const/16 v10, 0x63

    #@715
    aput-object v9, v8, v10

    #@717
    .line 1378
    new-array v9, v13, [Ljava/lang/String;

    #@719
    const-string/jumbo v10, "rw"

    #@71c
    aput-object v10, v9, v11

    #@71e
    const-string/jumbo v10, "RW"

    #@721
    aput-object v10, v9, v12

    #@723
    const/16 v10, 0x64

    #@725
    aput-object v9, v8, v10

    #@727
    .line 1379
    new-array v9, v13, [Ljava/lang/String;

    #@729
    const-string/jumbo v10, "sd"

    #@72c
    aput-object v10, v9, v11

    #@72e
    const-string/jumbo v10, "IN"

    #@731
    aput-object v10, v9, v12

    #@733
    const/16 v10, 0x65

    #@735
    aput-object v9, v8, v10

    #@737
    .line 1380
    new-array v9, v13, [Ljava/lang/String;

    #@739
    const-string/jumbo v10, "sg"

    #@73c
    aput-object v10, v9, v11

    #@73e
    const-string/jumbo v10, "CF"

    #@741
    aput-object v10, v9, v12

    #@743
    const/16 v10, 0x66

    #@745
    aput-object v9, v8, v10

    #@747
    .line 1381
    new-array v9, v13, [Ljava/lang/String;

    #@749
    const-string/jumbo v10, "si"

    #@74c
    aput-object v10, v9, v11

    #@74e
    const-string/jumbo v10, "LK"

    #@751
    aput-object v10, v9, v12

    #@753
    const/16 v10, 0x67

    #@755
    aput-object v9, v8, v10

    #@757
    .line 1382
    new-array v9, v13, [Ljava/lang/String;

    #@759
    const-string/jumbo v10, "sk"

    #@75c
    aput-object v10, v9, v11

    #@75e
    const-string/jumbo v10, "SK"

    #@761
    aput-object v10, v9, v12

    #@763
    const/16 v10, 0x68

    #@765
    aput-object v9, v8, v10

    #@767
    .line 1383
    new-array v9, v13, [Ljava/lang/String;

    #@769
    const-string/jumbo v10, "sl"

    #@76c
    aput-object v10, v9, v11

    #@76e
    const-string/jumbo v10, "SI"

    #@771
    aput-object v10, v9, v12

    #@773
    const/16 v10, 0x69

    #@775
    aput-object v9, v8, v10

    #@777
    .line 1384
    new-array v9, v13, [Ljava/lang/String;

    #@779
    const-string/jumbo v10, "sm"

    #@77c
    aput-object v10, v9, v11

    #@77e
    const-string/jumbo v10, "WS"

    #@781
    aput-object v10, v9, v12

    #@783
    const/16 v10, 0x6a

    #@785
    aput-object v9, v8, v10

    #@787
    .line 1385
    new-array v9, v13, [Ljava/lang/String;

    #@789
    const-string/jumbo v10, "so"

    #@78c
    aput-object v10, v9, v11

    #@78e
    const-string/jumbo v10, "DJ"

    #@791
    aput-object v10, v9, v12

    #@793
    const/16 v10, 0x6b

    #@795
    aput-object v9, v8, v10

    #@797
    .line 1386
    new-array v9, v13, [Ljava/lang/String;

    #@799
    const-string/jumbo v10, "sq"

    #@79c
    aput-object v10, v9, v11

    #@79e
    const-string/jumbo v10, "CS"

    #@7a1
    aput-object v10, v9, v12

    #@7a3
    const/16 v10, 0x6c

    #@7a5
    aput-object v9, v8, v10

    #@7a7
    .line 1387
    new-array v9, v13, [Ljava/lang/String;

    #@7a9
    const-string/jumbo v10, "sr"

    #@7ac
    aput-object v10, v9, v11

    #@7ae
    const-string/jumbo v10, "CS"

    #@7b1
    aput-object v10, v9, v12

    #@7b3
    const/16 v10, 0x6d

    #@7b5
    aput-object v9, v8, v10

    #@7b7
    .line 1388
    new-array v9, v13, [Ljava/lang/String;

    #@7b9
    const-string/jumbo v10, "ss"

    #@7bc
    aput-object v10, v9, v11

    #@7be
    const-string/jumbo v10, "ZA"

    #@7c1
    aput-object v10, v9, v12

    #@7c3
    const/16 v10, 0x6e

    #@7c5
    aput-object v9, v8, v10

    #@7c7
    .line 1389
    new-array v9, v13, [Ljava/lang/String;

    #@7c9
    const-string/jumbo v10, "st"

    #@7cc
    aput-object v10, v9, v11

    #@7ce
    const-string/jumbo v10, "ZA"

    #@7d1
    aput-object v10, v9, v12

    #@7d3
    const/16 v10, 0x6f

    #@7d5
    aput-object v9, v8, v10

    #@7d7
    .line 1390
    new-array v9, v13, [Ljava/lang/String;

    #@7d9
    const-string/jumbo v10, "sv"

    #@7dc
    aput-object v10, v9, v11

    #@7de
    const-string/jumbo v10, "SE"

    #@7e1
    aput-object v10, v9, v12

    #@7e3
    const/16 v10, 0x70

    #@7e5
    aput-object v9, v8, v10

    #@7e7
    .line 1391
    new-array v9, v13, [Ljava/lang/String;

    #@7e9
    const-string/jumbo v10, "sw"

    #@7ec
    aput-object v10, v9, v11

    #@7ee
    const-string/jumbo v10, "KE"

    #@7f1
    aput-object v10, v9, v12

    #@7f3
    const/16 v10, 0x71

    #@7f5
    aput-object v9, v8, v10

    #@7f7
    .line 1392
    new-array v9, v13, [Ljava/lang/String;

    #@7f9
    const-string/jumbo v10, "ta"

    #@7fc
    aput-object v10, v9, v11

    #@7fe
    const-string/jumbo v10, "IN"

    #@801
    aput-object v10, v9, v12

    #@803
    const/16 v10, 0x72

    #@805
    aput-object v9, v8, v10

    #@807
    .line 1393
    new-array v9, v13, [Ljava/lang/String;

    #@809
    const-string/jumbo v10, "te"

    #@80c
    aput-object v10, v9, v11

    #@80e
    const-string/jumbo v10, "IN"

    #@811
    aput-object v10, v9, v12

    #@813
    const/16 v10, 0x73

    #@815
    aput-object v9, v8, v10

    #@817
    .line 1394
    new-array v9, v13, [Ljava/lang/String;

    #@819
    const-string/jumbo v10, "tem"

    #@81c
    aput-object v10, v9, v11

    #@81e
    const-string/jumbo v10, "SL"

    #@821
    aput-object v10, v9, v12

    #@823
    const/16 v10, 0x74

    #@825
    aput-object v9, v8, v10

    #@827
    .line 1395
    new-array v9, v13, [Ljava/lang/String;

    #@829
    const-string/jumbo v10, "tet"

    #@82c
    aput-object v10, v9, v11

    #@82e
    const-string/jumbo v10, "TL"

    #@831
    aput-object v10, v9, v12

    #@833
    const/16 v10, 0x75

    #@835
    aput-object v9, v8, v10

    #@837
    .line 1396
    new-array v9, v13, [Ljava/lang/String;

    #@839
    const-string/jumbo v10, "th"

    #@83c
    aput-object v10, v9, v11

    #@83e
    const-string/jumbo v10, "TH"

    #@841
    aput-object v10, v9, v12

    #@843
    const/16 v10, 0x76

    #@845
    aput-object v9, v8, v10

    #@847
    .line 1397
    new-array v9, v13, [Ljava/lang/String;

    #@849
    const-string/jumbo v10, "ti"

    #@84c
    aput-object v10, v9, v11

    #@84e
    const-string/jumbo v10, "ET"

    #@851
    aput-object v10, v9, v12

    #@853
    const/16 v10, 0x77

    #@855
    aput-object v9, v8, v10

    #@857
    .line 1398
    new-array v9, v13, [Ljava/lang/String;

    #@859
    const-string/jumbo v10, "tg"

    #@85c
    aput-object v10, v9, v11

    #@85e
    const-string/jumbo v10, "TJ"

    #@861
    aput-object v10, v9, v12

    #@863
    const/16 v10, 0x78

    #@865
    aput-object v9, v8, v10

    #@867
    .line 1399
    new-array v9, v13, [Ljava/lang/String;

    #@869
    const-string/jumbo v10, "tk"

    #@86c
    aput-object v10, v9, v11

    #@86e
    const-string/jumbo v10, "TM"

    #@871
    aput-object v10, v9, v12

    #@873
    const/16 v10, 0x79

    #@875
    aput-object v9, v8, v10

    #@877
    .line 1400
    new-array v9, v13, [Ljava/lang/String;

    #@879
    const-string/jumbo v10, "tkl"

    #@87c
    aput-object v10, v9, v11

    #@87e
    const-string/jumbo v10, "TK"

    #@881
    aput-object v10, v9, v12

    #@883
    const/16 v10, 0x7a

    #@885
    aput-object v9, v8, v10

    #@887
    .line 1401
    new-array v9, v13, [Ljava/lang/String;

    #@889
    const-string/jumbo v10, "tvl"

    #@88c
    aput-object v10, v9, v11

    #@88e
    const-string/jumbo v10, "TV"

    #@891
    aput-object v10, v9, v12

    #@893
    const/16 v10, 0x7b

    #@895
    aput-object v9, v8, v10

    #@897
    .line 1402
    new-array v9, v13, [Ljava/lang/String;

    #@899
    const-string/jumbo v10, "tl"

    #@89c
    aput-object v10, v9, v11

    #@89e
    const-string/jumbo v10, "PH"

    #@8a1
    aput-object v10, v9, v12

    #@8a3
    const/16 v10, 0x7c

    #@8a5
    aput-object v9, v8, v10

    #@8a7
    .line 1403
    new-array v9, v13, [Ljava/lang/String;

    #@8a9
    const-string/jumbo v10, "tn"

    #@8ac
    aput-object v10, v9, v11

    #@8ae
    const-string/jumbo v10, "ZA"

    #@8b1
    aput-object v10, v9, v12

    #@8b3
    const/16 v10, 0x7d

    #@8b5
    aput-object v9, v8, v10

    #@8b7
    .line 1404
    new-array v9, v13, [Ljava/lang/String;

    #@8b9
    const-string/jumbo v10, "to"

    #@8bc
    aput-object v10, v9, v11

    #@8be
    const-string/jumbo v10, "TO"

    #@8c1
    aput-object v10, v9, v12

    #@8c3
    const/16 v10, 0x7e

    #@8c5
    aput-object v9, v8, v10

    #@8c7
    .line 1405
    new-array v9, v13, [Ljava/lang/String;

    #@8c9
    const-string/jumbo v10, "tpi"

    #@8cc
    aput-object v10, v9, v11

    #@8ce
    const-string/jumbo v10, "PG"

    #@8d1
    aput-object v10, v9, v12

    #@8d3
    const/16 v10, 0x7f

    #@8d5
    aput-object v9, v8, v10

    #@8d7
    .line 1406
    new-array v9, v13, [Ljava/lang/String;

    #@8d9
    const-string/jumbo v10, "tr"

    #@8dc
    aput-object v10, v9, v11

    #@8de
    const-string/jumbo v10, "TR"

    #@8e1
    aput-object v10, v9, v12

    #@8e3
    const/16 v10, 0x80

    #@8e5
    aput-object v9, v8, v10

    #@8e7
    .line 1407
    new-array v9, v13, [Ljava/lang/String;

    #@8e9
    const-string/jumbo v10, "ts"

    #@8ec
    aput-object v10, v9, v11

    #@8ee
    const-string/jumbo v10, "ZA"

    #@8f1
    aput-object v10, v9, v12

    #@8f3
    const/16 v10, 0x81

    #@8f5
    aput-object v9, v8, v10

    #@8f7
    .line 1408
    new-array v9, v13, [Ljava/lang/String;

    #@8f9
    const-string/jumbo v10, "uk"

    #@8fc
    aput-object v10, v9, v11

    #@8fe
    const-string/jumbo v10, "UA"

    #@901
    aput-object v10, v9, v12

    #@903
    const/16 v10, 0x82

    #@905
    aput-object v9, v8, v10

    #@907
    .line 1409
    new-array v9, v13, [Ljava/lang/String;

    #@909
    const-string/jumbo v10, "ur"

    #@90c
    aput-object v10, v9, v11

    #@90e
    const-string/jumbo v10, "IN"

    #@911
    aput-object v10, v9, v12

    #@913
    const/16 v10, 0x83

    #@915
    aput-object v9, v8, v10

    #@917
    .line 1410
    new-array v9, v13, [Ljava/lang/String;

    #@919
    const-string/jumbo v10, "uz"

    #@91c
    aput-object v10, v9, v11

    #@91e
    const-string/jumbo v10, "UZ"

    #@921
    aput-object v10, v9, v12

    #@923
    const/16 v10, 0x84

    #@925
    aput-object v9, v8, v10

    #@927
    .line 1411
    new-array v9, v13, [Ljava/lang/String;

    #@929
    const-string/jumbo v10, "ve"

    #@92c
    aput-object v10, v9, v11

    #@92e
    const-string/jumbo v10, "ZA"

    #@931
    aput-object v10, v9, v12

    #@933
    const/16 v10, 0x85

    #@935
    aput-object v9, v8, v10

    #@937
    .line 1412
    new-array v9, v13, [Ljava/lang/String;

    #@939
    const-string/jumbo v10, "vi"

    #@93c
    aput-object v10, v9, v11

    #@93e
    const-string/jumbo v10, "VN"

    #@941
    aput-object v10, v9, v12

    #@943
    const/16 v10, 0x86

    #@945
    aput-object v9, v8, v10

    #@947
    .line 1413
    new-array v9, v13, [Ljava/lang/String;

    #@949
    const-string/jumbo v10, "wo"

    #@94c
    aput-object v10, v9, v11

    #@94e
    const-string/jumbo v10, "SN"

    #@951
    aput-object v10, v9, v12

    #@953
    const/16 v10, 0x87

    #@955
    aput-object v9, v8, v10

    #@957
    .line 1414
    new-array v9, v13, [Ljava/lang/String;

    #@959
    const-string/jumbo v10, "xh"

    #@95c
    aput-object v10, v9, v11

    #@95e
    const-string/jumbo v10, "ZA"

    #@961
    aput-object v10, v9, v12

    #@963
    const/16 v10, 0x88

    #@965
    aput-object v9, v8, v10

    #@967
    .line 1415
    new-array v9, v13, [Ljava/lang/String;

    #@969
    const-string/jumbo v10, "zh"

    #@96c
    aput-object v10, v9, v11

    #@96e
    const-string/jumbo v10, "CN"

    #@971
    aput-object v10, v9, v12

    #@973
    const/16 v10, 0x89

    #@975
    aput-object v9, v8, v10

    #@977
    .line 1416
    new-array v9, v13, [Ljava/lang/String;

    #@979
    const-string/jumbo v10, "zh_Hant"

    #@97c
    aput-object v10, v9, v11

    #@97e
    const-string/jumbo v10, "TW"

    #@981
    aput-object v10, v9, v12

    #@983
    const/16 v10, 0x8a

    #@985
    aput-object v9, v8, v10

    #@987
    .line 1417
    new-array v9, v13, [Ljava/lang/String;

    #@989
    const-string/jumbo v10, "zu"

    #@98c
    aput-object v10, v9, v11

    #@98e
    const-string/jumbo v10, "ZA"

    #@991
    aput-object v10, v9, v12

    #@993
    const/16 v10, 0x8b

    #@995
    aput-object v9, v8, v10

    #@997
    .line 1418
    new-array v9, v13, [Ljava/lang/String;

    #@999
    const-string/jumbo v10, "aa"

    #@99c
    aput-object v10, v9, v11

    #@99e
    const-string/jumbo v10, "ET"

    #@9a1
    aput-object v10, v9, v12

    #@9a3
    const/16 v10, 0x8c

    #@9a5
    aput-object v9, v8, v10

    #@9a7
    .line 1419
    new-array v9, v13, [Ljava/lang/String;

    #@9a9
    const-string/jumbo v10, "byn"

    #@9ac
    aput-object v10, v9, v11

    #@9ae
    const-string/jumbo v10, "ER"

    #@9b1
    aput-object v10, v9, v12

    #@9b3
    const/16 v10, 0x8d

    #@9b5
    aput-object v9, v8, v10

    #@9b7
    .line 1420
    new-array v9, v13, [Ljava/lang/String;

    #@9b9
    const-string/jumbo v10, "eo"

    #@9bc
    aput-object v10, v9, v11

    #@9be
    const-string/jumbo v10, "DE"

    #@9c1
    aput-object v10, v9, v12

    #@9c3
    const/16 v10, 0x8e

    #@9c5
    aput-object v9, v8, v10

    #@9c7
    .line 1421
    new-array v9, v13, [Ljava/lang/String;

    #@9c9
    const-string/jumbo v10, "gez"

    #@9cc
    aput-object v10, v9, v11

    #@9ce
    const-string/jumbo v10, "ET"

    #@9d1
    aput-object v10, v9, v12

    #@9d3
    const/16 v10, 0x8f

    #@9d5
    aput-object v9, v8, v10

    #@9d7
    .line 1422
    new-array v9, v13, [Ljava/lang/String;

    #@9d9
    const-string/jumbo v10, "haw"

    #@9dc
    aput-object v10, v9, v11

    #@9de
    const-string/jumbo v10, "US"

    #@9e1
    aput-object v10, v9, v12

    #@9e3
    const/16 v10, 0x90

    #@9e5
    aput-object v9, v8, v10

    #@9e7
    .line 1423
    new-array v9, v13, [Ljava/lang/String;

    #@9e9
    const-string/jumbo v10, "iu"

    #@9ec
    aput-object v10, v9, v11

    #@9ee
    const-string/jumbo v10, "CA"

    #@9f1
    aput-object v10, v9, v12

    #@9f3
    const/16 v10, 0x91

    #@9f5
    aput-object v9, v8, v10

    #@9f7
    .line 1424
    new-array v9, v13, [Ljava/lang/String;

    #@9f9
    const-string/jumbo v10, "kw"

    #@9fc
    aput-object v10, v9, v11

    #@9fe
    const-string/jumbo v10, "GB"

    #@a01
    aput-object v10, v9, v12

    #@a03
    const/16 v10, 0x92

    #@a05
    aput-object v9, v8, v10

    #@a07
    .line 1425
    new-array v9, v13, [Ljava/lang/String;

    #@a09
    const-string/jumbo v10, "sa"

    #@a0c
    aput-object v10, v9, v11

    #@a0e
    const-string/jumbo v10, "IN"

    #@a11
    aput-object v10, v9, v12

    #@a13
    const/16 v10, 0x93

    #@a15
    aput-object v9, v8, v10

    #@a17
    .line 1426
    new-array v9, v13, [Ljava/lang/String;

    #@a19
    const-string/jumbo v10, "sh"

    #@a1c
    aput-object v10, v9, v11

    #@a1e
    const-string/jumbo v10, "HR"

    #@a21
    aput-object v10, v9, v12

    #@a23
    const/16 v10, 0x94

    #@a25
    aput-object v9, v8, v10

    #@a27
    .line 1427
    new-array v9, v13, [Ljava/lang/String;

    #@a29
    const-string/jumbo v10, "sid"

    #@a2c
    aput-object v10, v9, v11

    #@a2e
    const-string/jumbo v10, "ET"

    #@a31
    aput-object v10, v9, v12

    #@a33
    const/16 v10, 0x95

    #@a35
    aput-object v9, v8, v10

    #@a37
    .line 1428
    new-array v9, v13, [Ljava/lang/String;

    #@a39
    const-string/jumbo v10, "syr"

    #@a3c
    aput-object v10, v9, v11

    #@a3e
    const-string/jumbo v10, "SY"

    #@a41
    aput-object v10, v9, v12

    #@a43
    const/16 v10, 0x96

    #@a45
    aput-object v9, v8, v10

    #@a47
    .line 1429
    new-array v9, v13, [Ljava/lang/String;

    #@a49
    const-string/jumbo v10, "tig"

    #@a4c
    aput-object v10, v9, v11

    #@a4e
    const-string/jumbo v10, "ER"

    #@a51
    aput-object v10, v9, v12

    #@a53
    const/16 v10, 0x97

    #@a55
    aput-object v9, v8, v10

    #@a57
    .line 1430
    new-array v9, v13, [Ljava/lang/String;

    #@a59
    const-string/jumbo v10, "tt"

    #@a5c
    aput-object v10, v9, v11

    #@a5e
    const-string/jumbo v10, "RU"

    #@a61
    aput-object v10, v9, v12

    #@a63
    const/16 v10, 0x98

    #@a65
    aput-object v9, v8, v10

    #@a67
    .line 1431
    new-array v9, v13, [Ljava/lang/String;

    #@a69
    const-string/jumbo v10, "wal"

    #@a6c
    aput-object v10, v9, v11

    #@a6e
    const-string/jumbo v10, "ET"

    #@a71
    aput-object v10, v9, v12

    #@a73
    const/16 v10, 0x99

    #@a75
    aput-object v9, v8, v10

    #@a77
    .line 1277
    sput-object v8, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack:[[Ljava/lang/String;

    #@a79
    .line 1433
    const/4 v6, 0x0

    #@a7a
    :goto_6
    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack:[[Ljava/lang/String;

    #@a7c
    array-length v8, v8

    #@a7d
    if-ge v6, v8, :cond_a

    #@a7f
    .line 1434
    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack_map:Ljava/util/Map;

    #@a81
    sget-object v9, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack:[[Ljava/lang/String;

    #@a83
    aget-object v9, v9, v6

    #@a85
    aget-object v9, v9, v11

    #@a87
    sget-object v10, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack:[[Ljava/lang/String;

    #@a89
    aget-object v10, v10, v6

    #@a8b
    aget-object v10, v10, v12

    #@a8d
    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a90
    .line 1433
    add-int/lit8 v6, v6, 0x1

    #@a92
    goto :goto_6

    #@a93
    .line 1438
    :cond_a
    new-instance v8, Ljava/util/HashMap;

    #@a95
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    #@a98
    sput-object v8, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack_map:Ljava/util/Map;

    #@a9a
    .line 1439
    const/16 v8, 0x1e

    #@a9c
    new-array v8, v8, [[Ljava/lang/String;

    #@a9e
    .line 1440
    new-array v9, v13, [Ljava/lang/String;

    #@aa0
    const-string/jumbo v10, "AQ"

    #@aa3
    aput-object v10, v9, v11

    #@aa5
    const-string/jumbo v10, "Antarctica/McMurdo"

    #@aa8
    aput-object v10, v9, v12

    #@aaa
    aput-object v9, v8, v11

    #@aac
    .line 1441
    new-array v9, v13, [Ljava/lang/String;

    #@aae
    const-string/jumbo v10, "AR"

    #@ab1
    aput-object v10, v9, v11

    #@ab3
    const-string/jumbo v10, "America/Buenos_Aires"

    #@ab6
    aput-object v10, v9, v12

    #@ab8
    aput-object v9, v8, v12

    #@aba
    .line 1442
    new-array v9, v13, [Ljava/lang/String;

    #@abc
    const-string/jumbo v10, "AU"

    #@abf
    aput-object v10, v9, v11

    #@ac1
    const-string/jumbo v10, "Australia/Sydney"

    #@ac4
    aput-object v10, v9, v12

    #@ac6
    aput-object v9, v8, v13

    #@ac8
    .line 1443
    new-array v9, v13, [Ljava/lang/String;

    #@aca
    const-string/jumbo v10, "BR"

    #@acd
    aput-object v10, v9, v11

    #@acf
    const-string/jumbo v10, "America/Sao_Paulo"

    #@ad2
    aput-object v10, v9, v12

    #@ad4
    const/4 v10, 0x3

    #@ad5
    aput-object v9, v8, v10

    #@ad7
    .line 1444
    new-array v9, v13, [Ljava/lang/String;

    #@ad9
    const-string/jumbo v10, "CA"

    #@adc
    aput-object v10, v9, v11

    #@ade
    const-string/jumbo v10, "America/Toronto"

    #@ae1
    aput-object v10, v9, v12

    #@ae3
    const/4 v10, 0x4

    #@ae4
    aput-object v9, v8, v10

    #@ae6
    .line 1445
    new-array v9, v13, [Ljava/lang/String;

    #@ae8
    const-string/jumbo v10, "CD"

    #@aeb
    aput-object v10, v9, v11

    #@aed
    const-string/jumbo v10, "Africa/Kinshasa"

    #@af0
    aput-object v10, v9, v12

    #@af2
    const/4 v10, 0x5

    #@af3
    aput-object v9, v8, v10

    #@af5
    .line 1446
    new-array v9, v13, [Ljava/lang/String;

    #@af7
    const-string/jumbo v10, "CL"

    #@afa
    aput-object v10, v9, v11

    #@afc
    const-string/jumbo v10, "America/Santiago"

    #@aff
    aput-object v10, v9, v12

    #@b01
    aput-object v9, v8, v14

    #@b03
    .line 1447
    new-array v9, v13, [Ljava/lang/String;

    #@b05
    const-string/jumbo v10, "CN"

    #@b08
    aput-object v10, v9, v11

    #@b0a
    const-string/jumbo v10, "Asia/Shanghai"

    #@b0d
    aput-object v10, v9, v12

    #@b0f
    const/4 v10, 0x7

    #@b10
    aput-object v9, v8, v10

    #@b12
    .line 1448
    new-array v9, v13, [Ljava/lang/String;

    #@b14
    const-string/jumbo v10, "EC"

    #@b17
    aput-object v10, v9, v11

    #@b19
    const-string/jumbo v10, "America/Guayaquil"

    #@b1c
    aput-object v10, v9, v12

    #@b1e
    const/16 v10, 0x8

    #@b20
    aput-object v9, v8, v10

    #@b22
    .line 1449
    new-array v9, v13, [Ljava/lang/String;

    #@b24
    const-string/jumbo v10, "ES"

    #@b27
    aput-object v10, v9, v11

    #@b29
    const-string/jumbo v10, "Europe/Madrid"

    #@b2c
    aput-object v10, v9, v12

    #@b2e
    const/16 v10, 0x9

    #@b30
    aput-object v9, v8, v10

    #@b32
    .line 1450
    new-array v9, v13, [Ljava/lang/String;

    #@b34
    const-string/jumbo v10, "GB"

    #@b37
    aput-object v10, v9, v11

    #@b39
    const-string/jumbo v10, "Europe/London"

    #@b3c
    aput-object v10, v9, v12

    #@b3e
    const/16 v10, 0xa

    #@b40
    aput-object v9, v8, v10

    #@b42
    .line 1451
    new-array v9, v13, [Ljava/lang/String;

    #@b44
    const-string/jumbo v10, "GL"

    #@b47
    aput-object v10, v9, v11

    #@b49
    const-string/jumbo v10, "America/Godthab"

    #@b4c
    aput-object v10, v9, v12

    #@b4e
    const/16 v10, 0xb

    #@b50
    aput-object v9, v8, v10

    #@b52
    .line 1452
    new-array v9, v13, [Ljava/lang/String;

    #@b54
    const-string/jumbo v10, "ID"

    #@b57
    aput-object v10, v9, v11

    #@b59
    const-string/jumbo v10, "Asia/Jakarta"

    #@b5c
    aput-object v10, v9, v12

    #@b5e
    const/16 v10, 0xc

    #@b60
    aput-object v9, v8, v10

    #@b62
    .line 1453
    new-array v9, v13, [Ljava/lang/String;

    #@b64
    const-string/jumbo v10, "ML"

    #@b67
    aput-object v10, v9, v11

    #@b69
    const-string/jumbo v10, "Africa/Bamako"

    #@b6c
    aput-object v10, v9, v12

    #@b6e
    const/16 v10, 0xd

    #@b70
    aput-object v9, v8, v10

    #@b72
    .line 1454
    new-array v9, v13, [Ljava/lang/String;

    #@b74
    const-string/jumbo v10, "MX"

    #@b77
    aput-object v10, v9, v11

    #@b79
    const-string/jumbo v10, "America/Mexico_City"

    #@b7c
    aput-object v10, v9, v12

    #@b7e
    const/16 v10, 0xe

    #@b80
    aput-object v9, v8, v10

    #@b82
    .line 1455
    new-array v9, v13, [Ljava/lang/String;

    #@b84
    const-string/jumbo v10, "MY"

    #@b87
    aput-object v10, v9, v11

    #@b89
    const-string/jumbo v10, "Asia/Kuala_Lumpur"

    #@b8c
    aput-object v10, v9, v12

    #@b8e
    const/16 v10, 0xf

    #@b90
    aput-object v9, v8, v10

    #@b92
    .line 1456
    new-array v9, v13, [Ljava/lang/String;

    #@b94
    const-string/jumbo v10, "NZ"

    #@b97
    aput-object v10, v9, v11

    #@b99
    const-string/jumbo v10, "Pacific/Auckland"

    #@b9c
    aput-object v10, v9, v12

    #@b9e
    const/16 v10, 0x10

    #@ba0
    aput-object v9, v8, v10

    #@ba2
    .line 1457
    new-array v9, v13, [Ljava/lang/String;

    #@ba4
    const-string/jumbo v10, "PT"

    #@ba7
    aput-object v10, v9, v11

    #@ba9
    const-string/jumbo v10, "Europe/Lisbon"

    #@bac
    aput-object v10, v9, v12

    #@bae
    const/16 v10, 0x11

    #@bb0
    aput-object v9, v8, v10

    #@bb2
    .line 1458
    new-array v9, v13, [Ljava/lang/String;

    #@bb4
    const-string/jumbo v10, "RU"

    #@bb7
    aput-object v10, v9, v11

    #@bb9
    const-string/jumbo v10, "Europe/Moscow"

    #@bbc
    aput-object v10, v9, v12

    #@bbe
    const/16 v10, 0x12

    #@bc0
    aput-object v9, v8, v10

    #@bc2
    .line 1459
    new-array v9, v13, [Ljava/lang/String;

    #@bc4
    const-string/jumbo v10, "UA"

    #@bc7
    aput-object v10, v9, v11

    #@bc9
    const-string/jumbo v10, "Europe/Kiev"

    #@bcc
    aput-object v10, v9, v12

    #@bce
    const/16 v10, 0x13

    #@bd0
    aput-object v9, v8, v10

    #@bd2
    .line 1460
    new-array v9, v13, [Ljava/lang/String;

    #@bd4
    const-string/jumbo v10, "US"

    #@bd7
    aput-object v10, v9, v11

    #@bd9
    const-string/jumbo v10, "America/New_York"

    #@bdc
    aput-object v10, v9, v12

    #@bde
    const/16 v10, 0x14

    #@be0
    aput-object v9, v8, v10

    #@be2
    .line 1461
    new-array v9, v13, [Ljava/lang/String;

    #@be4
    const-string/jumbo v10, "UZ"

    #@be7
    aput-object v10, v9, v11

    #@be9
    const-string/jumbo v10, "Asia/Tashkent"

    #@bec
    aput-object v10, v9, v12

    #@bee
    const/16 v10, 0x15

    #@bf0
    aput-object v9, v8, v10

    #@bf2
    .line 1462
    new-array v9, v13, [Ljava/lang/String;

    #@bf4
    const-string/jumbo v10, "PF"

    #@bf7
    aput-object v10, v9, v11

    #@bf9
    const-string/jumbo v10, "Pacific/Tahiti"

    #@bfc
    aput-object v10, v9, v12

    #@bfe
    const/16 v10, 0x16

    #@c00
    aput-object v9, v8, v10

    #@c02
    .line 1463
    new-array v9, v13, [Ljava/lang/String;

    #@c04
    const-string/jumbo v10, "FM"

    #@c07
    aput-object v10, v9, v11

    #@c09
    const-string/jumbo v10, "Pacific/Kosrae"

    #@c0c
    aput-object v10, v9, v12

    #@c0e
    const/16 v10, 0x17

    #@c10
    aput-object v9, v8, v10

    #@c12
    .line 1464
    new-array v9, v13, [Ljava/lang/String;

    #@c14
    const-string/jumbo v10, "KI"

    #@c17
    aput-object v10, v9, v11

    #@c19
    const-string/jumbo v10, "Pacific/Tarawa"

    #@c1c
    aput-object v10, v9, v12

    #@c1e
    const/16 v10, 0x18

    #@c20
    aput-object v9, v8, v10

    #@c22
    .line 1465
    new-array v9, v13, [Ljava/lang/String;

    #@c24
    const-string/jumbo v10, "KZ"

    #@c27
    aput-object v10, v9, v11

    #@c29
    const-string/jumbo v10, "Asia/Almaty"

    #@c2c
    aput-object v10, v9, v12

    #@c2e
    const/16 v10, 0x19

    #@c30
    aput-object v9, v8, v10

    #@c32
    .line 1466
    new-array v9, v13, [Ljava/lang/String;

    #@c34
    const-string/jumbo v10, "MH"

    #@c37
    aput-object v10, v9, v11

    #@c39
    const-string/jumbo v10, "Pacific/Majuro"

    #@c3c
    aput-object v10, v9, v12

    #@c3e
    const/16 v10, 0x1a

    #@c40
    aput-object v9, v8, v10

    #@c42
    .line 1467
    new-array v9, v13, [Ljava/lang/String;

    #@c44
    const-string/jumbo v10, "MN"

    #@c47
    aput-object v10, v9, v11

    #@c49
    const-string/jumbo v10, "Asia/Ulaanbaatar"

    #@c4c
    aput-object v10, v9, v12

    #@c4e
    const/16 v10, 0x1b

    #@c50
    aput-object v9, v8, v10

    #@c52
    .line 1468
    new-array v9, v13, [Ljava/lang/String;

    #@c54
    const-string/jumbo v10, "SJ"

    #@c57
    aput-object v10, v9, v11

    #@c59
    const-string/jumbo v10, "Arctic/Longyearbyen"

    #@c5c
    aput-object v10, v9, v12

    #@c5e
    const/16 v10, 0x1c

    #@c60
    aput-object v9, v8, v10

    #@c62
    .line 1469
    new-array v9, v13, [Ljava/lang/String;

    #@c64
    const-string/jumbo v10, "UM"

    #@c67
    aput-object v10, v9, v11

    #@c69
    const-string/jumbo v10, "Pacific/Midway"

    #@c6c
    aput-object v10, v9, v12

    #@c6e
    const/16 v10, 0x1d

    #@c70
    aput-object v9, v8, v10

    #@c72
    .line 1439
    sput-object v8, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack:[[Ljava/lang/String;

    #@c74
    .line 1472
    const/4 v6, 0x0

    #@c75
    :goto_7
    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack:[[Ljava/lang/String;

    #@c77
    array-length v8, v8

    #@c78
    if-ge v6, v8, :cond_b

    #@c7a
    .line 1473
    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack_map:Ljava/util/Map;

    #@c7c
    sget-object v9, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack:[[Ljava/lang/String;

    #@c7e
    aget-object v9, v9, v6

    #@c80
    aget-object v9, v9, v11

    #@c82
    sget-object v10, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack:[[Ljava/lang/String;

    #@c84
    aget-object v10, v10, v6

    #@c86
    aget-object v10, v10, v12

    #@c88
    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c8b
    .line 1472
    add-int/lit8 v6, v6, 0x1

    #@c8d
    goto :goto_7

    #@c8e
    .line 86
    :cond_b
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1179
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->reset()Landroid/icu/util/GlobalizationPreferences;

    #@6
    .line 93
    return-void
.end method

.method private getAvailableLocale(I)Landroid/icu/util/ULocale;
    .locals 5
    .param p1, "type"    # I

    #@0
    .prologue
    .line 1184
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getLocales()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    .line 1185
    .local v2, "locs":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/util/ULocale;>;"
    const/4 v3, 0x0

    #@5
    .line 1186
    .local v3, "result":Landroid/icu/util/ULocale;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@9
    move-result v4

    #@a
    if-ge v0, v4, :cond_0

    #@c
    .line 1187
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/icu/util/ULocale;

    #@12
    .line 1188
    .local v1, "l":Landroid/icu/util/ULocale;
    invoke-direct {p0, v1, p1}, Landroid/icu/util/GlobalizationPreferences;->isAvailableLocale(Landroid/icu/util/ULocale;I)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_1

    #@18
    .line 1189
    move-object v3, v1

    #@19
    .line 1193
    .end local v1    # "l":Landroid/icu/util/ULocale;
    .end local v3    # "result":Landroid/icu/util/ULocale;
    :cond_0
    return-object v3

    #@1a
    .line 1186
    .restart local v1    # "l":Landroid/icu/util/ULocale;
    .restart local v3    # "result":Landroid/icu/util/ULocale;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0
.end method

.method private isAvailableLocale(Landroid/icu/util/ULocale;I)Z
    .locals 2
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 1197
    sget-object v1, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/BitSet;

    #@8
    .line 1198
    .local v0, "bits":Ljava/util/BitSet;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 1199
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 1201
    :cond_0
    const/4 v1, 0x0

    #@13
    return v1
.end method


# virtual methods
.method public cloneAsThawed()Landroid/icu/util/GlobalizationPreferences;
    .locals 3

    #@0
    .prologue
    .line 1504
    :try_start_0
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/util/GlobalizationPreferences;

    #@6
    .line 1505
    .local v1, "result":Landroid/icu/util/GlobalizationPreferences;
    const/4 v2, 0x0

    #@7
    iput-boolean v2, v1, Landroid/icu/util/GlobalizationPreferences;->frozen:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1506
    return-object v1

    #@a
    .line 1507
    .end local v1    # "result":Landroid/icu/util/GlobalizationPreferences;
    :catch_0
    move-exception v0

    #@b
    .line 1509
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    #@c
    return-object v2
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1502
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->cloneAsThawed()Landroid/icu/util/GlobalizationPreferences;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public freeze()Landroid/icu/util/GlobalizationPreferences;
    .locals 1

    #@0
    .prologue
    .line 1494
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/icu/util/GlobalizationPreferences;->frozen:Z

    #@3
    .line 1495
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1493
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->freeze()Landroid/icu/util/GlobalizationPreferences;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getBreakIterator(I)Landroid/icu/text/BreakIterator;
    .locals 2
    .param p1, "type"    # I

    #@0
    .prologue
    .line 518
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x5

    #@3
    if-lt p1, v0, :cond_1

    #@5
    .line 519
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Illegal break iterator type"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 521
    :cond_1
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    #@10
    if-eqz v0, :cond_2

    #@12
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    #@14
    aget-object v0, v0, p1

    #@16
    if-nez v0, :cond_3

    #@18
    .line 522
    :cond_2
    invoke-virtual {p0, p1}, Landroid/icu/util/GlobalizationPreferences;->guessBreakIterator(I)Landroid/icu/text/BreakIterator;

    #@1b
    move-result-object v0

    #@1c
    return-object v0

    #@1d
    .line 524
    :cond_3
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    #@1f
    aget-object v0, v0, p1

    #@21
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/icu/text/BreakIterator;

    #@27
    return-object v0
.end method

.method public getCalendar()Landroid/icu/util/Calendar;
    .locals 4

    #@0
    .prologue
    .line 431
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->calendar:Landroid/icu/util/Calendar;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 432
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessCalendar()Landroid/icu/util/Calendar;

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 434
    :cond_0
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->calendar:Landroid/icu/util/Calendar;

    #@b
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/icu/util/Calendar;

    #@11
    .line 435
    .local v0, "temp":Landroid/icu/util/Calendar;
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getTimeZone()Landroid/icu/util/TimeZone;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@18
    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1b
    move-result-wide v2

    #@1c
    invoke-virtual {v0, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@1f
    .line 437
    return-object v0
.end method

.method public getCollator()Landroid/icu/text/Collator;
    .locals 3

    #@0
    .prologue
    .line 479
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->collator:Landroid/icu/text/Collator;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 480
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessCollator()Landroid/icu/text/Collator;

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 483
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->collator:Landroid/icu/text/Collator;

    #@b
    invoke-virtual {v1}, Landroid/icu/text/Collator;->clone()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/icu/text/Collator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    return-object v1

    #@12
    .line 484
    :catch_0
    move-exception v0

    #@13
    .line 485
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    #@15
    const-string/jumbo v2, "Error in cloning collator"

    #@18
    invoke-direct {v1, v2, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1b
    throw v1
.end method

.method public getCurrency()Landroid/icu/util/Currency;
    .locals 1

    #@0
    .prologue
    .line 401
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->currency:Landroid/icu/util/Currency;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 402
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessCurrency()Landroid/icu/util/Currency;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 404
    :cond_0
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->currency:Landroid/icu/util/Currency;

    #@b
    return-object v0
.end method

.method public getDateFormat(II)Landroid/icu/text/DateFormat;
    .locals 3
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I

    #@0
    .prologue
    const/4 v2, 0x5

    #@1
    const/4 v1, 0x4

    #@2
    .line 688
    if-ne p1, v1, :cond_1

    #@4
    if-ne p2, v1, :cond_1

    #@6
    .line 691
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Illegal date format style arguments"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 689
    :cond_1
    if-ltz p1, :cond_0

    #@11
    if-ge p1, v2, :cond_0

    #@13
    .line 690
    if-ltz p2, :cond_0

    #@15
    if-ge p2, v2, :cond_0

    #@17
    .line 693
    const/4 v0, 0x0

    #@18
    .line 694
    .local v0, "result":Landroid/icu/text/DateFormat;
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->dateFormats:[[Landroid/icu/text/DateFormat;

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 695
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->dateFormats:[[Landroid/icu/text/DateFormat;

    #@1e
    aget-object v1, v1, p1

    #@20
    aget-object v0, v1, p2

    #@22
    .line 697
    .end local v0    # "result":Landroid/icu/text/DateFormat;
    :cond_2
    if-eqz v0, :cond_3

    #@24
    .line 698
    invoke-virtual {v0}, Landroid/icu/text/DateFormat;->clone()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Landroid/icu/text/DateFormat;

    #@2a
    .line 700
    .local v0, "result":Landroid/icu/text/DateFormat;
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getTimeZone()Landroid/icu/util/TimeZone;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@31
    .line 704
    :goto_0
    return-object v0

    #@32
    .line 702
    .end local v0    # "result":Landroid/icu/text/DateFormat;
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/GlobalizationPreferences;->guessDateFormat(II)Landroid/icu/text/DateFormat;

    #@35
    move-result-object v0

    #@36
    .restart local v0    # "result":Landroid/icu/text/DateFormat;
    goto :goto_0
.end method

.method public getDisplayName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 16
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 560
    move-object/from16 v9, p1

    #@2
    .line 561
    .local v9, "result":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/GlobalizationPreferences;->getLocales()Ljava/util/List;

    #@5
    move-result-object v13

    #@6
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v7

    #@a
    .local v7, "locale$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v13

    #@e
    if-eqz v13, :cond_7

    #@10
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v6

    #@14
    check-cast v6, Landroid/icu/util/ULocale;

    #@16
    .line 562
    .local v6, "locale":Landroid/icu/util/ULocale;
    const/4 v13, 0x0

    #@17
    move-object/from16 v0, p0

    #@19
    invoke-direct {v0, v6, v13}, Landroid/icu/util/GlobalizationPreferences;->isAvailableLocale(Landroid/icu/util/ULocale;I)Z

    #@1c
    move-result v13

    #@1d
    if-eqz v13, :cond_0

    #@1f
    .line 565
    packed-switch p2, :pswitch_data_0

    #@22
    .line 638
    new-instance v13, Ljava/lang/IllegalArgumentException;

    #@24
    new-instance v14, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v15, "Unknown type: "

    #@2c
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v14

    #@30
    move/from16 v0, p2

    #@32
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v14

    #@36
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v14

    #@3a
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v13

    #@3e
    .line 567
    :pswitch_0
    move-object/from16 v0, p1

    #@40
    invoke-static {v0, v6}, Landroid/icu/util/ULocale;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@43
    move-result-object v9

    #@44
    .line 643
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    #@46
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v13

    #@4a
    if-nez v13, :cond_0

    #@4c
    .line 644
    return-object v9

    #@4d
    .line 570
    :pswitch_1
    move-object/from16 v0, p1

    #@4f
    invoke-static {v0, v6}, Landroid/icu/util/ULocale;->getDisplayLanguage(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@52
    move-result-object v9

    #@53
    goto :goto_1

    #@54
    .line 573
    :pswitch_2
    new-instance v13, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v14, "und-"

    #@5c
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v13

    #@60
    move-object/from16 v0, p1

    #@62
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v13

    #@66
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v13

    #@6a
    invoke-static {v13, v6}, Landroid/icu/util/ULocale;->getDisplayScript(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@6d
    move-result-object v9

    #@6e
    goto :goto_1

    #@6f
    .line 576
    :pswitch_3
    new-instance v13, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v14, "und-"

    #@77
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v13

    #@7b
    move-object/from16 v0, p1

    #@7d
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v13

    #@81
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v13

    #@85
    invoke-static {v13, v6}, Landroid/icu/util/ULocale;->getDisplayCountry(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@88
    move-result-object v9

    #@89
    goto :goto_1

    #@8a
    .line 580
    :pswitch_4
    new-instance v13, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v14, "und-QQ-"

    #@92
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v13

    #@96
    move-object/from16 v0, p1

    #@98
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v13

    #@9c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v13

    #@a0
    invoke-static {v13, v6}, Landroid/icu/util/ULocale;->getDisplayVariant(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@a3
    move-result-object v9

    #@a4
    goto :goto_1

    #@a5
    .line 583
    :pswitch_5
    move-object/from16 v0, p1

    #@a7
    invoke-static {v0, v6}, Landroid/icu/util/ULocale;->getDisplayKeyword(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@aa
    move-result-object v9

    #@ab
    goto :goto_1

    #@ac
    .line 586
    :pswitch_6
    const/4 v13, 0x2

    #@ad
    new-array v8, v13, [Ljava/lang/String;

    #@af
    .line 587
    .local v8, "parts":[Ljava/lang/String;
    const/16 v13, 0x3d

    #@b1
    move-object/from16 v0, p1

    #@b3
    invoke-static {v0, v13, v8}, Landroid/icu/impl/Utility;->split(Ljava/lang/String;C[Ljava/lang/String;)V

    #@b6
    .line 588
    new-instance v13, Ljava/lang/StringBuilder;

    #@b8
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@bb
    const-string/jumbo v14, "und@"

    #@be
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v13

    #@c2
    move-object/from16 v0, p1

    #@c4
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v13

    #@c8
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v13

    #@cc
    const/4 v14, 0x0

    #@cd
    aget-object v14, v8, v14

    #@cf
    invoke-static {v13, v14, v6}, Landroid/icu/util/ULocale;->getDisplayKeywordValue(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@d2
    move-result-object v9

    #@d3
    .line 590
    const/4 v13, 0x1

    #@d4
    aget-object v13, v8, v13

    #@d6
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d9
    move-result v13

    #@da
    if-eqz v13, :cond_1

    #@dc
    goto/16 :goto_0

    #@de
    .line 596
    .end local v8    # "parts":[Ljava/lang/String;
    :pswitch_7
    new-instance v11, Landroid/icu/util/Currency;

    #@e0
    move-object/from16 v0, p1

    #@e2
    invoke-direct {v11, v0}, Landroid/icu/util/Currency;-><init>(Ljava/lang/String;)V

    #@e5
    .line 597
    .local v11, "temp":Landroid/icu/util/Currency;
    const/4 v13, 0x7

    #@e6
    move/from16 v0, p2

    #@e8
    if-ne v0, v13, :cond_2

    #@ea
    .line 598
    const/4 v13, 0x1

    #@eb
    .line 599
    :goto_2
    const/4 v14, 0x1

    #@ec
    new-array v14, v14, [Z

    #@ee
    .line 597
    invoke-virtual {v11, v6, v13, v14}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    #@f1
    move-result-object v9

    #@f2
    goto/16 :goto_1

    #@f4
    .line 599
    :cond_2
    const/4 v13, 0x0

    #@f5
    goto :goto_2

    #@f6
    .line 607
    .end local v11    # "temp":Landroid/icu/util/Currency;
    :pswitch_8
    new-instance v2, Landroid/icu/text/SimpleDateFormat;

    #@f8
    const-string/jumbo v13, "vvvv"

    #@fb
    invoke-direct {v2, v13, v6}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@fe
    .line 608
    .local v2, "dtf":Landroid/icu/text/SimpleDateFormat;
    invoke-static/range {p1 .. p1}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    #@101
    move-result-object v13

    #@102
    invoke-virtual {v2, v13}, Landroid/icu/text/SimpleDateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@105
    .line 609
    new-instance v13, Ljava/util/Date;

    #@107
    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    #@10a
    invoke-virtual {v2, v13}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@10d
    move-result-object v9

    #@10e
    .line 614
    const/4 v5, 0x0

    #@10f
    .line 617
    .local v5, "isBadStr":Z
    move-object v12, v9

    #@110
    .line 618
    .local v12, "teststr":Ljava/lang/String;
    const/16 v13, 0x28

    #@112
    invoke-virtual {v9, v13}, Ljava/lang/String;->indexOf(I)I

    #@115
    move-result v10

    #@116
    .line 619
    .local v10, "sidx":I
    const/16 v13, 0x29

    #@118
    invoke-virtual {v9, v13}, Ljava/lang/String;->indexOf(I)I

    #@11b
    move-result v3

    #@11c
    .line 620
    .local v3, "eidx":I
    const/4 v13, -0x1

    #@11d
    if-eq v10, v13, :cond_3

    #@11f
    const/4 v13, -0x1

    #@120
    if-eq v3, v13, :cond_3

    #@122
    sub-int v13, v3, v10

    #@124
    const/4 v14, 0x3

    #@125
    if-ne v13, v14, :cond_3

    #@127
    .line 621
    add-int/lit8 v13, v10, 0x1

    #@129
    invoke-virtual {v9, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@12c
    move-result-object v12

    #@12d
    .line 623
    :cond_3
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@130
    move-result v13

    #@131
    const/4 v14, 0x2

    #@132
    if-ne v13, v14, :cond_5

    #@134
    .line 624
    const/4 v5, 0x1

    #@135
    .line 625
    const/4 v4, 0x0

    #@136
    .local v4, "i":I
    :goto_3
    const/4 v13, 0x2

    #@137
    if-ge v4, v13, :cond_5

    #@139
    .line 626
    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    #@13c
    move-result v1

    #@13d
    .line 627
    .local v1, "c":C
    const/16 v13, 0x41

    #@13f
    if-lt v1, v13, :cond_4

    #@141
    const/16 v13, 0x5a

    #@143
    if-ge v13, v1, :cond_6

    #@145
    .line 628
    :cond_4
    const/4 v5, 0x0

    #@146
    .line 633
    .end local v1    # "c":C
    .end local v4    # "i":I
    :cond_5
    if-eqz v5, :cond_1

    #@148
    goto/16 :goto_0

    #@14a
    .line 625
    .restart local v1    # "c":C
    .restart local v4    # "i":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    #@14c
    goto :goto_3

    #@14d
    .line 647
    .end local v1    # "c":C
    .end local v2    # "dtf":Landroid/icu/text/SimpleDateFormat;
    .end local v3    # "eidx":I
    .end local v4    # "i":I
    .end local v5    # "isBadStr":Z
    .end local v6    # "locale":Landroid/icu/util/ULocale;
    .end local v10    # "sidx":I
    .end local v12    # "teststr":Ljava/lang/String;
    :cond_7
    return-object v9

    #@14e
    .line 565
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getLocale(I)Landroid/icu/util/ULocale;
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 202
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    #@3
    .line 203
    .local v0, "lcls":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/util/ULocale;>;"
    if-nez v0, :cond_0

    #@5
    .line 204
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessLocales()Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    .line 206
    :cond_0
    if-ltz p1, :cond_1

    #@b
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@e
    move-result v1

    #@f
    if-ge p1, v1, :cond_1

    #@11
    .line 207
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/icu/util/ULocale;

    #@17
    return-object v1

    #@18
    .line 209
    :cond_1
    return-object v2
.end method

.method public getLocales()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 185
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 186
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessLocales()Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    .line 191
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/util/ULocale;>;"
    :goto_0
    return-object v0

    #@9
    .line 188
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/util/ULocale;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@e
    .line 189
    .restart local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/util/ULocale;>;"
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    #@10
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@13
    goto :goto_0
.end method

.method public getNumberFormat(I)Landroid/icu/text/NumberFormat;
    .locals 3
    .param p1, "style"    # I

    #@0
    .prologue
    .line 718
    if-ltz p1, :cond_0

    #@2
    const/4 v1, 0x5

    #@3
    if-lt p1, v1, :cond_1

    #@5
    .line 719
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v2, "Illegal number format type"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 721
    :cond_1
    const/4 v0, 0x0

    #@f
    .line 722
    .local v0, "result":Landroid/icu/text/NumberFormat;
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->numberFormats:[Landroid/icu/text/NumberFormat;

    #@11
    if-eqz v1, :cond_2

    #@13
    .line 723
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->numberFormats:[Landroid/icu/text/NumberFormat;

    #@15
    aget-object v0, v1, p1

    #@17
    .line 725
    .end local v0    # "result":Landroid/icu/text/NumberFormat;
    :cond_2
    if-eqz v0, :cond_3

    #@19
    .line 726
    invoke-virtual {v0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/icu/text/NumberFormat;

    #@1f
    .line 730
    .local v0, "result":Landroid/icu/text/NumberFormat;
    :goto_0
    return-object v0

    #@20
    .line 728
    .end local v0    # "result":Landroid/icu/text/NumberFormat;
    :cond_3
    invoke-virtual {p0, p1}, Landroid/icu/util/GlobalizationPreferences;->guessNumberFormat(I)Landroid/icu/text/NumberFormat;

    #@23
    move-result-object v0

    #@24
    .restart local v0    # "result":Landroid/icu/text/NumberFormat;
    goto :goto_0
.end method

.method public getResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .locals 1
    .param p1, "baseName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 283
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/icu/util/GlobalizationPreferences;->getResourceBundle(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getResourceBundle(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .locals 10
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 300
    const/4 v6, 0x0

    #@1
    .line 301
    .local v6, "urb":Landroid/icu/util/UResourceBundle;
    const/4 v1, 0x0

    #@2
    .line 302
    .local v1, "candidate":Landroid/icu/util/UResourceBundle;
    const/4 v0, 0x0

    #@3
    .line 303
    .local v0, "actualLocaleName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getLocales()Ljava/util/List;

    #@6
    move-result-object v2

    #@7
    .line 304
    .local v2, "fallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/util/ULocale;>;"
    const/4 v3, 0x0

    #@8
    .end local v0    # "actualLocaleName":Ljava/lang/String;
    .end local v1    # "candidate":Landroid/icu/util/UResourceBundle;
    .end local v6    # "urb":Landroid/icu/util/UResourceBundle;
    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@b
    move-result v7

    #@c
    if-ge v3, v7, :cond_0

    #@e
    .line 305
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v7

    #@12
    check-cast v7, Landroid/icu/util/ULocale;

    #@14
    invoke-virtual {v7}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    .line 306
    .local v4, "localeName":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@1a
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v7

    #@1e
    if-eqz v7, :cond_1

    #@20
    .line 309
    move-object v6, v1

    #@21
    .line 335
    .end local v4    # "localeName":Ljava/lang/String;
    :cond_0
    :goto_1
    if-nez v6, :cond_5

    #@23
    .line 336
    new-instance v7, Ljava/util/MissingResourceException;

    #@25
    new-instance v8, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v9, "Can\'t find bundle for base name "

    #@2d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v8

    #@31
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v8

    #@35
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v8

    #@39
    .line 337
    const-string/jumbo v9, ""

    #@3c
    .line 336
    invoke-direct {v7, v8, p1, v9}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3f
    throw v7

    #@40
    .line 313
    .restart local v4    # "localeName":Ljava/lang/String;
    :cond_1
    if-nez p2, :cond_2

    #@42
    .line 314
    :try_start_0
    invoke-static {p1, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@45
    move-result-object v1

    #@46
    .line 319
    .local v1, "candidate":Landroid/icu/util/UResourceBundle;
    :goto_2
    if-eqz v1, :cond_4

    #@48
    .line 320
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@4b
    move-result-object v7

    #@4c
    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    .line 321
    .local v0, "actualLocaleName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v7

    #@54
    if-eqz v7, :cond_3

    #@56
    .line 322
    move-object v6, v1

    #@57
    .local v6, "urb":Landroid/icu/util/UResourceBundle;
    goto :goto_1

    #@58
    .line 317
    .end local v0    # "actualLocaleName":Ljava/lang/String;
    .end local v1    # "candidate":Landroid/icu/util/UResourceBundle;
    .end local v6    # "urb":Landroid/icu/util/UResourceBundle;
    :cond_2
    invoke-static {p1, v4, p2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@5b
    move-result-object v1

    #@5c
    .restart local v1    # "candidate":Landroid/icu/util/UResourceBundle;
    goto :goto_2

    #@5d
    .line 325
    .restart local v0    # "actualLocaleName":Ljava/lang/String;
    :cond_3
    if-nez v6, :cond_4

    #@5f
    .line 327
    move-object v6, v1

    #@60
    .line 304
    .end local v0    # "actualLocaleName":Ljava/lang/String;
    .end local v1    # "candidate":Landroid/icu/util/UResourceBundle;
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    #@62
    goto :goto_0

    #@63
    .line 330
    :catch_0
    move-exception v5

    #@64
    .line 331
    .local v5, "mre":Ljava/util/MissingResourceException;
    const/4 v0, 0x0

    #@65
    .local v0, "actualLocaleName":Ljava/lang/String;
    goto :goto_3

    #@66
    .line 339
    .end local v0    # "actualLocaleName":Ljava/lang/String;
    .end local v4    # "localeName":Ljava/lang/String;
    .end local v5    # "mre":Ljava/util/MissingResourceException;
    :cond_5
    return-object v6
.end method

.method public getTerritory()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 371
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->territory:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 372
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessTerritory()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 374
    :cond_0
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->territory:Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public getTimeZone()Landroid/icu/util/TimeZone;
    .locals 1

    #@0
    .prologue
    .line 465
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->timezone:Landroid/icu/util/TimeZone;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 466
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessTimeZone()Landroid/icu/util/TimeZone;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 468
    :cond_0
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->timezone:Landroid/icu/util/TimeZone;

    #@b
    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method protected guessBreakIterator(I)Landroid/icu/text/BreakIterator;
    .locals 4
    .param p1, "type"    # I

    #@0
    .prologue
    .line 1088
    const/4 v0, 0x0

    #@1
    .line 1089
    .local v0, "bitr":Landroid/icu/text/BreakIterator;
    const/4 v2, 0x5

    #@2
    invoke-direct {p0, v2}, Landroid/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Landroid/icu/util/ULocale;

    #@5
    move-result-object v1

    #@6
    .line 1090
    .local v1, "brkLocale":Landroid/icu/util/ULocale;
    if-nez v1, :cond_0

    #@8
    .line 1091
    sget-object v1, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@a
    .line 1093
    :cond_0
    packed-switch p1, :pswitch_data_0

    #@d
    .line 1110
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v3, "Unknown break iterator type"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 1095
    :pswitch_0
    invoke-static {v1}, Landroid/icu/text/BreakIterator;->getCharacterInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@19
    move-result-object v0

    #@1a
    .line 1112
    .local v0, "bitr":Landroid/icu/text/BreakIterator;
    :goto_0
    return-object v0

    #@1b
    .line 1098
    .local v0, "bitr":Landroid/icu/text/BreakIterator;
    :pswitch_1
    invoke-static {v1}, Landroid/icu/text/BreakIterator;->getTitleInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@1e
    move-result-object v0

    #@1f
    .local v0, "bitr":Landroid/icu/text/BreakIterator;
    goto :goto_0

    #@20
    .line 1101
    .local v0, "bitr":Landroid/icu/text/BreakIterator;
    :pswitch_2
    invoke-static {v1}, Landroid/icu/text/BreakIterator;->getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@23
    move-result-object v0

    #@24
    .local v0, "bitr":Landroid/icu/text/BreakIterator;
    goto :goto_0

    #@25
    .line 1104
    .local v0, "bitr":Landroid/icu/text/BreakIterator;
    :pswitch_3
    invoke-static {v1}, Landroid/icu/text/BreakIterator;->getLineInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@28
    move-result-object v0

    #@29
    .local v0, "bitr":Landroid/icu/text/BreakIterator;
    goto :goto_0

    #@2a
    .line 1107
    .local v0, "bitr":Landroid/icu/text/BreakIterator;
    :pswitch_4
    invoke-static {v1}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@2d
    move-result-object v0

    #@2e
    .local v0, "bitr":Landroid/icu/text/BreakIterator;
    goto :goto_0

    #@2f
    .line 1093
    nop

    #@30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method protected guessCalendar()Landroid/icu/util/Calendar;
    .locals 2

    #@0
    .prologue
    .line 1158
    const/4 v1, 0x1

    #@1
    invoke-direct {p0, v1}, Landroid/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Landroid/icu/util/ULocale;

    #@4
    move-result-object v0

    #@5
    .line 1159
    .local v0, "calLocale":Landroid/icu/util/ULocale;
    if-nez v0, :cond_0

    #@7
    .line 1160
    sget-object v0, Landroid/icu/util/ULocale;->US:Landroid/icu/util/ULocale;

    #@9
    .line 1162
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getTimeZone()Landroid/icu/util/TimeZone;

    #@c
    move-result-object v1

    #@d
    invoke-static {v1, v0}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method protected guessCollator()Landroid/icu/text/Collator;
    .locals 2

    #@0
    .prologue
    .line 1071
    const/4 v1, 0x4

    #@1
    invoke-direct {p0, v1}, Landroid/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Landroid/icu/util/ULocale;

    #@4
    move-result-object v0

    #@5
    .line 1072
    .local v0, "collLocale":Landroid/icu/util/ULocale;
    if-nez v0, :cond_0

    #@7
    .line 1073
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@9
    .line 1075
    :cond_0
    invoke-static {v0}, Landroid/icu/text/Collator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method

.method protected guessCurrency()Landroid/icu/util/Currency;
    .locals 3

    #@0
    .prologue
    .line 1042
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "und-"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getTerritory()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@1d
    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method protected guessDateFormat(II)Landroid/icu/text/DateFormat;
    .locals 4
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    .line 948
    const/4 v2, 0x2

    #@2
    invoke-direct {p0, v2}, Landroid/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    .line 949
    .local v0, "dfLocale":Landroid/icu/util/ULocale;
    if-nez v0, :cond_0

    #@8
    .line 950
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@a
    .line 952
    :cond_0
    if-ne p2, v3, :cond_1

    #@c
    .line 953
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getCalendar()Landroid/icu/util/Calendar;

    #@f
    move-result-object v2

    #@10
    invoke-static {v2, p1, v0}, Landroid/icu/text/DateFormat;->getDateInstance(Landroid/icu/util/Calendar;ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@13
    move-result-object v1

    #@14
    .line 959
    .local v1, "result":Landroid/icu/text/DateFormat;
    :goto_0
    return-object v1

    #@15
    .line 954
    .end local v1    # "result":Landroid/icu/text/DateFormat;
    :cond_1
    if-ne p1, v3, :cond_2

    #@17
    .line 955
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getCalendar()Landroid/icu/util/Calendar;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {v2, p2, v0}, Landroid/icu/text/DateFormat;->getTimeInstance(Landroid/icu/util/Calendar;ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@1e
    move-result-object v1

    #@1f
    .restart local v1    # "result":Landroid/icu/text/DateFormat;
    goto :goto_0

    #@20
    .line 957
    .end local v1    # "result":Landroid/icu/text/DateFormat;
    :cond_2
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getCalendar()Landroid/icu/util/Calendar;

    #@23
    move-result-object v2

    #@24
    invoke-static {v2, p1, p2, v0}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@27
    move-result-object v1

    #@28
    .restart local v1    # "result":Landroid/icu/text/DateFormat;
    goto :goto_0
.end method

.method protected guessLocales()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1054
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->implicitLocales:Ljava/util/List;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1055
    new-instance v0, Ljava/util/ArrayList;

    #@6
    const/4 v1, 0x1

    #@7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    .line 1056
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/util/ULocale;>;"
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@d
    move-result-object v1

    #@e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@11
    .line 1057
    invoke-virtual {p0, v0}, Landroid/icu/util/GlobalizationPreferences;->processLocales(Ljava/util/List;)Ljava/util/List;

    #@14
    move-result-object v1

    #@15
    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->implicitLocales:Ljava/util/List;

    #@17
    .line 1059
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/util/ULocale;>;"
    :cond_0
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->implicitLocales:Ljava/util/List;

    #@19
    return-object v1
.end method

.method protected guessNumberFormat(I)Landroid/icu/text/NumberFormat;
    .locals 4
    .param p1, "style"    # I

    #@0
    .prologue
    .line 973
    const/4 v2, 0x3

    #@1
    invoke-direct {p0, v2}, Landroid/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Landroid/icu/util/ULocale;

    #@4
    move-result-object v0

    #@5
    .line 974
    .local v0, "nfLocale":Landroid/icu/util/ULocale;
    if-nez v0, :cond_0

    #@7
    .line 975
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@9
    .line 977
    :cond_0
    packed-switch p1, :pswitch_data_0

    #@c
    .line 995
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v3, "Unknown number format style"

    #@11
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v2

    #@15
    .line 979
    :pswitch_0
    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    #@18
    move-result-object v1

    #@19
    .line 997
    .local v1, "result":Landroid/icu/text/NumberFormat;
    :goto_0
    return-object v1

    #@1a
    .line 982
    .end local v1    # "result":Landroid/icu/text/NumberFormat;
    :pswitch_1
    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getScientificInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    #@1d
    move-result-object v1

    #@1e
    .restart local v1    # "result":Landroid/icu/text/NumberFormat;
    goto :goto_0

    #@1f
    .line 985
    .end local v1    # "result":Landroid/icu/text/NumberFormat;
    :pswitch_2
    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getIntegerInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    #@22
    move-result-object v1

    #@23
    .restart local v1    # "result":Landroid/icu/text/NumberFormat;
    goto :goto_0

    #@24
    .line 988
    .end local v1    # "result":Landroid/icu/text/NumberFormat;
    :pswitch_3
    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getPercentInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    #@27
    move-result-object v1

    #@28
    .restart local v1    # "result":Landroid/icu/text/NumberFormat;
    goto :goto_0

    #@29
    .line 991
    .end local v1    # "result":Landroid/icu/text/NumberFormat;
    :pswitch_4
    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getCurrencyInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    #@2c
    move-result-object v1

    #@2d
    .line 992
    .restart local v1    # "result":Landroid/icu/text/NumberFormat;
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getCurrency()Landroid/icu/util/Currency;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v1, v2}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    #@34
    goto :goto_0

    #@35
    .line 977
    nop

    #@36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected guessTerritory()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1009
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getLocales()Ljava/util/List;

    #@4
    move-result-object v6

    #@5
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v3

    #@9
    .local v3, "locale$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v6

    #@d
    if-eqz v6, :cond_1

    #@f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroid/icu/util/ULocale;

    #@15
    .line 1010
    .local v2, "locale":Landroid/icu/util/ULocale;
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    .line 1011
    .local v4, "result":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_0

    #@1f
    .line 1012
    return-object v4

    #@20
    .line 1019
    .end local v2    # "locale":Landroid/icu/util/ULocale;
    .end local v4    # "result":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v7}, Landroid/icu/util/GlobalizationPreferences;->getLocale(I)Landroid/icu/util/ULocale;

    #@23
    move-result-object v0

    #@24
    .line 1020
    .local v0, "firstLocale":Landroid/icu/util/ULocale;
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 1021
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    .line 1022
    .local v5, "script":Ljava/lang/String;
    const/4 v4, 0x0

    #@2d
    .line 1023
    .local v4, "result":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@30
    move-result v6

    #@31
    if-eqz v6, :cond_2

    #@33
    .line 1024
    sget-object v6, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack_map:Ljava/util/Map;

    #@35
    new-instance v7, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    const-string/jumbo v8, "_"

    #@41
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v7

    #@4d
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    move-result-object v4

    #@51
    .end local v4    # "result":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    #@53
    .line 1026
    :cond_2
    if-nez v4, :cond_3

    #@55
    .line 1027
    sget-object v6, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack_map:Ljava/util/Map;

    #@57
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    move-result-object v4

    #@5b
    check-cast v4, Ljava/lang/String;

    #@5d
    .line 1029
    :cond_3
    if-nez v4, :cond_4

    #@5f
    .line 1030
    const-string/jumbo v4, "US"

    #@62
    .line 1032
    :cond_4
    return-object v4
.end method

.method protected guessTimeZone()Landroid/icu/util/TimeZone;
    .locals 5

    #@0
    .prologue
    .line 1131
    sget-object v3, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack_map:Ljava/util/Map;

    #@2
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getTerritory()Ljava/lang/String;

    #@5
    move-result-object v4

    #@6
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Ljava/lang/String;

    #@c
    .line 1132
    .local v2, "timezoneString":Ljava/lang/String;
    if-nez v2, :cond_0

    #@e
    .line 1133
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getTerritory()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-static {v3}, Landroid/icu/util/TimeZone;->getAvailableIDs(Ljava/lang/String;)[Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 1134
    .local v0, "attempt":[Ljava/lang/String;
    array-length v3, v0

    #@17
    if-nez v3, :cond_1

    #@19
    .line 1135
    const-string/jumbo v2, "Etc/GMT"

    #@1c
    .line 1146
    .end local v0    # "attempt":[Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    #@1f
    move-result-object v3

    #@20
    return-object v3

    #@21
    .line 1139
    .restart local v0    # "attempt":[Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    #@22
    .local v1, "i":I
    :goto_1
    array-length v3, v0

    #@23
    if-ge v1, v3, :cond_2

    #@25
    .line 1140
    aget-object v3, v0, v1

    #@27
    const-string/jumbo v4, "/"

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@2d
    move-result v3

    #@2e
    if-ltz v3, :cond_4

    #@30
    .line 1142
    :cond_2
    array-length v3, v0

    #@31
    if-le v1, v3, :cond_3

    #@33
    const/4 v1, 0x0

    #@34
    .line 1143
    :cond_3
    aget-object v2, v0, v1

    #@36
    goto :goto_0

    #@37
    .line 1139
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_1
.end method

.method public isFrozen()Z
    .locals 1

    #@0
    .prologue
    .line 1486
    iget-boolean v0, p0, Landroid/icu/util/GlobalizationPreferences;->frozen:Z

    #@2
    return v0
.end method

.method protected processLocales(Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 816
    .local p1, "inputLocales":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/util/ULocale;>;"
    new-instance v9, Ljava/util/ArrayList;

    #@2
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 825
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/util/ULocale;>;"
    const/4 v5, 0x0

    #@6
    .local v5, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    #@9
    move-result v16

    #@a
    move/from16 v0, v16

    #@c
    if-ge v5, v0, :cond_8

    #@e
    .line 826
    move-object/from16 v0, p1

    #@10
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v13

    #@14
    check-cast v13, Landroid/icu/util/ULocale;

    #@16
    .line 828
    .local v13, "uloc":Landroid/icu/util/ULocale;
    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@19
    move-result-object v8

    #@1a
    .line 829
    .local v8, "language":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@1d
    move-result-object v11

    #@1e
    .line 830
    .local v11, "script":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    .line 831
    .local v4, "country":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    #@25
    move-result-object v15

    #@26
    .line 833
    .local v15, "variant":Ljava/lang/String;
    const/4 v1, 0x0

    #@27
    .line 834
    .local v1, "bInserted":Z
    const/4 v7, 0x0

    #@28
    .local v7, "j":I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@2b
    move-result v16

    #@2c
    move/from16 v0, v16

    #@2e
    if-ge v7, v0, :cond_2

    #@30
    .line 838
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v12

    #@34
    check-cast v12, Landroid/icu/util/ULocale;

    #@36
    .line 839
    .local v12, "u":Landroid/icu/util/ULocale;
    invoke-virtual {v12}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@39
    move-result-object v16

    #@3a
    move-object/from16 v0, v16

    #@3c
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v16

    #@40
    if-nez v16, :cond_1

    #@42
    .line 834
    :cond_0
    add-int/lit8 v7, v7, 0x1

    #@44
    goto :goto_1

    #@45
    .line 842
    :cond_1
    invoke-virtual {v12}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@48
    move-result-object v10

    #@49
    .line 843
    .local v10, "s":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    .line 844
    .local v3, "c":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    #@50
    move-result-object v14

    #@51
    .line 845
    .local v14, "v":Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v16

    #@55
    if-nez v16, :cond_6

    #@57
    .line 846
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@5a
    move-result v16

    #@5b
    if-nez v16, :cond_4

    #@5d
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@60
    move-result v16

    #@61
    if-nez v16, :cond_4

    #@63
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@66
    move-result v16

    #@67
    if-nez v16, :cond_4

    #@69
    .line 847
    invoke-interface {v9, v7, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@6c
    .line 848
    const/4 v1, 0x1

    #@6d
    .line 876
    .end local v3    # "c":Ljava/lang/String;
    .end local v10    # "s":Ljava/lang/String;
    .end local v12    # "u":Landroid/icu/util/ULocale;
    .end local v14    # "v":Ljava/lang/String;
    :cond_2
    :goto_2
    if-nez v1, :cond_3

    #@6f
    .line 878
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@72
    .line 825
    :cond_3
    add-int/lit8 v5, v5, 0x1

    #@74
    goto :goto_0

    #@75
    .line 850
    .restart local v3    # "c":Ljava/lang/String;
    .restart local v10    # "s":Ljava/lang/String;
    .restart local v12    # "u":Landroid/icu/util/ULocale;
    .restart local v14    # "v":Ljava/lang/String;
    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@78
    move-result v16

    #@79
    if-nez v16, :cond_5

    #@7b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v16

    #@7f
    if-eqz v16, :cond_5

    #@81
    .line 852
    invoke-interface {v9, v7, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@84
    .line 853
    const/4 v1, 0x1

    #@85
    .line 854
    goto :goto_2

    #@86
    .line 855
    :cond_5
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@89
    move-result v16

    #@8a
    if-nez v16, :cond_0

    #@8c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@8f
    move-result v16

    #@90
    if-lez v16, :cond_0

    #@92
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@95
    move-result v16

    #@96
    if-nez v16, :cond_0

    #@98
    .line 857
    invoke-interface {v9, v7, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@9b
    .line 858
    const/4 v1, 0x1

    #@9c
    .line 859
    goto :goto_2

    #@9d
    .line 863
    :cond_6
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a0
    move-result v16

    #@a1
    if-nez v16, :cond_7

    #@a3
    .line 864
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@a6
    move-result v16

    #@a7
    if-nez v16, :cond_7

    #@a9
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@ac
    move-result v16

    #@ad
    if-nez v16, :cond_7

    #@af
    .line 865
    invoke-interface {v9, v7, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@b2
    .line 866
    const/4 v1, 0x1

    #@b3
    .line 867
    goto :goto_2

    #@b4
    .line 870
    :cond_7
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b7
    move-result v16

    #@b8
    if-nez v16, :cond_0

    #@ba
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@bd
    move-result v16

    #@be
    if-nez v16, :cond_0

    #@c0
    .line 871
    invoke-interface {v9, v7, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@c3
    .line 872
    const/4 v1, 0x1

    #@c4
    .line 873
    goto :goto_2

    #@c5
    .line 893
    .end local v1    # "bInserted":Z
    .end local v3    # "c":Ljava/lang/String;
    .end local v4    # "country":Ljava/lang/String;
    .end local v7    # "j":I
    .end local v8    # "language":Ljava/lang/String;
    .end local v10    # "s":Ljava/lang/String;
    .end local v11    # "script":Ljava/lang/String;
    .end local v12    # "u":Landroid/icu/util/ULocale;
    .end local v13    # "uloc":Landroid/icu/util/ULocale;
    .end local v14    # "v":Ljava/lang/String;
    .end local v15    # "variant":Ljava/lang/String;
    :cond_8
    const/4 v6, 0x0

    #@c6
    .line 894
    .local v6, "index":I
    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@c9
    move-result v16

    #@ca
    move/from16 v0, v16

    #@cc
    if-ge v6, v0, :cond_a

    #@ce
    .line 895
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@d1
    move-result-object v13

    #@d2
    check-cast v13, Landroid/icu/util/ULocale;

    #@d4
    .line 897
    .restart local v13    # "uloc":Landroid/icu/util/ULocale;
    :goto_4
    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getFallback()Landroid/icu/util/ULocale;

    #@d7
    move-result-object v13

    #@d8
    .line 898
    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@db
    move-result-object v16

    #@dc
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    #@df
    move-result v16

    #@e0
    if-nez v16, :cond_9

    #@e2
    .line 904
    add-int/lit8 v6, v6, 0x1

    #@e4
    goto :goto_3

    #@e5
    .line 901
    :cond_9
    add-int/lit8 v6, v6, 0x1

    #@e7
    .line 902
    invoke-interface {v9, v6, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@ea
    goto :goto_4

    #@eb
    .line 916
    .end local v13    # "uloc":Landroid/icu/util/ULocale;
    :cond_a
    const/4 v6, 0x0

    #@ec
    .line 917
    :cond_b
    :goto_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@ef
    move-result v16

    #@f0
    add-int/lit8 v16, v16, -0x1

    #@f2
    move/from16 v0, v16

    #@f4
    if-ge v6, v0, :cond_e

    #@f6
    .line 918
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f9
    move-result-object v13

    #@fa
    check-cast v13, Landroid/icu/util/ULocale;

    #@fc
    .line 919
    .restart local v13    # "uloc":Landroid/icu/util/ULocale;
    const/4 v2, 0x0

    #@fd
    .line 920
    .local v2, "bRemoved":Z
    add-int/lit8 v5, v6, 0x1

    #@ff
    :goto_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@102
    move-result v16

    #@103
    move/from16 v0, v16

    #@105
    if-ge v5, v0, :cond_c

    #@107
    .line 921
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10a
    move-result-object v16

    #@10b
    move-object/from16 v0, v16

    #@10d
    invoke-virtual {v13, v0}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@110
    move-result v16

    #@111
    if-eqz v16, :cond_d

    #@113
    .line 923
    invoke-interface {v9, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@116
    .line 924
    const/4 v2, 0x1

    #@117
    .line 928
    :cond_c
    if-nez v2, :cond_b

    #@119
    .line 929
    add-int/lit8 v6, v6, 0x1

    #@11b
    goto :goto_5

    #@11c
    .line 920
    :cond_d
    add-int/lit8 v5, v5, 0x1

    #@11e
    goto :goto_6

    #@11f
    .line 932
    .end local v2    # "bRemoved":Z
    .end local v13    # "uloc":Landroid/icu/util/ULocale;
    :cond_e
    return-object v9
.end method

.method public reset()Landroid/icu/util/GlobalizationPreferences;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 761
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 762
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@9
    const-string/jumbo v1, "Attempt to modify immutable object"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 764
    :cond_0
    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    #@12
    .line 765
    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->territory:Ljava/lang/String;

    #@14
    .line 766
    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->calendar:Landroid/icu/util/Calendar;

    #@16
    .line 767
    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->collator:Landroid/icu/text/Collator;

    #@18
    .line 768
    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    #@1a
    .line 769
    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->timezone:Landroid/icu/util/TimeZone;

    #@1c
    .line 770
    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->currency:Landroid/icu/util/Currency;

    #@1e
    .line 771
    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->dateFormats:[[Landroid/icu/text/DateFormat;

    #@20
    .line 772
    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->numberFormats:[Landroid/icu/text/NumberFormat;

    #@22
    .line 773
    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->implicitLocales:Ljava/util/List;

    #@24
    .line 774
    return-object p0
.end method

.method public setBreakIterator(ILandroid/icu/text/BreakIterator;)Landroid/icu/util/GlobalizationPreferences;
    .locals 2
    .param p1, "type"    # I
    .param p2, "iterator"    # Landroid/icu/text/BreakIterator;

    #@0
    .prologue
    const/4 v1, 0x5

    #@1
    .line 537
    if-ltz p1, :cond_0

    #@3
    if-lt p1, v1, :cond_1

    #@5
    .line 538
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Illegal break iterator type"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 540
    :cond_1
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 541
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@16
    const-string/jumbo v1, "Attempt to modify immutable object"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 543
    :cond_2
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    #@1f
    if-nez v0, :cond_3

    #@21
    .line 544
    new-array v0, v1, [Landroid/icu/text/BreakIterator;

    #@23
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    #@25
    .line 545
    :cond_3
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    #@27
    invoke-virtual {p2}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/icu/text/BreakIterator;

    #@2d
    aput-object v0, v1, p1

    #@2f
    .line 546
    return-object p0
.end method

.method public setCalendar(Landroid/icu/util/Calendar;)Landroid/icu/util/GlobalizationPreferences;
    .locals 2
    .param p1, "calendar"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    .line 416
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 417
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify immutable object"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 419
    :cond_0
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/icu/util/Calendar;

    #@15
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->calendar:Landroid/icu/util/Calendar;

    #@17
    .line 420
    return-object p0
.end method

.method public setCollator(Landroid/icu/text/Collator;)Landroid/icu/util/GlobalizationPreferences;
    .locals 3
    .param p1, "collator"    # Landroid/icu/text/Collator;

    #@0
    .prologue
    .line 497
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 498
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v2, "Attempt to modify immutable object"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 501
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/icu/text/Collator;->clone()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/icu/text/Collator;

    #@15
    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->collator:Landroid/icu/text/Collator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 505
    return-object p0

    #@18
    .line 502
    :catch_0
    move-exception v0

    #@19
    .line 503
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    #@1b
    const-string/jumbo v2, "Error in cloning collator"

    #@1e
    invoke-direct {v1, v2, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@21
    throw v1
.end method

.method public setCurrency(Landroid/icu/util/Currency;)Landroid/icu/util/GlobalizationPreferences;
    .locals 2
    .param p1, "currency"    # Landroid/icu/util/Currency;

    #@0
    .prologue
    .line 386
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 387
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify immutable object"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 389
    :cond_0
    iput-object p1, p0, Landroid/icu/util/GlobalizationPreferences;->currency:Landroid/icu/util/Currency;

    #@11
    .line 390
    return-object p0
.end method

.method public setDateFormat(IILandroid/icu/text/DateFormat;)Landroid/icu/util/GlobalizationPreferences;
    .locals 2
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I
    .param p3, "format"    # Landroid/icu/text/DateFormat;

    #@0
    .prologue
    const/4 v1, 0x5

    #@1
    .line 664
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 665
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@9
    const-string/jumbo v1, "Attempt to modify immutable object"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 667
    :cond_0
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->dateFormats:[[Landroid/icu/text/DateFormat;

    #@12
    if-nez v0, :cond_1

    #@14
    .line 668
    const-class v0, Landroid/icu/text/DateFormat;

    #@16
    filled-new-array {v1, v1}, [I

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, [[Landroid/icu/text/DateFormat;

    #@20
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->dateFormats:[[Landroid/icu/text/DateFormat;

    #@22
    .line 670
    :cond_1
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->dateFormats:[[Landroid/icu/text/DateFormat;

    #@24
    aget-object v1, v0, p1

    #@26
    invoke-virtual {p3}, Landroid/icu/text/DateFormat;->clone()Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Landroid/icu/text/DateFormat;

    #@2c
    aput-object v0, v1, p2

    #@2e
    .line 671
    return-object p0
.end method

.method public setLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/GlobalizationPreferences;
    .locals 2
    .param p1, "uLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 240
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 241
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify immutable object"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 243
    :cond_0
    const/4 v0, 0x1

    #@10
    new-array v0, v0, [Landroid/icu/util/ULocale;

    #@12
    const/4 v1, 0x0

    #@13
    aput-object p1, v0, v1

    #@15
    invoke-virtual {p0, v0}, Landroid/icu/util/GlobalizationPreferences;->setLocales([Landroid/icu/util/ULocale;)Landroid/icu/util/GlobalizationPreferences;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public setLocales(Ljava/lang/String;)Landroid/icu/util/GlobalizationPreferences;
    .locals 4
    .param p1, "acceptLanguageString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 258
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v3, "Attempt to modify immutable object"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 260
    :cond_0
    const/4 v0, 0x0

    #@10
    .line 262
    .local v0, "acceptLocales":[Landroid/icu/util/ULocale;
    const/4 v2, 0x1

    #@11
    :try_start_0
    invoke-static {p1, v2}, Landroid/icu/util/ULocale;->parseAcceptLanguage(Ljava/lang/String;Z)[Landroid/icu/util/ULocale;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v0

    #@15
    .line 267
    .local v0, "acceptLocales":[Landroid/icu/util/ULocale;
    invoke-virtual {p0, v0}, Landroid/icu/util/GlobalizationPreferences;->setLocales([Landroid/icu/util/ULocale;)Landroid/icu/util/GlobalizationPreferences;

    #@18
    move-result-object v2

    #@19
    return-object v2

    #@1a
    .line 263
    .local v0, "acceptLocales":[Landroid/icu/util/ULocale;
    :catch_0
    move-exception v1

    #@1b
    .line 265
    .local v1, "pe":Ljava/text/ParseException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v3, "Invalid Accept-Language string"

    #@20
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v2
.end method

.method public setLocales(Ljava/util/List;)Landroid/icu/util/GlobalizationPreferences;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Landroid/icu/util/GlobalizationPreferences;"
        }
    .end annotation

    #@0
    .prologue
    .line 169
    .local p1, "inputLocales":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/util/ULocale;>;"
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify immutable object"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 172
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/util/GlobalizationPreferences;->processLocales(Ljava/util/List;)Ljava/util/List;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    #@15
    .line 173
    return-object p0
.end method

.method public setLocales([Landroid/icu/util/ULocale;)Landroid/icu/util/GlobalizationPreferences;
    .locals 2
    .param p1, "uLocales"    # [Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 223
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 224
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify immutable object"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 226
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p0, v0}, Landroid/icu/util/GlobalizationPreferences;->setLocales(Ljava/util/List;)Landroid/icu/util/GlobalizationPreferences;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public setNumberFormat(ILandroid/icu/text/NumberFormat;)Landroid/icu/util/GlobalizationPreferences;
    .locals 2
    .param p1, "style"    # I
    .param p2, "format"    # Landroid/icu/text/NumberFormat;

    #@0
    .prologue
    .line 743
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 744
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify immutable object"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 746
    :cond_0
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->numberFormats:[Landroid/icu/text/NumberFormat;

    #@11
    if-nez v0, :cond_1

    #@13
    .line 747
    const/4 v0, 0x5

    #@14
    new-array v0, v0, [Landroid/icu/text/NumberFormat;

    #@16
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->numberFormats:[Landroid/icu/text/NumberFormat;

    #@18
    .line 749
    :cond_1
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->numberFormats:[Landroid/icu/text/NumberFormat;

    #@1a
    invoke-virtual {p2}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/icu/text/NumberFormat;

    #@20
    aput-object v0, v1, p1

    #@22
    .line 750
    return-object p0
.end method

.method public setTerritory(Ljava/lang/String;)Landroid/icu/util/GlobalizationPreferences;
    .locals 2
    .param p1, "territory"    # Ljava/lang/String;

    #@0
    .prologue
    .line 355
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 356
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify immutable object"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 358
    :cond_0
    iput-object p1, p0, Landroid/icu/util/GlobalizationPreferences;->territory:Ljava/lang/String;

    #@11
    .line 359
    return-object p0
.end method

.method public setTimeZone(Landroid/icu/util/TimeZone;)Landroid/icu/util/GlobalizationPreferences;
    .locals 2
    .param p1, "timezone"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    .line 449
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 450
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify immutable object"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 452
    :cond_0
    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->clone()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/icu/util/TimeZone;

    #@15
    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->timezone:Landroid/icu/util/TimeZone;

    #@17
    .line 453
    return-object p0
.end method
