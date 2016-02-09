.class public Lorg/ccil/cowan/tagsoup/HTMLScanner;
.super Ljava/lang/Object;
.source "HTMLScanner.java"

# interfaces
.implements Lorg/ccil/cowan/tagsoup/Scanner;
.implements Lorg/xml/sax/Locator;


# static fields
.field private static final A_ADUP:I = 0x1

.field private static final A_ADUP_SAVE:I = 0x2

.field private static final A_ADUP_STAGC:I = 0x3

.field private static final A_ANAME:I = 0x4

.field private static final A_ANAME_ADUP:I = 0x5

.field private static final A_ANAME_ADUP_STAGC:I = 0x6

.field private static final A_AVAL:I = 0x7

.field private static final A_AVAL_STAGC:I = 0x8

.field private static final A_CDATA:I = 0x9

.field private static final A_CMNT:I = 0xa

.field private static final A_DECL:I = 0xb

.field private static final A_EMPTYTAG:I = 0xc

.field private static final A_ENTITY:I = 0xd

.field private static final A_ENTITY_START:I = 0xe

.field private static final A_ETAG:I = 0xf

.field private static final A_GI:I = 0x10

.field private static final A_GI_STAGC:I = 0x11

.field private static final A_LT:I = 0x12

.field private static final A_LT_PCDATA:I = 0x13

.field private static final A_MINUS:I = 0x14

.field private static final A_MINUS2:I = 0x15

.field private static final A_MINUS3:I = 0x16

.field private static final A_PCDATA:I = 0x17

.field private static final A_PI:I = 0x18

.field private static final A_PITARGET:I = 0x19

.field private static final A_PITARGET_PI:I = 0x1a

.field private static final A_SAVE:I = 0x1b

.field private static final A_SKIP:I = 0x1c

.field private static final A_SP:I = 0x1d

.field private static final A_STAGC:I = 0x1e

.field private static final A_UNGET:I = 0x1f

.field private static final A_UNSAVE_PCDATA:I = 0x20

.field private static final S_ANAME:I = 0x1

.field private static final S_APOS:I = 0x2

.field private static final S_AVAL:I = 0x3

.field private static final S_BB:I = 0x4

.field private static final S_BBC:I = 0x5

.field private static final S_BBCD:I = 0x6

.field private static final S_BBCDA:I = 0x7

.field private static final S_BBCDAT:I = 0x8

.field private static final S_BBCDATA:I = 0x9

.field private static final S_CDATA:I = 0xa

.field private static final S_CDATA2:I = 0xb

.field private static final S_CDSECT:I = 0xc

.field private static final S_CDSECT1:I = 0xd

.field private static final S_CDSECT2:I = 0xe

.field private static final S_COM:I = 0xf

.field private static final S_COM2:I = 0x10

.field private static final S_COM3:I = 0x11

.field private static final S_COM4:I = 0x12

.field private static final S_DECL:I = 0x13

.field private static final S_DECL2:I = 0x14

.field private static final S_DONE:I = 0x15

.field private static final S_EMPTYTAG:I = 0x16

.field private static final S_ENT:I = 0x17

.field private static final S_EQ:I = 0x18

.field private static final S_ETAG:I = 0x19

.field private static final S_GI:I = 0x1a

.field private static final S_NCR:I = 0x1b

.field private static final S_PCDATA:I = 0x1c

.field private static final S_PI:I = 0x1d

.field private static final S_PITARGET:I = 0x1e

.field private static final S_QUOT:I = 0x1f

.field private static final S_STAGC:I = 0x20

.field private static final S_TAG:I = 0x21

.field private static final S_TAGWS:I = 0x22

.field private static final S_XNCR:I = 0x23

