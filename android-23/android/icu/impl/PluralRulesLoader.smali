.class public Landroid/icu/impl/PluralRulesLoader;
.super Landroid/icu/text/PluralRules$Factory;
.source "PluralRulesLoader.java"


# static fields
.field private static final UNKNOWN_RANGE:Landroid/icu/text/PluralRanges;

.field public static final loader:Landroid/icu/impl/PluralRulesLoader;

.field private static localeIdToPluralRanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/PluralRanges;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private localeIdToCardinalRulesId:Ljava/util/Map;
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

.field private localeIdToOrdinalRulesId:Ljava/util/Map;
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

.field private rulesIdToEquivalentULocale:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private final rulesIdToRules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/PluralRules;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/4 v13, 0x2

    #@2
    const/4 v12, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    .line 251
    new-instance v7, Landroid/icu/impl/PluralRulesLoader;

    #@6
    invoke-direct {v7}, Landroid/icu/impl/PluralRulesLoader;-><init>()V

    #@9
    sput-object v7, Landroid/icu/impl/PluralRulesLoader;->loader:Landroid/icu/impl/PluralRulesLoader;

    #@b
    .line 261
    new-instance v7, Landroid/icu/text/PluralRanges;

    #@d
    invoke-direct {v7}, Landroid/icu/text/PluralRanges;-><init>()V

    #@10
    invoke-virtual {v7}, Landroid/icu/text/PluralRanges;->freeze()Landroid/icu/text/PluralRanges;

    #@13
    move-result-object v7

    #@14
    sput-object v7, Landroid/icu/impl/PluralRulesLoader;->UNKNOWN_RANGE:Landroid/icu/text/PluralRanges;

    #@16
    .line 284
    const/16 v7, 0xab

    #@18
    new-array v2, v7, [[Ljava/lang/String;

    #@1a
    .line 285
    new-array v7, v13, [Ljava/lang/String;

    #@1c
    const-string/jumbo v8, "locales"

    #@1f
    aput-object v8, v7, v6

    #@21
    const-string/jumbo v8, "id ja km ko lo ms my th vi zh"

    #@24
    aput-object v8, v7, v12

    #@26
    aput-object v7, v2, v6

    #@28
    .line 286
    new-array v7, v9, [Ljava/lang/String;

    #@2a
    const-string/jumbo v8, "other"

    #@2d
    aput-object v8, v7, v6

    #@2f
    const-string/jumbo v8, "other"

    #@32
    aput-object v8, v7, v12

    #@34
    const-string/jumbo v8, "other"

    #@37
    aput-object v8, v7, v13

    #@39
    aput-object v7, v2, v12

    #@3b
    .line 288
    new-array v7, v13, [Ljava/lang/String;

    #@3d
    const-string/jumbo v8, "locales"

    #@40
    aput-object v8, v7, v6

    #@42
    const-string/jumbo v8, "am bn fr gu hi hy kn mr pa zu"

    #@45
    aput-object v8, v7, v12

    #@47
    aput-object v7, v2, v13

    #@49
    .line 289
    new-array v7, v9, [Ljava/lang/String;

    #@4b
    const-string/jumbo v8, "one"

    #@4e
    aput-object v8, v7, v6

    #@50
    const-string/jumbo v8, "one"

    #@53
    aput-object v8, v7, v12

    #@55
    const-string/jumbo v8, "one"

    #@58
    aput-object v8, v7, v13

    #@5a
    aput-object v7, v2, v9

    #@5c
    .line 290
    new-array v7, v9, [Ljava/lang/String;

    #@5e
    const-string/jumbo v8, "one"

    #@61
    aput-object v8, v7, v6

    #@63
    const-string/jumbo v8, "other"

    #@66
    aput-object v8, v7, v12

    #@68
    const-string/jumbo v8, "other"

    #@6b
    aput-object v8, v7, v13

    #@6d
    const/4 v8, 0x4

    #@6e
    aput-object v7, v2, v8

    #@70
    .line 291
    new-array v7, v9, [Ljava/lang/String;

    #@72
    const-string/jumbo v8, "other"

    #@75
    aput-object v8, v7, v6

    #@77
    const-string/jumbo v8, "other"

    #@7a
    aput-object v8, v7, v12

    #@7c
    const-string/jumbo v8, "other"

    #@7f
    aput-object v8, v7, v13

    #@81
    const/4 v8, 0x5

    #@82
    aput-object v7, v2, v8

    #@84
    .line 293
    new-array v7, v13, [Ljava/lang/String;

    #@86
    const-string/jumbo v8, "locales"

    #@89
    aput-object v8, v7, v6

    #@8b
    const-string/jumbo v8, "fa"

    #@8e
    aput-object v8, v7, v12

    #@90
    const/4 v8, 0x6

    #@91
    aput-object v7, v2, v8

    #@93
    .line 294
    new-array v7, v9, [Ljava/lang/String;

    #@95
    const-string/jumbo v8, "one"

    #@98
    aput-object v8, v7, v6

    #@9a
    const-string/jumbo v8, "one"

    #@9d
    aput-object v8, v7, v12

    #@9f
    const-string/jumbo v8, "other"

    #@a2
    aput-object v8, v7, v13

    #@a4
    const/4 v8, 0x7

    #@a5
    aput-object v7, v2, v8

    #@a7
    .line 295
    new-array v7, v9, [Ljava/lang/String;

    #@a9
    const-string/jumbo v8, "one"

    #@ac
    aput-object v8, v7, v6

    #@ae
    const-string/jumbo v8, "other"

    #@b1
    aput-object v8, v7, v12

    #@b3
    const-string/jumbo v8, "other"

    #@b6
    aput-object v8, v7, v13

    #@b8
    const/16 v8, 0x8

    #@ba
    aput-object v7, v2, v8

    #@bc
    .line 296
    new-array v7, v9, [Ljava/lang/String;

    #@be
    const-string/jumbo v8, "other"

    #@c1
    aput-object v8, v7, v6

    #@c3
    const-string/jumbo v8, "other"

    #@c6
    aput-object v8, v7, v12

    #@c8
    const-string/jumbo v8, "other"

    #@cb
    aput-object v8, v7, v13

    #@cd
    const/16 v8, 0x9

    #@cf
    aput-object v7, v2, v8

    #@d1
    .line 298
    new-array v7, v13, [Ljava/lang/String;

    #@d3
    const-string/jumbo v8, "locales"

    #@d6
    aput-object v8, v7, v6

    #@d8
    const-string/jumbo v8, "ka"

    #@db
    aput-object v8, v7, v12

    #@dd
    const/16 v8, 0xa

    #@df
    aput-object v7, v2, v8

    #@e1
    .line 299
    new-array v7, v9, [Ljava/lang/String;

    #@e3
    const-string/jumbo v8, "one"

    #@e6
    aput-object v8, v7, v6

    #@e8
    const-string/jumbo v8, "other"

    #@eb
    aput-object v8, v7, v12

    #@ed
    const-string/jumbo v8, "one"

    #@f0
    aput-object v8, v7, v13

    #@f2
    const/16 v8, 0xb

    #@f4
    aput-object v7, v2, v8

    #@f6
    .line 300
    new-array v7, v9, [Ljava/lang/String;

    #@f8
    const-string/jumbo v8, "other"

    #@fb
    aput-object v8, v7, v6

    #@fd
    const-string/jumbo v8, "one"

    #@100
    aput-object v8, v7, v12

    #@102
    const-string/jumbo v8, "other"

    #@105
    aput-object v8, v7, v13

    #@107
    const/16 v8, 0xc

    #@109
    aput-object v7, v2, v8

    #@10b
    .line 301
    new-array v7, v9, [Ljava/lang/String;

    #@10d
    const-string/jumbo v8, "other"

    #@110
    aput-object v8, v7, v6

    #@112
    const-string/jumbo v8, "other"

    #@115
    aput-object v8, v7, v12

    #@117
    const-string/jumbo v8, "other"

    #@11a
    aput-object v8, v7, v13

    #@11c
    const/16 v8, 0xd

    #@11e
    aput-object v7, v2, v8

    #@120
    .line 303
    new-array v7, v13, [Ljava/lang/String;

    #@122
    const-string/jumbo v8, "locales"

    #@125
    aput-object v8, v7, v6

    #@127
    const-string/jumbo v8, "az de el gl hu it kk ky ml mn ne nl pt sq sw ta te tr ug uz"

    #@12a
    aput-object v8, v7, v12

    #@12c
    const/16 v8, 0xe

    #@12e
    aput-object v7, v2, v8

    #@130
    .line 304
    new-array v7, v9, [Ljava/lang/String;

    #@132
    const-string/jumbo v8, "one"

    #@135
    aput-object v8, v7, v6

    #@137
    const-string/jumbo v8, "other"

    #@13a
    aput-object v8, v7, v12

    #@13c
    const-string/jumbo v8, "other"

    #@13f
    aput-object v8, v7, v13

    #@141
    const/16 v8, 0xf

    #@143
    aput-object v7, v2, v8

    #@145
    .line 305
    new-array v7, v9, [Ljava/lang/String;

    #@147
    const-string/jumbo v8, "other"

    #@14a
    aput-object v8, v7, v6

    #@14c
    const-string/jumbo v8, "one"

    #@14f
    aput-object v8, v7, v12

    #@151
    const-string/jumbo v8, "one"

    #@154
    aput-object v8, v7, v13

    #@156
    const/16 v8, 0x10

    #@158
    aput-object v7, v2, v8

    #@15a
    .line 306
    new-array v7, v9, [Ljava/lang/String;

    #@15c
    const-string/jumbo v8, "other"

    #@15f
    aput-object v8, v7, v6

    #@161
    const-string/jumbo v8, "other"

    #@164
    aput-object v8, v7, v12

    #@166
    const-string/jumbo v8, "other"

    #@169
    aput-object v8, v7, v13

    #@16b
    const/16 v8, 0x11

    #@16d
    aput-object v7, v2, v8

    #@16f
    .line 308
    new-array v7, v13, [Ljava/lang/String;

    #@171
    const-string/jumbo v8, "locales"

    #@174
    aput-object v8, v7, v6

    #@176
    const-string/jumbo v8, "af bg ca en es et eu fi nb sv ur"

    #@179
    aput-object v8, v7, v12

    #@17b
    const/16 v8, 0x12

    #@17d
    aput-object v7, v2, v8

    #@17f
    .line 309
    new-array v7, v9, [Ljava/lang/String;

    #@181
    const-string/jumbo v8, "one"

    #@184
    aput-object v8, v7, v6

    #@186
    const-string/jumbo v8, "other"

    #@189
    aput-object v8, v7, v12

    #@18b
    const-string/jumbo v8, "other"

    #@18e
    aput-object v8, v7, v13

    #@190
    const/16 v8, 0x13

    #@192
    aput-object v7, v2, v8

    #@194
    .line 310
    new-array v7, v9, [Ljava/lang/String;

    #@196
    const-string/jumbo v8, "other"

    #@199
    aput-object v8, v7, v6

    #@19b
    const-string/jumbo v8, "one"

    #@19e
    aput-object v8, v7, v12

    #@1a0
    const-string/jumbo v8, "other"

    #@1a3
    aput-object v8, v7, v13

    #@1a5
    const/16 v8, 0x14

    #@1a7
    aput-object v7, v2, v8

    #@1a9
    .line 311
    new-array v7, v9, [Ljava/lang/String;

    #@1ab
    const-string/jumbo v8, "other"

    #@1ae
    aput-object v8, v7, v6

    #@1b0
    const-string/jumbo v8, "other"

    #@1b3
    aput-object v8, v7, v12

    #@1b5
    const-string/jumbo v8, "other"

    #@1b8
    aput-object v8, v7, v13

    #@1ba
    const/16 v8, 0x15

    #@1bc
    aput-object v7, v2, v8

    #@1be
    .line 313
    new-array v7, v13, [Ljava/lang/String;

    #@1c0
    const-string/jumbo v8, "locales"

    #@1c3
    aput-object v8, v7, v6

    #@1c5
    const-string/jumbo v8, "da fil is"

    #@1c8
    aput-object v8, v7, v12

    #@1ca
    const/16 v8, 0x16

    #@1cc
    aput-object v7, v2, v8

    #@1ce
    .line 314
    new-array v7, v9, [Ljava/lang/String;

    #@1d0
    const-string/jumbo v8, "one"

    #@1d3
    aput-object v8, v7, v6

    #@1d5
    const-string/jumbo v8, "one"

    #@1d8
    aput-object v8, v7, v12

    #@1da
    const-string/jumbo v8, "one"

    #@1dd
    aput-object v8, v7, v13

    #@1df
    const/16 v8, 0x17

    #@1e1
    aput-object v7, v2, v8

    #@1e3
    .line 315
    new-array v7, v9, [Ljava/lang/String;

    #@1e5
    const-string/jumbo v8, "one"

    #@1e8
    aput-object v8, v7, v6

    #@1ea
    const-string/jumbo v8, "other"

    #@1ed
    aput-object v8, v7, v12

    #@1ef
    const-string/jumbo v8, "other"

    #@1f2
    aput-object v8, v7, v13

    #@1f4
    const/16 v8, 0x18

    #@1f6
    aput-object v7, v2, v8

    #@1f8
    .line 316
    new-array v7, v9, [Ljava/lang/String;

    #@1fa
    const-string/jumbo v8, "other"

    #@1fd
    aput-object v8, v7, v6

    #@1ff
    const-string/jumbo v8, "one"

    #@202
    aput-object v8, v7, v12

    #@204
    const-string/jumbo v8, "one"

    #@207
    aput-object v8, v7, v13

    #@209
    const/16 v8, 0x19

    #@20b
    aput-object v7, v2, v8

    #@20d
    .line 317
    new-array v7, v9, [Ljava/lang/String;

    #@20f
    const-string/jumbo v8, "other"

    #@212
    aput-object v8, v7, v6

    #@214
    const-string/jumbo v8, "other"

    #@217
    aput-object v8, v7, v12

    #@219
    const-string/jumbo v8, "other"

    #@21c
    aput-object v8, v7, v13

    #@21e
    const/16 v8, 0x1a

    #@220
    aput-object v7, v2, v8

    #@222
    .line 319
    new-array v7, v13, [Ljava/lang/String;

    #@224
    const-string/jumbo v8, "locales"

    #@227
    aput-object v8, v7, v6

    #@229
    const-string/jumbo v8, "si"

    #@22c
    aput-object v8, v7, v12

    #@22e
    const/16 v8, 0x1b

    #@230
    aput-object v7, v2, v8

    #@232
    .line 320
    new-array v7, v9, [Ljava/lang/String;

    #@234
    const-string/jumbo v8, "one"

    #@237
    aput-object v8, v7, v6

    #@239
    const-string/jumbo v8, "one"

    #@23c
    aput-object v8, v7, v12

    #@23e
    const-string/jumbo v8, "one"

    #@241
    aput-object v8, v7, v13

    #@243
    const/16 v8, 0x1c

    #@245
    aput-object v7, v2, v8

    #@247
    .line 321
    new-array v7, v9, [Ljava/lang/String;

    #@249
    const-string/jumbo v8, "one"

    #@24c
    aput-object v8, v7, v6

    #@24e
    const-string/jumbo v8, "other"

    #@251
    aput-object v8, v7, v12

    #@253
    const-string/jumbo v8, "other"

    #@256
    aput-object v8, v7, v13

    #@258
    const/16 v8, 0x1d

    #@25a
    aput-object v7, v2, v8

    #@25c
    .line 322
    new-array v7, v9, [Ljava/lang/String;

    #@25e
    const-string/jumbo v8, "other"

    #@261
    aput-object v8, v7, v6

    #@263
    const-string/jumbo v8, "one"

    #@266
    aput-object v8, v7, v12

    #@268
    const-string/jumbo v8, "other"

    #@26b
    aput-object v8, v7, v13

    #@26d
    const/16 v8, 0x1e

    #@26f
    aput-object v7, v2, v8

    #@271
    .line 323
    new-array v7, v9, [Ljava/lang/String;

    #@273
    const-string/jumbo v8, "other"

    #@276
    aput-object v8, v7, v6

    #@278
    const-string/jumbo v8, "other"

    #@27b
    aput-object v8, v7, v12

    #@27d
    const-string/jumbo v8, "other"

    #@280
    aput-object v8, v7, v13

    #@282
    const/16 v8, 0x1f

    #@284
    aput-object v7, v2, v8

    #@286
    .line 325
    new-array v7, v13, [Ljava/lang/String;

    #@288
    const-string/jumbo v8, "locales"

    #@28b
    aput-object v8, v7, v6

    #@28d
    const-string/jumbo v8, "mk"

    #@290
    aput-object v8, v7, v12

    #@292
    const/16 v8, 0x20

    #@294
    aput-object v7, v2, v8

    #@296
    .line 326
    new-array v7, v9, [Ljava/lang/String;

    #@298
    const-string/jumbo v8, "one"

    #@29b
    aput-object v8, v7, v6

    #@29d
    const-string/jumbo v8, "one"

    #@2a0
    aput-object v8, v7, v12

    #@2a2
    const-string/jumbo v8, "other"

    #@2a5
    aput-object v8, v7, v13

    #@2a7
    const/16 v8, 0x21

    #@2a9
    aput-object v7, v2, v8

    #@2ab
    .line 327
    new-array v7, v9, [Ljava/lang/String;

    #@2ad
    const-string/jumbo v8, "one"

    #@2b0
    aput-object v8, v7, v6

    #@2b2
    const-string/jumbo v8, "other"

    #@2b5
    aput-object v8, v7, v12

    #@2b7
    const-string/jumbo v8, "other"

    #@2ba
    aput-object v8, v7, v13

    #@2bc
    const/16 v8, 0x22

    #@2be
    aput-object v7, v2, v8

    #@2c0
    .line 328
    new-array v7, v9, [Ljava/lang/String;

    #@2c2
    const-string/jumbo v8, "other"

    #@2c5
    aput-object v8, v7, v6

    #@2c7
    const-string/jumbo v8, "one"

    #@2ca
    aput-object v8, v7, v12

    #@2cc
    const-string/jumbo v8, "other"

    #@2cf
    aput-object v8, v7, v13

    #@2d1
    const/16 v8, 0x23

    #@2d3
    aput-object v7, v2, v8

    #@2d5
    .line 329
    new-array v7, v9, [Ljava/lang/String;

    #@2d7
    const-string/jumbo v8, "other"

    #@2da
    aput-object v8, v7, v6

    #@2dc
    const-string/jumbo v8, "other"

    #@2df
    aput-object v8, v7, v12

    #@2e1
    const-string/jumbo v8, "other"

    #@2e4
    aput-object v8, v7, v13

    #@2e6
    const/16 v8, 0x24

    #@2e8
    aput-object v7, v2, v8

    #@2ea
    .line 331
    new-array v7, v13, [Ljava/lang/String;

    #@2ec
    const-string/jumbo v8, "locales"

    #@2ef
    aput-object v8, v7, v6

    #@2f1
    const-string/jumbo v8, "lv"

    #@2f4
    aput-object v8, v7, v12

    #@2f6
    const/16 v8, 0x25

    #@2f8
    aput-object v7, v2, v8

    #@2fa
    .line 332
    new-array v7, v9, [Ljava/lang/String;

    #@2fc
    const-string/jumbo v8, "zero"

    #@2ff
    aput-object v8, v7, v6

    #@301
    const-string/jumbo v8, "zero"

    #@304
    aput-object v8, v7, v12

    #@306
    const-string/jumbo v8, "other"

    #@309
    aput-object v8, v7, v13

    #@30b
    const/16 v8, 0x26

    #@30d
    aput-object v7, v2, v8

    #@30f
    .line 333
    new-array v7, v9, [Ljava/lang/String;

    #@311
    const-string/jumbo v8, "zero"

    #@314
    aput-object v8, v7, v6

    #@316
    const-string/jumbo v8, "one"

    #@319
    aput-object v8, v7, v12

    #@31b
    const-string/jumbo v8, "one"

    #@31e
    aput-object v8, v7, v13

    #@320
    const/16 v8, 0x27

    #@322
    aput-object v7, v2, v8

    #@324
    .line 334
    new-array v7, v9, [Ljava/lang/String;

    #@326
    const-string/jumbo v8, "zero"

    #@329
    aput-object v8, v7, v6

    #@32b
    const-string/jumbo v8, "other"

    #@32e
    aput-object v8, v7, v12

    #@330
    const-string/jumbo v8, "other"

    #@333
    aput-object v8, v7, v13

    #@335
    const/16 v8, 0x28

    #@337
    aput-object v7, v2, v8

    #@339
    .line 335
    new-array v7, v9, [Ljava/lang/String;

    #@33b
    const-string/jumbo v8, "one"

    #@33e
    aput-object v8, v7, v6

    #@340
    const-string/jumbo v8, "zero"

    #@343
    aput-object v8, v7, v12

    #@345
    const-string/jumbo v8, "other"

    #@348
    aput-object v8, v7, v13

    #@34a
    const/16 v8, 0x29

    #@34c
    aput-object v7, v2, v8

    #@34e
    .line 336
    new-array v7, v9, [Ljava/lang/String;

    #@350
    const-string/jumbo v8, "one"

    #@353
    aput-object v8, v7, v6

    #@355
    const-string/jumbo v8, "one"

    #@358
    aput-object v8, v7, v12

    #@35a
    const-string/jumbo v8, "one"

    #@35d
    aput-object v8, v7, v13

    #@35f
    const/16 v8, 0x2a

    #@361
    aput-object v7, v2, v8

    #@363
    .line 337
    new-array v7, v9, [Ljava/lang/String;

    #@365
    const-string/jumbo v8, "one"

    #@368
    aput-object v8, v7, v6

    #@36a
    const-string/jumbo v8, "other"

    #@36d
    aput-object v8, v7, v12

    #@36f
    const-string/jumbo v8, "other"

    #@372
    aput-object v8, v7, v13

    #@374
    const/16 v8, 0x2b

    #@376
    aput-object v7, v2, v8

    #@378
    .line 338
    new-array v7, v9, [Ljava/lang/String;

    #@37a
    const-string/jumbo v8, "other"

    #@37d
    aput-object v8, v7, v6

    #@37f
    const-string/jumbo v8, "zero"

    #@382
    aput-object v8, v7, v12

    #@384
    const-string/jumbo v8, "other"

    #@387
    aput-object v8, v7, v13

    #@389
    const/16 v8, 0x2c

    #@38b
    aput-object v7, v2, v8

    #@38d
    .line 339
    new-array v7, v9, [Ljava/lang/String;

    #@38f
    const-string/jumbo v8, "other"

    #@392
    aput-object v8, v7, v6

    #@394
    const-string/jumbo v8, "one"

    #@397
    aput-object v8, v7, v12

    #@399
    const-string/jumbo v8, "one"

    #@39c
    aput-object v8, v7, v13

    #@39e
    const/16 v8, 0x2d

    #@3a0
    aput-object v7, v2, v8

    #@3a2
    .line 340
    new-array v7, v9, [Ljava/lang/String;

    #@3a4
    const-string/jumbo v8, "other"

    #@3a7
    aput-object v8, v7, v6

    #@3a9
    const-string/jumbo v8, "other"

    #@3ac
    aput-object v8, v7, v12

    #@3ae
    const-string/jumbo v8, "other"

    #@3b1
    aput-object v8, v7, v13

    #@3b3
    const/16 v8, 0x2e

    #@3b5
    aput-object v7, v2, v8

    #@3b7
    .line 342
    new-array v7, v13, [Ljava/lang/String;

    #@3b9
    const-string/jumbo v8, "locales"

    #@3bc
    aput-object v8, v7, v6

    #@3be
    const-string/jumbo v8, "ro"

    #@3c1
    aput-object v8, v7, v12

    #@3c3
    const/16 v8, 0x2f

    #@3c5
    aput-object v7, v2, v8

    #@3c7
    .line 343
    new-array v7, v9, [Ljava/lang/String;

    #@3c9
    const-string/jumbo v8, "one"

    #@3cc
    aput-object v8, v7, v6

    #@3ce
    const-string/jumbo v8, "few"

    #@3d1
    aput-object v8, v7, v12

    #@3d3
    const-string/jumbo v8, "few"

    #@3d6
    aput-object v8, v7, v13

    #@3d8
    const/16 v8, 0x30

    #@3da
    aput-object v7, v2, v8

    #@3dc
    .line 344
    new-array v7, v9, [Ljava/lang/String;

    #@3de
    const-string/jumbo v8, "one"

    #@3e1
    aput-object v8, v7, v6

    #@3e3
    const-string/jumbo v8, "other"

    #@3e6
    aput-object v8, v7, v12

    #@3e8
    const-string/jumbo v8, "other"

    #@3eb
    aput-object v8, v7, v13

    #@3ed
    const/16 v8, 0x31

    #@3ef
    aput-object v7, v2, v8

    #@3f1
    .line 345
    new-array v7, v9, [Ljava/lang/String;

    #@3f3
    const-string/jumbo v8, "few"

    #@3f6
    aput-object v8, v7, v6

    #@3f8
    const-string/jumbo v8, "one"

    #@3fb
    aput-object v8, v7, v12

    #@3fd
    const-string/jumbo v8, "few"

    #@400
    aput-object v8, v7, v13

    #@402
    const/16 v8, 0x32

    #@404
    aput-object v7, v2, v8

    #@406
    .line 346
    new-array v7, v9, [Ljava/lang/String;

    #@408
    const-string/jumbo v8, "few"

    #@40b
    aput-object v8, v7, v6

    #@40d
    const-string/jumbo v8, "few"

    #@410
    aput-object v8, v7, v12

    #@412
    const-string/jumbo v8, "few"

    #@415
    aput-object v8, v7, v13

    #@417
    const/16 v8, 0x33

    #@419
    aput-object v7, v2, v8

    #@41b
    .line 347
    new-array v7, v9, [Ljava/lang/String;

    #@41d
    const-string/jumbo v8, "few"

    #@420
    aput-object v8, v7, v6

    #@422
    const-string/jumbo v8, "other"

    #@425
    aput-object v8, v7, v12

    #@427
    const-string/jumbo v8, "other"

    #@42a
    aput-object v8, v7, v13

    #@42c
    const/16 v8, 0x34

    #@42e
    aput-object v7, v2, v8

    #@430
    .line 348
    new-array v7, v9, [Ljava/lang/String;

    #@432
    const-string/jumbo v8, "other"

    #@435
    aput-object v8, v7, v6

    #@437
    const-string/jumbo v8, "few"

    #@43a
    aput-object v8, v7, v12

    #@43c
    const-string/jumbo v8, "few"

    #@43f
    aput-object v8, v7, v13

    #@441
    const/16 v8, 0x35

    #@443
    aput-object v7, v2, v8

    #@445
    .line 349
    new-array v7, v9, [Ljava/lang/String;

    #@447
    const-string/jumbo v8, "other"

    #@44a
    aput-object v8, v7, v6

    #@44c
    const-string/jumbo v8, "other"

    #@44f
    aput-object v8, v7, v12

    #@451
    const-string/jumbo v8, "other"

    #@454
    aput-object v8, v7, v13

    #@456
    const/16 v8, 0x36

    #@458
    aput-object v7, v2, v8

    #@45a
    .line 351
    new-array v7, v13, [Ljava/lang/String;

    #@45c
    const-string/jumbo v8, "locales"

    #@45f
    aput-object v8, v7, v6

    #@461
    const-string/jumbo v8, "hr sr bs"

    #@464
    aput-object v8, v7, v12

    #@466
    const/16 v8, 0x37

    #@468
    aput-object v7, v2, v8

    #@46a
    .line 352
    new-array v7, v9, [Ljava/lang/String;

    #@46c
    const-string/jumbo v8, "one"

    #@46f
    aput-object v8, v7, v6

    #@471
    const-string/jumbo v8, "one"

    #@474
    aput-object v8, v7, v12

    #@476
    const-string/jumbo v8, "one"

    #@479
    aput-object v8, v7, v13

    #@47b
    const/16 v8, 0x38

    #@47d
    aput-object v7, v2, v8

    #@47f
    .line 353
    new-array v7, v9, [Ljava/lang/String;

    #@481
    const-string/jumbo v8, "one"

    #@484
    aput-object v8, v7, v6

    #@486
    const-string/jumbo v8, "few"

    #@489
    aput-object v8, v7, v12

    #@48b
    const-string/jumbo v8, "few"

    #@48e
    aput-object v8, v7, v13

    #@490
    const/16 v8, 0x39

    #@492
    aput-object v7, v2, v8

    #@494
    .line 354
    new-array v7, v9, [Ljava/lang/String;

    #@496
    const-string/jumbo v8, "one"

    #@499
    aput-object v8, v7, v6

    #@49b
    const-string/jumbo v8, "other"

    #@49e
    aput-object v8, v7, v12

    #@4a0
    const-string/jumbo v8, "other"

    #@4a3
    aput-object v8, v7, v13

    #@4a5
    const/16 v8, 0x3a

    #@4a7
    aput-object v7, v2, v8

    #@4a9
    .line 355
    new-array v7, v9, [Ljava/lang/String;

    #@4ab
    const-string/jumbo v8, "few"

    #@4ae
    aput-object v8, v7, v6

    #@4b0
    const-string/jumbo v8, "one"

    #@4b3
    aput-object v8, v7, v12

    #@4b5
    const-string/jumbo v8, "one"

    #@4b8
    aput-object v8, v7, v13

    #@4ba
    const/16 v8, 0x3b

    #@4bc
    aput-object v7, v2, v8

    #@4be
    .line 356
    new-array v7, v9, [Ljava/lang/String;

    #@4c0
    const-string/jumbo v8, "few"

    #@4c3
    aput-object v8, v7, v6

    #@4c5
    const-string/jumbo v8, "few"

    #@4c8
    aput-object v8, v7, v12

    #@4ca
    const-string/jumbo v8, "few"

    #@4cd
    aput-object v8, v7, v13

    #@4cf
    const/16 v8, 0x3c

    #@4d1
    aput-object v7, v2, v8

    #@4d3
    .line 357
    new-array v7, v9, [Ljava/lang/String;

    #@4d5
    const-string/jumbo v8, "few"

    #@4d8
    aput-object v8, v7, v6

    #@4da
    const-string/jumbo v8, "other"

    #@4dd
    aput-object v8, v7, v12

    #@4df
    const-string/jumbo v8, "other"

    #@4e2
    aput-object v8, v7, v13

    #@4e4
    const/16 v8, 0x3d

    #@4e6
    aput-object v7, v2, v8

    #@4e8
    .line 358
    new-array v7, v9, [Ljava/lang/String;

    #@4ea
    const-string/jumbo v8, "other"

    #@4ed
    aput-object v8, v7, v6

    #@4ef
    const-string/jumbo v8, "one"

    #@4f2
    aput-object v8, v7, v12

    #@4f4
    const-string/jumbo v8, "one"

    #@4f7
    aput-object v8, v7, v13

    #@4f9
    const/16 v8, 0x3e

    #@4fb
    aput-object v7, v2, v8

    #@4fd
    .line 359
    new-array v7, v9, [Ljava/lang/String;

    #@4ff
    const-string/jumbo v8, "other"

    #@502
    aput-object v8, v7, v6

    #@504
    const-string/jumbo v8, "few"

    #@507
    aput-object v8, v7, v12

    #@509
    const-string/jumbo v8, "few"

    #@50c
    aput-object v8, v7, v13

    #@50e
    const/16 v8, 0x3f

    #@510
    aput-object v7, v2, v8

    #@512
    .line 360
    new-array v7, v9, [Ljava/lang/String;

    #@514
    const-string/jumbo v8, "other"

    #@517
    aput-object v8, v7, v6

    #@519
    const-string/jumbo v8, "other"

    #@51c
    aput-object v8, v7, v12

    #@51e
    const-string/jumbo v8, "other"

    #@521
    aput-object v8, v7, v13

    #@523
    const/16 v8, 0x40

    #@525
    aput-object v7, v2, v8

    #@527
    .line 362
    new-array v7, v13, [Ljava/lang/String;

    #@529
    const-string/jumbo v8, "locales"

    #@52c
    aput-object v8, v7, v6

    #@52e
    const-string/jumbo v8, "sl"

    #@531
    aput-object v8, v7, v12

    #@533
    const/16 v8, 0x41

    #@535
    aput-object v7, v2, v8

    #@537
    .line 363
    new-array v7, v9, [Ljava/lang/String;

    #@539
    const-string/jumbo v8, "one"

    #@53c
    aput-object v8, v7, v6

    #@53e
    const-string/jumbo v8, "one"

    #@541
    aput-object v8, v7, v12

    #@543
    const-string/jumbo v8, "few"

    #@546
    aput-object v8, v7, v13

    #@548
    const/16 v8, 0x42

    #@54a
    aput-object v7, v2, v8

    #@54c
    .line 364
    new-array v7, v9, [Ljava/lang/String;

    #@54e
    const-string/jumbo v8, "one"

    #@551
    aput-object v8, v7, v6

    #@553
    const-string/jumbo v8, "two"

    #@556
    aput-object v8, v7, v12

    #@558
    const-string/jumbo v8, "two"

    #@55b
    aput-object v8, v7, v13

    #@55d
    const/16 v8, 0x43

    #@55f
    aput-object v7, v2, v8

    #@561
    .line 365
    new-array v7, v9, [Ljava/lang/String;

    #@563
    const-string/jumbo v8, "one"

    #@566
    aput-object v8, v7, v6

    #@568
    const-string/jumbo v8, "few"

    #@56b
    aput-object v8, v7, v12

    #@56d
    const-string/jumbo v8, "few"

    #@570
    aput-object v8, v7, v13

    #@572
    const/16 v8, 0x44

    #@574
    aput-object v7, v2, v8

    #@576
    .line 366
    new-array v7, v9, [Ljava/lang/String;

    #@578
    const-string/jumbo v8, "one"

    #@57b
    aput-object v8, v7, v6

    #@57d
    const-string/jumbo v8, "other"

    #@580
    aput-object v8, v7, v12

    #@582
    const-string/jumbo v8, "other"

    #@585
    aput-object v8, v7, v13

    #@587
    const/16 v8, 0x45

    #@589
    aput-object v7, v2, v8

    #@58b
    .line 367
    new-array v7, v9, [Ljava/lang/String;

    #@58d
    const-string/jumbo v8, "two"

    #@590
    aput-object v8, v7, v6

    #@592
    const-string/jumbo v8, "one"

    #@595
    aput-object v8, v7, v12

    #@597
    const-string/jumbo v8, "few"

    #@59a
    aput-object v8, v7, v13

    #@59c
    const/16 v8, 0x46

    #@59e
    aput-object v7, v2, v8

    #@5a0
    .line 368
    new-array v7, v9, [Ljava/lang/String;

    #@5a2
    const-string/jumbo v8, "two"

    #@5a5
    aput-object v8, v7, v6

    #@5a7
    const-string/jumbo v8, "two"

    #@5aa
    aput-object v8, v7, v12

    #@5ac
    const-string/jumbo v8, "two"

    #@5af
    aput-object v8, v7, v13

    #@5b1
    const/16 v8, 0x47

    #@5b3
    aput-object v7, v2, v8

    #@5b5
    .line 369
    new-array v7, v9, [Ljava/lang/String;

    #@5b7
    const-string/jumbo v8, "two"

    #@5ba
    aput-object v8, v7, v6

    #@5bc
    const-string/jumbo v8, "few"

    #@5bf
    aput-object v8, v7, v12

    #@5c1
    const-string/jumbo v8, "few"

    #@5c4
    aput-object v8, v7, v13

    #@5c6
    const/16 v8, 0x48

    #@5c8
    aput-object v7, v2, v8

    #@5ca
    .line 370
    new-array v7, v9, [Ljava/lang/String;

    #@5cc
    const-string/jumbo v8, "two"

    #@5cf
    aput-object v8, v7, v6

    #@5d1
    const-string/jumbo v8, "other"

    #@5d4
    aput-object v8, v7, v12

    #@5d6
    const-string/jumbo v8, "other"

    #@5d9
    aput-object v8, v7, v13

    #@5db
    const/16 v8, 0x49

    #@5dd
    aput-object v7, v2, v8

    #@5df
    .line 371
    new-array v7, v9, [Ljava/lang/String;

    #@5e1
    const-string/jumbo v8, "few"

    #@5e4
    aput-object v8, v7, v6

    #@5e6
    const-string/jumbo v8, "one"

    #@5e9
    aput-object v8, v7, v12

    #@5eb
    const-string/jumbo v8, "few"

    #@5ee
    aput-object v8, v7, v13

    #@5f0
    const/16 v8, 0x4a

    #@5f2
    aput-object v7, v2, v8

    #@5f4
    .line 372
    new-array v7, v9, [Ljava/lang/String;

    #@5f6
    const-string/jumbo v8, "few"

    #@5f9
    aput-object v8, v7, v6

    #@5fb
    const-string/jumbo v8, "two"

    #@5fe
    aput-object v8, v7, v12

    #@600
    const-string/jumbo v8, "two"

    #@603
    aput-object v8, v7, v13

    #@605
    const/16 v8, 0x4b

    #@607
    aput-object v7, v2, v8

    #@609
    .line 373
    new-array v7, v9, [Ljava/lang/String;

    #@60b
    const-string/jumbo v8, "few"

    #@60e
    aput-object v8, v7, v6

    #@610
    const-string/jumbo v8, "few"

    #@613
    aput-object v8, v7, v12

    #@615
    const-string/jumbo v8, "few"

    #@618
    aput-object v8, v7, v13

    #@61a
    const/16 v8, 0x4c

    #@61c
    aput-object v7, v2, v8

    #@61e
    .line 374
    new-array v7, v9, [Ljava/lang/String;

    #@620
    const-string/jumbo v8, "few"

    #@623
    aput-object v8, v7, v6

    #@625
    const-string/jumbo v8, "other"

    #@628
    aput-object v8, v7, v12

    #@62a
    const-string/jumbo v8, "other"

    #@62d
    aput-object v8, v7, v13

    #@62f
    const/16 v8, 0x4d

    #@631
    aput-object v7, v2, v8

    #@633
    .line 375
    new-array v7, v9, [Ljava/lang/String;

    #@635
    const-string/jumbo v8, "other"

    #@638
    aput-object v8, v7, v6

    #@63a
    const-string/jumbo v8, "one"

    #@63d
    aput-object v8, v7, v12

    #@63f
    const-string/jumbo v8, "few"

    #@642
    aput-object v8, v7, v13

    #@644
    const/16 v8, 0x4e

    #@646
    aput-object v7, v2, v8

    #@648
    .line 376
    new-array v7, v9, [Ljava/lang/String;

    #@64a
    const-string/jumbo v8, "other"

    #@64d
    aput-object v8, v7, v6

    #@64f
    const-string/jumbo v8, "two"

    #@652
    aput-object v8, v7, v12

    #@654
    const-string/jumbo v8, "two"

    #@657
    aput-object v8, v7, v13

    #@659
    const/16 v8, 0x4f

    #@65b
    aput-object v7, v2, v8

    #@65d
    .line 377
    new-array v7, v9, [Ljava/lang/String;

    #@65f
    const-string/jumbo v8, "other"

    #@662
    aput-object v8, v7, v6

    #@664
    const-string/jumbo v8, "few"

    #@667
    aput-object v8, v7, v12

    #@669
    const-string/jumbo v8, "few"

    #@66c
    aput-object v8, v7, v13

    #@66e
    const/16 v8, 0x50

    #@670
    aput-object v7, v2, v8

    #@672
    .line 378
    new-array v7, v9, [Ljava/lang/String;

    #@674
    const-string/jumbo v8, "other"

    #@677
    aput-object v8, v7, v6

    #@679
    const-string/jumbo v8, "other"

    #@67c
    aput-object v8, v7, v12

    #@67e
    const-string/jumbo v8, "other"

    #@681
    aput-object v8, v7, v13

    #@683
    const/16 v8, 0x51

    #@685
    aput-object v7, v2, v8

    #@687
    .line 380
    new-array v7, v13, [Ljava/lang/String;

    #@689
    const-string/jumbo v8, "locales"

    #@68c
    aput-object v8, v7, v6

    #@68e
    const-string/jumbo v8, "he"

    #@691
    aput-object v8, v7, v12

    #@693
    const/16 v8, 0x52

    #@695
    aput-object v7, v2, v8

    #@697
    .line 381
    new-array v7, v9, [Ljava/lang/String;

    #@699
    const-string/jumbo v8, "one"

    #@69c
    aput-object v8, v7, v6

    #@69e
    const-string/jumbo v8, "two"

    #@6a1
    aput-object v8, v7, v12

    #@6a3
    const-string/jumbo v8, "other"

    #@6a6
    aput-object v8, v7, v13

    #@6a8
    const/16 v8, 0x53

    #@6aa
    aput-object v7, v2, v8

    #@6ac
    .line 382
    new-array v7, v9, [Ljava/lang/String;

    #@6ae
    const-string/jumbo v8, "one"

    #@6b1
    aput-object v8, v7, v6

    #@6b3
    const-string/jumbo v8, "many"

    #@6b6
    aput-object v8, v7, v12

    #@6b8
    const-string/jumbo v8, "many"

    #@6bb
    aput-object v8, v7, v13

    #@6bd
    const/16 v8, 0x54

    #@6bf
    aput-object v7, v2, v8

    #@6c1
    .line 383
    new-array v7, v9, [Ljava/lang/String;

    #@6c3
    const-string/jumbo v8, "one"

    #@6c6
    aput-object v8, v7, v6

    #@6c8
    const-string/jumbo v8, "other"

    #@6cb
    aput-object v8, v7, v12

    #@6cd
    const-string/jumbo v8, "other"

    #@6d0
    aput-object v8, v7, v13

    #@6d2
    const/16 v8, 0x55

    #@6d4
    aput-object v7, v2, v8

    #@6d6
    .line 384
    new-array v7, v9, [Ljava/lang/String;

    #@6d8
    const-string/jumbo v8, "two"

    #@6db
    aput-object v8, v7, v6

    #@6dd
    const-string/jumbo v8, "many"

    #@6e0
    aput-object v8, v7, v12

    #@6e2
    const-string/jumbo v8, "other"

    #@6e5
    aput-object v8, v7, v13

    #@6e7
    const/16 v8, 0x56

    #@6e9
    aput-object v7, v2, v8

    #@6eb
    .line 385
    new-array v7, v9, [Ljava/lang/String;

    #@6ed
    const-string/jumbo v8, "two"

    #@6f0
    aput-object v8, v7, v6

    #@6f2
    const-string/jumbo v8, "other"

    #@6f5
    aput-object v8, v7, v12

    #@6f7
    const-string/jumbo v8, "other"

    #@6fa
    aput-object v8, v7, v13

    #@6fc
    const/16 v8, 0x57

    #@6fe
    aput-object v7, v2, v8

    #@700
    .line 386
    new-array v7, v9, [Ljava/lang/String;

    #@702
    const-string/jumbo v8, "many"

    #@705
    aput-object v8, v7, v6

    #@707
    const-string/jumbo v8, "many"

    #@70a
    aput-object v8, v7, v12

    #@70c
    const-string/jumbo v8, "many"

    #@70f
    aput-object v8, v7, v13

    #@711
    const/16 v8, 0x58

    #@713
    aput-object v7, v2, v8

    #@715
    .line 387
    new-array v7, v9, [Ljava/lang/String;

    #@717
    const-string/jumbo v8, "many"

    #@71a
    aput-object v8, v7, v6

    #@71c
    const-string/jumbo v8, "other"

    #@71f
    aput-object v8, v7, v12

    #@721
    const-string/jumbo v8, "many"

    #@724
    aput-object v8, v7, v13

    #@726
    const/16 v8, 0x59

    #@728
    aput-object v7, v2, v8

    #@72a
    .line 388
    new-array v7, v9, [Ljava/lang/String;

    #@72c
    const-string/jumbo v8, "other"

    #@72f
    aput-object v8, v7, v6

    #@731
    const-string/jumbo v8, "one"

    #@734
    aput-object v8, v7, v12

    #@736
    const-string/jumbo v8, "other"

    #@739
    aput-object v8, v7, v13

    #@73b
    const/16 v8, 0x5a

    #@73d
    aput-object v7, v2, v8

    #@73f
    .line 389
    new-array v7, v9, [Ljava/lang/String;

    #@741
    const-string/jumbo v8, "other"

    #@744
    aput-object v8, v7, v6

    #@746
    const-string/jumbo v8, "two"

    #@749
    aput-object v8, v7, v12

    #@74b
    const-string/jumbo v8, "other"

    #@74e
    aput-object v8, v7, v13

    #@750
    const/16 v8, 0x5b

    #@752
    aput-object v7, v2, v8

    #@754
    .line 390
    new-array v7, v9, [Ljava/lang/String;

    #@756
    const-string/jumbo v8, "other"

    #@759
    aput-object v8, v7, v6

    #@75b
    const-string/jumbo v8, "many"

    #@75e
    aput-object v8, v7, v12

    #@760
    const-string/jumbo v8, "many"

    #@763
    aput-object v8, v7, v13

    #@765
    const/16 v8, 0x5c

    #@767
    aput-object v7, v2, v8

    #@769
    .line 391
    new-array v7, v9, [Ljava/lang/String;

    #@76b
    const-string/jumbo v8, "other"

    #@76e
    aput-object v8, v7, v6

    #@770
    const-string/jumbo v8, "other"

    #@773
    aput-object v8, v7, v12

    #@775
    const-string/jumbo v8, "other"

    #@778
    aput-object v8, v7, v13

    #@77a
    const/16 v8, 0x5d

    #@77c
    aput-object v7, v2, v8

    #@77e
    .line 393
    new-array v7, v13, [Ljava/lang/String;

    #@780
    const-string/jumbo v8, "locales"

    #@783
    aput-object v8, v7, v6

    #@785
    const-string/jumbo v8, "cs pl sk"

    #@788
    aput-object v8, v7, v12

    #@78a
    const/16 v8, 0x5e

    #@78c
    aput-object v7, v2, v8

    #@78e
    .line 394
    new-array v7, v9, [Ljava/lang/String;

    #@790
    const-string/jumbo v8, "one"

    #@793
    aput-object v8, v7, v6

    #@795
    const-string/jumbo v8, "few"

    #@798
    aput-object v8, v7, v12

    #@79a
    const-string/jumbo v8, "few"

    #@79d
    aput-object v8, v7, v13

    #@79f
    const/16 v8, 0x5f

    #@7a1
    aput-object v7, v2, v8

    #@7a3
    .line 395
    new-array v7, v9, [Ljava/lang/String;

    #@7a5
    const-string/jumbo v8, "one"

    #@7a8
    aput-object v8, v7, v6

    #@7aa
    const-string/jumbo v8, "many"

    #@7ad
    aput-object v8, v7, v12

    #@7af
    const-string/jumbo v8, "many"

    #@7b2
    aput-object v8, v7, v13

    #@7b4
    const/16 v8, 0x60

    #@7b6
    aput-object v7, v2, v8

    #@7b8
    .line 396
    new-array v7, v9, [Ljava/lang/String;

    #@7ba
    const-string/jumbo v8, "one"

    #@7bd
    aput-object v8, v7, v6

    #@7bf
    const-string/jumbo v8, "other"

    #@7c2
    aput-object v8, v7, v12

    #@7c4
    const-string/jumbo v8, "other"

    #@7c7
    aput-object v8, v7, v13

    #@7c9
    const/16 v8, 0x61

    #@7cb
    aput-object v7, v2, v8

    #@7cd
    .line 397
    new-array v7, v9, [Ljava/lang/String;

    #@7cf
    const-string/jumbo v8, "few"

    #@7d2
    aput-object v8, v7, v6

    #@7d4
    const-string/jumbo v8, "few"

    #@7d7
    aput-object v8, v7, v12

    #@7d9
    const-string/jumbo v8, "few"

    #@7dc
    aput-object v8, v7, v13

    #@7de
    const/16 v8, 0x62

    #@7e0
    aput-object v7, v2, v8

    #@7e2
    .line 398
    new-array v7, v9, [Ljava/lang/String;

    #@7e4
    const-string/jumbo v8, "few"

    #@7e7
    aput-object v8, v7, v6

    #@7e9
    const-string/jumbo v8, "many"

    #@7ec
    aput-object v8, v7, v12

    #@7ee
    const-string/jumbo v8, "many"

    #@7f1
    aput-object v8, v7, v13

    #@7f3
    const/16 v8, 0x63

    #@7f5
    aput-object v7, v2, v8

    #@7f7
    .line 399
    new-array v7, v9, [Ljava/lang/String;

    #@7f9
    const-string/jumbo v8, "few"

    #@7fc
    aput-object v8, v7, v6

    #@7fe
    const-string/jumbo v8, "other"

    #@801
    aput-object v8, v7, v12

    #@803
    const-string/jumbo v8, "other"

    #@806
    aput-object v8, v7, v13

    #@808
    const/16 v8, 0x64

    #@80a
    aput-object v7, v2, v8

    #@80c
    .line 400
    new-array v7, v9, [Ljava/lang/String;

    #@80e
    const-string/jumbo v8, "many"

    #@811
    aput-object v8, v7, v6

    #@813
    const-string/jumbo v8, "one"

    #@816
    aput-object v8, v7, v12

    #@818
    const-string/jumbo v8, "one"

    #@81b
    aput-object v8, v7, v13

    #@81d
    const/16 v8, 0x65

    #@81f
    aput-object v7, v2, v8

    #@821
    .line 401
    new-array v7, v9, [Ljava/lang/String;

    #@823
    const-string/jumbo v8, "many"

    #@826
    aput-object v8, v7, v6

    #@828
    const-string/jumbo v8, "few"

    #@82b
    aput-object v8, v7, v12

    #@82d
    const-string/jumbo v8, "few"

    #@830
    aput-object v8, v7, v13

    #@832
    const/16 v8, 0x66

    #@834
    aput-object v7, v2, v8

    #@836
    .line 402
    new-array v7, v9, [Ljava/lang/String;

    #@838
    const-string/jumbo v8, "many"

    #@83b
    aput-object v8, v7, v6

    #@83d
    const-string/jumbo v8, "many"

    #@840
    aput-object v8, v7, v12

    #@842
    const-string/jumbo v8, "many"

    #@845
    aput-object v8, v7, v13

    #@847
    const/16 v8, 0x67

    #@849
    aput-object v7, v2, v8

    #@84b
    .line 403
    new-array v7, v9, [Ljava/lang/String;

    #@84d
    const-string/jumbo v8, "many"

    #@850
    aput-object v8, v7, v6

    #@852
    const-string/jumbo v8, "other"

    #@855
    aput-object v8, v7, v12

    #@857
    const-string/jumbo v8, "other"

    #@85a
    aput-object v8, v7, v13

    #@85c
    const/16 v8, 0x68

    #@85e
    aput-object v7, v2, v8

    #@860
    .line 404
    new-array v7, v9, [Ljava/lang/String;

    #@862
    const-string/jumbo v8, "other"

    #@865
    aput-object v8, v7, v6

    #@867
    const-string/jumbo v8, "one"

    #@86a
    aput-object v8, v7, v12

    #@86c
    const-string/jumbo v8, "one"

    #@86f
    aput-object v8, v7, v13

    #@871
    const/16 v8, 0x69

    #@873
    aput-object v7, v2, v8

    #@875
    .line 405
    new-array v7, v9, [Ljava/lang/String;

    #@877
    const-string/jumbo v8, "other"

    #@87a
    aput-object v8, v7, v6

    #@87c
    const-string/jumbo v8, "few"

    #@87f
    aput-object v8, v7, v12

    #@881
    const-string/jumbo v8, "few"

    #@884
    aput-object v8, v7, v13

    #@886
    const/16 v8, 0x6a

    #@888
    aput-object v7, v2, v8

    #@88a
    .line 406
    new-array v7, v9, [Ljava/lang/String;

    #@88c
    const-string/jumbo v8, "other"

    #@88f
    aput-object v8, v7, v6

    #@891
    const-string/jumbo v8, "many"

    #@894
    aput-object v8, v7, v12

    #@896
    const-string/jumbo v8, "many"

    #@899
    aput-object v8, v7, v13

    #@89b
    const/16 v8, 0x6b

    #@89d
    aput-object v7, v2, v8

    #@89f
    .line 407
    new-array v7, v9, [Ljava/lang/String;

    #@8a1
    const-string/jumbo v8, "other"

    #@8a4
    aput-object v8, v7, v6

    #@8a6
    const-string/jumbo v8, "other"

    #@8a9
    aput-object v8, v7, v12

    #@8ab
    const-string/jumbo v8, "other"

    #@8ae
    aput-object v8, v7, v13

    #@8b0
    const/16 v8, 0x6c

    #@8b2
    aput-object v7, v2, v8

    #@8b4
    .line 409
    new-array v7, v13, [Ljava/lang/String;

    #@8b6
    const-string/jumbo v8, "locales"

    #@8b9
    aput-object v8, v7, v6

    #@8bb
    const-string/jumbo v8, "lt ru uk"

    #@8be
    aput-object v8, v7, v12

    #@8c0
    const/16 v8, 0x6d

    #@8c2
    aput-object v7, v2, v8

    #@8c4
    .line 410
    new-array v7, v9, [Ljava/lang/String;

    #@8c6
    const-string/jumbo v8, "one"

    #@8c9
    aput-object v8, v7, v6

    #@8cb
    const-string/jumbo v8, "one"

    #@8ce
    aput-object v8, v7, v12

    #@8d0
    const-string/jumbo v8, "one"

    #@8d3
    aput-object v8, v7, v13

    #@8d5
    const/16 v8, 0x6e

    #@8d7
    aput-object v7, v2, v8

    #@8d9
    .line 411
    new-array v7, v9, [Ljava/lang/String;

    #@8db
    const-string/jumbo v8, "one"

    #@8de
    aput-object v8, v7, v6

    #@8e0
    const-string/jumbo v8, "few"

    #@8e3
    aput-object v8, v7, v12

    #@8e5
    const-string/jumbo v8, "few"

    #@8e8
    aput-object v8, v7, v13

    #@8ea
    const/16 v8, 0x6f

    #@8ec
    aput-object v7, v2, v8

    #@8ee
    .line 412
    new-array v7, v9, [Ljava/lang/String;

    #@8f0
    const-string/jumbo v8, "one"

    #@8f3
    aput-object v8, v7, v6

    #@8f5
    const-string/jumbo v8, "many"

    #@8f8
    aput-object v8, v7, v12

    #@8fa
    const-string/jumbo v8, "many"

    #@8fd
    aput-object v8, v7, v13

    #@8ff
    const/16 v8, 0x70

    #@901
    aput-object v7, v2, v8

    #@903
    .line 413
    new-array v7, v9, [Ljava/lang/String;

    #@905
    const-string/jumbo v8, "one"

    #@908
    aput-object v8, v7, v6

    #@90a
    const-string/jumbo v8, "other"

    #@90d
    aput-object v8, v7, v12

    #@90f
    const-string/jumbo v8, "other"

    #@912
    aput-object v8, v7, v13

    #@914
    const/16 v8, 0x71

    #@916
    aput-object v7, v2, v8

    #@918
    .line 414
    new-array v7, v9, [Ljava/lang/String;

    #@91a
    const-string/jumbo v8, "few"

    #@91d
    aput-object v8, v7, v6

    #@91f
    const-string/jumbo v8, "one"

    #@922
    aput-object v8, v7, v12

    #@924
    const-string/jumbo v8, "one"

    #@927
    aput-object v8, v7, v13

    #@929
    const/16 v8, 0x72

    #@92b
    aput-object v7, v2, v8

    #@92d
    .line 415
    new-array v7, v9, [Ljava/lang/String;

    #@92f
    const-string/jumbo v8, "few"

    #@932
    aput-object v8, v7, v6

    #@934
    const-string/jumbo v8, "few"

    #@937
    aput-object v8, v7, v12

    #@939
    const-string/jumbo v8, "few"

    #@93c
    aput-object v8, v7, v13

    #@93e
    const/16 v8, 0x73

    #@940
    aput-object v7, v2, v8

    #@942
    .line 416
    new-array v7, v9, [Ljava/lang/String;

    #@944
    const-string/jumbo v8, "few"

    #@947
    aput-object v8, v7, v6

    #@949
    const-string/jumbo v8, "many"

    #@94c
    aput-object v8, v7, v12

    #@94e
    const-string/jumbo v8, "many"

    #@951
    aput-object v8, v7, v13

    #@953
    const/16 v8, 0x74

    #@955
    aput-object v7, v2, v8

    #@957
    .line 417
    new-array v7, v9, [Ljava/lang/String;

    #@959
    const-string/jumbo v8, "few"

    #@95c
    aput-object v8, v7, v6

    #@95e
    const-string/jumbo v8, "other"

    #@961
    aput-object v8, v7, v12

    #@963
    const-string/jumbo v8, "other"

    #@966
    aput-object v8, v7, v13

    #@968
    const/16 v8, 0x75

    #@96a
    aput-object v7, v2, v8

    #@96c
    .line 418
    new-array v7, v9, [Ljava/lang/String;

    #@96e
    const-string/jumbo v8, "many"

    #@971
    aput-object v8, v7, v6

    #@973
    const-string/jumbo v8, "one"

    #@976
    aput-object v8, v7, v12

    #@978
    const-string/jumbo v8, "one"

    #@97b
    aput-object v8, v7, v13

    #@97d
    const/16 v8, 0x76

    #@97f
    aput-object v7, v2, v8

    #@981
    .line 419
    new-array v7, v9, [Ljava/lang/String;

    #@983
    const-string/jumbo v8, "many"

    #@986
    aput-object v8, v7, v6

    #@988
    const-string/jumbo v8, "few"

    #@98b
    aput-object v8, v7, v12

    #@98d
    const-string/jumbo v8, "few"

    #@990
    aput-object v8, v7, v13

    #@992
    const/16 v8, 0x77

    #@994
    aput-object v7, v2, v8

    #@996
    .line 420
    new-array v7, v9, [Ljava/lang/String;

    #@998
    const-string/jumbo v8, "many"

    #@99b
    aput-object v8, v7, v6

    #@99d
    const-string/jumbo v8, "many"

    #@9a0
    aput-object v8, v7, v12

    #@9a2
    const-string/jumbo v8, "many"

    #@9a5
    aput-object v8, v7, v13

    #@9a7
    const/16 v8, 0x78

    #@9a9
    aput-object v7, v2, v8

    #@9ab
    .line 421
    new-array v7, v9, [Ljava/lang/String;

    #@9ad
    const-string/jumbo v8, "many"

    #@9b0
    aput-object v8, v7, v6

    #@9b2
    const-string/jumbo v8, "other"

    #@9b5
    aput-object v8, v7, v12

    #@9b7
    const-string/jumbo v8, "other"

    #@9ba
    aput-object v8, v7, v13

    #@9bc
    const/16 v8, 0x79

    #@9be
    aput-object v7, v2, v8

    #@9c0
    .line 422
    new-array v7, v9, [Ljava/lang/String;

    #@9c2
    const-string/jumbo v8, "other"

    #@9c5
    aput-object v8, v7, v6

    #@9c7
    const-string/jumbo v8, "one"

    #@9ca
    aput-object v8, v7, v12

    #@9cc
    const-string/jumbo v8, "one"

    #@9cf
    aput-object v8, v7, v13

    #@9d1
    const/16 v8, 0x7a

    #@9d3
    aput-object v7, v2, v8

    #@9d5
    .line 423
    new-array v7, v9, [Ljava/lang/String;

    #@9d7
    const-string/jumbo v8, "other"

    #@9da
    aput-object v8, v7, v6

    #@9dc
    const-string/jumbo v8, "few"

    #@9df
    aput-object v8, v7, v12

    #@9e1
    const-string/jumbo v8, "few"

    #@9e4
    aput-object v8, v7, v13

    #@9e6
    const/16 v8, 0x7b

    #@9e8
    aput-object v7, v2, v8

    #@9ea
    .line 424
    new-array v7, v9, [Ljava/lang/String;

    #@9ec
    const-string/jumbo v8, "other"

    #@9ef
    aput-object v8, v7, v6

    #@9f1
    const-string/jumbo v8, "many"

    #@9f4
    aput-object v8, v7, v12

    #@9f6
    const-string/jumbo v8, "many"

    #@9f9
    aput-object v8, v7, v13

    #@9fb
    const/16 v8, 0x7c

    #@9fd
    aput-object v7, v2, v8

    #@9ff
    .line 425
    new-array v7, v9, [Ljava/lang/String;

    #@a01
    const-string/jumbo v8, "other"

    #@a04
    aput-object v8, v7, v6

    #@a06
    const-string/jumbo v8, "other"

    #@a09
    aput-object v8, v7, v12

    #@a0b
    const-string/jumbo v8, "other"

    #@a0e
    aput-object v8, v7, v13

    #@a10
    const/16 v8, 0x7d

    #@a12
    aput-object v7, v2, v8

    #@a14
    .line 427
    new-array v7, v13, [Ljava/lang/String;

    #@a16
    const-string/jumbo v8, "locales"

    #@a19
    aput-object v8, v7, v6

    #@a1b
    const-string/jumbo v8, "cy"

    #@a1e
    aput-object v8, v7, v12

    #@a20
    const/16 v8, 0x7e

    #@a22
    aput-object v7, v2, v8

    #@a24
    .line 428
    new-array v7, v9, [Ljava/lang/String;

    #@a26
    const-string/jumbo v8, "zero"

    #@a29
    aput-object v8, v7, v6

    #@a2b
    const-string/jumbo v8, "one"

    #@a2e
    aput-object v8, v7, v12

    #@a30
    const-string/jumbo v8, "one"

    #@a33
    aput-object v8, v7, v13

    #@a35
    const/16 v8, 0x7f

    #@a37
    aput-object v7, v2, v8

    #@a39
    .line 429
    new-array v7, v9, [Ljava/lang/String;

    #@a3b
    const-string/jumbo v8, "zero"

    #@a3e
    aput-object v8, v7, v6

    #@a40
    const-string/jumbo v8, "two"

    #@a43
    aput-object v8, v7, v12

    #@a45
    const-string/jumbo v8, "two"

    #@a48
    aput-object v8, v7, v13

    #@a4a
    const/16 v8, 0x80

    #@a4c
    aput-object v7, v2, v8

    #@a4e
    .line 430
    new-array v7, v9, [Ljava/lang/String;

    #@a50
    const-string/jumbo v8, "zero"

    #@a53
    aput-object v8, v7, v6

    #@a55
    const-string/jumbo v8, "few"

    #@a58
    aput-object v8, v7, v12

    #@a5a
    const-string/jumbo v8, "few"

    #@a5d
    aput-object v8, v7, v13

    #@a5f
    const/16 v8, 0x81

    #@a61
    aput-object v7, v2, v8

    #@a63
    .line 431
    new-array v7, v9, [Ljava/lang/String;

    #@a65
    const-string/jumbo v8, "zero"

    #@a68
    aput-object v8, v7, v6

    #@a6a
    const-string/jumbo v8, "many"

    #@a6d
    aput-object v8, v7, v12

    #@a6f
    const-string/jumbo v8, "many"

    #@a72
    aput-object v8, v7, v13

    #@a74
    const/16 v8, 0x82

    #@a76
    aput-object v7, v2, v8

    #@a78
    .line 432
    new-array v7, v9, [Ljava/lang/String;

    #@a7a
    const-string/jumbo v8, "zero"

    #@a7d
    aput-object v8, v7, v6

    #@a7f
    const-string/jumbo v8, "other"

    #@a82
    aput-object v8, v7, v12

    #@a84
    const-string/jumbo v8, "other"

    #@a87
    aput-object v8, v7, v13

    #@a89
    const/16 v8, 0x83

    #@a8b
    aput-object v7, v2, v8

    #@a8d
    .line 433
    new-array v7, v9, [Ljava/lang/String;

    #@a8f
    const-string/jumbo v8, "one"

    #@a92
    aput-object v8, v7, v6

    #@a94
    const-string/jumbo v8, "two"

    #@a97
    aput-object v8, v7, v12

    #@a99
    const-string/jumbo v8, "two"

    #@a9c
    aput-object v8, v7, v13

    #@a9e
    const/16 v8, 0x84

    #@aa0
    aput-object v7, v2, v8

    #@aa2
    .line 434
    new-array v7, v9, [Ljava/lang/String;

    #@aa4
    const-string/jumbo v8, "one"

    #@aa7
    aput-object v8, v7, v6

    #@aa9
    const-string/jumbo v8, "few"

    #@aac
    aput-object v8, v7, v12

    #@aae
    const-string/jumbo v8, "few"

    #@ab1
    aput-object v8, v7, v13

    #@ab3
    const/16 v8, 0x85

    #@ab5
    aput-object v7, v2, v8

    #@ab7
    .line 435
    new-array v7, v9, [Ljava/lang/String;

    #@ab9
    const-string/jumbo v8, "one"

    #@abc
    aput-object v8, v7, v6

    #@abe
    const-string/jumbo v8, "many"

    #@ac1
    aput-object v8, v7, v12

    #@ac3
    const-string/jumbo v8, "many"

    #@ac6
    aput-object v8, v7, v13

    #@ac8
    const/16 v8, 0x86

    #@aca
    aput-object v7, v2, v8

    #@acc
    .line 436
    new-array v7, v9, [Ljava/lang/String;

    #@ace
    const-string/jumbo v8, "one"

    #@ad1
    aput-object v8, v7, v6

    #@ad3
    const-string/jumbo v8, "other"

    #@ad6
    aput-object v8, v7, v12

    #@ad8
    const-string/jumbo v8, "other"

    #@adb
    aput-object v8, v7, v13

    #@add
    const/16 v8, 0x87

    #@adf
    aput-object v7, v2, v8

    #@ae1
    .line 437
    new-array v7, v9, [Ljava/lang/String;

    #@ae3
    const-string/jumbo v8, "two"

    #@ae6
    aput-object v8, v7, v6

    #@ae8
    const-string/jumbo v8, "few"

    #@aeb
    aput-object v8, v7, v12

    #@aed
    const-string/jumbo v8, "few"

    #@af0
    aput-object v8, v7, v13

    #@af2
    const/16 v8, 0x88

    #@af4
    aput-object v7, v2, v8

    #@af6
    .line 438
    new-array v7, v9, [Ljava/lang/String;

    #@af8
    const-string/jumbo v8, "two"

    #@afb
    aput-object v8, v7, v6

    #@afd
    const-string/jumbo v8, "many"

    #@b00
    aput-object v8, v7, v12

    #@b02
    const-string/jumbo v8, "many"

    #@b05
    aput-object v8, v7, v13

    #@b07
    const/16 v8, 0x89

    #@b09
    aput-object v7, v2, v8

    #@b0b
    .line 439
    new-array v7, v9, [Ljava/lang/String;

    #@b0d
    const-string/jumbo v8, "two"

    #@b10
    aput-object v8, v7, v6

    #@b12
    const-string/jumbo v8, "other"

    #@b15
    aput-object v8, v7, v12

    #@b17
    const-string/jumbo v8, "other"

    #@b1a
    aput-object v8, v7, v13

    #@b1c
    const/16 v8, 0x8a

    #@b1e
    aput-object v7, v2, v8

    #@b20
    .line 440
    new-array v7, v9, [Ljava/lang/String;

    #@b22
    const-string/jumbo v8, "few"

    #@b25
    aput-object v8, v7, v6

    #@b27
    const-string/jumbo v8, "many"

    #@b2a
    aput-object v8, v7, v12

    #@b2c
    const-string/jumbo v8, "many"

    #@b2f
    aput-object v8, v7, v13

    #@b31
    const/16 v8, 0x8b

    #@b33
    aput-object v7, v2, v8

    #@b35
    .line 441
    new-array v7, v9, [Ljava/lang/String;

    #@b37
    const-string/jumbo v8, "few"

    #@b3a
    aput-object v8, v7, v6

    #@b3c
    const-string/jumbo v8, "other"

    #@b3f
    aput-object v8, v7, v12

    #@b41
    const-string/jumbo v8, "other"

    #@b44
    aput-object v8, v7, v13

    #@b46
    const/16 v8, 0x8c

    #@b48
    aput-object v7, v2, v8

    #@b4a
    .line 442
    new-array v7, v9, [Ljava/lang/String;

    #@b4c
    const-string/jumbo v8, "many"

    #@b4f
    aput-object v8, v7, v6

    #@b51
    const-string/jumbo v8, "other"

    #@b54
    aput-object v8, v7, v12

    #@b56
    const-string/jumbo v8, "other"

    #@b59
    aput-object v8, v7, v13

    #@b5b
    const/16 v8, 0x8d

    #@b5d
    aput-object v7, v2, v8

    #@b5f
    .line 443
    new-array v7, v9, [Ljava/lang/String;

    #@b61
    const-string/jumbo v8, "other"

    #@b64
    aput-object v8, v7, v6

    #@b66
    const-string/jumbo v8, "one"

    #@b69
    aput-object v8, v7, v12

    #@b6b
    const-string/jumbo v8, "one"

    #@b6e
    aput-object v8, v7, v13

    #@b70
    const/16 v8, 0x8e

    #@b72
    aput-object v7, v2, v8

    #@b74
    .line 444
    new-array v7, v9, [Ljava/lang/String;

    #@b76
    const-string/jumbo v8, "other"

    #@b79
    aput-object v8, v7, v6

    #@b7b
    const-string/jumbo v8, "two"

    #@b7e
    aput-object v8, v7, v12

    #@b80
    const-string/jumbo v8, "two"

    #@b83
    aput-object v8, v7, v13

    #@b85
    const/16 v8, 0x8f

    #@b87
    aput-object v7, v2, v8

    #@b89
    .line 445
    new-array v7, v9, [Ljava/lang/String;

    #@b8b
    const-string/jumbo v8, "other"

    #@b8e
    aput-object v8, v7, v6

    #@b90
    const-string/jumbo v8, "few"

    #@b93
    aput-object v8, v7, v12

    #@b95
    const-string/jumbo v8, "few"

    #@b98
    aput-object v8, v7, v13

    #@b9a
    const/16 v8, 0x90

    #@b9c
    aput-object v7, v2, v8

    #@b9e
    .line 446
    new-array v7, v9, [Ljava/lang/String;

    #@ba0
    const-string/jumbo v8, "other"

    #@ba3
    aput-object v8, v7, v6

    #@ba5
    const-string/jumbo v8, "many"

    #@ba8
    aput-object v8, v7, v12

    #@baa
    const-string/jumbo v8, "many"

    #@bad
    aput-object v8, v7, v13

    #@baf
    const/16 v8, 0x91

    #@bb1
    aput-object v7, v2, v8

    #@bb3
    .line 447
    new-array v7, v9, [Ljava/lang/String;

    #@bb5
    const-string/jumbo v8, "other"

    #@bb8
    aput-object v8, v7, v6

    #@bba
    const-string/jumbo v8, "other"

    #@bbd
    aput-object v8, v7, v12

    #@bbf
    const-string/jumbo v8, "other"

    #@bc2
    aput-object v8, v7, v13

    #@bc4
    const/16 v8, 0x92

    #@bc6
    aput-object v7, v2, v8

    #@bc8
    .line 449
    new-array v7, v13, [Ljava/lang/String;

    #@bca
    const-string/jumbo v8, "locales"

    #@bcd
    aput-object v8, v7, v6

    #@bcf
    const-string/jumbo v8, "ar"

    #@bd2
    aput-object v8, v7, v12

    #@bd4
    const/16 v8, 0x93

    #@bd6
    aput-object v7, v2, v8

    #@bd8
    .line 450
    new-array v7, v9, [Ljava/lang/String;

    #@bda
    const-string/jumbo v8, "zero"

    #@bdd
    aput-object v8, v7, v6

    #@bdf
    const-string/jumbo v8, "one"

    #@be2
    aput-object v8, v7, v12

    #@be4
    const-string/jumbo v8, "zero"

    #@be7
    aput-object v8, v7, v13

    #@be9
    const/16 v8, 0x94

    #@beb
    aput-object v7, v2, v8

    #@bed
    .line 451
    new-array v7, v9, [Ljava/lang/String;

    #@bef
    const-string/jumbo v8, "zero"

    #@bf2
    aput-object v8, v7, v6

    #@bf4
    const-string/jumbo v8, "two"

    #@bf7
    aput-object v8, v7, v12

    #@bf9
    const-string/jumbo v8, "zero"

    #@bfc
    aput-object v8, v7, v13

    #@bfe
    const/16 v8, 0x95

    #@c00
    aput-object v7, v2, v8

    #@c02
    .line 452
    new-array v7, v9, [Ljava/lang/String;

    #@c04
    const-string/jumbo v8, "zero"

    #@c07
    aput-object v8, v7, v6

    #@c09
    const-string/jumbo v8, "few"

    #@c0c
    aput-object v8, v7, v12

    #@c0e
    const-string/jumbo v8, "few"

    #@c11
    aput-object v8, v7, v13

    #@c13
    const/16 v8, 0x96

    #@c15
    aput-object v7, v2, v8

    #@c17
    .line 453
    new-array v7, v9, [Ljava/lang/String;

    #@c19
    const-string/jumbo v8, "zero"

    #@c1c
    aput-object v8, v7, v6

    #@c1e
    const-string/jumbo v8, "many"

    #@c21
    aput-object v8, v7, v12

    #@c23
    const-string/jumbo v8, "many"

    #@c26
    aput-object v8, v7, v13

    #@c28
    const/16 v8, 0x97

    #@c2a
    aput-object v7, v2, v8

    #@c2c
    .line 454
    new-array v7, v9, [Ljava/lang/String;

    #@c2e
    const-string/jumbo v8, "zero"

    #@c31
    aput-object v8, v7, v6

    #@c33
    const-string/jumbo v8, "other"

    #@c36
    aput-object v8, v7, v12

    #@c38
    const-string/jumbo v8, "other"

    #@c3b
    aput-object v8, v7, v13

    #@c3d
    const/16 v8, 0x98

    #@c3f
    aput-object v7, v2, v8

    #@c41
    .line 455
    new-array v7, v9, [Ljava/lang/String;

    #@c43
    const-string/jumbo v8, "one"

    #@c46
    aput-object v8, v7, v6

    #@c48
    const-string/jumbo v8, "two"

    #@c4b
    aput-object v8, v7, v12

    #@c4d
    const-string/jumbo v8, "other"

    #@c50
    aput-object v8, v7, v13

    #@c52
    const/16 v8, 0x99

    #@c54
    aput-object v7, v2, v8

    #@c56
    .line 456
    new-array v7, v9, [Ljava/lang/String;

    #@c58
    const-string/jumbo v8, "one"

    #@c5b
    aput-object v8, v7, v6

    #@c5d
    const-string/jumbo v8, "few"

    #@c60
    aput-object v8, v7, v12

    #@c62
    const-string/jumbo v8, "few"

    #@c65
    aput-object v8, v7, v13

    #@c67
    const/16 v8, 0x9a

    #@c69
    aput-object v7, v2, v8

    #@c6b
    .line 457
    new-array v7, v9, [Ljava/lang/String;

    #@c6d
    const-string/jumbo v8, "one"

    #@c70
    aput-object v8, v7, v6

    #@c72
    const-string/jumbo v8, "many"

    #@c75
    aput-object v8, v7, v12

    #@c77
    const-string/jumbo v8, "many"

    #@c7a
    aput-object v8, v7, v13

    #@c7c
    const/16 v8, 0x9b

    #@c7e
    aput-object v7, v2, v8

    #@c80
    .line 458
    new-array v7, v9, [Ljava/lang/String;

    #@c82
    const-string/jumbo v8, "one"

    #@c85
    aput-object v8, v7, v6

    #@c87
    const-string/jumbo v8, "other"

    #@c8a
    aput-object v8, v7, v12

    #@c8c
    const-string/jumbo v8, "other"

    #@c8f
    aput-object v8, v7, v13

    #@c91
    const/16 v8, 0x9c

    #@c93
    aput-object v7, v2, v8

    #@c95
    .line 459
    new-array v7, v9, [Ljava/lang/String;

    #@c97
    const-string/jumbo v8, "two"

    #@c9a
    aput-object v8, v7, v6

    #@c9c
    const-string/jumbo v8, "few"

    #@c9f
    aput-object v8, v7, v12

    #@ca1
    const-string/jumbo v8, "few"

    #@ca4
    aput-object v8, v7, v13

    #@ca6
    const/16 v8, 0x9d

    #@ca8
    aput-object v7, v2, v8

    #@caa
    .line 460
    new-array v7, v9, [Ljava/lang/String;

    #@cac
    const-string/jumbo v8, "two"

    #@caf
    aput-object v8, v7, v6

    #@cb1
    const-string/jumbo v8, "many"

    #@cb4
    aput-object v8, v7, v12

    #@cb6
    const-string/jumbo v8, "many"

    #@cb9
    aput-object v8, v7, v13

    #@cbb
    const/16 v8, 0x9e

    #@cbd
    aput-object v7, v2, v8

    #@cbf
    .line 461
    new-array v7, v9, [Ljava/lang/String;

    #@cc1
    const-string/jumbo v8, "two"

    #@cc4
    aput-object v8, v7, v6

    #@cc6
    const-string/jumbo v8, "other"

    #@cc9
    aput-object v8, v7, v12

    #@ccb
    const-string/jumbo v8, "other"

    #@cce
    aput-object v8, v7, v13

    #@cd0
    const/16 v8, 0x9f

    #@cd2
    aput-object v7, v2, v8

    #@cd4
    .line 462
    new-array v7, v9, [Ljava/lang/String;

    #@cd6
    const-string/jumbo v8, "few"

    #@cd9
    aput-object v8, v7, v6

    #@cdb
    const-string/jumbo v8, "few"

    #@cde
    aput-object v8, v7, v12

    #@ce0
    const-string/jumbo v8, "few"

    #@ce3
    aput-object v8, v7, v13

    #@ce5
    const/16 v8, 0xa0

    #@ce7
    aput-object v7, v2, v8

    #@ce9
    .line 463
    new-array v7, v9, [Ljava/lang/String;

    #@ceb
    const-string/jumbo v8, "few"

    #@cee
    aput-object v8, v7, v6

    #@cf0
    const-string/jumbo v8, "many"

    #@cf3
    aput-object v8, v7, v12

    #@cf5
    const-string/jumbo v8, "many"

    #@cf8
    aput-object v8, v7, v13

    #@cfa
    const/16 v8, 0xa1

    #@cfc
    aput-object v7, v2, v8

    #@cfe
    .line 464
    new-array v7, v9, [Ljava/lang/String;

    #@d00
    const-string/jumbo v8, "few"

    #@d03
    aput-object v8, v7, v6

    #@d05
    const-string/jumbo v8, "other"

    #@d08
    aput-object v8, v7, v12

    #@d0a
    const-string/jumbo v8, "other"

    #@d0d
    aput-object v8, v7, v13

    #@d0f
    const/16 v8, 0xa2

    #@d11
    aput-object v7, v2, v8

    #@d13
    .line 465
    new-array v7, v9, [Ljava/lang/String;

    #@d15
    const-string/jumbo v8, "many"

    #@d18
    aput-object v8, v7, v6

    #@d1a
    const-string/jumbo v8, "few"

    #@d1d
    aput-object v8, v7, v12

    #@d1f
    const-string/jumbo v8, "few"

    #@d22
    aput-object v8, v7, v13

    #@d24
    const/16 v8, 0xa3

    #@d26
    aput-object v7, v2, v8

    #@d28
    .line 466
    new-array v7, v9, [Ljava/lang/String;

    #@d2a
    const-string/jumbo v8, "many"

    #@d2d
    aput-object v8, v7, v6

    #@d2f
    const-string/jumbo v8, "many"

    #@d32
    aput-object v8, v7, v12

    #@d34
    const-string/jumbo v8, "many"

    #@d37
    aput-object v8, v7, v13

    #@d39
    const/16 v8, 0xa4

    #@d3b
    aput-object v7, v2, v8

    #@d3d
    .line 467
    new-array v7, v9, [Ljava/lang/String;

    #@d3f
    const-string/jumbo v8, "many"

    #@d42
    aput-object v8, v7, v6

    #@d44
    const-string/jumbo v8, "other"

    #@d47
    aput-object v8, v7, v12

    #@d49
    const-string/jumbo v8, "other"

    #@d4c
    aput-object v8, v7, v13

    #@d4e
    const/16 v8, 0xa5

    #@d50
    aput-object v7, v2, v8

    #@d52
    .line 468
    new-array v7, v9, [Ljava/lang/String;

    #@d54
    const-string/jumbo v8, "other"

    #@d57
    aput-object v8, v7, v6

    #@d59
    const-string/jumbo v8, "one"

    #@d5c
    aput-object v8, v7, v12

    #@d5e
    const-string/jumbo v8, "other"

    #@d61
    aput-object v8, v7, v13

    #@d63
    const/16 v8, 0xa6

    #@d65
    aput-object v7, v2, v8

    #@d67
    .line 469
    new-array v7, v9, [Ljava/lang/String;

    #@d69
    const-string/jumbo v8, "other"

    #@d6c
    aput-object v8, v7, v6

    #@d6e
    const-string/jumbo v8, "two"

    #@d71
    aput-object v8, v7, v12

    #@d73
    const-string/jumbo v8, "other"

    #@d76
    aput-object v8, v7, v13

    #@d78
    const/16 v8, 0xa7

    #@d7a
    aput-object v7, v2, v8

    #@d7c
    .line 470
    new-array v7, v9, [Ljava/lang/String;

    #@d7e
    const-string/jumbo v8, "other"

    #@d81
    aput-object v8, v7, v6

    #@d83
    const-string/jumbo v8, "few"

    #@d86
    aput-object v8, v7, v12

    #@d88
    const-string/jumbo v8, "few"

    #@d8b
    aput-object v8, v7, v13

    #@d8d
    const/16 v8, 0xa8

    #@d8f
    aput-object v7, v2, v8

    #@d91
    .line 471
    new-array v7, v9, [Ljava/lang/String;

    #@d93
    const-string/jumbo v8, "other"

    #@d96
    aput-object v8, v7, v6

    #@d98
    const-string/jumbo v8, "many"

    #@d9b
    aput-object v8, v7, v12

    #@d9d
    const-string/jumbo v8, "many"

    #@da0
    aput-object v8, v7, v13

    #@da2
    const/16 v8, 0xa9

    #@da4
    aput-object v7, v2, v8

    #@da6
    .line 472
    new-array v7, v9, [Ljava/lang/String;

    #@da8
    const-string/jumbo v8, "other"

    #@dab
    aput-object v8, v7, v6

    #@dad
    const-string/jumbo v8, "other"

    #@db0
    aput-object v8, v7, v12

    #@db2
    const-string/jumbo v8, "other"

    #@db5
    aput-object v8, v7, v13

    #@db7
    const/16 v8, 0xaa

    #@db9
    aput-object v7, v2, v8

    #@dbb
    .line 474
    .local v2, "pluralRangeData":[[Ljava/lang/String;
    const/4 v3, 0x0

    #@dbc
    .line 475
    .local v3, "pr":Landroid/icu/text/PluralRanges;
    const/4 v1, 0x0

    #@dbd
    .line 476
    .local v1, "locales":[Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    #@dbf
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@dc2
    .line 477
    .local v5, "tempLocaleIdToPluralRanges":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/ibm/icu/text/PluralRanges;>;"
    array-length v9, v2

    #@dc3
    move v8, v6

    #@dc4
    .end local v1    # "locales":[Ljava/lang/String;
    .end local v3    # "pr":Landroid/icu/text/PluralRanges;
    :goto_0
    if-ge v8, v9, :cond_2

    #@dc6
    aget-object v4, v2, v8

    #@dc8
    .line 478
    .local v4, "row":[Ljava/lang/String;
    aget-object v7, v4, v6

    #@dca
    const-string/jumbo v10, "locales"

    #@dcd
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@dd0
    move-result v7

    #@dd1
    if-eqz v7, :cond_1

    #@dd3
    .line 479
    if-eqz v3, :cond_0

    #@dd5
    .line 480
    invoke-virtual {v3}, Landroid/icu/text/PluralRanges;->freeze()Landroid/icu/text/PluralRanges;

    #@dd8
    .line 481
    array-length v10, v1

    #@dd9
    move v7, v6

    #@dda
    :goto_1
    if-ge v7, v10, :cond_0

    #@ddc
    aget-object v0, v1, v7

    #@dde
    .line 482
    .local v0, "locale":Ljava/lang/String;
    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@de1
    .line 481
    add-int/lit8 v7, v7, 0x1

    #@de3
    goto :goto_1

    #@de4
    .line 485
    .end local v0    # "locale":Ljava/lang/String;
    :cond_0
    aget-object v7, v4, v12

    #@de6
    const-string/jumbo v10, " "

    #@de9
    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@dec
    move-result-object v1

    #@ded
    .line 486
    .local v1, "locales":[Ljava/lang/String;
    new-instance v3, Landroid/icu/text/PluralRanges;

    #@def
    invoke-direct {v3}, Landroid/icu/text/PluralRanges;-><init>()V

    #@df2
    .line 477
    .end local v1    # "locales":[Ljava/lang/String;
    :goto_2
    add-int/lit8 v7, v8, 0x1

    #@df4
    move v8, v7

    #@df5
    goto :goto_0

    #@df6
    .line 489
    :cond_1
    aget-object v7, v4, v6

    #@df8
    invoke-static {v7}, Landroid/icu/text/PluralRules$StandardPluralCategories;->valueOf(Ljava/lang/String;)Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@dfb
    move-result-object v7

    #@dfc
    .line 490
    aget-object v10, v4, v12

    #@dfe
    invoke-static {v10}, Landroid/icu/text/PluralRules$StandardPluralCategories;->valueOf(Ljava/lang/String;)Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@e01
    move-result-object v10

    #@e02
    .line 491
    aget-object v11, v4, v13

    #@e04
    invoke-static {v11}, Landroid/icu/text/PluralRules$StandardPluralCategories;->valueOf(Ljava/lang/String;)Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@e07
    move-result-object v11

    #@e08
    .line 488
    invoke-virtual {v3, v7, v10, v11}, Landroid/icu/text/PluralRanges;->add(Landroid/icu/text/PluralRules$StandardPluralCategories;Landroid/icu/text/PluralRules$StandardPluralCategories;Landroid/icu/text/PluralRules$StandardPluralCategories;)V

    #@e0b
    goto :goto_2

    #@e0c
    .line 495
    .end local v4    # "row":[Ljava/lang/String;
    :cond_2
    array-length v7, v1

    #@e0d
    :goto_3
    if-ge v6, v7, :cond_3

    #@e0f
    aget-object v0, v1, v6

    #@e11
    .line 496
    .restart local v0    # "locale":Ljava/lang/String;
    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e14
    .line 495
    add-int/lit8 v6, v6, 0x1

    #@e16
    goto :goto_3

    #@e17
    .line 499
    .end local v0    # "locale":Ljava/lang/String;
    :cond_3
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@e1a
    move-result-object v6

    #@e1b
    sput-object v6, Landroid/icu/impl/PluralRulesLoader;->localeIdToPluralRanges:Ljava/util/Map;

    #@e1d
    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Landroid/icu/text/PluralRules$Factory;-><init>()V

    #@3
    .line 41
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    #@a
    .line 40
    return-void
.end method

.method private checkBuildRulesIdMaps()V
    .locals 12

    #@0
    .prologue
    .line 104
    monitor-enter p0

    #@1
    .line 105
    :try_start_0
    iget-object v11, p0, Landroid/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v11, :cond_1

    #@5
    const/4 v2, 0x1

    #@6
    .local v2, "haveMap":Z
    :goto_0
    monitor-exit p0

    #@7
    .line 107
    if-nez v2, :cond_5

    #@9
    .line 112
    :try_start_1
    invoke-virtual {p0}, Landroid/icu/impl/PluralRulesLoader;->getPluralBundle()Landroid/icu/util/UResourceBundle;

    #@c
    move-result-object v6

    #@d
    .line 114
    .local v6, "pluralb":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v11, "locales"

    #@10
    invoke-virtual {v6, v11}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@13
    move-result-object v5

    #@14
    .line 117
    .local v5, "localeb":Landroid/icu/util/UResourceBundle;
    new-instance v7, Ljava/util/TreeMap;

    #@16
    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    #@19
    .line 119
    .local v7, "tempLocaleIdToCardinalRulesId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Ljava/util/HashMap;

    #@1b
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    #@1e
    .line 121
    .local v9, "tempRulesIdToEquivalentULocale":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/util/ULocale;>;"
    const/4 v3, 0x0

    #@1f
    .local v3, "i":I
    :goto_1
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getSize()I

    #@22
    move-result v11

    #@23
    if-ge v3, v11, :cond_2

    #@25
    .line 122
    invoke-virtual {v5, v3}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@28
    move-result-object v0

    #@29
    .line 123
    .local v0, "b":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    .line 124
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@30
    move-result-object v11

    #@31
    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@34
    move-result-object v10

    #@35
    .line 125
    .local v10, "value":Ljava/lang/String;
    invoke-interface {v7, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 127
    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@3b
    move-result v11

    #@3c
    if-nez v11, :cond_0

    #@3e
    .line 128
    new-instance v11, Landroid/icu/util/ULocale;

    #@40
    invoke-direct {v11, v4}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@43
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    #@46
    .line 121
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@48
    goto :goto_1

    #@49
    .line 105
    .end local v0    # "b":Landroid/icu/util/UResourceBundle;
    .end local v2    # "haveMap":Z
    .end local v3    # "i":I
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "localeb":Landroid/icu/util/UResourceBundle;
    .end local v6    # "pluralb":Landroid/icu/util/UResourceBundle;
    .end local v7    # "tempLocaleIdToCardinalRulesId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "tempRulesIdToEquivalentULocale":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/util/ULocale;>;"
    .end local v10    # "value":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    #@4a
    .restart local v2    # "haveMap":Z
    goto :goto_0

    #@4b
    .line 104
    .end local v2    # "haveMap":Z
    :catchall_0
    move-exception v11

    #@4c
    monitor-exit p0

    #@4d
    throw v11

    #@4e
    .line 133
    .restart local v2    # "haveMap":Z
    .restart local v3    # "i":I
    .restart local v5    # "localeb":Landroid/icu/util/UResourceBundle;
    .restart local v6    # "pluralb":Landroid/icu/util/UResourceBundle;
    .restart local v7    # "tempLocaleIdToCardinalRulesId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "tempRulesIdToEquivalentULocale":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/util/ULocale;>;"
    :cond_2
    :try_start_2
    const-string/jumbo v11, "locales_ordinals"

    #@51
    invoke-virtual {v6, v11}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@54
    move-result-object v5

    #@55
    .line 134
    new-instance v8, Ljava/util/TreeMap;

    #@57
    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    #@5a
    .line 135
    .local v8, "tempLocaleIdToOrdinalRulesId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@5b
    :goto_2
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getSize()I

    #@5e
    move-result v11

    #@5f
    if-ge v3, v11, :cond_3

    #@61
    .line 136
    invoke-virtual {v5, v3}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@64
    move-result-object v0

    #@65
    .line 137
    .restart local v0    # "b":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@68
    move-result-object v4

    #@69
    .line 138
    .restart local v4    # "id":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@6c
    move-result-object v11

    #@6d
    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@70
    move-result-object v10

    #@71
    .line 139
    .restart local v10    # "value":Ljava/lang/String;
    invoke-interface {v8, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_0

    #@74
    .line 135
    add-int/lit8 v3, v3, 0x1

    #@76
    goto :goto_2

    #@77
    .line 141
    .end local v0    # "b":Landroid/icu/util/UResourceBundle;
    .end local v3    # "i":I
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "localeb":Landroid/icu/util/UResourceBundle;
    .end local v6    # "pluralb":Landroid/icu/util/UResourceBundle;
    .end local v7    # "tempLocaleIdToCardinalRulesId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "tempLocaleIdToOrdinalRulesId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "tempRulesIdToEquivalentULocale":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/util/ULocale;>;"
    .end local v10    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@78
    .line 143
    .local v1, "e":Ljava/util/MissingResourceException;
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@7b
    move-result-object v7

    #@7c
    .line 144
    .restart local v7    # "tempLocaleIdToCardinalRulesId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@7f
    move-result-object v8

    #@80
    .line 145
    .restart local v8    # "tempLocaleIdToOrdinalRulesId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@83
    move-result-object v9

    #@84
    .line 148
    .end local v1    # "e":Ljava/util/MissingResourceException;
    .restart local v9    # "tempRulesIdToEquivalentULocale":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/util/ULocale;>;"
    :cond_3
    monitor-enter p0

    #@85
    .line 149
    :try_start_3
    iget-object v11, p0, Landroid/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    #@87
    if-nez v11, :cond_4

    #@89
    .line 150
    iput-object v7, p0, Landroid/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    #@8b
    .line 151
    iput-object v8, p0, Landroid/icu/impl/PluralRulesLoader;->localeIdToOrdinalRulesId:Ljava/util/Map;

    #@8d
    .line 152
    iput-object v9, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToEquivalentULocale:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@8f
    :cond_4
    monitor-exit p0

    #@90
    .line 102
    .end local v7    # "tempLocaleIdToCardinalRulesId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "tempLocaleIdToOrdinalRulesId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "tempRulesIdToEquivalentULocale":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/util/ULocale;>;"
    :cond_5
    return-void

    #@91
    .line 148
    .restart local v7    # "tempLocaleIdToCardinalRulesId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "tempLocaleIdToOrdinalRulesId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "tempRulesIdToEquivalentULocale":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/util/ULocale;>;"
    :catchall_1
    move-exception v11

    #@92
    monitor-exit p0

    #@93
    throw v11
.end method

.method private getLocaleIdToRulesIdMap(Landroid/icu/text/PluralRules$PluralType;)Ljava/util/Map;
    .locals 1
    .param p1, "type"    # Landroid/icu/text/PluralRules$PluralType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/PluralRules$PluralType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Landroid/icu/impl/PluralRulesLoader;->checkBuildRulesIdMaps()V

    #@3
    .line 86
    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    #@5
    if-ne p1, v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    #@9
    :goto_0
    return-object v0

    #@a
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/PluralRulesLoader;->localeIdToOrdinalRulesId:Ljava/util/Map;

    #@c
    goto :goto_0
.end method

.method private getRulesIdToEquivalentULocaleMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Landroid/icu/impl/PluralRulesLoader;->checkBuildRulesIdMaps()V

    #@3
    .line 94
    iget-object v0, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToEquivalentULocale:Ljava/util/Map;

    #@5
    return-object v0
.end method


# virtual methods
.method public forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;
    .locals 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "type"    # Landroid/icu/text/PluralRules$PluralType;

    #@0
    .prologue
    .line 237
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/PluralRulesLoader;->getRulesIdForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 238
    .local v1, "rulesId":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@6
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_1

    #@10
    .line 239
    :cond_0
    sget-object v2, Landroid/icu/text/PluralRules;->DEFAULT:Landroid/icu/text/PluralRules;

    #@12
    return-object v2

    #@13
    .line 241
    :cond_1
    invoke-virtual {p0, v1}, Landroid/icu/impl/PluralRulesLoader;->getRulesForRulesId(Ljava/lang/String;)Landroid/icu/text/PluralRules;

    #@16
    move-result-object v0

    #@17
    .line 242
    .local v0, "rules":Landroid/icu/text/PluralRules;
    if-nez v0, :cond_2

    #@19
    .line 243
    sget-object v0, Landroid/icu/text/PluralRules;->DEFAULT:Landroid/icu/text/PluralRules;

    #@1b
    .line 245
    :cond_2
    return-object v0
.end method

.method public getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 6

    #@0
    .prologue
    .line 48
    sget-object v5, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    #@2
    invoke-direct {p0, v5}, Landroid/icu/impl/PluralRulesLoader;->getLocaleIdToRulesIdMap(Landroid/icu/text/PluralRules$PluralType;)Ljava/util/Map;

    #@5
    move-result-object v5

    #@6
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@9
    move-result-object v1

    #@a
    .line 49
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    #@d
    move-result v5

    #@e
    new-array v2, v5, [Landroid/icu/util/ULocale;

    #@10
    .line 50
    .local v2, "locales":[Landroid/icu/util/ULocale;
    const/4 v3, 0x0

    #@11
    .line 51
    .local v3, "n":I
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v0

    #@15
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_0

    #@1b
    .line 52
    add-int/lit8 v4, v3, 0x1

    #@1d
    .end local v3    # "n":I
    .local v4, "n":I
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v5

    #@21
    check-cast v5, Ljava/lang/String;

    #@23
    invoke-static {v5}, Landroid/icu/util/ULocale;->createCanonical(Ljava/lang/String;)Landroid/icu/util/ULocale;

    #@26
    move-result-object v5

    #@27
    aput-object v5, v2, v3

    #@29
    move v3, v4

    #@2a
    .end local v4    # "n":I
    .restart local v3    # "n":I
    goto :goto_0

    #@2b
    .line 54
    :cond_0
    return-object v2
.end method

.method public getFunctionalEquivalent(Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .locals 6
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "isAvailable"    # [Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 61
    if-eqz p2, :cond_0

    #@3
    array-length v4, p2

    #@4
    if-lez v4, :cond_0

    #@6
    .line 62
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    invoke-static {v4}, Landroid/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 63
    .local v1, "localeId":Ljava/lang/String;
    sget-object v4, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    #@10
    invoke-direct {p0, v4}, Landroid/icu/impl/PluralRulesLoader;->getLocaleIdToRulesIdMap(Landroid/icu/text/PluralRules$PluralType;)Ljava/util/Map;

    #@13
    move-result-object v0

    #@14
    .line 64
    .local v0, "idMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@17
    move-result v4

    #@18
    aput-boolean v4, p2, v5

    #@1a
    .line 67
    .end local v0    # "idMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "localeId":Ljava/lang/String;
    :cond_0
    sget-object v4, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    #@1c
    invoke-virtual {p0, p1, v4}, Landroid/icu/impl/PluralRulesLoader;->getRulesIdForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    .line 68
    .local v3, "rulesId":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@22
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@29
    move-result v4

    #@2a
    if-nez v4, :cond_2

    #@2c
    .line 69
    :cond_1
    sget-object v4, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@2e
    return-object v4

    #@2f
    .line 72
    :cond_2
    invoke-direct {p0}, Landroid/icu/impl/PluralRulesLoader;->getRulesIdToEquivalentULocaleMap()Ljava/util/Map;

    #@32
    move-result-object v4

    #@33
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    move-result-object v2

    #@37
    check-cast v2, Landroid/icu/util/ULocale;

    #@39
    .line 74
    .local v2, "result":Landroid/icu/util/ULocale;
    if-nez v2, :cond_3

    #@3b
    .line 75
    sget-object v4, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@3d
    return-object v4

    #@3e
    .line 78
    :cond_3
    return-object v2
.end method

.method public getPluralBundle()Landroid/icu/util/UResourceBundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    #@0
    .prologue
    .line 228
    const-string/jumbo v0, "android/icu/impl/data/icudt55b"

    #@3
    const-string/jumbo v1, "plurals"

    #@6
    .line 229
    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@8
    const/4 v3, 0x1

    #@9
    .line 227
    invoke-static {v0, v1, v2, v3}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getPluralRanges(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRanges;
    .locals 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 265
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    invoke-static {v3}, Landroid/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 267
    .local v1, "localeId":Ljava/lang/String;
    :goto_0
    sget-object v3, Landroid/icu/impl/PluralRulesLoader;->localeIdToPluralRanges:Ljava/util/Map;

    #@a
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Landroid/icu/text/PluralRanges;

    #@10
    .local v2, "result":Landroid/icu/text/PluralRanges;
    if-nez v2, :cond_0

    #@12
    .line 268
    const-string/jumbo v3, "_"

    #@15
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@18
    move-result v0

    #@19
    .line 269
    .local v0, "ix":I
    const/4 v3, -0x1

    #@1a
    if-ne v0, v3, :cond_1

    #@1c
    .line 270
    sget-object v2, Landroid/icu/impl/PluralRulesLoader;->UNKNOWN_RANGE:Landroid/icu/text/PluralRanges;

    #@1e
    .line 275
    .end local v0    # "ix":I
    :cond_0
    return-object v2

    #@1f
    .line 273
    .restart local v0    # "ix":I
    :cond_1
    const/4 v3, 0x0

    #@20
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    goto :goto_0
.end method

.method public getRulesForRulesId(Ljava/lang/String;)Landroid/icu/text/PluralRules;
    .locals 12
    .param p1, "rulesId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 183
    const/4 v6, 0x0

    #@1
    .line 185
    .local v6, "rules":Landroid/icu/text/PluralRules;
    iget-object v11, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    #@3
    monitor-enter v11

    #@4
    .line 186
    :try_start_0
    iget-object v10, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    #@6
    invoke-interface {v10, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v3

    #@a
    .line 187
    .local v3, "hasRules":Z
    if-eqz v3, :cond_0

    #@c
    .line 188
    iget-object v10, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    #@e
    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v6

    #@12
    .end local v6    # "rules":Landroid/icu/text/PluralRules;
    check-cast v6, Landroid/icu/text/PluralRules;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit v11

    #@15
    .line 191
    if-nez v3, :cond_3

    #@17
    .line 193
    :try_start_1
    invoke-virtual {p0}, Landroid/icu/impl/PluralRulesLoader;->getPluralBundle()Landroid/icu/util/UResourceBundle;

    #@1a
    move-result-object v5

    #@1b
    .line 194
    .local v5, "pluralb":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v10, "rules"

    #@1e
    invoke-virtual {v5, v10}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@21
    move-result-object v7

    #@22
    .line 195
    .local v7, "rulesb":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v7, p1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@25
    move-result-object v9

    #@26
    .line 197
    .local v9, "setb":Landroid/icu/util/UResourceBundle;
    new-instance v8, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    .line 198
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    #@2c
    .local v4, "i":I
    :goto_0
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getSize()I

    #@2f
    move-result v10

    #@30
    if-ge v4, v10, :cond_2

    #@32
    .line 199
    invoke-virtual {v9, v4}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@35
    move-result-object v0

    #@36
    .line 200
    .local v0, "b":Landroid/icu/util/UResourceBundle;
    if-lez v4, :cond_1

    #@38
    .line 201
    const-string/jumbo v10, "; "

    #@3b
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    .line 203
    :cond_1
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@41
    move-result-object v10

    #@42
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 204
    const-string/jumbo v10, ": "

    #@48
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 205
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@4e
    move-result-object v10

    #@4f
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@52
    .line 198
    add-int/lit8 v4, v4, 0x1

    #@54
    goto :goto_0

    #@55
    .line 185
    .end local v0    # "b":Landroid/icu/util/UResourceBundle;
    .end local v3    # "hasRules":Z
    .end local v4    # "i":I
    .end local v5    # "pluralb":Landroid/icu/util/UResourceBundle;
    .end local v7    # "rulesb":Landroid/icu/util/UResourceBundle;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "setb":Landroid/icu/util/UResourceBundle;
    :catchall_0
    move-exception v10

    #@56
    monitor-exit v11

    #@57
    throw v10

    #@58
    .line 207
    .restart local v3    # "hasRules":Z
    .restart local v4    # "i":I
    .restart local v5    # "pluralb":Landroid/icu/util/UResourceBundle;
    .restart local v7    # "rulesb":Landroid/icu/util/UResourceBundle;
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    .restart local v9    # "setb":Landroid/icu/util/UResourceBundle;
    :cond_2
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v10

    #@5c
    invoke-static {v10}, Landroid/icu/text/PluralRules;->parseDescription(Ljava/lang/String;)Landroid/icu/text/PluralRules;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    #@5f
    move-result-object v6

    #@60
    .line 211
    .end local v4    # "i":I
    .end local v5    # "pluralb":Landroid/icu/util/UResourceBundle;
    .end local v7    # "rulesb":Landroid/icu/util/UResourceBundle;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "setb":Landroid/icu/util/UResourceBundle;
    :goto_1
    iget-object v11, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    #@62
    monitor-enter v11

    #@63
    .line 212
    :try_start_3
    iget-object v10, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    #@65
    invoke-interface {v10, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@68
    move-result v10

    #@69
    if-eqz v10, :cond_4

    #@6b
    .line 213
    iget-object v10, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    #@6d
    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@70
    move-result-object v6

    #@71
    check-cast v6, Landroid/icu/text/PluralRules;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@73
    :goto_2
    monitor-exit v11

    #@74
    .line 219
    :cond_3
    return-object v6

    #@75
    .line 215
    :cond_4
    :try_start_4
    iget-object v10, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    #@77
    invoke-interface {v10, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@7a
    goto :goto_2

    #@7b
    .line 211
    :catchall_1
    move-exception v10

    #@7c
    monitor-exit v11

    #@7d
    throw v10

    #@7e
    .line 208
    :catch_0
    move-exception v1

    #@7f
    .local v1, "e":Ljava/text/ParseException;
    goto :goto_1

    #@80
    .line 209
    .end local v1    # "e":Ljava/text/ParseException;
    :catch_1
    move-exception v2

    #@81
    .local v2, "e":Ljava/util/MissingResourceException;
    goto :goto_1
.end method

.method public getRulesIdForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Ljava/lang/String;
    .locals 5
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "type"    # Landroid/icu/text/PluralRules$PluralType;

    #@0
    .prologue
    .line 164
    invoke-direct {p0, p2}, Landroid/icu/impl/PluralRulesLoader;->getLocaleIdToRulesIdMap(Landroid/icu/text/PluralRules$PluralType;)Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    .line 165
    .local v0, "idMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@7
    move-result-object v4

    #@8
    invoke-static {v4}, Landroid/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 166
    .local v2, "localeId":Ljava/lang/String;
    const/4 v3, 0x0

    #@d
    .line 167
    :goto_0
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Ljava/lang/String;

    #@13
    .local v3, "rulesId":Ljava/lang/String;
    if-nez v3, :cond_0

    #@15
    .line 168
    const-string/jumbo v4, "_"

    #@18
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@1b
    move-result v1

    #@1c
    .line 169
    .local v1, "ix":I
    const/4 v4, -0x1

    #@1d
    if-ne v1, v4, :cond_1

    #@1f
    .line 174
    .end local v1    # "ix":I
    :cond_0
    return-object v3

    #@20
    .line 172
    .restart local v1    # "ix":I
    :cond_1
    const/4 v4, 0x0

    #@21
    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    goto :goto_0
.end method

.method public hasOverride(Landroid/icu/util/ULocale;)Z
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 258
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isPluralRangesAvailable(Landroid/icu/util/ULocale;)Z
    .locals 2
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 279
    invoke-virtual {p0, p1}, Landroid/icu/impl/PluralRulesLoader;->getPluralRanges(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRanges;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/impl/PluralRulesLoader;->UNKNOWN_RANGE:Landroid/icu/text/PluralRanges;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method
