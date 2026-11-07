.class public Lorg/ccil/cowan/tagsoup/HTMLScanner;
.super Ljava/lang/Object;
.source "HTMLScanner.java"

# interfaces
.implements Lorg/ccil/cowan/tagsoup/Scanner;
.implements Lorg/xml/sax/Locator;


# static fields
.field private static final greylist A_ADUP:I = 0x1

.field private static final greylist A_ADUP_SAVE:I = 0x2

.field private static final greylist A_ADUP_STAGC:I = 0x3

.field private static final greylist A_ANAME:I = 0x4

.field private static final greylist A_ANAME_ADUP:I = 0x5

.field private static final greylist A_ANAME_ADUP_STAGC:I = 0x6

.field private static final greylist A_AVAL:I = 0x7

.field private static final greylist A_AVAL_STAGC:I = 0x8

.field private static final greylist A_CDATA:I = 0x9

.field private static final greylist A_CMNT:I = 0xa

.field private static final greylist A_DECL:I = 0xb

.field private static final greylist A_EMPTYTAG:I = 0xc

.field private static final greylist A_ENTITY:I = 0xd

.field private static final greylist A_ENTITY_START:I = 0xe

.field private static final greylist A_ETAG:I = 0xf

.field private static final greylist A_GI:I = 0x10

.field private static final greylist A_GI_STAGC:I = 0x11

.field private static final greylist A_LT:I = 0x12

.field private static final greylist A_LT_PCDATA:I = 0x13

.field private static final greylist A_MINUS:I = 0x14

.field private static final greylist A_MINUS2:I = 0x15

.field private static final greylist A_MINUS3:I = 0x16

.field private static final greylist A_PCDATA:I = 0x17

.field private static final greylist A_PI:I = 0x18

.field private static final greylist A_PITARGET:I = 0x19

.field private static final greylist A_PITARGET_PI:I = 0x1a

.field private static final greylist A_SAVE:I = 0x1b

.field private static final greylist A_SKIP:I = 0x1c

.field private static final greylist A_SP:I = 0x1d

.field private static final greylist A_STAGC:I = 0x1e

.field private static final greylist A_UNGET:I = 0x1f

.field private static final greylist A_UNSAVE_PCDATA:I = 0x20

.field private static final greylist S_ANAME:I = 0x1

.field private static final greylist S_APOS:I = 0x2

.field private static final greylist S_AVAL:I = 0x3

.field private static final greylist S_BB:I = 0x4

.field private static final greylist S_BBC:I = 0x5

.field private static final greylist S_BBCD:I = 0x6

.field private static final greylist S_BBCDA:I = 0x7

.field private static final greylist S_BBCDAT:I = 0x8

.field private static final greylist S_BBCDATA:I = 0x9

.field private static final greylist S_CDATA:I = 0xa

.field private static final greylist S_CDATA2:I = 0xb

.field private static final greylist S_CDSECT:I = 0xc

.field private static final greylist S_CDSECT1:I = 0xd

.field private static final greylist S_CDSECT2:I = 0xe

.field private static final greylist S_COM:I = 0xf

.field private static final greylist S_COM2:I = 0x10

.field private static final greylist S_COM3:I = 0x11

.field private static final greylist S_COM4:I = 0x12

.field private static final greylist S_DECL:I = 0x13

.field private static final greylist S_DECL2:I = 0x14

.field private static final greylist S_DONE:I = 0x15

.field private static final greylist S_EMPTYTAG:I = 0x16

.field private static final greylist S_ENT:I = 0x17

.field private static final greylist S_EQ:I = 0x18

.field private static final greylist S_ETAG:I = 0x19

.field private static final greylist S_GI:I = 0x1a

.field private static final greylist S_NCR:I = 0x1b

.field private static final greylist S_PCDATA:I = 0x1c

.field private static final greylist S_PI:I = 0x1d

.field private static final greylist S_PITARGET:I = 0x1e

.field private static final greylist S_QUOT:I = 0x1f

.field private static final greylist S_STAGC:I = 0x20