.field private static final debug_actionnames:[Ljava/lang/String;

.field private static final debug_statenames:[Ljava/lang/String;

.field private static statetable:[I

.field static statetableIndex:[[S

.field static statetableIndexMaxChar:I


# instance fields
.field private theCurrentColumn:I

.field private theCurrentLine:I

.field private theLastColumn:I

.field private theLastLine:I

.field theNextState:I

.field theOutputBuffer:[C

.field private thePublicid:Ljava/lang/String;

.field theSize:I

.field theState:I

.field private theSystemid:Ljava/lang/String;

.field theWinMap:[I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x4

    #@1
    const/4 v13, 0x3

    #@2
    const/4 v12, 0x2

    #@3
    const/4 v11, 0x1

    #@4
    const/4 v10, 0x0

    #@5
    .line 97
    const/16 v7, 0x250

    #@7
    new-array v7, v7, [I

    #@9
    fill-array-data v7, :array_0

    #@c
    sput-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    #@e
    .line 248
    const/16 v7, 0x21

    #@10
    new-array v7, v7, [Ljava/lang/String;

    #@12
    const-string/jumbo v8, ""

    #@15
    aput-object v8, v7, v10

    #@17
    const-string/jumbo v8, "A_ADUP"

    #@1a
    aput-object v8, v7, v11

    #@1c
    const-string/jumbo v8, "A_ADUP_SAVE"

    #@1f
    aput-object v8, v7, v12

    #@21
    const-string/jumbo v8, "A_ADUP_STAGC"

    #@24
    aput-object v8, v7, v13

    #@26
    const-string/jumbo v8, "A_ANAME"

    #@29
    aput-object v8, v7, v14

    #@2b
    const-string/jumbo v8, "A_ANAME_ADUP"

    #@2e
    const/4 v9, 0x5

    #@2f
    aput-object v8, v7, v9

    #@31
    const-string/jumbo v8, "A_ANAME_ADUP_STAGC"

    #@34
    const/4 v9, 0x6

    #@35
    aput-object v8, v7, v9

    #@37
    const-string/jumbo v8, "A_AVAL"

    #@3a
    const/4 v9, 0x7

    #@3b
    aput-object v8, v7, v9

    #@3d
    const-string/jumbo v8, "A_AVAL_STAGC"

    #@40
    const/16 v9, 0x8

    #@42
    aput-object v8, v7, v9

    #@44
    const-string/jumbo v8, "A_CDATA"

    #@47
    const/16 v9, 0x9

    #@49
    aput-object v8, v7, v9

    #@4b
    const-string/jumbo v8, "A_CMNT"

    #@4e
    const/16 v9, 0xa

    #@50
    aput-object v8, v7, v9

    #@52
    const-string/jumbo v8, "A_DECL"

    #@55
    const/16 v9, 0xb

    #@57
    aput-object v8, v7, v9

    #@59
    const-string/jumbo v8, "A_EMPTYTAG"

    #@5c
    const/16 v9, 0xc

    #@5e
    aput-object v8, v7, v9

    #@60
    const-string/jumbo v8, "A_ENTITY"

    #@63
    const/16 v9, 0xd

    #@65
    aput-object v8, v7, v9

    #@67
    const-string/jumbo v8, "A_ENTITY_START"

    #@6a
    const/16 v9, 0xe

    #@6c
    aput-object v8, v7, v9

    #@6e
    const-string/jumbo v8, "A_ETAG"

    #@71
    const/16 v9, 0xf

    #@73
    aput-object v8, v7, v9

    #@75
    const-string/jumbo v8, "A_GI"

    #@78
    const/16 v9, 0x10

    #@7a
    aput-object v8, v7, v9

    #@7c
    const-string/jumbo v8, "A_GI_STAGC"

    #@7f
    const/16 v9, 0x11

    #@81
    aput-object v8, v7, v9

    #@83
    const-string/jumbo v8, "A_LT"

    #@86
    const/16 v9, 0x12

    #@88
    aput-object v8, v7, v9

    #@8a
    const-string/jumbo v8, "A_LT_PCDATA"

    #@8d
    const/16 v9, 0x13

    #@8f
    aput-object v8, v7, v9

    #@91
    const-string/jumbo v8, "A_MINUS"

    #@94
    const/16 v9, 0x14

    #@96
    aput-object v8, v7, v9

    #@98
    const-string/jumbo v8, "A_MINUS2"

    #@9b
    const/16 v9, 0x15

    #@9d
    aput-object v8, v7, v9

    #@9f
    const-string/jumbo v8, "A_MINUS3"

    #@a2
    const/16 v9, 0x16

    #@a4
    aput-object v8, v7, v9

    #@a6
    const-string/jumbo v8, "A_PCDATA"

    #@a9
    const/16 v9, 0x17

    #@ab
    aput-object v8, v7, v9

    #@ad
    const-string/jumbo v8, "A_PI"

    #@b0
    const/16 v9, 0x18

    #@b2
    aput-object v8, v7, v9

    #@b4
    const-string/jumbo v8, "A_PITARGET"

    #@b7
    const/16 v9, 0x19

    #@b9
    aput-object v8, v7, v9

    #@bb
    const-string/jumbo v8, "A_PITARGET_PI"

    #@be
    const/16 v9, 0x1a

    #@c0
    aput-object v8, v7, v9

    #@c2
    const-string/jumbo v8, "A_SAVE"

    #@c5
    const/16 v9, 0x1b

    #@c7
    aput-object v8, v7, v9

    #@c9
    const-string/jumbo v8, "A_SKIP"

    #@cc
    const/16 v9, 0x1c

    #@ce
    aput-object v8, v7, v9

    #@d0
    const-string/jumbo v8, "A_SP"

    #@d3
    const/16 v9, 0x1d

    #@d5
    aput-object v8, v7, v9

    #@d7
    const-string/jumbo v8, "A_STAGC"

    #@da
    const/16 v9, 0x1e

    #@dc
    aput-object v8, v7, v9

    #@de
    const-string/jumbo v8, "A_UNGET"

    #@e1
    const/16 v9, 0x1f

    #@e3
    aput-object v8, v7, v9

    #@e5
    const-string/jumbo v8, "A_UNSAVE_PCDATA"

    #@e8
    const/16 v9, 0x20

    #@ea
    aput-object v8, v7, v9

    #@ec
    sput-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->debug_actionnames:[Ljava/lang/String;

    #@ee
    .line 249
    const/16 v7, 0x24

    #@f0
    new-array v7, v7, [Ljava/lang/String;

    #@f2
    const-string/jumbo v8, ""

    #@f5
    aput-object v8, v7, v10

    #@f7
    const-string/jumbo v8, "S_ANAME"

    #@fa
    aput-object v8, v7, v11

    #@fc
    const-string/jumbo v8, "S_APOS"

    #@ff
    aput-object v8, v7, v12

    #@101
    const-string/jumbo v8, "S_AVAL"

    #@104
    aput-object v8, v7, v13

    #@106
    const-string/jumbo v8, "S_BB"

    #@109
    aput-object v8, v7, v14

    #@10b
    const-string/jumbo v8, "S_BBC"

    #@10e
    const/4 v9, 0x5

    #@10f
    aput-object v8, v7, v9

    #@111
    const-string/jumbo v8, "S_BBCD"

    #@114
    const/4 v9, 0x6

    #@115
    aput-object v8, v7, v9

    #@117
    const-string/jumbo v8, "S_BBCDA"

    #@11a
    const/4 v9, 0x7

    #@11b
    aput-object v8, v7, v9

    #@11d
    const-string/jumbo v8, "S_BBCDAT"

    #@120
    const/16 v9, 0x8

    #@122
    aput-object v8, v7, v9

    #@124
    const-string/jumbo v8, "S_BBCDATA"

    #@127
    const/16 v9, 0x9

    #@129
    aput-object v8, v7, v9

    #@12b
    const-string/jumbo v8, "S_CDATA"

    #@12e
    const/16 v9, 0xa

    #@130
    aput-object v8, v7, v9

    #@132
    const-string/jumbo v8, "S_CDATA2"

    #@135
    const/16 v9, 0xb

    #@137
    aput-object v8, v7, v9

    #@139
    const-string/jumbo v8, "S_CDSECT"

    #@13c
    const/16 v9, 0xc

    #@13e
    aput-object v8, v7, v9

    #@140
    const-string/jumbo v8, "S_CDSECT1"

    #@143
    const/16 v9, 0xd

    #@145
    aput-object v8, v7, v9

    #@147
    const-string/jumbo v8, "S_CDSECT2"

    #@14a
    const/16 v9, 0xe

    #@14c
    aput-object v8, v7, v9

    #@14e
    const-string/jumbo v8, "S_COM"

    #@151
    const/16 v9, 0xf

    #@153
    aput-object v8, v7, v9

    #@155
    const-string/jumbo v8, "S_COM2"

    #@158
    const/16 v9, 0x10

    #@15a
    aput-object v8, v7, v9

    #@15c
    const-string/jumbo v8, "S_COM3"

    #@15f
    const/16 v9, 0x11

    #@161
    aput-object v8, v7, v9

    #@163
    const-string/jumbo v8, "S_COM4"

    #@166
    const/16 v9, 0x12

    #@168
    aput-object v8, v7, v9

    #@16a
    const-string/jumbo v8, "S_DECL"

    #@16d
    const/16 v9, 0x13

    #@16f
    aput-object v8, v7, v9

    #@171
    const-string/jumbo v8, "S_DECL2"

    #@174
    const/16 v9, 0x14

    #@176
    aput-object v8, v7, v9

    #@178
    const-string/jumbo v8, "S_DONE"

    #@17b
    const/16 v9, 0x15

    #@17d
    aput-object v8, v7, v9

    #@17f
    const-string/jumbo v8, "S_EMPTYTAG"

    #@182
    const/16 v9, 0x16

    #@184
    aput-object v8, v7, v9

    #@186
    const-string/jumbo v8, "S_ENT"

    #@189
    const/16 v9, 0x17

    #@18b
    aput-object v8, v7, v9

    #@18d
    const-string/jumbo v8, "S_EQ"

    #@190
    const/16 v9, 0x18

    #@192
    aput-object v8, v7, v9

    #@194
    const-string/jumbo v8, "S_ETAG"

    #@197
    const/16 v9, 0x19

    #@199
    aput-object v8, v7, v9

    #@19b
    const-string/jumbo v8, "S_GI"

    #@19e
    const/16 v9, 0x1a

    #@1a0
    aput-object v8, v7, v9

    #@1a2
    const-string/jumbo v8, "S_NCR"

    #@1a5
    const/16 v9, 0x1b

    #@1a7
    aput-object v8, v7, v9

    #@1a9
    const-string/jumbo v8, "S_PCDATA"

    #@1ac
    const/16 v9, 0x1c

    #@1ae
    aput-object v8, v7, v9

    #@1b0
    const-string/jumbo v8, "S_PI"

    #@1b3
    const/16 v9, 0x1d

    #@1b5
    aput-object v8, v7, v9

    #@1b7
    const-string/jumbo v8, "S_PITARGET"

    #@1ba
    const/16 v9, 0x1e

    #@1bc
    aput-object v8, v7, v9

    #@1be
    const-string/jumbo v8, "S_QUOT"

    #@1c1
    const/16 v9, 0x1f

    #@1c3
    aput-object v8, v7, v9

    #@1c5
    const-string/jumbo v8, "S_STAGC"

    #@1c8
    const/16 v9, 0x20

    #@1ca
    aput-object v8, v7, v9

    #@1cc
    const-string/jumbo v8, "S_TAG"

    #@1cf
    const/16 v9, 0x21

    #@1d1
    aput-object v8, v7, v9

    #@1d3
    const-string/jumbo v8, "S_TAGWS"

    #@1d6
    const/16 v9, 0x22

    #@1d8
    aput-object v8, v7, v9

    #@1da
    const-string/jumbo v8, "S_XNCR"

    #@1dd
    const/16 v9, 0x23

    #@1df
    aput-object v8, v7, v9

    #@1e1
    sput-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->debug_statenames:[Ljava/lang/String;

    #@1e3
    .line 304
    const/4 v5, -0x1

    #@1e4
    .line 305
    .local v5, "maxState":I
    const/4 v4, -0x1

    #@1e5
    .line 306
    .local v4, "maxChar":I
    const/4 v3, 0x0

    #@1e6
    .local v3, "i":I
    :goto_0
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    #@1e8
    array-length v7, v7

    #@1e9
    if-ge v3, v7, :cond_2

    #@1eb
    .line 307
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    #@1ed
    aget v7, v7, v3

    #@1ef
    if-le v7, v5, :cond_0

    #@1f1
    .line 308
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    #@1f3
    aget v5, v7, v3

    #@1f5
    .line 310
    :cond_0
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    #@1f7
    add-int/lit8 v8, v3, 0x1

    #@1f9
    aget v7, v7, v8

    #@1fb
    if-le v7, v4, :cond_1

    #@1fd
    .line 311
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    #@1ff
    add-int/lit8 v8, v3, 0x1

    #@201
    aget v4, v7, v8

    #@203
    .line 306
    :cond_1
    add-int/lit8 v3, v3, 0x4

    #@205
    goto :goto_0

    #@206
    .line 314
    :cond_2
    add-int/lit8 v7, v4, 0x1

    #@208
    sput v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetableIndexMaxChar:I

    #@20a
    .line 316
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@20c
    new-array v8, v12, [I

    #@20e
    add-int/lit8 v9, v5, 0x1

    #@210
    aput v9, v8, v10

    #@212
    add-int/lit8 v9, v4, 0x3

    #@214
    aput v9, v8, v11

    #@216
    invoke-static {v7, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@219
    move-result-object v7

    #@21a
    check-cast v7, [[S

    #@21c
    sput-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetableIndex:[[S

    #@21e
    .line 317
    const/4 v6, 0x0

    #@21f
    .local v6, "theState":I
    :goto_1
    if-gt v6, v5, :cond_8

    #@221
    .line 318
    const/4 v1, -0x2

    #@222
    .local v1, "ch":I
    :goto_2
    if-gt v1, v4, :cond_7

    #@224
    .line 319
    const/4 v2, -0x1

    #@225
    .line 320
    .local v2, "hit":I
    const/4 v0, 0x0

    #@226
    .line 321
    .local v0, "action":I
    const/4 v3, 0x0

    #@227
    :goto_3
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    #@229
    array-length v7, v7

    #@22a
    if-ge v3, v7, :cond_3

    #@22c
    .line 322
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    #@22e
    aget v7, v7, v3

    #@230
    if-eq v6, v7, :cond_4

    #@232
    .line 323
    if-eqz v0, :cond_5

    #@234
    .line 336
    :cond_3
    :goto_4
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetableIndex:[[S

    #@236
    aget-object v7, v7, v6

    #@238
    add-int/lit8 v8, v1, 0x2

    #@23a
    int-to-short v9, v2

    #@23b
    aput-short v9, v7, v8

    #@23d
    .line 318
    add-int/lit8 v1, v1, 0x1

    #@23f
    goto :goto_2

    #@240
    .line 326
    :cond_4
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    #@242
    add-int/lit8 v8, v3, 0x1

    #@244
    aget v7, v7, v8

    #@246
    if-nez v7, :cond_6

    #@248
    .line 327
    move v2, v3

    #@249
    .line 328
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    #@24b
    add-int/lit8 v8, v3, 0x2

    #@24d
    aget v0, v7, v8

    #@24f
    .line 321
    :cond_5
    add-int/lit8 v3, v3, 0x4

    #@251
    goto :goto_3

    #@252
    .line 330
    :cond_6
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    #@254
    add-int/lit8 v8, v3, 0x1

    #@256
    aget v7, v7, v8

    #@258
    if-ne v7, v1, :cond_5

    #@25a
    .line 331
    move v2, v3

    #@25b
    .line 332
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    #@25d
    add-int/lit8 v8, v3, 0x2

    #@25f
    aget v0, v7, v8

    #@261
    goto :goto_4

    #@262
    .line 317
    .end local v0    # "action":I
    .end local v2    # "hit":I
    :cond_7
    add-int/lit8 v6, v6, 0x1

    #@264
    goto :goto_1

    #@265
    .line 27
    .end local v1    # "ch":I
    :cond_8
    return-void

    #@266
    .line 97
    :array_0
    .array-data 4
        0x1
        0x2f
        0x5
        0x16
        0x1
        0x3d
        0x4
        0x3
        0x1
        0x3e
        0x6
        0x1c
        0x1
        0x0
        0x1b
        0x1
        0x1
        -0x1
        0x6
        0x15
        0x1
        0x20
        0x4
        0x18
        0x1
        0xa
        0x4
        0x18
        0x1
        0x9
        0x4
        0x18
        0x2
        0x27
        0x7
        0x22
        0x2
        0x0
        0x1b
        0x2
        0x2
        -0x1
        0x8
        0x15
        0x2
        0x20
        0x1d
        0x2
        0x2
        0xa
        0x1d
        0x2
        0x2
        0x9
        0x1d
        0x2
        0x3
        0x22
        0x1c
        0x1f
        0x3
        0x27
        0x1c
        0x2
        0x3
        0x3e
        0x8
        0x1c
        0x3
        0x0
        0x1b
        0x20
        0x3
        -0x1
        0x8
        0x15
        0x3
        0x20
        0x1c
        0x3
        0x3
        0xa
        0x1c
        0x3
        0x3
        0x9
        0x1c
        0x3
        0x4
        0x43
        0x1c
        0x5
        0x4
        0x0
        0x1c
        0x13
        0x4
        -0x1
        0x1c
        0x15
        0x5
        0x44
        0x1c
        0x6
        0x5
        0x0
        0x1c
        0x13
        0x5
        -0x1
        0x1c
        0x15
        0x6
        0x41
        0x1c
        0x7
        0x6
        0x0
        0x1c
        0x13
        0x6
        -0x1
        0x1c
        0x15
        0x7
        0x54
        0x1c
        0x8
        0x7
        0x0
        0x1c
        0x13
        0x7
        -0x1
        0x1c
        0x15
        0x8
        0x41
        0x1c
        0x9
        0x8
        0x0
        0x1c
        0x13
        0x8
        -0x1
        0x1c
        0x15
        0x9
        0x5b
        0x1c
        0xc
        0x9
        0x0
        0x1c
        0x13
        0x9
        -0x1
        0x1c
        0x15
        0xa
        0x3c
        0x1b
        0xb
        0xa
        0x0
        0x1b
        0xa
        0xa
        -0x1
        0x17
        0x15
        0xb
        0x2f
        0x20
        0x19
        0xb
        0x0
        0x1b
        0xa
        0xb
        -0x1
        0x20
        0x15
        0xc
        0x5d
        0x1b
        0xd
        0xc
        0x0
        0x1b
        0xc
        0xc
        -0x1
        0x1c
        0x15
        0xd
        0x5d
        0x1b
        0xe
        0xd
        0x0
        0x1b
        0xc
        0xd
        -0x1
        0x1c
        0x15
        0xe
        0x3e
        0x9
        0x1c
        0xe
        0x0
        0x1b
        0xc
        0xe
        -0x1
        0x1c
        0x15
        0xf
        0x2d
        0x1c
        0x10
        0xf
        0x0
        0x1b
        0x10
        0xf
        -0x1
        0xa
        0x15
        0x10
        0x2d
        0x1c
        0x11
        0x10
        0x0
        0x1b
        0x10
        0x10
        -0x1
        0xa
        0x15
        0x11
        0x2d
        0x1c
        0x12
        0x11
        0x0
        0x14
        0x10
        0x11
        -0x1
        0xa
        0x15
        0x12
        0x2d
        0x16
        0x12
        0x12
        0x3e
        0xa
        0x1c
        0x12
        0x0
        0x15
        0x10
        0x12
        -0x1
        0xa
        0x15
        0x13
        0x2d
        0x1c
        0xf
        0x13
        0x3e
        0x1c
        0x1c
        0x13
        0x5b
        0x1c
        0x4
        0x13
        0x0
        0x1b
        0x14
        0x13
        -0x1
        0x1c
        0x15
        0x14
        0x3e
        0xb
        0x1c
        0x14
        0x0
        0x1b
        0x14
        0x14
        -0x1
        0x1c
        0x15
        0x16
        0x3e
        0xc
        0x1c
        0x16
        0x0
        0x1b
        0x1
        0x16
        0x20
        0x1c
        0x22
        0x16
        0xa
        0x1c
        0x22
        0x16
        0x9
        0x1c
        0x22
        0x17
        0x0
        0xd
        0x17
        0x17
        -0x1
        0xd
        0x15
        0x18
        0x3d
        0x1c
        0x3
        0x18
        0x3e
        0x3
        0x1c
        0x18
        0x0
        0x2
        0x1
        0x18
        -0x1
        0x3
        0x15
        0x18
        0x20
        0x1c
        0x18
        0x18
        0xa
        0x1c
        0x18
        0x18
        0x9
        0x1c
        0x18
        0x19
        0x3e
        0xf
        0x1c
        0x19
        0x0
        0x1b
        0x19
        0x19
        -0x1
        0xf
        0x15
        0x19
        0x20
        0x1c
        0x19
        0x19
        0xa
        0x1c
        0x19
        0x19
        0x9
        0x1c
        0x19
        0x1a
        0x2f
        0x1c
        0x16
        0x1a
        0x3e
        0x11
        0x1c
        0x1a
        0x0
        0x1b
        0x1a
        0x1a
        -0x1
        0x1c
        0x15
        0x1a
        0x20
        0x10
        0x22
        0x1a
        0xa
        0x10
        0x22
        0x1a
        0x9
        0x10
        0x22
        0x1b
        0x0
        0xd
        0x1b
        0x1b
        -0x1
        0xd
        0x15
        0x1c
        0x26
        0xe
        0x17
        0x1c
        0x3c
        0x17
        0x21
        0x1c
        0x0
        0x1b
        0x1c
        0x1c
        -0x1
        0x17
        0x15
        0x1d
        0x3e
        0x18
        0x1c
        0x1d
        0x0
        0x1b
        0x1d
        0x1d
        -0x1
        0x18
        0x15
        0x1e
        0x3e
        0x1a
        0x1c
        0x1e
        0x0
        0x1b
        0x1e
        0x1e
        -0x1
        0x1a
        0x15
        0x1e
        0x20
        0x19
        0x1d
        0x1e
        0xa
        0x19
        0x1d
        0x1e
        0x9
        0x19
        0x1d
        0x1f
        0x22
        0x7
        0x22
        0x1f
        0x0
        0x1b
        0x1f
        0x1f
        -0x1
        0x8
        0x15
        0x1f
        0x20
        0x1d
        0x1f
        0x1f
        0xa
        0x1d
        0x1f
        0x1f
        0x9
        0x1d
        0x1f
        0x20
        0x3e
        0x8
        0x1c
        0x20
        0x0
        0x1b
        0x20
        0x20
        -0x1
        0x8
        0x15
        0x20
        0x20
        0x7
        0x22
        0x20
        0xa
        0x7
        0x22
        0x20
        0x9
        0x7
        0x22
        0x21
        0x21
        0x1c
        0x13
        0x21
        0x2f
        0x1c
        0x19
        0x21
        0x3c
        0x1b
        0x21
        0x21
        0x3f
        0x1c
        0x1e
        0x21
        0x0
        0x1b
        0x1a
        0x21
        -0x1
        0x13
        0x15
        0x21
        0x20
        0x12
        0x1c
        0x21
        0xa
        0x12
        0x1c
        0x21
        0x9
        0x12
        0x1c
        0x22
        0x2f
        0x1c
        0x16
        0x22
        0x3e
        0x1e
        0x1c
        0x22
        0x0
        0x1b
        0x1
        0x22
        -0x1
        0x1e
        0x15
        0x22
        0x20
        0x1c
        0x22
        0x22
        0xa
        0x1c
        0x22
        0x22
        0x9
        0x1c
        0x22
        0x23
        0x0
        0xd
        0x23
        0x23
        -0x1
        0xd
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 263
    const/16 v0, 0xc8

    #@5
    new-array v0, v0, [C

    #@7
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@9
    .line 265
    const/16 v0, 0x20

    #@b
    new-array v0, v0, [I

    #@d
    fill-array-data v0, :array_0

    #@10
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theWinMap:[I

    #@12
    .line 27
    return-void

    #@13
    .line 265
    nop

    #@14
    :array_0
    .array-data 4
        0x20ac
        0xfffd
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0xfffd
        0x17d
        0xfffd
        0xfffd
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0xfffd
        0x17e
        0x178
    .end array-data
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 692
    new-instance v2, Lorg/ccil/cowan/tagsoup/HTMLScanner;

    #@2
    invoke-direct {v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;-><init>()V

    #@5
    .line 693
    .local v2, "s":Lorg/ccil/cowan/tagsoup/Scanner;
    new-instance v1, Ljava/io/InputStreamReader;

    #@7
    sget-object v4, Ljava/lang/System;->in:Ljava/io/InputStream;

    #@9
    const-string/jumbo v5, "UTF-8"

    #@c
    invoke-direct {v1, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@f
    .line 694
    .local v1, "r":Ljava/io/Reader;
    new-instance v3, Ljava/io/OutputStreamWriter;

    #@11
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@13
    const-string/jumbo v5, "UTF-8"

    #@16
    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@19
    .line 695
    .local v3, "w":Ljava/io/Writer;
    new-instance v0, Lorg/ccil/cowan/tagsoup/PYXWriter;

    #@1b
    invoke-direct {v0, v3}, Lorg/ccil/cowan/tagsoup/PYXWriter;-><init>(Ljava/io/Writer;)V

    #@1e
    .line 696
    .local v0, "pw":Lorg/ccil/cowan/tagsoup/PYXWriter;
    invoke-interface {v2, v1, v0}, Lorg/ccil/cowan/tagsoup/Scanner;->scan(Ljava/io/Reader;Lorg/ccil/cowan/tagsoup/ScanHandler;)V

    #@21
    .line 697
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    #@24
    .line 691
    return-void
.end method

.method private mark()V
    .locals 1

    #@0
    .prologue
    .line 657
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    #@2
    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastColumn:I

    #@4
    .line 658
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentLine:I

    #@6
    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastLine:I

    #@8
    .line 656
    return-void
.end method

.method private static nicechar(I)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # I

    #@0
    .prologue
    .line 702
    const/16 v0, 0xa

    #@2
    if-ne p0, v0, :cond_0

    #@4
    const-string/jumbo v0, "\\n"

    #@7
    return-object v0

    #@8
    .line 703
    :cond_0
    const/16 v0, 0x20

    #@a
    if-ge p0, v0, :cond_1

    #@c
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v1, "0x"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    return-object v0

    #@25
    .line 704
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v1, "\'"

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    int-to-char v1, p0

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    const-string/jumbo v1, "\'"

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    return-object v0
.end method

.method private save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V
    .locals 4
    .param p1, "ch"    # I
    .param p2, "h"    # Lorg/ccil/cowan/tagsoup/ScanHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 670
    iget v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@3
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@5
    array-length v2, v2

    #@6
    add-int/lit8 v2, v2, -0x14

    #@8
    if-lt v1, v2, :cond_1

    #@a
    .line 671
    iget v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    #@c
    const/16 v2, 0x1c

    #@e
    if-eq v1, v2, :cond_0

    #@10
    iget v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    #@12
    const/16 v2, 0xa

    #@14
    if-ne v1, v2, :cond_2

    #@16
    .line 673
    :cond_0
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@18
    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@1a
    invoke-interface {p2, v1, v3, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    #@1d
    .line 674
    iput v3, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@1f
    .line 683
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@21
    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@23
    add-int/lit8 v3, v2, 0x1

    #@25
    iput v3, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@27
    int-to-char v3, p1

    #@28
    aput-char v3, v1, v2

    #@2a
    .line 669
    return-void

    #@2b
    .line 678
    :cond_2
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@2d
    array-length v1, v1

    #@2e
    mul-int/lit8 v1, v1, 0x2

    #@30
    new-array v0, v1, [C

    #@32
    .line 679
    .local v0, "newOutputBuffer":[C
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@34
    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@36
    add-int/lit8 v2, v2, 0x1

    #@38
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@3b
    .line 680
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@3d
    goto :goto_0
.end method

.method private unread(Ljava/io/PushbackReader;I)V
    .locals 1
    .param p1, "r"    # Ljava/io/PushbackReader;
    .param p2, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 344
    const/4 v0, -0x1

    #@1
    if-eq p2, v0, :cond_0

    #@3
    invoke-virtual {p1, p2}, Ljava/io/PushbackReader;->unread(I)V

    #@6
    .line 343
    :cond_0
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    #@0
    .prologue
    .line 353
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastColumn:I

    #@2
    return v0
.end method

.method public getLineNumber()I
    .locals 1

    #@0
    .prologue
    .line 350
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastLine:I

    #@2
    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 356
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->thePublicid:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 359
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSystemid:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public resetDocumentLocator(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "publicid"    # Ljava/lang/String;
    .param p2, "systemid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 372
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->thePublicid:Ljava/lang/String;

    #@3
    .line 373
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSystemid:Ljava/lang/String;

    #@5
    .line 374
    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    #@7
    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentLine:I

    #@9
    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastColumn:I

    #@b
    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastLine:I

    #@d
    .line 371
    return-void
.end method

.method public scan(Ljava/io/Reader;Lorg/ccil/cowan/tagsoup/ScanHandler;)V
    .locals 11
    .param p1, "r0"    # Ljava/io/Reader;
    .param p2, "h"    # Lorg/ccil/cowan/tagsoup/ScanHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 384
    const/16 v8, 0x1c

    #@2
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    #@4
    .line 386
    instance-of v8, p1, Ljava/io/BufferedReader;

    #@6
    if-eqz v8, :cond_5

    #@8
    .line 387
    new-instance v6, Ljava/io/PushbackReader;

    #@a
    const/4 v8, 0x5

    #@b
    invoke-direct {v6, p1, v8}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;I)V

    #@e
    .line 393
    .local v6, "r":Ljava/io/PushbackReader;
    :goto_0
    invoke-virtual {v6}, Ljava/io/PushbackReader;->read()I

    #@11
    move-result v5

    #@12
    .line 394
    .local v5, "firstChar":I
    const v8, 0xfeff

    #@15
    if-eq v5, v8, :cond_0

    #@17
    invoke-direct {p0, v6, v5}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    #@1a
    .line 396
    :cond_0
    :goto_1
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    #@1c
    const/16 v9, 0x15

    #@1e
    if-eq v8, v9, :cond_18

    #@20
    .line 397
    invoke-virtual {v6}, Ljava/io/PushbackReader;->read()I

    #@23
    move-result v2

    #@24
    .line 400
    .local v2, "ch":I
    const/16 v8, 0x80

    #@26
    if-lt v2, v8, :cond_1

    #@28
    const/16 v8, 0x9f

    #@2a
    if-gt v2, v8, :cond_1

    #@2c
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theWinMap:[I

    #@2e
    add-int/lit8 v9, v2, -0x80

    #@30
    aget v2, v8, v9

    #@32
    .line 402
    :cond_1
    const/16 v8, 0xd

    #@34
    if-ne v2, v8, :cond_2

    #@36
    .line 403
    invoke-virtual {v6}, Ljava/io/PushbackReader;->read()I

    #@39
    move-result v2

    #@3a
    .line 404
    const/16 v8, 0xa

    #@3c
    if-eq v2, v8, :cond_2

    #@3e
    .line 405
    invoke-direct {p0, v6, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    #@41
    .line 406
    const/16 v2, 0xa

    #@43
    .line 410
    :cond_2
    const/16 v8, 0xa

    #@45
    if-ne v2, v8, :cond_6

    #@47
    .line 411
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentLine:I

    #@49
    add-int/lit8 v8, v8, 0x1

    #@4b
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentLine:I

    #@4d
    .line 412
    const/4 v8, 0x0

    #@4e
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    #@50
    .line 418
    :goto_2
    const/16 v8, 0x20

    #@52
    if-ge v2, v8, :cond_3

    #@54
    const/16 v8, 0xa

    #@56
    if-eq v2, v8, :cond_3

    #@58
    const/16 v8, 0x9

    #@5a
    if-eq v2, v8, :cond_3

    #@5c
    const/4 v8, -0x1

    #@5d
    if-ne v2, v8, :cond_0

    #@5f
    .line 421
    :cond_3
    const/4 v8, -0x1

    #@60
    if-lt v2, v8, :cond_7

    #@62
    sget v8, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetableIndexMaxChar:I

    #@64
    if-ge v2, v8, :cond_7

    #@66
    move v1, v2

    #@67
    .line 422
    .local v1, "adjCh":I
    :goto_3
    sget-object v8, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetableIndex:[[S

    #@69
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    #@6b
    aget-object v8, v8, v9

    #@6d
    add-int/lit8 v9, v1, 0x2

    #@6f
    aget-short v7, v8, v9

    #@71
    .line 423
    .local v7, "statetableRow":I
    const/4 v0, 0x0

    #@72
    .line 424
    .local v0, "action":I
    const/4 v8, -0x1

    #@73
    if-eq v7, v8, :cond_4

    #@75
    .line 425
    sget-object v8, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    #@77
    add-int/lit8 v9, v7, 0x2

    #@79
    aget v0, v8, v9

    #@7b
    .line 426
    sget-object v8, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    #@7d
    add-int/lit8 v9, v7, 0x3

    #@7f
    aget v8, v8, v9

    #@81
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    #@83
    .line 430
    :cond_4
    packed-switch v0, :pswitch_data_0

    #@86
    .line 644
    new-instance v8, Ljava/lang/Error;

    #@88
    new-instance v9, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v10, "Can\'t process state "

    #@90
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v9

    #@94
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97
    move-result-object v9

    #@98
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v9

    #@9c
    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@9f
    throw v8

    #@a0
    .line 390
    .end local v0    # "action":I
    .end local v1    # "adjCh":I
    .end local v2    # "ch":I
    .end local v5    # "firstChar":I
    .end local v6    # "r":Ljava/io/PushbackReader;
    .end local v7    # "statetableRow":I
    :cond_5
    new-instance v6, Ljava/io/PushbackReader;

    #@a2
    new-instance v8, Ljava/io/BufferedReader;

    #@a4
    invoke-direct {v8, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@a7
    const/4 v9, 0x5

    #@a8
    invoke-direct {v6, v8, v9}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;I)V

    #@ab
    .restart local v6    # "r":Ljava/io/PushbackReader;
    goto/16 :goto_0

    #@ad
    .line 415
    .restart local v2    # "ch":I
    .restart local v5    # "firstChar":I
    :cond_6
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    #@af
    add-int/lit8 v8, v8, 0x1

    #@b1
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    #@b3
    goto :goto_2

    #@b4
    .line 421
    :cond_7
    const/4 v1, -0x2

    #@b5
    .restart local v1    # "adjCh":I
    goto :goto_3

    #@b6
    .line 432
    .restart local v0    # "action":I
    .restart local v7    # "statetableRow":I
    :pswitch_0
    new-instance v8, Ljava/lang/Error;

    #@b8
    .line 433
    new-instance v9, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v10, "HTMLScanner can\'t cope with "

    #@c0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v9

    #@c4
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@c7
    move-result-object v10

    #@c8
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v9

    #@cc
    const-string/jumbo v10, " in state "

    #@cf
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v9

    #@d3
    .line 434
    iget v10, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    #@d5
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@d8
    move-result-object v10

    #@d9
    .line 433
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v9

    #@dd
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v9

    #@e1
    .line 432
    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@e4
    throw v8

    #@e5
    .line 436
    :pswitch_1
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@e7
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@e9
    const/4 v10, 0x0

    #@ea
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    #@ed
    .line 437
    const/4 v8, 0x0

    #@ee
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@f0
    .line 646
    :goto_4
    :pswitch_2
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    #@f2
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    #@f4
    goto/16 :goto_1

    #@f6
    .line 440
    :pswitch_3
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@f8
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@fa
    const/4 v10, 0x0

    #@fb
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    #@fe
    .line 441
    const/4 v8, 0x0

    #@ff
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@101
    .line 442
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    #@104
    goto :goto_4

    #@105
    .line 445
    :pswitch_4
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@107
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@109
    const/4 v10, 0x0

    #@10a
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    #@10d
    .line 446
    const/4 v8, 0x0

    #@10e
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@110
    .line 447
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@112
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@114
    const/4 v10, 0x0

    #@115
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    #@118
    goto :goto_4

    #@119
    .line 450
    :pswitch_5
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@11b
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@11d
    const/4 v10, 0x0

    #@11e
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aname([CII)V

    #@121
    .line 451
    const/4 v8, 0x0

    #@122
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@124
    goto :goto_4

    #@125
    .line 454
    :pswitch_6
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@127
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@129
    const/4 v10, 0x0

    #@12a
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aname([CII)V

    #@12d
    .line 455
    const/4 v8, 0x0

    #@12e
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@130
    .line 456
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@132
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@134
    const/4 v10, 0x0

    #@135
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    #@138
    goto :goto_4

    #@139
    .line 459
    :pswitch_7
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@13b
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@13d
    const/4 v10, 0x0

    #@13e
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aname([CII)V

    #@141
    .line 460
    const/4 v8, 0x0

    #@142
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@144
    .line 461
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@146
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@148
    const/4 v10, 0x0

    #@149
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    #@14c
    .line 462
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@14e
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@150
    const/4 v10, 0x0

    #@151
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    #@154
    goto :goto_4

    #@155
    .line 465
    :pswitch_8
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@157
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@159
    const/4 v10, 0x0

    #@15a
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aval([CII)V

    #@15d
    .line 466
    const/4 v8, 0x0

    #@15e
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@160
    goto :goto_4

    #@161
    .line 469
    :pswitch_9
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@163
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@165
    const/4 v10, 0x0

    #@166
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aval([CII)V

    #@169
    .line 470
    const/4 v8, 0x0

    #@16a
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@16c
    .line 471
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@16e
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@170
    const/4 v10, 0x0

    #@171
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    #@174
    goto/16 :goto_4

    #@176
    .line 474
    :pswitch_a
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    #@179
    .line 476
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@17b
    const/4 v9, 0x1

    #@17c
    if-le v8, v9, :cond_8

    #@17e
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@180
    add-int/lit8 v8, v8, -0x2

    #@182
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@184
    .line 477
    :cond_8
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@186
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@188
    const/4 v10, 0x0

    #@189
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    #@18c
    .line 478
    const/4 v8, 0x0

    #@18d
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@18f
    goto/16 :goto_4

    #@191
    .line 481
    :pswitch_b
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@193
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@195
    const/4 v10, 0x0

    #@196
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    #@199
    .line 482
    const/4 v8, 0x0

    #@19a
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@19c
    .line 483
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    #@19f
    goto/16 :goto_4

    #@1a1
    .line 486
    :pswitch_c
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    #@1a4
    .line 487
    int-to-char v3, v2

    #@1a5
    .line 489
    .local v3, "ch1":C
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    #@1a7
    const/16 v9, 0x17

    #@1a9
    if-ne v8, v9, :cond_9

    #@1ab
    const/16 v8, 0x23

    #@1ad
    if-ne v3, v8, :cond_9

    #@1af
    .line 490
    const/16 v8, 0x1b

    #@1b1
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    #@1b3
    .line 491
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    #@1b6
    goto/16 :goto_4

    #@1b8
    .line 494
    :cond_9
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    #@1ba
    const/16 v9, 0x1b

    #@1bc
    if-ne v8, v9, :cond_b

    #@1be
    const/16 v8, 0x78

    #@1c0
    if-eq v3, v8, :cond_a

    #@1c2
    const/16 v8, 0x58

    #@1c4
    if-ne v3, v8, :cond_b

    #@1c6
    .line 495
    :cond_a
    const/16 v8, 0x23

    #@1c8
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    #@1ca
    .line 496
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    #@1cd
    goto/16 :goto_4

    #@1cf
    .line 499
    :cond_b
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    #@1d1
    const/16 v9, 0x17

    #@1d3
    if-ne v8, v9, :cond_c

    #@1d5
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    #@1d8
    move-result v8

    #@1d9
    if-eqz v8, :cond_c

    #@1db
    .line 500
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    #@1de
    goto/16 :goto_4

    #@1e0
    .line 503
    :cond_c
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    #@1e2
    const/16 v9, 0x1b

    #@1e4
    if-ne v8, v9, :cond_d

    #@1e6
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    #@1e9
    move-result v8

    #@1ea
    if-eqz v8, :cond_d

    #@1ec
    .line 504
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    #@1ef
    goto/16 :goto_4

    #@1f1
    .line 507
    :cond_d
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    #@1f3
    const/16 v9, 0x23

    #@1f5
    if-ne v8, v9, :cond_f

    #@1f7
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    #@1fa
    move-result v8

    #@1fb
    if-nez v8, :cond_e

    #@1fd
    const-string/jumbo v8, "abcdefABCDEF"

    #@200
    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(I)I

    #@203
    move-result v8

    #@204
    const/4 v9, -0x1

    #@205
    if-eq v8, v9, :cond_f

    #@207
    .line 508
    :cond_e
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    #@20a
    goto/16 :goto_4

    #@20c
    .line 514
    :cond_f
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@20e
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@210
    add-int/lit8 v9, v9, -0x1

    #@212
    const/4 v10, 0x1

    #@213
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->entity([CII)V

    #@216
    .line 515
    invoke-interface {p2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->getEntity()I

    #@219
    move-result v4

    #@21a
    .line 517
    .local v4, "ent":I
    if-eqz v4, :cond_15

    #@21c
    .line 518
    const/4 v8, 0x0

    #@21d
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@21f
    .line 519
    const/16 v8, 0x80

    #@221
    if-lt v4, v8, :cond_10

    #@223
    const/16 v8, 0x9f

    #@225
    if-gt v4, v8, :cond_10

    #@227
    .line 520
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theWinMap:[I

    #@229
    add-int/lit8 v9, v4, -0x80

    #@22b
    aget v4, v8, v9

    #@22d
    .line 522
    :cond_10
    const/16 v8, 0x20

    #@22f
    if-ge v4, v8, :cond_12

    #@231
    .line 524
    const/16 v4, 0x20

    #@233
    .line 540
    :goto_5
    const/16 v8, 0x3b

    #@235
    if-eq v2, v8, :cond_11

    #@237
    .line 541
    invoke-direct {p0, v6, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    #@23a
    .line 542
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    #@23c
    add-int/lit8 v8, v8, -0x1

    #@23e
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    #@240
    .line 549
    :cond_11
    :goto_6
    const/16 v8, 0x1c

    #@242
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    #@244
    goto/16 :goto_4

    #@246
    .line 526
    :cond_12
    const v8, 0xd800

    #@249
    if-lt v4, v8, :cond_13

    #@24b
    const v8, 0xdfff

    #@24e
    if-gt v4, v8, :cond_13

    #@250
    .line 528
    const/4 v4, 0x0

    #@251
    .line 526
    goto :goto_5

    #@252
    .line 530
    :cond_13
    const v8, 0xffff

    #@255
    if-gt v4, v8, :cond_14

    #@257
    .line 532
    invoke-direct {p0, v4, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    #@25a
    goto :goto_5

    #@25b
    .line 536
    :cond_14
    const/high16 v8, 0x10000

    #@25d
    sub-int/2addr v4, v8

    #@25e
    .line 537
    shr-int/lit8 v8, v4, 0xa

    #@260
    const v9, 0xd800

    #@263
    add-int/2addr v8, v9

    #@264
    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    #@267
    .line 538
    and-int/lit16 v8, v4, 0x3ff

    #@269
    const v9, 0xdc00

    #@26c
    add-int/2addr v8, v9

    #@26d
    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    #@270
    goto :goto_5

    #@271
    .line 546
    :cond_15
    invoke-direct {p0, v6, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    #@274
    .line 547
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    #@276
    add-int/lit8 v8, v8, -0x1

    #@278
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    #@27a
    goto :goto_6

    #@27b
    .line 552
    .end local v3    # "ch1":C
    .end local v4    # "ent":I
    :pswitch_d
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@27d
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@27f
    const/4 v10, 0x0

    #@280
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->etag([CII)V

    #@283
    .line 553
    const/4 v8, 0x0

    #@284
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@286
    goto/16 :goto_4

    #@288
    .line 556
    :pswitch_e
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@28a
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@28c
    const/4 v10, 0x0

    #@28d
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->decl([CII)V

    #@290
    .line 557
    const/4 v8, 0x0

    #@291
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@293
    goto/16 :goto_4

    #@295
    .line 560
    :pswitch_f
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@297
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@299
    const/4 v10, 0x0

    #@29a
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->gi([CII)V

    #@29d
    .line 561
    const/4 v8, 0x0

    #@29e
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@2a0
    goto/16 :goto_4

    #@2a2
    .line 564
    :pswitch_10
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@2a4
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@2a6
    const/4 v10, 0x0

    #@2a7
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->gi([CII)V

    #@2aa
    .line 565
    const/4 v8, 0x0

    #@2ab
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@2ad
    .line 566
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@2af
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@2b1
    const/4 v10, 0x0

    #@2b2
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    #@2b5
    goto/16 :goto_4

    #@2b7
    .line 569
    :pswitch_11
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    #@2ba
    .line 570
    const/16 v8, 0x3c

    #@2bc
    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    #@2bf
    .line 571
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    #@2c2
    goto/16 :goto_4

    #@2c4
    .line 574
    :pswitch_12
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    #@2c7
    .line 575
    const/16 v8, 0x3c

    #@2c9
    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    #@2cc
    .line 576
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@2ce
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@2d0
    const/4 v10, 0x0

    #@2d1
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    #@2d4
    .line 577
    const/4 v8, 0x0

    #@2d5
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@2d7
    goto/16 :goto_4

    #@2d9
    .line 580
    :pswitch_13
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    #@2dc
    .line 581
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@2de
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@2e0
    const/4 v10, 0x0

    #@2e1
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    #@2e4
    .line 582
    const/4 v8, 0x0

    #@2e5
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@2e7
    goto/16 :goto_4

    #@2e9
    .line 585
    :pswitch_14
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    #@2ec
    .line 586
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@2ee
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@2f0
    const/4 v10, 0x0

    #@2f1
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->cmnt([CII)V

    #@2f4
    .line 587
    const/4 v8, 0x0

    #@2f5
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@2f7
    goto/16 :goto_4

    #@2f9
    .line 590
    :pswitch_15
    const/16 v8, 0x2d

    #@2fb
    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    #@2fe
    .line 591
    const/16 v8, 0x20

    #@300
    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    #@303
    goto/16 :goto_4

    #@305
    .line 594
    :pswitch_16
    const/16 v8, 0x2d

    #@307
    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    #@30a
    .line 595
    const/16 v8, 0x20

    #@30c
    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    #@30f
    .line 598
    :pswitch_17
    const/16 v8, 0x2d

    #@311
    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    #@314
    .line 599
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    #@317
    goto/16 :goto_4

    #@319
    .line 602
    :pswitch_18
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    #@31c
    .line 603
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@31e
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@320
    const/4 v10, 0x0

    #@321
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pi([CII)V

    #@324
    .line 604
    const/4 v8, 0x0

    #@325
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@327
    goto/16 :goto_4

    #@329
    .line 607
    :pswitch_19
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@32b
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@32d
    const/4 v10, 0x0

    #@32e
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pitarget([CII)V

    #@331
    .line 608
    const/4 v8, 0x0

    #@332
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@334
    goto/16 :goto_4

    #@336
    .line 611
    :pswitch_1a
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@338
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@33a
    const/4 v10, 0x0

    #@33b
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pitarget([CII)V

    #@33e
    .line 612
    const/4 v8, 0x0

    #@33f
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@341
    .line 613
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@343
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@345
    const/4 v10, 0x0

    #@346
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pi([CII)V

    #@349
    goto/16 :goto_4

    #@34b
    .line 616
    :pswitch_1b
    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    #@34e
    goto/16 :goto_4

    #@350
    .line 621
    :pswitch_1c
    const/16 v8, 0x20

    #@352
    invoke-direct {p0, v8, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    #@355
    goto/16 :goto_4

    #@357
    .line 624
    :pswitch_1d
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@359
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@35b
    const/4 v10, 0x0

    #@35c
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    #@35f
    .line 625
    const/4 v8, 0x0

    #@360
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@362
    goto/16 :goto_4

    #@364
    .line 628
    :pswitch_1e
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    #@367
    .line 630
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@369
    if-lez v8, :cond_16

    #@36b
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@36d
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@36f
    const/4 v10, 0x0

    #@370
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->gi([CII)V

    #@373
    .line 631
    :cond_16
    const/4 v8, 0x0

    #@374
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@376
    .line 632
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@378
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@37a
    const/4 v10, 0x0

    #@37b
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stage([CII)V

    #@37e
    goto/16 :goto_4

    #@380
    .line 635
    :pswitch_1f
    invoke-direct {p0, v6, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    #@383
    .line 636
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    #@385
    add-int/lit8 v8, v8, -0x1

    #@387
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    #@389
    goto/16 :goto_4

    #@38b
    .line 639
    :pswitch_20
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@38d
    if-lez v8, :cond_17

    #@38f
    iget v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@391
    add-int/lit8 v8, v8, -0x1

    #@393
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@395
    .line 640
    :cond_17
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@397
    iget v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@399
    const/4 v10, 0x0

    #@39a
    invoke-interface {p2, v8, v10, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    #@39d
    .line 641
    const/4 v8, 0x0

    #@39e
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    #@3a0
    goto/16 :goto_4

    #@3a2
    .line 648
    .end local v0    # "action":I
    .end local v1    # "adjCh":I
    .end local v2    # "ch":I
    .end local v7    # "statetableRow":I
    :cond_18
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    #@3a4
    const/4 v9, 0x0

    #@3a5
    const/4 v10, 0x0

    #@3a6
    invoke-interface {p2, v8, v9, v10}, Lorg/ccil/cowan/tagsoup/ScanHandler;->eof([CII)V

    #@3a9
    .line 383
    return-void

    #@3aa
    .line 430
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_14
        :pswitch_e
        :pswitch_1e
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_13
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_2
        :pswitch_1c
        :pswitch_1d
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method public startCDATA()V
    .locals 1

    #@0
    .prologue
    .line 667
    const/16 v0, 0xa

    #@2
    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    #@4
    return-void
.end method
