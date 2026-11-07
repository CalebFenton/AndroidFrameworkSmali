.class public final Landroid/icu/text/UnicodeCompressor;
.super Ljava/lang/Object;
.source "UnicodeCompressor.java"

# interfaces
.implements Landroid/icu/text/SCSU;


# static fields
.field private static greylist-max-o sSingleTagTable:[Z

.field private static greylist-max-o sUnicodeTagTable:[Z


# instance fields
.field private greylist-max-o fCurrentWindow:I

.field private greylist-max-o fIndexCount:[I

.field private greylist-max-o fMode:I

.field private greylist-max-o fOffsets:[I

.field private greylist-max-o fTimeStamp:I

.field private greylist-max-o fTimeStamps:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 196
    const/16 v0, 0x100

    new-array v1, v0, [Z

    fill-array-data v1, :array_12

    sput-object v1, Landroid/icu/text/UnicodeCompressor;->sSingleTagTable:[Z

    .line 230
    new-array v0, v0, [Z

    fill-array-data v0, :array_96

    sput-object v0, Landroid/icu/text/UnicodeCompressor;->sUnicodeTagTable:[Z

    return-void

    nop

    :array_12
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_96
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor greylist-max-o <init>()V
    .registers 4

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    .line 271
    const/16 v1, 0x8

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    .line 274
    iput v0, p0, Landroid/icu/text/UnicodeCompressor;->fMode:I

    .line 277
    const/16 v2, 0x100

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/icu/text/UnicodeCompressor;->fIndexCount:[I

    .line 280
    new-array v1, v1, [I

    iput-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    .line 283
    iput v0, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    .line 293
    invoke-virtual {p0}, Landroid/icu/text/UnicodeCompressor;->reset()V

    .line 294
    return-void
.end method

.method public static greylist-max-o compress(Ljava/lang/String;)[B
    .registers 4
    .param p0, "buffer"    # Ljava/lang/String;

    .line 304
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/icu/text/UnicodeCompressor;->compress([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o compress([CII)[B
    .registers 12
    .param p0, "buffer"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 319
    new-instance v0, Landroid/icu/text/UnicodeCompressor;

    invoke-direct {v0}, Landroid/icu/text/UnicodeCompressor;-><init>()V

    move-object v1, v0

    .line 326
    .local v1, "comp":Landroid/icu/text/UnicodeCompressor;
    sub-int v0, p2, p1

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 327
    .local v8, "len":I
    new-array v6, v8, [B

    .line 329
    .local v6, "temp":[B
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    .end local p0    # "buffer":[C
    .end local p1    # "start":I
    .end local p2    # "limit":I
    .local v2, "buffer":[C
    .local v3, "start":I
    .local v4, "limit":I
    invoke-virtual/range {v1 .. v8}, Landroid/icu/text/UnicodeCompressor;->compress([CII[I[BII)I

    move-result p0

    .line 332
    .local p0, "byteCount":I
    new-array p1, p0, [B

    .line 333
    .local p1, "result":[B
    const/4 p2, 0x0

    invoke-static {v6, p2, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    return-object p1
.end method

.method private greylist-max-o findDynamicWindow(I)I
    .registers 5
    .param p1, "c"    # I

    .line 952
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_15

    .line 953
    invoke-direct {p0, p1, v0}, Landroid/icu/text/UnicodeCompressor;->inDynamicWindow(II)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 954
    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 955
    return v0

    .line 952
    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 959
    .end local v0    # "i":I
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method private static greylist-max-o findStaticWindow(I)I
    .registers 3
    .param p0, "c"    # I

    .line 972
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_d

    .line 973
    invoke-static {p0, v0}, Landroid/icu/text/UnicodeCompressor;->inStaticWindow(II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 974
    return v0

    .line 972
    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 978
    .end local v0    # "i":I
    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o getLRDefinedWindow()I
    .registers 5

    .line 988
    const v0, 0x7fffffff

    .line 989
    .local v0, "leastRU":I
    const/4 v1, -0x1

    .line 994
    .local v1, "whichWindow":I
    const/4 v2, 0x7

    .local v2, "i":I
    :goto_5
    if-ltz v2, :cond_15

    .line 995
    iget-object v3, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    aget v3, v3, v2

    if-ge v3, v0, :cond_12

    .line 996
    iget-object v3, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    aget v0, v3, v2

    .line 997
    move v1, v2

    .line 994
    :cond_12
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 1001
    .end local v2    # "i":I
    :cond_15
    return v1
.end method

.method private greylist-max-o inDynamicWindow(II)Z
    .registers 4
    .param p1, "c"    # I
    .param p2, "whichWindow"    # I

    .line 906
    iget-object v0, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    aget v0, v0, p2

    if-lt p1, v0, :cond_10

    iget-object v0, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    aget v0, v0, p2

    add-int/lit16 v0, v0, 0x80

    if-ge p1, v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static greylist-max-o inStaticWindow(II)Z
    .registers 3
    .param p0, "c"    # I
    .param p1, "whichWindow"    # I

    .line 920
    sget-object v0, Landroid/icu/text/UnicodeCompressor;->sOffsets:[I

    aget v0, v0, p1

    if-lt p0, v0, :cond_10

    sget-object v0, Landroid/icu/text/UnicodeCompressor;->sOffsets:[I

    aget v0, v0, p1

    add-int/lit16 v0, v0, 0x80

    if-ge p0, v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static greylist-max-o isCompressible(I)Z
    .registers 2
    .param p0, "c"    # I

    .line 935
    const/16 v0, 0x3400

    if-lt p0, v0, :cond_c

    const v0, 0xe000

    if-lt p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method private static greylist-max-o makeIndex(I)I
    .registers 4
    .param p0, "c"    # I

    .line 865
    const/16 v0, 0xc0

    if-lt p0, v0, :cond_b

    const/16 v0, 0x140

    if-ge p0, v0, :cond_b

    .line 866
    const/16 v0, 0xf9

    return v0

    .line 867
    :cond_b
    const/16 v0, 0x250

    if-lt p0, v0, :cond_16

    const/16 v0, 0x2d0

    if-ge p0, v0, :cond_16

    .line 868
    const/16 v0, 0xfa

    return v0

    .line 869
    :cond_16
    const/16 v0, 0x370

    if-lt p0, v0, :cond_21

    const/16 v0, 0x3f0

    if-ge p0, v0, :cond_21

    .line 870
    const/16 v0, 0xfb

    return v0

    .line 871
    :cond_21
    const/16 v0, 0x530

    if-lt p0, v0, :cond_2c

    const/16 v0, 0x590

    if-ge p0, v0, :cond_2c

    .line 872
    const/16 v0, 0xfc

    return v0

    .line 873
    :cond_2c
    const/16 v0, 0x3040

    const/16 v1, 0x30a0

    if-lt p0, v0, :cond_37

    if-ge p0, v1, :cond_37

    .line 874
    const/16 v0, 0xfd

    return v0

    .line 875
    :cond_37
    if-lt p0, v1, :cond_40

    const/16 v0, 0x3120

    if-ge p0, v0, :cond_40

    .line 876
    const/16 v0, 0xfe

    return v0

    .line 877
    :cond_40
    const v0, 0xff60

    const/16 v1, 0xff

    if-lt p0, v0, :cond_4d

    const v0, 0xff9f

    if-ge p0, v0, :cond_4d

    .line 878
    return v1

    .line 881
    :cond_4d
    const/16 v0, 0x80

    if-lt p0, v0, :cond_59

    const/16 v2, 0x3400

    if-ge p0, v2, :cond_59

    .line 882
    div-int/lit16 v0, p0, 0x80

    and-int/2addr v0, v1

    return v0

    .line 883
    :cond_59
    const v2, 0xe000

    if-lt p0, v2, :cond_6c

    const v2, 0xffff

    if-gt p0, v2, :cond_6c

    .line 884
    const v2, 0xac00

    sub-int v2, p0, v2

    div-int/2addr v2, v0

    and-int/lit16 v0, v2, 0xff

    return v0

    .line 888
    :cond_6c
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist-max-o compress([CII[I[BII)I
    .registers 28
    .param p1, "charBuffer"    # [C
    .param p2, "charBufferStart"    # I
    .param p3, "charBufferLimit"    # I
    .param p4, "charsRead"    # [I
    .param p5, "byteBuffer"    # [B
    .param p6, "byteBufferStart"    # I
    .param p7, "byteBufferLimit"    # I

    .line 364
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p5

    move/from16 v3, p7

    move/from16 v4, p6

    .line 367
    .local v4, "bytePos":I
    move/from16 v5, p2

    .line 370
    .local v5, "ucPos":I
    const/4 v6, -0x1

    .line 373
    .local v6, "curUC":I
    const/4 v7, -0x1

    .line 376
    .local v7, "curIndex":I
    const/4 v8, -0x1

    .line 377
    .local v8, "nextUC":I
    const/4 v9, -0x1

    .line 380
    .local v9, "forwardUC":I
    const/4 v10, 0x0

    .line 383
    .local v10, "whichWindow":I
    const/4 v11, 0x0

    .line 384
    .local v11, "hiByte":I
    const/4 v12, 0x0

    .line 388
    .local v12, "loByte":I
    array-length v13, v2

    const/4 v14, 0x4

    if-lt v13, v14, :cond_3b6

    sub-int v13, v3, p6

    if-lt v13, v14, :cond_3b6

    .line 392
    :goto_1b
    if-ge v5, v1, :cond_3ab

    if-ge v4, v3, :cond_3ab

    .line 393
    iget v14, v0, Landroid/icu/text/UnicodeCompressor;->fMode:I

    const/16 v16, -0x10

    const/4 v13, -0x1

    const/4 v15, 0x1

    packed-switch v14, :pswitch_data_3be

    goto/16 :goto_3a9

    .line 620
    :goto_2a
    :pswitch_2a
    if-ge v5, v1, :cond_3a9

    if-ge v4, v3, :cond_3a9

    .line 622
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "ucPos":I
    .local v14, "ucPos":I
    aget-char v6, p1, v5

    .line 625
    if-ge v14, v1, :cond_38

    .line 626
    aget-char v5, p1, v14

    move v8, v5

    .end local v8    # "nextUC":I
    .local v5, "nextUC":I
    goto :goto_3a

    .line 628
    .end local v5    # "nextUC":I
    .restart local v8    # "nextUC":I
    :cond_38
    const/4 v5, -0x1

    move v8, v5

    .line 632
    :goto_3a
    invoke-static {v6}, Landroid/icu/text/UnicodeCompressor;->isCompressible(I)Z

    move-result v5

    if-eqz v5, :cond_193

    if-eq v8, v13, :cond_4a

    .line 633
    invoke-static {v8}, Landroid/icu/text/UnicodeCompressor;->isCompressible(I)Z

    move-result v5

    if-nez v5, :cond_4a

    goto/16 :goto_193

    .line 652
    :cond_4a
    const/16 v5, 0x80

    if-ge v6, v5, :cond_99

    .line 653
    and-int/lit16 v12, v6, 0xff

    .line 658
    if-eq v8, v13, :cond_80

    if-ge v8, v5, :cond_80

    sget-object v5, Landroid/icu/text/UnicodeCompressor;->sSingleTagTable:[Z

    aget-boolean v5, v5, v12

    if-nez v5, :cond_80

    .line 663
    add-int/lit8 v5, v4, 0x1

    if-lt v5, v3, :cond_62

    .line 664
    add-int/lit8 v5, v14, -0x1

    .end local v14    # "ucPos":I
    .local v5, "ucPos":I
    goto/16 :goto_3ab

    .line 667
    .end local v5    # "ucPos":I
    .restart local v14    # "ucPos":I
    :cond_62
    iget v5, v0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    .line 668
    .end local v10    # "whichWindow":I
    .local v5, "whichWindow":I
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "bytePos":I
    .local v10, "bytePos":I
    add-int/lit16 v13, v5, 0xe0

    int-to-byte v13, v13

    aput-byte v13, v2, v4

    .line 669
    add-int/lit8 v4, v10, 0x1

    .end local v10    # "bytePos":I
    .restart local v4    # "bytePos":I
    int-to-byte v13, v12

    aput-byte v13, v2, v10

    .line 672
    iget-object v10, v0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    iget v13, v0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    add-int/2addr v13, v15

    iput v13, v0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    aput v13, v10, v5

    .line 673
    const/4 v10, 0x0

    iput v10, v0, Landroid/icu/text/UnicodeCompressor;->fMode:I

    .line 674
    move v10, v5

    move v5, v14

    goto/16 :goto_3a9

    .line 684
    .end local v5    # "whichWindow":I
    .local v10, "whichWindow":I
    :cond_80
    add-int/lit8 v5, v4, 0x1

    if-lt v5, v3, :cond_88

    .line 685
    add-int/lit8 v5, v14, -0x1

    .end local v14    # "ucPos":I
    .local v5, "ucPos":I
    goto/16 :goto_3ab

    .line 690
    .end local v5    # "ucPos":I
    .restart local v14    # "ucPos":I
    :cond_88
    add-int/lit8 v5, v4, 0x1

    const/16 v17, 0x0

    .end local v4    # "bytePos":I
    .local v5, "bytePos":I
    aput-byte v17, v2, v4

    .line 691
    add-int/lit8 v4, v5, 0x1

    move/from16 v18, v15

    .end local v5    # "bytePos":I
    .restart local v4    # "bytePos":I
    int-to-byte v15, v12

    aput-byte v15, v2, v5

    move v5, v14

    move/from16 v15, v18

    goto :goto_2a

    .line 696
    :cond_99
    move/from16 v18, v15

    invoke-direct {v0, v6}, Landroid/icu/text/UnicodeCompressor;->findDynamicWindow(I)I

    move-result v5

    move v10, v5

    if-eq v5, v13, :cond_fd

    .line 701
    invoke-direct {v0, v8, v10}, Landroid/icu/text/UnicodeCompressor;->inDynamicWindow(II)Z

    move-result v5

    if-eqz v5, :cond_d7

    .line 705
    add-int/lit8 v5, v4, 0x1

    if-lt v5, v3, :cond_b0

    .line 706
    add-int/lit8 v5, v14, -0x1

    .end local v14    # "ucPos":I
    .local v5, "ucPos":I
    goto/16 :goto_3ab

    .line 708
    .end local v5    # "ucPos":I
    .restart local v14    # "ucPos":I
    :cond_b0
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bytePos":I
    .local v5, "bytePos":I
    add-int/lit16 v13, v10, 0xe0

    int-to-byte v13, v13

    aput-byte v13, v2, v4

    .line 709
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "bytePos":I
    .restart local v4    # "bytePos":I
    iget-object v13, v0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    aget v13, v13, v10

    sub-int v13, v6, v13

    const/16 v15, 0x80

    add-int/2addr v13, v15

    int-to-byte v13, v13

    aput-byte v13, v2, v5

    .line 713
    iget-object v5, v0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    iget v13, v0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    aput v13, v5, v10

    .line 714
    iput v10, v0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    .line 715
    const/4 v5, 0x0

    iput v5, v0, Landroid/icu/text/UnicodeCompressor;->fMode:I

    .line 716
    move v5, v14

    goto/16 :goto_3a9

    .line 725
    :cond_d7
    add-int/lit8 v5, v4, 0x2

    if-lt v5, v3, :cond_df

    .line 726
    add-int/lit8 v5, v14, -0x1

    .end local v14    # "ucPos":I
    .local v5, "ucPos":I
    goto/16 :goto_3ab

    .line 728
    .end local v5    # "ucPos":I
    .restart local v14    # "ucPos":I
    :cond_df
    ushr-int/lit8 v11, v6, 0x8

    .line 729
    and-int/lit16 v12, v6, 0xff

    .line 731
    sget-object v5, Landroid/icu/text/UnicodeCompressor;->sUnicodeTagTable:[Z

    aget-boolean v5, v5, v11

    if-eqz v5, :cond_ee

    .line 733
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bytePos":I
    .local v5, "bytePos":I
    aput-byte v16, v2, v4

    move v4, v5

    .line 735
    .end local v5    # "bytePos":I
    .restart local v4    # "bytePos":I
    :cond_ee
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bytePos":I
    .restart local v5    # "bytePos":I
    int-to-byte v15, v11

    aput-byte v15, v2, v4

    .line 736
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "bytePos":I
    .restart local v4    # "bytePos":I
    int-to-byte v15, v12

    aput-byte v15, v2, v5

    move v5, v14

    move/from16 v15, v18

    goto/16 :goto_2a

    .line 743
    :cond_fd
    invoke-static {v6}, Landroid/icu/text/UnicodeCompressor;->makeIndex(I)I

    move-result v7

    .line 744
    iget-object v5, v0, Landroid/icu/text/UnicodeCompressor;->fIndexCount:[I

    aget v15, v5, v7

    add-int/lit8 v15, v15, 0x1

    aput v15, v5, v7

    .line 747
    add-int/lit8 v5, v14, 0x1

    if-ge v5, v1, :cond_113

    .line 748
    add-int/lit8 v5, v14, 0x1

    aget-char v5, p1, v5

    move v9, v5

    .end local v9    # "forwardUC":I
    .local v5, "forwardUC":I
    goto :goto_115

    .line 750
    .end local v5    # "forwardUC":I
    .restart local v9    # "forwardUC":I
    :cond_113
    const/4 v5, -0x1

    move v9, v5

    .line 759
    :goto_115
    iget-object v5, v0, Landroid/icu/text/UnicodeCompressor;->fIndexCount:[I

    aget v5, v5, v7

    move/from16 v15, v18

    if-gt v5, v15, :cond_14f

    .line 760
    invoke-static {v8}, Landroid/icu/text/UnicodeCompressor;->makeIndex(I)I

    move-result v5

    if-ne v7, v5, :cond_12a

    .line 761
    invoke-static {v9}, Landroid/icu/text/UnicodeCompressor;->makeIndex(I)I

    move-result v5

    if-ne v7, v5, :cond_12a

    goto :goto_14f

    .line 792
    :cond_12a
    add-int/lit8 v5, v4, 0x2

    if-lt v5, v3, :cond_132

    .line 793
    add-int/lit8 v5, v14, -0x1

    .end local v14    # "ucPos":I
    .local v5, "ucPos":I
    goto/16 :goto_3ab

    .line 795
    .end local v5    # "ucPos":I
    .restart local v14    # "ucPos":I
    :cond_132
    ushr-int/lit8 v11, v6, 0x8

    .line 796
    and-int/lit16 v12, v6, 0xff

    .line 798
    sget-object v5, Landroid/icu/text/UnicodeCompressor;->sUnicodeTagTable:[Z

    aget-boolean v5, v5, v11

    if-eqz v5, :cond_141

    .line 800
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bytePos":I
    .local v5, "bytePos":I
    aput-byte v16, v2, v4

    move v4, v5

    .line 802
    .end local v5    # "bytePos":I
    .restart local v4    # "bytePos":I
    :cond_141
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bytePos":I
    .restart local v5    # "bytePos":I
    int-to-byte v15, v11

    aput-byte v15, v2, v4

    .line 803
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "bytePos":I
    .restart local v4    # "bytePos":I
    int-to-byte v15, v12

    aput-byte v15, v2, v5

    move v5, v14

    const/4 v15, 0x1

    goto/16 :goto_2a

    .line 766
    :cond_14f
    :goto_14f
    add-int/lit8 v5, v4, 0x2

    if-lt v5, v3, :cond_157

    .line 767
    add-int/lit8 v5, v14, -0x1

    .end local v14    # "ucPos":I
    .local v5, "ucPos":I
    goto/16 :goto_3ab

    .line 770
    .end local v5    # "ucPos":I
    .restart local v14    # "ucPos":I
    :cond_157
    invoke-direct {v0}, Landroid/icu/text/UnicodeCompressor;->getLRDefinedWindow()I

    move-result v5

    .line 772
    .end local v10    # "whichWindow":I
    .local v5, "whichWindow":I
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "bytePos":I
    .local v10, "bytePos":I
    add-int/lit16 v13, v5, 0xe8

    int-to-byte v13, v13

    aput-byte v13, v2, v4

    .line 773
    add-int/lit8 v4, v10, 0x1

    .end local v10    # "bytePos":I
    .restart local v4    # "bytePos":I
    int-to-byte v13, v7

    aput-byte v13, v2, v10

    .line 774
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "bytePos":I
    .restart local v10    # "bytePos":I
    sget-object v13, Landroid/icu/text/UnicodeCompressor;->sOffsetTable:[I

    aget v13, v13, v7

    sub-int v13, v6, v13

    const/16 v15, 0x80

    add-int/2addr v13, v15

    int-to-byte v13, v13

    aput-byte v13, v2, v4

    .line 778
    iget-object v4, v0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    sget-object v13, Landroid/icu/text/UnicodeCompressor;->sOffsetTable:[I

    aget v13, v13, v7

    aput v13, v4, v5

    .line 779
    iput v5, v0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    .line 780
    iget-object v4, v0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    iget v13, v0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    const/16 v18, 0x1

    add-int/lit8 v13, v13, 0x1

    iput v13, v0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    aput v13, v4, v5

    .line 781
    const/4 v4, 0x0

    iput v4, v0, Landroid/icu/text/UnicodeCompressor;->fMode:I

    .line 782
    move v4, v10

    move v10, v5

    move v5, v14

    goto/16 :goto_3a9

    .line 636
    .end local v5    # "whichWindow":I
    .restart local v4    # "bytePos":I
    .local v10, "whichWindow":I
    :cond_193
    :goto_193
    add-int/lit8 v5, v4, 0x2

    if-lt v5, v3, :cond_19b

    .line 637
    add-int/lit8 v5, v14, -0x1

    .end local v14    # "ucPos":I
    .local v5, "ucPos":I
    goto/16 :goto_3ab

    .line 639
    .end local v5    # "ucPos":I
    .restart local v14    # "ucPos":I
    :cond_19b
    ushr-int/lit8 v11, v6, 0x8

    .line 640
    and-int/lit16 v12, v6, 0xff

    .line 642
    sget-object v5, Landroid/icu/text/UnicodeCompressor;->sUnicodeTagTable:[Z

    aget-boolean v5, v5, v11

    if-eqz v5, :cond_1aa

    .line 644
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bytePos":I
    .local v5, "bytePos":I
    aput-byte v16, v2, v4

    move v4, v5

    .line 646
    .end local v5    # "bytePos":I
    .restart local v4    # "bytePos":I
    :cond_1aa
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bytePos":I
    .restart local v5    # "bytePos":I
    int-to-byte v15, v11

    aput-byte v15, v2, v4

    .line 647
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "bytePos":I
    .restart local v4    # "bytePos":I
    int-to-byte v15, v12

    aput-byte v15, v2, v5

    move v5, v14

    const/4 v15, 0x1

    goto/16 :goto_2a

    .line 397
    .end local v14    # "ucPos":I
    .local v5, "ucPos":I
    :goto_1b8
    :pswitch_1b8
    if-ge v5, v1, :cond_3a9

    if-ge v4, v3, :cond_3a9

    .line 399
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "ucPos":I
    .restart local v14    # "ucPos":I
    aget-char v6, p1, v5

    .line 402
    if-ge v14, v1, :cond_1c6

    .line 403
    aget-char v5, p1, v14

    move v8, v5

    .end local v8    # "nextUC":I
    .local v5, "nextUC":I
    goto :goto_1c8

    .line 405
    .end local v5    # "nextUC":I
    .restart local v8    # "nextUC":I
    :cond_1c6
    const/4 v5, -0x1

    move v8, v5

    .line 409
    :goto_1c8
    const/16 v15, 0x80

    if-ge v6, v15, :cond_1eb

    .line 410
    and-int/lit16 v12, v6, 0xff

    .line 415
    sget-object v5, Landroid/icu/text/UnicodeCompressor;->sSingleTagTable:[Z

    aget-boolean v5, v5, v12

    if-eqz v5, :cond_1e3

    .line 419
    add-int/lit8 v5, v4, 0x1

    if-lt v5, v3, :cond_1dc

    .line 420
    add-int/lit8 v5, v14, -0x1

    .end local v14    # "ucPos":I
    .local v5, "ucPos":I
    goto/16 :goto_3ab

    .line 424
    .end local v5    # "ucPos":I
    .restart local v14    # "ucPos":I
    :cond_1dc
    add-int/lit8 v5, v4, 0x1

    const/16 v18, 0x1

    .end local v4    # "bytePos":I
    .local v5, "bytePos":I
    aput-byte v18, v2, v4

    move v4, v5

    .line 427
    .end local v5    # "bytePos":I
    .restart local v4    # "bytePos":I
    :cond_1e3
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bytePos":I
    .restart local v5    # "bytePos":I
    int-to-byte v15, v12

    aput-byte v15, v2, v4

    move v4, v5

    move v5, v14

    goto :goto_1b8

    .line 433
    .end local v5    # "bytePos":I
    .restart local v4    # "bytePos":I
    :cond_1eb
    iget v5, v0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    invoke-direct {v0, v6, v5}, Landroid/icu/text/UnicodeCompressor;->inDynamicWindow(II)Z

    move-result v5

    if-eqz v5, :cond_207

    .line 434
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bytePos":I
    .restart local v5    # "bytePos":I
    iget-object v15, v0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    iget v13, v0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    aget v13, v15, v13

    sub-int v13, v6, v13

    const/16 v15, 0x80

    add-int/2addr v13, v15

    int-to-byte v13, v13

    aput-byte v13, v2, v4

    move v4, v5

    move v5, v14

    const/4 v13, -0x1

    goto :goto_1b8

    .line 441
    .end local v5    # "bytePos":I
    .restart local v4    # "bytePos":I
    :cond_207
    invoke-static {v6}, Landroid/icu/text/UnicodeCompressor;->isCompressible(I)Z

    move-result v5

    const/16 v13, 0xf

    if-nez v5, :cond_267

    .line 443
    const/4 v5, -0x1

    if-eq v8, v5, :cond_237

    invoke-static {v8}, Landroid/icu/text/UnicodeCompressor;->isCompressible(I)Z

    move-result v15

    if-eqz v15, :cond_237

    .line 448
    add-int/lit8 v13, v4, 0x2

    if-lt v13, v3, :cond_21f

    .line 449
    add-int/2addr v5, v14

    .end local v14    # "ucPos":I
    .local v5, "ucPos":I
    goto/16 :goto_3ab

    .line 451
    .end local v5    # "ucPos":I
    .restart local v14    # "ucPos":I
    :cond_21f
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bytePos":I
    .local v5, "bytePos":I
    const/16 v13, 0xe

    aput-byte v13, v2, v4

    .line 452
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "bytePos":I
    .restart local v4    # "bytePos":I
    ushr-int/lit8 v13, v6, 0x8

    int-to-byte v13, v13

    aput-byte v13, v2, v5

    .line 453
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bytePos":I
    .restart local v5    # "bytePos":I
    and-int/lit16 v13, v6, 0xff

    int-to-byte v13, v13

    aput-byte v13, v2, v4

    move v4, v5

    move v5, v14

    const/4 v13, -0x1

    goto :goto_1b8

    .line 459
    .end local v5    # "bytePos":I
    .restart local v4    # "bytePos":I
    :cond_237
    add-int/lit8 v5, v4, 0x3

    if-lt v5, v3, :cond_241

    .line 460
    const/16 v19, -0x1

    add-int/lit8 v5, v14, -0x1

    .end local v14    # "ucPos":I
    .local v5, "ucPos":I
    goto/16 :goto_3ab

    .line 462
    .end local v5    # "ucPos":I
    .restart local v14    # "ucPos":I
    :cond_241
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bytePos":I
    .local v5, "bytePos":I
    aput-byte v13, v2, v4

    .line 464
    ushr-int/lit8 v4, v6, 0x8

    .line 465
    .end local v11    # "hiByte":I
    .local v4, "hiByte":I
    and-int/lit16 v11, v6, 0xff

    .line 467
    .end local v12    # "loByte":I
    .local v11, "loByte":I
    sget-object v12, Landroid/icu/text/UnicodeCompressor;->sUnicodeTagTable:[Z

    aget-boolean v12, v12, v4

    if-eqz v12, :cond_254

    .line 469
    add-int/lit8 v12, v5, 0x1

    .end local v5    # "bytePos":I
    .local v12, "bytePos":I
    aput-byte v16, v2, v5

    move v5, v12

    .line 471
    .end local v12    # "bytePos":I
    .restart local v5    # "bytePos":I
    :cond_254
    add-int/lit8 v12, v5, 0x1

    .end local v5    # "bytePos":I
    .restart local v12    # "bytePos":I
    int-to-byte v13, v4

    aput-byte v13, v2, v5

    .line 472
    add-int/lit8 v5, v12, 0x1

    .end local v12    # "bytePos":I
    .restart local v5    # "bytePos":I
    int-to-byte v13, v11

    aput-byte v13, v2, v12

    .line 474
    const/4 v15, 0x1

    iput v15, v0, Landroid/icu/text/UnicodeCompressor;->fMode:I

    .line 475
    move v12, v11

    move v11, v4

    move v4, v5

    move v5, v14

    goto/16 :goto_3a9

    .line 482
    .end local v5    # "bytePos":I
    .local v4, "bytePos":I
    .local v11, "hiByte":I
    .local v12, "loByte":I
    :cond_267
    invoke-direct {v0, v6}, Landroid/icu/text/UnicodeCompressor;->findDynamicWindow(I)I

    move-result v5

    move v10, v5

    const/4 v15, -0x1

    if-eq v5, v15, :cond_2db

    .line 485
    add-int/lit8 v5, v14, 0x1

    if-ge v5, v1, :cond_279

    .line 486
    add-int/lit8 v5, v14, 0x1

    aget-char v5, p1, v5

    move v9, v5

    .end local v9    # "forwardUC":I
    .local v5, "forwardUC":I
    goto :goto_27b

    .line 488
    .end local v5    # "forwardUC":I
    .restart local v9    # "forwardUC":I
    :cond_279
    const/4 v5, -0x1

    move v9, v5

    .line 493
    :goto_27b
    invoke-direct {v0, v8, v10}, Landroid/icu/text/UnicodeCompressor;->inDynamicWindow(II)Z

    move-result v5

    if-eqz v5, :cond_2b8

    .line 494
    invoke-direct {v0, v9, v10}, Landroid/icu/text/UnicodeCompressor;->inDynamicWindow(II)Z

    move-result v5

    if-eqz v5, :cond_2b8

    .line 498
    add-int/lit8 v5, v4, 0x1

    if-lt v5, v3, :cond_291

    .line 499
    const/16 v19, -0x1

    add-int/lit8 v5, v14, -0x1

    .end local v14    # "ucPos":I
    .local v5, "ucPos":I
    goto/16 :goto_3ab

    .line 501
    .end local v5    # "ucPos":I
    .restart local v14    # "ucPos":I
    :cond_291
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bytePos":I
    .local v5, "bytePos":I
    add-int/lit8 v13, v10, 0x10

    int-to-byte v13, v13

    aput-byte v13, v2, v4

    .line 502
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "bytePos":I
    .restart local v4    # "bytePos":I
    iget-object v13, v0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    aget v13, v13, v10

    sub-int v13, v6, v13

    const/16 v15, 0x80

    add-int/2addr v13, v15

    int-to-byte v13, v13

    aput-byte v13, v2, v5

    .line 505
    iget-object v5, v0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    iget v13, v0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    const/16 v18, 0x1

    add-int/lit8 v13, v13, 0x1

    iput v13, v0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    aput v13, v5, v10

    .line 506
    iput v10, v0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    move v5, v14

    const/4 v13, -0x1

    goto/16 :goto_1b8

    .line 515
    :cond_2b8
    add-int/lit8 v5, v4, 0x1

    if-lt v5, v3, :cond_2c2

    .line 516
    const/16 v19, -0x1

    add-int/lit8 v5, v14, -0x1

    .end local v14    # "ucPos":I
    .local v5, "ucPos":I
    goto/16 :goto_3ab

    .line 518
    .end local v5    # "ucPos":I
    .restart local v14    # "ucPos":I
    :cond_2c2
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bytePos":I
    .local v5, "bytePos":I
    add-int/lit8 v13, v10, 0x1

    int-to-byte v13, v13

    aput-byte v13, v2, v4

    .line 519
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "bytePos":I
    .restart local v4    # "bytePos":I
    iget-object v13, v0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    aget v13, v13, v10

    sub-int v13, v6, v13

    const/16 v15, 0x80

    add-int/2addr v13, v15

    int-to-byte v13, v13

    aput-byte v13, v2, v5

    move v5, v14

    const/4 v13, -0x1

    goto/16 :goto_1b8

    .line 529
    :cond_2db
    invoke-static {v6}, Landroid/icu/text/UnicodeCompressor;->findStaticWindow(I)I

    move-result v5

    move v10, v5

    const/4 v15, -0x1

    if-eq v5, v15, :cond_307

    .line 531
    invoke-static {v8, v10}, Landroid/icu/text/UnicodeCompressor;->inStaticWindow(II)Z

    move-result v5

    if-nez v5, :cond_307

    .line 535
    add-int/lit8 v5, v4, 0x1

    if-lt v5, v3, :cond_2f1

    .line 536
    add-int/lit8 v5, v14, -0x1

    .end local v14    # "ucPos":I
    .local v5, "ucPos":I
    goto/16 :goto_3ab

    .line 538
    .end local v5    # "ucPos":I
    .restart local v14    # "ucPos":I
    :cond_2f1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bytePos":I
    .local v5, "bytePos":I
    add-int/lit8 v13, v10, 0x1

    int-to-byte v13, v13

    aput-byte v13, v2, v4

    .line 539
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "bytePos":I
    .restart local v4    # "bytePos":I
    sget-object v13, Landroid/icu/text/UnicodeCompressor;->sOffsets:[I

    aget v13, v13, v10

    sub-int v13, v6, v13

    int-to-byte v13, v13

    aput-byte v13, v2, v5

    move v5, v14

    const/4 v13, -0x1

    goto/16 :goto_1b8

    .line 547
    :cond_307
    invoke-static {v6}, Landroid/icu/text/UnicodeCompressor;->makeIndex(I)I

    move-result v7

    .line 548
    iget-object v5, v0, Landroid/icu/text/UnicodeCompressor;->fIndexCount:[I

    aget v15, v5, v7

    const/16 v18, 0x1

    add-int/lit8 v15, v15, 0x1

    aput v15, v5, v7

    .line 551
    add-int/lit8 v5, v14, 0x1

    if-ge v5, v1, :cond_31f

    .line 552
    add-int/lit8 v5, v14, 0x1

    aget-char v5, p1, v5

    move v9, v5

    .end local v9    # "forwardUC":I
    .local v5, "forwardUC":I
    goto :goto_321

    .line 554
    .end local v5    # "forwardUC":I
    .restart local v9    # "forwardUC":I
    :cond_31f
    const/4 v5, -0x1

    move v9, v5

    .line 562
    :goto_321
    iget-object v5, v0, Landroid/icu/text/UnicodeCompressor;->fIndexCount:[I

    aget v5, v5, v7

    const/4 v15, 0x1

    if-gt v5, v15, :cond_364

    .line 563
    invoke-static {v8}, Landroid/icu/text/UnicodeCompressor;->makeIndex(I)I

    move-result v5

    if-ne v7, v5, :cond_335

    .line 564
    invoke-static {v9}, Landroid/icu/text/UnicodeCompressor;->makeIndex(I)I

    move-result v5

    if-ne v7, v5, :cond_335

    goto :goto_364

    .line 595
    :cond_335
    add-int/lit8 v5, v4, 0x3

    if-lt v5, v3, :cond_33f

    .line 596
    const/16 v19, -0x1

    add-int/lit8 v5, v14, -0x1

    .end local v14    # "ucPos":I
    .local v5, "ucPos":I
    goto/16 :goto_3ab

    .line 598
    .end local v5    # "ucPos":I
    .restart local v14    # "ucPos":I
    :cond_33f
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bytePos":I
    .local v5, "bytePos":I
    aput-byte v13, v2, v4

    .line 600
    ushr-int/lit8 v4, v6, 0x8

    .line 601
    .end local v11    # "hiByte":I
    .local v4, "hiByte":I
    and-int/lit16 v11, v6, 0xff

    .line 603
    .end local v12    # "loByte":I
    .local v11, "loByte":I
    sget-object v12, Landroid/icu/text/UnicodeCompressor;->sUnicodeTagTable:[Z

    aget-boolean v12, v12, v4

    if-eqz v12, :cond_352

    .line 605
    add-int/lit8 v12, v5, 0x1

    .end local v5    # "bytePos":I
    .local v12, "bytePos":I
    aput-byte v16, v2, v5

    move v5, v12

    .line 607
    .end local v12    # "bytePos":I
    .restart local v5    # "bytePos":I
    :cond_352
    add-int/lit8 v12, v5, 0x1

    .end local v5    # "bytePos":I
    .restart local v12    # "bytePos":I
    int-to-byte v13, v4

    aput-byte v13, v2, v5

    .line 608
    add-int/lit8 v5, v12, 0x1

    .end local v12    # "bytePos":I
    .restart local v5    # "bytePos":I
    int-to-byte v13, v11

    aput-byte v13, v2, v12

    .line 610
    const/4 v15, 0x1

    iput v15, v0, Landroid/icu/text/UnicodeCompressor;->fMode:I

    .line 611
    move v12, v11

    move v11, v4

    move v4, v5

    move v5, v14

    goto :goto_3a9

    .line 568
    .end local v5    # "bytePos":I
    .local v4, "bytePos":I
    .local v11, "hiByte":I
    .local v12, "loByte":I
    :cond_364
    :goto_364
    add-int/lit8 v5, v4, 0x2

    if-lt v5, v3, :cond_36d

    .line 569
    const/16 v19, -0x1

    add-int/lit8 v5, v14, -0x1

    .end local v14    # "ucPos":I
    .local v5, "ucPos":I
    goto :goto_3ab

    .line 572
    .end local v5    # "ucPos":I
    .restart local v14    # "ucPos":I
    :cond_36d
    const/16 v19, -0x1

    invoke-direct {v0}, Landroid/icu/text/UnicodeCompressor;->getLRDefinedWindow()I

    move-result v10

    .line 574
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bytePos":I
    .local v5, "bytePos":I
    add-int/lit8 v13, v10, 0x18

    int-to-byte v13, v13

    aput-byte v13, v2, v4

    .line 575
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "bytePos":I
    .restart local v4    # "bytePos":I
    int-to-byte v13, v7

    aput-byte v13, v2, v5

    .line 576
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bytePos":I
    .restart local v5    # "bytePos":I
    sget-object v13, Landroid/icu/text/UnicodeCompressor;->sOffsetTable:[I

    aget v13, v13, v7

    sub-int v13, v6, v13

    const/16 v15, 0x80

    add-int/2addr v13, v15

    int-to-byte v13, v13

    aput-byte v13, v2, v4

    .line 580
    iget-object v4, v0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    sget-object v13, Landroid/icu/text/UnicodeCompressor;->sOffsetTable:[I

    aget v13, v13, v7

    aput v13, v4, v10

    .line 581
    iput v10, v0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    .line 582
    iget-object v4, v0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    iget v13, v0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    const/16 v18, 0x1

    add-int/lit8 v13, v13, 0x1

    iput v13, v0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    aput v13, v4, v10

    move v4, v5

    move v5, v14

    move/from16 v13, v19

    goto/16 :goto_1b8

    .line 803
    .end local v14    # "ucPos":I
    .restart local v4    # "bytePos":I
    .local v5, "ucPos":I
    :cond_3a9
    :goto_3a9
    goto/16 :goto_1b

    .line 811
    :cond_3ab
    :goto_3ab
    if-eqz p4, :cond_3b3

    .line 812
    sub-int v13, v5, p2

    const/16 v17, 0x0

    aput v13, p4, v17

    .line 815
    :cond_3b3
    sub-int v13, v4, p6

    return v13

    .line 389
    :cond_3b6
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "byteBuffer.length < 4"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :pswitch_data_3be
    .packed-switch 0x0
        :pswitch_1b8
        :pswitch_2a
    .end packed-switch
.end method

.method public greylist-max-o reset()V
    .registers 5

    .line 826
    iget-object v0, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    const/16 v1, 0x80

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 827
    iget-object v0, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    const/4 v1, 0x1

    const/16 v3, 0xc0

    aput v3, v0, v1

    .line 828
    iget-object v0, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    const/4 v1, 0x2

    const/16 v3, 0x400

    aput v3, v0, v1

    .line 829
    iget-object v0, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    const/4 v1, 0x3

    const/16 v3, 0x600

    aput v3, v0, v1

    .line 830
    iget-object v0, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    const/4 v1, 0x4

    const/16 v3, 0x900

    aput v3, v0, v1

    .line 831
    iget-object v0, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    const/4 v1, 0x5

    const/16 v3, 0x3040

    aput v3, v0, v1

    .line 832
    iget-object v0, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    const/4 v1, 0x6

    const/16 v3, 0x30a0

    aput v3, v0, v1

    .line 833
    iget-object v0, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    const/4 v1, 0x7

    const v3, 0xff00

    aput v3, v0, v1

    .line 837
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3a
    const/16 v1, 0x8

    if-ge v0, v1, :cond_45

    .line 838
    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    aput v2, v1, v0

    .line 837
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 842
    :cond_45
    const/4 v0, 0x0

    :goto_46
    const/16 v1, 0xff

    if-gt v0, v1, :cond_51

    .line 843
    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fIndexCount:[I

    aput v2, v1, v0

    .line 842
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 846
    :cond_51
    iput v2, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    .line 847
    iput v2, p0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    .line 848
    iput v2, p0, Landroid/icu/text/UnicodeCompressor;->fMode:I

    .line 849
    return-void
.end method