.field private static final greylist S_TAG:I = 0x21

.field private static final greylist S_TAGWS:I = 0x22

.field private static final greylist S_XNCR:I = 0x23

.field private static final greylist debug_actionnames:[Ljava/lang/String;

.field private static final greylist debug_statenames:[Ljava/lang/String;

.field private static greylist statetable:[I

.field static greylist statetableIndex:[[S

.field static greylist statetableIndexMaxChar:I


# instance fields
.field private greylist theCurrentColumn:I

.field private greylist theCurrentLine:I

.field private greylist theLastColumn:I

.field private greylist theLastLine:I

.field greylist theNextState:I

.field greylist theOutputBuffer:[C

.field private greylist thePublicid:Ljava/lang/String;

.field greylist theSize:I

.field greylist theState:I

.field private greylist theSystemid:Ljava/lang/String;

.field greylist theWinMap:[I


# direct methods
.method static constructor greylist <clinit>()V
    .registers 37

    .line 97
    const/16 v0, 0x250

    new-array v0, v0, [I

    fill-array-data v0, :array_128

    sput-object v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    .line 248
    const-string v32, "A_UNGET"

    const-string v33, "A_UNSAVE_PCDATA"

    const-string v1, ""

    const-string v2, "A_ADUP"

    const-string v3, "A_ADUP_SAVE"

    const-string v4, "A_ADUP_STAGC"

    const-string v5, "A_ANAME"

    const-string v6, "A_ANAME_ADUP"

    const-string v7, "A_ANAME_ADUP_STAGC"

    const-string v8, "A_AVAL"

    const-string v9, "A_AVAL_STAGC"

    const-string v10, "A_CDATA"

    const-string v11, "A_CMNT"

    const-string v12, "A_DECL"

    const-string v13, "A_EMPTYTAG"

    const-string v14, "A_ENTITY"

    const-string v15, "A_ENTITY_START"

    const-string v16, "A_ETAG"

    const-string v17, "A_GI"

    const-string v18, "A_GI_STAGC"

    const-string v19, "A_LT"

    const-string v20, "A_LT_PCDATA"

    const-string v21, "A_MINUS"

    const-string v22, "A_MINUS2"

    const-string v23, "A_MINUS3"

    const-string v24, "A_PCDATA"

    const-string v25, "A_PI"

    const-string v26, "A_PITARGET"

    const-string v27, "A_PITARGET_PI"

    const-string v28, "A_SAVE"

    const-string v29, "A_SKIP"

    const-string v30, "A_SP"

    const-string v31, "A_STAGC"

    filled-new-array/range {v1 .. v33}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->debug_actionnames:[Ljava/lang/String;

    .line 249
    const-string v35, "S_TAGWS"

    const-string v36, "S_XNCR"

    const-string v1, ""

    const-string v2, "S_ANAME"

    const-string v3, "S_APOS"

    const-string v4, "S_AVAL"

    const-string v5, "S_BB"

    const-string v6, "S_BBC"

    const-string v7, "S_BBCD"

    const-string v8, "S_BBCDA"

    const-string v9, "S_BBCDAT"

    const-string v10, "S_BBCDATA"

    const-string v11, "S_CDATA"

    const-string v12, "S_CDATA2"

    const-string v13, "S_CDSECT"

    const-string v14, "S_CDSECT1"

    const-string v15, "S_CDSECT2"

    const-string v16, "S_COM"

    const-string v17, "S_COM2"

    const-string v18, "S_COM3"

    const-string v19, "S_COM4"

    const-string v20, "S_DECL"

    const-string v21, "S_DECL2"

    const-string v22, "S_DONE"

    const-string v23, "S_EMPTYTAG"

    const-string v24, "S_ENT"

    const-string v25, "S_EQ"

    const-string v26, "S_ETAG"

    const-string v27, "S_GI"

    const-string v28, "S_NCR"

    const-string v29, "S_PCDATA"

    const-string v30, "S_PI"

    const-string v31, "S_PITARGET"

    const-string v32, "S_QUOT"

    const-string v33, "S_STAGC"

    const-string v34, "S_TAG"

    filled-new-array/range {v1 .. v36}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->debug_statenames:[Ljava/lang/String;

    .line 304
    const/4 v0, -0x1

    .line 305
    .local v0, "maxState":I
    const/4 v1, -0x1

    .line 306
    .local v1, "maxChar":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a2
    sget-object v3, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    array-length v3, v3

    if-ge v2, v3, :cond_c2

    .line 307
    sget-object v3, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    aget v3, v3, v2

    if-le v3, v0, :cond_b1

    .line 308
    sget-object v3, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    aget v0, v3, v2

    .line 310
    :cond_b1
    sget-object v3, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v4, v2, 0x1

    aget v3, v3, v4

    if-le v3, v1, :cond_bf

    .line 311
    sget-object v3, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v4, v2, 0x1

    aget v1, v3, v4

    .line 306
    :cond_bf
    add-int/lit8 v2, v2, 0x4

    goto :goto_a2

    .line 314
    .end local v2    # "i":I
    :cond_c2
    add-int/lit8 v2, v1, 0x1

    sput v2, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetableIndexMaxChar:I

    .line 316
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v1, 0x3

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v3, 0x0

    aput v2, v4, v3

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    sput-object v2, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetableIndex:[[S

    .line 317
    const/4 v2, 0x0

    .local v2, "theState":I
    :goto_de
    if-gt v2, v0, :cond_126

    .line 318
    const/4 v3, -0x2

    .local v3, "ch":I
    :goto_e1
    if-gt v3, v1, :cond_123

    .line 319
    const/4 v4, -0x1

    .line 320
    .local v4, "hit":I
    const/4 v5, 0x0

    .line 321
    .local v5, "action":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_e6
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    array-length v7, v7

    if-ge v6, v7, :cond_117

    .line 322
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    aget v7, v7, v6

    if-eq v2, v7, :cond_f4

    .line 323
    if-eqz v5, :cond_114

    goto :goto_117

    .line 326
    :cond_f4
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v8, v6, 0x1

    aget v7, v7, v8

    if-nez v7, :cond_104

    .line 327
    move v4, v6

    .line 328
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v8, v6, 0x2

    aget v5, v7, v8

    goto :goto_114

    .line 330
    :cond_104
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v8, v6, 0x1

    aget v7, v7, v8

    if-ne v7, v3, :cond_114

    .line 331
    move v4, v6

    .line 332
    sget-object v7, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v8, v6, 0x2

    aget v5, v7, v8

    .line 333
    goto :goto_117

    .line 321
    :cond_114
    :goto_114
    add-int/lit8 v6, v6, 0x4

    goto :goto_e6

    .line 336
    .end local v6    # "i":I
    :cond_117
    :goto_117
    sget-object v6, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetableIndex:[[S

    aget-object v6, v6, v2

    add-int/lit8 v7, v3, 0x2

    int-to-short v8, v4

    aput-short v8, v6, v7

    .line 318
    .end local v4    # "hit":I
    .end local v5    # "action":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_e1

    .line 317
    .end local v3    # "ch":I
    :cond_123
    add-int/lit8 v2, v2, 0x1

    goto :goto_de

    .line 339
    .end local v0    # "maxState":I
    .end local v1    # "maxChar":I
    .end local v2    # "theState":I
    :cond_126
    return-void

    nop

    :array_128
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

.method public constructor greylist <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const/16 v0, 0xc8

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    .line 265
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theWinMap:[I

    return-void

    nop

    :array_14
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

.method public static greylist main([Ljava/lang/String;)V
    .registers 6
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 692
    new-instance v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;-><init>()V

    .line 693
    .local v0, "s":Lorg/ccil/cowan/tagsoup/Scanner;
    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 694
    .local v1, "r":Ljava/io/Reader;
    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v2, v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 695
    .local v2, "w":Ljava/io/Writer;
    new-instance v3, Lorg/ccil/cowan/tagsoup/PYXWriter;

    invoke-direct {v3, v2}, Lorg/ccil/cowan/tagsoup/PYXWriter;-><init>(Ljava/io/Writer;)V

    .line 696
    .local v3, "pw":Lorg/ccil/cowan/tagsoup/PYXWriter;
    invoke-interface {v0, v1, v3}, Lorg/ccil/cowan/tagsoup/Scanner;->scan(Ljava/io/Reader;Lorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 697
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 698
    return-void
.end method

.method private greylist mark()V
    .registers 2

    .line 657
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastColumn:I

    .line 658
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentLine:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastLine:I

    .line 659
    return-void
.end method

.method private static greylist nicechar(I)Ljava/lang/String;
    .registers 4
    .param p0, "in"    # I

    .line 702
    const/16 v0, 0xa

    if-ne p0, v0, :cond_7

    const-string v0, "\\n"

    return-object v0

    .line 703
    :cond_7
    const/16 v0, 0x20

    if-ge p0, v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 704
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v2, p0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V
    .registers 7
    .param p1, "ch"    # I
    .param p2, "h"    # Lorg/ccil/cowan/tagsoup/ScanHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 670
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    array-length v1, v1

    add-int/lit8 v1, v1, -0x14

    if-lt v0, v1, :cond_33

    .line 671
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2a

    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_17

    goto :goto_2a

    .line 678
    :cond_17
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 679
    .local v0, "newOutputBuffer":[C
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v3, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 680
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    goto :goto_33

    .line 673
    .end local v0    # "newOutputBuffer":[C
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {p2, v0, v2, v1}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 674
    iput v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 683
    :cond_33
    :goto_33
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    .line 684
    return-void
.end method

.method private greylist unread(Ljava/io/PushbackReader;I)V
    .registers 4
    .param p1, "r"    # Ljava/io/PushbackReader;
    .param p2, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    const/4 v0, -0x1

    if-eq p2, v0, :cond_6

    invoke-virtual {p1, p2}, Ljava/io/PushbackReader;->unread(I)V

    .line 345
    :cond_6
    return-void
.end method


# virtual methods
.method public whitelist test-api getColumnNumber()I
    .registers 2

    .line 353
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastColumn:I

    return v0
.end method

.method public whitelist test-api getLineNumber()I
    .registers 2

    .line 350
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastLine:I

    return v0
.end method

.method public whitelist test-api getPublicId()Ljava/lang/String;
    .registers 2

    .line 356
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->thePublicid:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSystemId()Ljava/lang/String;
    .registers 2

    .line 359
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSystemid:Ljava/lang/String;

    return-object v0
.end method

.method public greylist resetDocumentLocator(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "publicid"    # Ljava/lang/String;
    .param p2, "systemid"    # Ljava/lang/String;

    .line 372
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->thePublicid:Ljava/lang/String;

    .line 373
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSystemid:Ljava/lang/String;

    .line 374
    const/4 v0, 0x0

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentLine:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastColumn:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theLastLine:I

    .line 375
    return-void
.end method

.method public greylist scan(Ljava/io/Reader;Lorg/ccil/cowan/tagsoup/ScanHandler;)V
    .registers 21
    .param p1, "r0"    # Ljava/io/Reader;
    .param p2, "h"    # Lorg/ccil/cowan/tagsoup/ScanHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 384
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x1c

    iput v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    .line 386
    instance-of v4, v1, Ljava/io/BufferedReader;

    const/4 v5, 0x5

    if-eqz v4, :cond_15

    .line 387
    new-instance v4, Ljava/io/PushbackReader;

    invoke-direct {v4, v1, v5}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;I)V

    .local v4, "r":Ljava/io/PushbackReader;
    goto :goto_1f

    .line 390
    .end local v4    # "r":Ljava/io/PushbackReader;
    :cond_15
    new-instance v4, Ljava/io/PushbackReader;

    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v4, v6, v5}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;I)V

    .line 393
    .restart local v4    # "r":Ljava/io/PushbackReader;
    :goto_1f
    invoke-virtual {v4}, Ljava/io/PushbackReader;->read()I

    move-result v5

    .line 394
    .local v5, "firstChar":I
    const v6, 0xfeff

    if-eq v5, v6, :cond_2b

    invoke-direct {v0, v4, v5}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    .line 396
    :cond_2b
    :goto_2b
    iget v6, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v7, 0x15

    const/4 v8, 0x0

    if-eq v6, v7, :cond_39e

    .line 397
    invoke-virtual {v4}, Ljava/io/PushbackReader;->read()I

    move-result v6

    .line 400
    .local v6, "ch":I
    const/16 v7, 0x9f

    const/16 v9, 0x80

    if-lt v6, v9, :cond_44

    if-gt v6, v7, :cond_44

    iget-object v10, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theWinMap:[I

    add-int/lit8 v11, v6, -0x80

    aget v6, v10, v11

    .line 402
    :cond_44
    const/16 v10, 0xd

    const/16 v11, 0xa

    if-ne v6, v10, :cond_55

    .line 403
    invoke-virtual {v4}, Ljava/io/PushbackReader;->read()I

    move-result v6

    .line 404
    if-eq v6, v11, :cond_55

    .line 405
    invoke-direct {v0, v4, v6}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    .line 406
    const/16 v6, 0xa

    .line 410
    :cond_55
    const/4 v10, 0x1

    if-ne v6, v11, :cond_60

    .line 411
    iget v12, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentLine:I

    add-int/2addr v12, v10

    iput v12, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentLine:I

    .line 412
    iput v8, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    goto :goto_65

    .line 415
    :cond_60
    iget v12, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    add-int/2addr v12, v10

    iput v12, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    .line 418
    :goto_65
    const/4 v12, -0x1

    const/16 v13, 0x20

    if-ge v6, v13, :cond_73

    if-eq v6, v11, :cond_73

    const/16 v11, 0x9

    if-eq v6, v11, :cond_73

    if-eq v6, v12, :cond_73

    goto :goto_2b

    .line 421
    :cond_73
    if-lt v6, v12, :cond_7b

    sget v11, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetableIndexMaxChar:I

    if-ge v6, v11, :cond_7b

    move v11, v6

    goto :goto_7c

    :cond_7b
    const/4 v11, -0x2

    .line 422
    .local v11, "adjCh":I
    :goto_7c
    sget-object v14, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetableIndex:[[S

    iget v15, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    aget-object v14, v14, v15

    add-int/lit8 v15, v11, 0x2

    aget-short v14, v14, v15

    .line 423
    .local v14, "statetableRow":I
    const/4 v15, 0x0

    .line 424
    .local v15, "action":I
    if-eq v14, v12, :cond_97

    .line 425
    sget-object v16, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v17, v14, 0x2

    aget v15, v16, v17

    .line 426
    sget-object v16, Lorg/ccil/cowan/tagsoup/HTMLScanner;->statetable:[I

    add-int/lit8 v17, v14, 0x3

    aget v3, v16, v17

    iput v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    .line 430
    :cond_97
    const/16 v3, 0x3c

    const/16 v7, 0x2d

    packed-switch v15, :pswitch_data_3a6

    .line 644
    new-instance v3, Ljava/lang/Error;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t process state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 639
    :pswitch_b7
    iget v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    if-lez v3, :cond_c0

    iget v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    sub-int/2addr v3, v10

    iput v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 640
    :cond_c0
    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v8, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 641
    iput v8, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 642
    const/16 v8, 0x1c

    goto/16 :goto_36a

    .line 635
    :pswitch_cd
    invoke-direct {v0, v4, v6}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    .line 636
    iget v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    sub-int/2addr v3, v10

    iput v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    .line 637
    const/16 v8, 0x1c

    goto/16 :goto_36a

    .line 624
    :pswitch_d9
    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v8, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    .line 625
    iput v8, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 626
    const/16 v8, 0x1c

    goto/16 :goto_36a

    .line 621
    :pswitch_e6
    invoke-direct {v0, v13, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 622
    const/16 v8, 0x1c

    goto/16 :goto_36a

    .line 619
    :pswitch_ed
    const/16 v8, 0x1c

    goto/16 :goto_36a

    .line 616
    :pswitch_f1
    invoke-direct {v0, v6, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 617
    const/16 v8, 0x1c

    goto/16 :goto_36a

    .line 611
    :pswitch_f8
    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v8, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pitarget([CII)V

    .line 612
    iput v8, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 613
    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v8, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pi([CII)V

    .line 614
    const/16 v8, 0x1c

    goto/16 :goto_36a

    .line 607
    :pswitch_10c
    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v8, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pitarget([CII)V

    .line 608
    iput v8, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 609
    const/16 v8, 0x1c

    goto/16 :goto_36a

    .line 602
    :pswitch_119
    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 603
    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v8, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pi([CII)V

    .line 604
    iput v8, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 605
    const/16 v8, 0x1c

    goto/16 :goto_36a

    .line 580
    :pswitch_129
    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 581
    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v8, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 582
    iput v8, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 583
    const/16 v8, 0x1c

    goto/16 :goto_36a

    .line 590
    :pswitch_139
    invoke-direct {v0, v7, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 591
    invoke-direct {v0, v13, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 592
    const/16 v8, 0x1c

    goto/16 :goto_36a

    .line 594
    :pswitch_143
    invoke-direct {v0, v7, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 595
    invoke-direct {v0, v13, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 598
    :pswitch_149
    invoke-direct {v0, v7, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 599
    invoke-direct {v0, v6, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 600
    const/16 v8, 0x1c

    goto/16 :goto_36a

    .line 574
    :pswitch_153
    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 575
    invoke-direct {v0, v3, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 576
    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v8, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 577
    iput v8, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 578
    const/16 v8, 0x1c

    goto/16 :goto_36a

    .line 569
    :pswitch_166
    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 570
    invoke-direct {v0, v3, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 571
    invoke-direct {v0, v6, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 572
    const/16 v8, 0x1c

    goto/16 :goto_36a

    .line 564
    :pswitch_173
    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v8, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->gi([CII)V

    .line 565
    iput v8, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 566
    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v8, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    .line 567
    const/16 v8, 0x1c

    goto/16 :goto_36a

    .line 560
    :pswitch_187
    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v8, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->gi([CII)V

    .line 561
    iput v8, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 562
    const/16 v8, 0x1c

    goto/16 :goto_36a

    .line 552
    :pswitch_194
    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v8, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->etag([CII)V

    .line 553
    iput v8, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 554
    const/16 v8, 0x1c

    goto/16 :goto_36a

    .line 481
    :pswitch_1a1
    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v8, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 482
    iput v8, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 483
    invoke-direct {v0, v6, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 484
    const/16 v8, 0x1c

    goto/16 :goto_36a

    .line 486
    :pswitch_1b1
    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 487
    int-to-char v3, v6

    .line 489
    .local v3, "ch1":C
    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    const/16 v13, 0x17

    const/16 v9, 0x23

    const/16 v8, 0x1b

    if-ne v7, v13, :cond_1ca

    if-ne v3, v9, :cond_1ca

    .line 490
    iput v8, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    .line 491
    invoke-direct {v0, v6, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 492
    const/16 v8, 0x1c

    goto/16 :goto_36a

    .line 494
    :cond_1ca
    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    if-ne v7, v8, :cond_1df

    const/16 v7, 0x78

    if-eq v3, v7, :cond_1d6

    const/16 v7, 0x58

    if-ne v3, v7, :cond_1df

    .line 495
    :cond_1d6
    iput v9, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    .line 496
    invoke-direct {v0, v6, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 497
    const/16 v8, 0x1c

    goto/16 :goto_36a

    .line 499
    :cond_1df
    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    if-ne v7, v13, :cond_1f0

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-eqz v7, :cond_1f0

    .line 500
    invoke-direct {v0, v6, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 501
    const/16 v8, 0x1c

    goto/16 :goto_36a

    .line 503
    :cond_1f0
    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    if-ne v7, v8, :cond_201

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_201

    .line 504
    invoke-direct {v0, v6, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 505
    const/16 v8, 0x1c

    goto/16 :goto_36a

    .line 507
    :cond_201
    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    if-ne v7, v9, :cond_21a

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_213

    const-string v7, "abcdefABCDEF"

    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v12, :cond_21a

    .line 508
    :cond_213
    invoke-direct {v0, v6, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 509
    const/16 v8, 0x1c

    goto/16 :goto_36a

    .line 514
    :cond_21a
    iget-object v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v8, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    sub-int/2addr v8, v10

    invoke-interface {v2, v7, v10, v8}, Lorg/ccil/cowan/tagsoup/ScanHandler;->entity([CII)V

    .line 515
    invoke-interface {v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->getEntity()I

    move-result v7

    .line 517
    .local v7, "ent":I
    if-eqz v7, :cond_274

    .line 518
    const/4 v8, 0x0

    iput v8, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 519
    const/16 v8, 0x80

    if-lt v7, v8, :cond_239

    const/16 v8, 0x9f

    if-gt v7, v8, :cond_239

    .line 520
    iget-object v8, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theWinMap:[I

    add-int/lit8 v9, v7, -0x80

    aget v7, v8, v9

    .line 522
    :cond_239
    const/16 v8, 0x20

    if-ge v7, v8, :cond_240

    .line 524
    const/16 v7, 0x20

    goto :goto_267

    .line 526
    :cond_240
    const v8, 0xd800

    if-lt v7, v8, :cond_24c

    const v9, 0xdfff

    if-gt v7, v9, :cond_24c

    .line 528
    const/4 v7, 0x0

    goto :goto_267

    .line 530
    :cond_24c
    const v9, 0xffff

    if-gt v7, v9, :cond_255

    .line 532
    invoke-direct {v0, v7, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto :goto_267

    .line 536
    :cond_255
    const/high16 v9, 0x10000

    sub-int/2addr v7, v9

    .line 537
    shr-int/lit8 v9, v7, 0xa

    add-int/2addr v9, v8

    invoke-direct {v0, v9, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 538
    and-int/lit16 v8, v7, 0x3ff

    const v9, 0xdc00

    add-int/2addr v8, v9

    invoke-direct {v0, v8, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 540
    :goto_267
    const/16 v8, 0x3b

    if-eq v6, v8, :cond_27c

    .line 541
    invoke-direct {v0, v4, v6}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    .line 542
    iget v8, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    sub-int/2addr v8, v10

    iput v8, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    goto :goto_27c

    .line 546
    :cond_274
    invoke-direct {v0, v4, v6}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->unread(Ljava/io/PushbackReader;I)V

    .line 547
    iget v8, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    sub-int/2addr v8, v10

    iput v8, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theCurrentColumn:I

    .line 549
    :cond_27c
    :goto_27c
    const/16 v8, 0x1c

    iput v8, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    .line 550
    goto/16 :goto_36a

    .line 628
    .end local v3    # "ch1":C
    .end local v7    # "ent":I
    :pswitch_282
    const/16 v8, 0x1c

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 630
    iget v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    if-lez v3, :cond_294

    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    const/4 v9, 0x0

    invoke-interface {v2, v3, v9, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->gi([CII)V

    goto :goto_295

    :cond_294
    const/4 v9, 0x0

    .line 631
    :goto_295
    iput v9, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 632
    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v9, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stage([CII)V

    .line 633
    goto/16 :goto_36a

    .line 556
    :pswitch_2a0
    move v9, v8

    const/16 v8, 0x1c

    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v9, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->decl([CII)V

    .line 557
    iput v9, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 558
    goto/16 :goto_36a

    .line 585
    :pswitch_2ae
    move v9, v8

    const/16 v8, 0x1c

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 586
    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v9, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->cmnt([CII)V

    .line 587
    iput v9, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 588
    goto/16 :goto_36a

    .line 474
    :pswitch_2bf
    const/16 v8, 0x1c

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->mark()V

    .line 476
    iget v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    if-le v3, v10, :cond_2ce

    iget v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    add-int/lit8 v3, v3, -0x2

    iput v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 477
    :cond_2ce
    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    const/4 v9, 0x0

    invoke-interface {v2, v3, v9, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    .line 478
    iput v9, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 479
    goto/16 :goto_36a

    .line 469
    :pswitch_2da
    move v9, v8

    const/16 v8, 0x1c

    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v9, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aval([CII)V

    .line 470
    iput v9, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 471
    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v9, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    .line 472
    goto/16 :goto_36a

    .line 465
    :pswitch_2ef
    move v9, v8

    const/16 v8, 0x1c

    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v9, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aval([CII)V

    .line 466
    iput v9, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 467
    goto/16 :goto_36a

    .line 459
    :pswitch_2fd
    move v9, v8

    const/16 v8, 0x1c

    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v9, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aname([CII)V

    .line 460
    iput v9, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 461
    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v9, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    .line 462
    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v9, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    .line 463
    goto :goto_36a

    .line 454
    :pswitch_318
    move v9, v8

    const/16 v8, 0x1c

    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v9, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aname([CII)V

    .line 455
    iput v9, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 456
    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v9, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    .line 457
    goto :goto_36a

    .line 450
    :pswitch_32c
    move v9, v8

    const/16 v8, 0x1c

    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v9, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aname([CII)V

    .line 451
    iput v9, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 452
    goto :goto_36a

    .line 445
    :pswitch_339
    move v9, v8

    const/16 v8, 0x1c

    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v9, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    .line 446
    iput v9, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 447
    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v9, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    .line 448
    goto :goto_36a

    .line 440
    :pswitch_34d
    move v9, v8

    const/16 v8, 0x1c

    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v9, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    .line 441
    iput v9, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 442
    invoke-direct {v0, v6, v2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->save(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 443
    goto :goto_36a

    .line 436
    :pswitch_35d
    move v9, v8

    const/16 v8, 0x1c

    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    iget v7, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    invoke-interface {v2, v3, v9, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->adup([CII)V

    .line 437
    iput v9, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theSize:I

    .line 438
    nop

    .line 646
    :goto_36a
    iget v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    iput v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    .line 647
    .end local v6    # "ch":I
    .end local v11    # "adjCh":I
    .end local v14    # "statetableRow":I
    .end local v15    # "action":I
    move v3, v8

    goto/16 :goto_2b

    .line 432
    .restart local v6    # "ch":I
    .restart local v11    # "adjCh":I
    .restart local v14    # "statetableRow":I
    .restart local v15    # "action":I
    :pswitch_371
    new-instance v3, Ljava/lang/Error;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTMLScanner can\'t cope with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 433
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theState:I

    .line 434
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 648
    .end local v6    # "ch":I
    .end local v11    # "adjCh":I
    .end local v14    # "statetableRow":I
    .end local v15    # "action":I
    :cond_39e
    iget-object v3, v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theOutputBuffer:[C

    const/4 v9, 0x0

    invoke-interface {v2, v3, v9, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->eof([CII)V

    .line 649
    return-void

    nop

    :pswitch_data_3a6
    .packed-switch 0x0
        :pswitch_371
        :pswitch_35d
        :pswitch_34d
        :pswitch_339
        :pswitch_32c
        :pswitch_318
        :pswitch_2fd
        :pswitch_2ef
        :pswitch_2da
        :pswitch_2bf
        :pswitch_2ae
        :pswitch_2a0
        :pswitch_282
        :pswitch_1b1
        :pswitch_1a1
        :pswitch_194
        :pswitch_187
        :pswitch_173
        :pswitch_166
        :pswitch_153
        :pswitch_149
        :pswitch_143
        :pswitch_139
        :pswitch_129
        :pswitch_119
        :pswitch_10c
        :pswitch_f8
        :pswitch_f1
        :pswitch_ed
        :pswitch_e6
        :pswitch_d9
        :pswitch_cd
        :pswitch_b7
    .end packed-switch
.end method

.method public greylist startCDATA()V
    .registers 2

    .line 667
    const/16 v0, 0xa

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->theNextState:I

    return-void
.end method
