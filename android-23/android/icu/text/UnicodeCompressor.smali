.class public final Landroid/icu/text/UnicodeCompressor;
.super Ljava/lang/Object;
.source "UnicodeCompressor.java"

# interfaces
.implements Landroid/icu/text/SCSU;


# static fields
.field private static sSingleTagTable:[Z

.field private static sUnicodeTagTable:[Z


# instance fields
.field private fCurrentWindow:I

.field private fIndexCount:[I

.field private fMode:I

.field private fOffsets:[I

.field private fTimeStamp:I

.field private fTimeStamps:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x100

    #@2
    .line 193
    new-array v0, v1, [Z

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/icu/text/UnicodeCompressor;->sSingleTagTable:[Z

    #@9
    .line 227
    new-array v0, v1, [Z

    #@b
    fill-array-data v0, :array_1

    #@e
    sput-object v0, Landroid/icu/text/UnicodeCompressor;->sUnicodeTagTable:[Z

    #@10
    .line 186
    return-void

    #@11
    .line 193
    nop

    #@12
    :array_0
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

    #@96
    .line 227
    :array_1
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

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x8

    #@2
    const/4 v1, 0x0

    #@3
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 265
    iput v1, p0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    #@8
    .line 268
    new-array v0, v2, [I

    #@a
    iput-object v0, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    #@c
    .line 271
    iput v1, p0, Landroid/icu/text/UnicodeCompressor;->fMode:I

    #@e
    .line 274
    const/16 v0, 0x100

    #@10
    new-array v0, v0, [I

    #@12
    iput-object v0, p0, Landroid/icu/text/UnicodeCompressor;->fIndexCount:[I

    #@14
    .line 277
    new-array v0, v2, [I

    #@16
    iput-object v0, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    #@18
    .line 280
    iput v1, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    #@1a
    .line 291
    invoke-virtual {p0}, Landroid/icu/text/UnicodeCompressor;->reset()V

    #@1d
    .line 289
    return-void
.end method

.method public static compress(Ljava/lang/String;)[B
    .locals 3
    .param p0, "buffer"    # Ljava/lang/String;

    #@0
    .prologue
    .line 303
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    invoke-static {v0, v2, v1}, Landroid/icu/text/UnicodeCompressor;->compress([CII)[B

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static compress([CII)[B
    .locals 10
    .param p0, "buffer"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 319
    new-instance v0, Landroid/icu/text/UnicodeCompressor;

    #@3
    invoke-direct {v0}, Landroid/icu/text/UnicodeCompressor;-><init>()V

    #@6
    .line 326
    .local v0, "comp":Landroid/icu/text/UnicodeCompressor;
    sub-int v1, p2, p1

    #@8
    mul-int/lit8 v1, v1, 0x3

    #@a
    add-int/lit8 v1, v1, 0x1

    #@c
    const/4 v2, 0x4

    #@d
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    #@10
    move-result v7

    #@11
    .line 327
    .local v7, "len":I
    new-array v5, v7, [B

    #@13
    .line 329
    .local v5, "temp":[B
    const/4 v4, 0x0

    #@14
    move-object v1, p0

    #@15
    move v2, p1

    #@16
    move v3, p2

    #@17
    invoke-virtual/range {v0 .. v7}, Landroid/icu/text/UnicodeCompressor;->compress([CII[I[BII)I

    #@1a
    move-result v8

    #@1b
    .line 332
    .local v8, "byteCount":I
    new-array v9, v8, [B

    #@1d
    .line 333
    .local v9, "result":[B
    invoke-static {v5, v6, v9, v6, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@20
    .line 334
    return-object v9
.end method

.method private findDynamicWindow(I)I
    .locals 3
    .param p1, "c"    # I

    #@0
    .prologue
    .line 954
    const/4 v0, 0x7

    #@1
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@3
    .line 955
    invoke-direct {p0, p1, v0}, Landroid/icu/text/UnicodeCompressor;->inDynamicWindow(II)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 956
    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    #@b
    aget v2, v1, v0

    #@d
    add-int/lit8 v2, v2, 0x1

    #@f
    aput v2, v1, v0

    #@11
    .line 957
    return v0

    #@12
    .line 954
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@14
    goto :goto_0

    #@15
    .line 961
    :cond_1
    const/4 v1, -0x1

    #@16
    return v1
.end method

.method private static findStaticWindow(I)I
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    .line 974
    const/4 v0, 0x7

    #@1
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@3
    .line 975
    invoke-static {p0, v0}, Landroid/icu/text/UnicodeCompressor;->inStaticWindow(II)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 976
    return v0

    #@a
    .line 974
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@c
    goto :goto_0

    #@d
    .line 980
    :cond_1
    const/4 v1, -0x1

    #@e
    return v1
.end method

.method private getLRDefinedWindow()I
    .locals 4

    #@0
    .prologue
    .line 990
    const v1, 0x7fffffff

    #@3
    .line 991
    .local v1, "leastRU":I
    const/4 v2, -0x1

    #@4
    .line 996
    .local v2, "whichWindow":I
    const/4 v0, 0x7

    #@5
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@7
    .line 997
    iget-object v3, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    #@9
    aget v3, v3, v0

    #@b
    if-ge v3, v1, :cond_0

    #@d
    .line 998
    iget-object v3, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    #@f
    aget v1, v3, v0

    #@11
    .line 999
    move v2, v0

    #@12
    .line 996
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@14
    goto :goto_0

    #@15
    .line 1003
    :cond_1
    return v2
.end method

.method private inDynamicWindow(II)Z
    .locals 2
    .param p1, "c"    # I
    .param p2, "whichWindow"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 908
    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    #@3
    aget v1, v1, p2

    #@5
    if-lt p1, v1, :cond_0

    #@7
    .line 909
    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    #@9
    aget v1, v1, p2

    #@b
    add-int/lit16 v1, v1, 0x80

    #@d
    if-ge p1, v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    .line 908
    :cond_0
    return v0
.end method

.method private static inStaticWindow(II)Z
    .locals 2
    .param p0, "c"    # I
    .param p1, "whichWindow"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 922
    sget-object v1, Landroid/icu/text/UnicodeCompressor;->sOffsets:[I

    #@3
    aget v1, v1, p1

    #@5
    if-lt p0, v1, :cond_0

    #@7
    .line 923
    sget-object v1, Landroid/icu/text/UnicodeCompressor;->sOffsets:[I

    #@9
    aget v1, v1, p1

    #@b
    add-int/lit16 v1, v1, 0x80

    #@d
    if-ge p0, v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    .line 922
    :cond_0
    return v0
.end method

.method private static isCompressible(I)Z
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 937
    const/16 v1, 0x3400

    #@3
    if-lt p0, v1, :cond_0

    #@5
    const v1, 0xe000

    #@8
    if-lt p0, v1, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method private static makeIndex(I)I
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    const/16 v1, 0x30a0

    #@2
    .line 867
    const/16 v0, 0xc0

    #@4
    if-lt p0, v0, :cond_0

    #@6
    const/16 v0, 0x140

    #@8
    if-ge p0, v0, :cond_0

    #@a
    .line 868
    const/16 v0, 0xf9

    #@c
    return v0

    #@d
    .line 869
    :cond_0
    const/16 v0, 0x250

    #@f
    if-lt p0, v0, :cond_1

    #@11
    const/16 v0, 0x2d0

    #@13
    if-ge p0, v0, :cond_1

    #@15
    .line 870
    const/16 v0, 0xfa

    #@17
    return v0

    #@18
    .line 871
    :cond_1
    const/16 v0, 0x370

    #@1a
    if-lt p0, v0, :cond_2

    #@1c
    const/16 v0, 0x3f0

    #@1e
    if-ge p0, v0, :cond_2

    #@20
    .line 872
    const/16 v0, 0xfb

    #@22
    return v0

    #@23
    .line 873
    :cond_2
    const/16 v0, 0x530

    #@25
    if-lt p0, v0, :cond_3

    #@27
    const/16 v0, 0x590

    #@29
    if-ge p0, v0, :cond_3

    #@2b
    .line 874
    const/16 v0, 0xfc

    #@2d
    return v0

    #@2e
    .line 875
    :cond_3
    const/16 v0, 0x3040

    #@30
    if-lt p0, v0, :cond_4

    #@32
    if-ge p0, v1, :cond_4

    #@34
    .line 876
    const/16 v0, 0xfd

    #@36
    return v0

    #@37
    .line 877
    :cond_4
    if-lt p0, v1, :cond_5

    #@39
    const/16 v0, 0x3120

    #@3b
    if-ge p0, v0, :cond_5

    #@3d
    .line 878
    const/16 v0, 0xfe

    #@3f
    return v0

    #@40
    .line 879
    :cond_5
    const v0, 0xff60

    #@43
    if-lt p0, v0, :cond_6

    #@45
    const v0, 0xff9f

    #@48
    if-ge p0, v0, :cond_6

    #@4a
    .line 880
    const/16 v0, 0xff

    #@4c
    return v0

    #@4d
    .line 883
    :cond_6
    const/16 v0, 0x80

    #@4f
    if-lt p0, v0, :cond_7

    #@51
    const/16 v0, 0x3400

    #@53
    if-ge p0, v0, :cond_7

    #@55
    .line 884
    div-int/lit16 v0, p0, 0x80

    #@57
    and-int/lit16 v0, v0, 0xff

    #@59
    return v0

    #@5a
    .line 885
    :cond_7
    const v0, 0xe000

    #@5d
    if-lt p0, v0, :cond_8

    #@5f
    const v0, 0xffff

    #@62
    if-gt p0, v0, :cond_8

    #@64
    .line 886
    const v0, 0xac00

    #@67
    sub-int v0, p0, v0

    #@69
    div-int/lit16 v0, v0, 0x80

    #@6b
    and-int/lit16 v0, v0, 0xff

    #@6d
    return v0

    #@6e
    .line 890
    :cond_8
    const/4 v0, 0x0

    #@6f
    return v0
.end method


# virtual methods
.method public compress([CII[I[BII)I
    .locals 14
    .param p1, "charBuffer"    # [C
    .param p2, "charBufferStart"    # I
    .param p3, "charBufferLimit"    # I
    .param p4, "charsRead"    # [I
    .param p5, "byteBuffer"    # [B
    .param p6, "byteBufferStart"    # I
    .param p7, "byteBufferLimit"    # I

    #@0
    .prologue
    .line 365
    move/from16 v1, p6

    #@2
    .line 368
    .local v1, "bytePos":I
    move/from16 v9, p2

    #@4
    .line 371
    .local v9, "ucPos":I
    const/4 v4, -0x1

    #@5
    .line 374
    .local v4, "curUC":I
    const/4 v3, -0x1

    #@6
    .line 377
    .local v3, "curIndex":I
    const/4 v8, -0x1

    #@7
    .line 378
    .local v8, "nextUC":I
    const/4 v5, -0x1

    #@8
    .line 381
    .local v5, "forwardUC":I
    const/4 v11, 0x0

    #@9
    .line 384
    .local v11, "whichWindow":I
    const/4 v6, 0x0

    #@a
    .line 385
    .local v6, "hiByte":I
    const/4 v7, 0x0

    #@b
    .line 389
    .local v7, "loByte":I
    move-object/from16 v0, p5

    #@d
    array-length v12, v0

    #@e
    const/4 v13, 0x4

    #@f
    if-lt v12, v13, :cond_0

    #@11
    sub-int v12, p7, p6

    #@13
    const/4 v13, 0x4

    #@14
    if-ge v12, v13, :cond_1

    #@16
    .line 390
    :cond_0
    new-instance v12, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v13, "byteBuffer.length < 4"

    #@1b
    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v12

    #@1f
    .line 393
    :cond_1
    :goto_0
    move/from16 v0, p3

    #@21
    if-ge v9, v0, :cond_2

    #@23
    move/from16 v0, p7

    #@25
    if-ge v1, v0, :cond_2

    #@27
    .line 394
    iget v12, p0, Landroid/icu/text/UnicodeCompressor;->fMode:I

    #@29
    packed-switch v12, :pswitch_data_0

    #@2c
    goto :goto_0

    #@2d
    :pswitch_0
    move v10, v9

    #@2e
    .end local v9    # "ucPos":I
    .local v10, "ucPos":I
    move v2, v1

    #@2f
    .line 398
    .end local v1    # "bytePos":I
    .local v2, "bytePos":I
    :goto_1
    move/from16 v0, p3

    #@31
    if-ge v10, v0, :cond_4

    #@33
    move/from16 v0, p7

    #@35
    if-ge v2, v0, :cond_4

    #@37
    .line 400
    add-int/lit8 v9, v10, 0x1

    #@39
    .end local v10    # "ucPos":I
    .restart local v9    # "ucPos":I
    aget-char v4, p1, v10

    #@3b
    .line 403
    move/from16 v0, p3

    #@3d
    if-ge v9, v0, :cond_5

    #@3f
    .line 404
    aget-char v8, p1, v9

    #@41
    .line 410
    :goto_2
    const/16 v12, 0x80

    #@43
    if-ge v4, v12, :cond_7

    #@45
    .line 411
    and-int/lit16 v7, v4, 0xff

    #@47
    .line 416
    sget-object v12, Landroid/icu/text/UnicodeCompressor;->sSingleTagTable:[Z

    #@49
    aget-boolean v12, v12, v7

    #@4b
    if-eqz v12, :cond_32

    #@4d
    .line 420
    add-int/lit8 v12, v2, 0x1

    #@4f
    move/from16 v0, p7

    #@51
    if-lt v12, v0, :cond_6

    #@53
    .line 421
    add-int/lit8 v9, v9, -0x1

    #@55
    move v1, v2

    #@56
    .line 812
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    :cond_2
    :goto_3
    if-eqz p4, :cond_3

    #@58
    .line 813
    sub-int v12, v9, p2

    #@5a
    const/4 v13, 0x0

    #@5b
    aput v12, p4, v13

    #@5d
    .line 816
    :cond_3
    sub-int v12, v1, p6

    #@5f
    return v12

    #@60
    .end local v1    # "bytePos":I
    .end local v9    # "ucPos":I
    .restart local v2    # "bytePos":I
    .restart local v10    # "ucPos":I
    :cond_4
    move v9, v10

    #@61
    .end local v10    # "ucPos":I
    .restart local v9    # "ucPos":I
    move v1, v2

    #@62
    .line 398
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto :goto_0

    #@63
    .line 406
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_5
    const/4 v8, -0x1

    #@64
    goto :goto_2

    #@65
    .line 425
    :cond_6
    add-int/lit8 v1, v2, 0x1

    #@67
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    const/4 v12, 0x1

    #@68
    aput-byte v12, p5, v2

    #@6a
    .line 428
    :goto_4
    add-int/lit8 v2, v1, 0x1

    #@6c
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    int-to-byte v12, v7

    #@6d
    aput-byte v12, p5, v1

    #@6f
    move v1, v2

    #@70
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    :goto_5
    move v10, v9

    #@71
    .end local v9    # "ucPos":I
    .restart local v10    # "ucPos":I
    move v2, v1

    #@72
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    goto :goto_1

    #@73
    .line 434
    .end local v10    # "ucPos":I
    .restart local v9    # "ucPos":I
    :cond_7
    iget v12, p0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    #@75
    invoke-direct {p0, v4, v12}, Landroid/icu/text/UnicodeCompressor;->inDynamicWindow(II)Z

    #@78
    move-result v12

    #@79
    if-eqz v12, :cond_8

    #@7b
    .line 435
    add-int/lit8 v1, v2, 0x1

    #@7d
    .line 436
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    #@7f
    iget v13, p0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    #@81
    aget v12, v12, v13

    #@83
    sub-int v12, v4, v12

    #@85
    add-int/lit16 v12, v12, 0x80

    #@87
    .line 435
    int-to-byte v12, v12

    #@88
    aput-byte v12, p5, v2

    #@8a
    goto :goto_5

    #@8b
    .line 442
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_8
    invoke-static {v4}, Landroid/icu/text/UnicodeCompressor;->isCompressible(I)Z

    #@8e
    move-result v12

    #@8f
    if-nez v12, :cond_d

    #@91
    .line 444
    const/4 v12, -0x1

    #@92
    if-eq v8, v12, :cond_a

    #@94
    invoke-static {v8}, Landroid/icu/text/UnicodeCompressor;->isCompressible(I)Z

    #@97
    move-result v12

    #@98
    if-eqz v12, :cond_a

    #@9a
    .line 449
    add-int/lit8 v12, v2, 0x2

    #@9c
    move/from16 v0, p7

    #@9e
    if-lt v12, v0, :cond_9

    #@a0
    .line 450
    add-int/lit8 v9, v9, -0x1

    #@a2
    move v1, v2

    #@a3
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto :goto_3

    #@a4
    .line 452
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_9
    add-int/lit8 v1, v2, 0x1

    #@a6
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    const/16 v12, 0xe

    #@a8
    aput-byte v12, p5, v2

    #@aa
    .line 453
    add-int/lit8 v2, v1, 0x1

    #@ac
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    ushr-int/lit8 v12, v4, 0x8

    #@ae
    int-to-byte v12, v12

    #@af
    aput-byte v12, p5, v1

    #@b1
    .line 454
    add-int/lit8 v1, v2, 0x1

    #@b3
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    and-int/lit16 v12, v4, 0xff

    #@b5
    int-to-byte v12, v12

    #@b6
    aput-byte v12, p5, v2

    #@b8
    goto :goto_5

    #@b9
    .line 460
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_a
    add-int/lit8 v12, v2, 0x3

    #@bb
    move/from16 v0, p7

    #@bd
    if-lt v12, v0, :cond_b

    #@bf
    .line 461
    add-int/lit8 v9, v9, -0x1

    #@c1
    move v1, v2

    #@c2
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto :goto_3

    #@c3
    .line 463
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_b
    add-int/lit8 v1, v2, 0x1

    #@c5
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    const/16 v12, 0xf

    #@c7
    aput-byte v12, p5, v2

    #@c9
    .line 465
    ushr-int/lit8 v6, v4, 0x8

    #@cb
    .line 466
    and-int/lit16 v7, v4, 0xff

    #@cd
    .line 468
    sget-object v12, Landroid/icu/text/UnicodeCompressor;->sUnicodeTagTable:[Z

    #@cf
    aget-boolean v12, v12, v6

    #@d1
    if-eqz v12, :cond_c

    #@d3
    .line 470
    add-int/lit8 v2, v1, 0x1

    #@d5
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    const/16 v12, -0x10

    #@d7
    aput-byte v12, p5, v1

    #@d9
    move v1, v2

    #@da
    .line 472
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    :cond_c
    add-int/lit8 v2, v1, 0x1

    #@dc
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    int-to-byte v12, v6

    #@dd
    aput-byte v12, p5, v1

    #@df
    .line 473
    add-int/lit8 v1, v2, 0x1

    #@e1
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    int-to-byte v12, v7

    #@e2
    aput-byte v12, p5, v2

    #@e4
    .line 475
    const/4 v12, 0x1

    #@e5
    iput v12, p0, Landroid/icu/text/UnicodeCompressor;->fMode:I

    #@e7
    goto/16 :goto_0

    #@e9
    .line 483
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_d
    invoke-direct {p0, v4}, Landroid/icu/text/UnicodeCompressor;->findDynamicWindow(I)I

    #@ec
    move-result v11

    #@ed
    .line 484
    const/4 v12, -0x1

    #@ee
    .line 483
    if-eq v11, v12, :cond_12

    #@f0
    .line 486
    add-int/lit8 v12, v9, 0x1

    #@f2
    move/from16 v0, p3

    #@f4
    if-ge v12, v0, :cond_e

    #@f6
    .line 487
    add-int/lit8 v12, v9, 0x1

    #@f8
    aget-char v5, p1, v12

    #@fa
    .line 494
    :goto_6
    invoke-direct {p0, v8, v11}, Landroid/icu/text/UnicodeCompressor;->inDynamicWindow(II)Z

    #@fd
    move-result v12

    #@fe
    if-eqz v12, :cond_10

    #@100
    .line 495
    invoke-direct {p0, v5, v11}, Landroid/icu/text/UnicodeCompressor;->inDynamicWindow(II)Z

    #@103
    move-result v12

    #@104
    .line 494
    if-eqz v12, :cond_10

    #@106
    .line 499
    add-int/lit8 v12, v2, 0x1

    #@108
    move/from16 v0, p7

    #@10a
    if-lt v12, v0, :cond_f

    #@10c
    .line 500
    add-int/lit8 v9, v9, -0x1

    #@10e
    move v1, v2

    #@10f
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto/16 :goto_3

    #@111
    .line 489
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_e
    const/4 v5, -0x1

    #@112
    goto :goto_6

    #@113
    .line 502
    :cond_f
    add-int/lit8 v1, v2, 0x1

    #@115
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    add-int/lit8 v12, v11, 0x10

    #@117
    int-to-byte v12, v12

    #@118
    aput-byte v12, p5, v2

    #@11a
    .line 503
    add-int/lit8 v2, v1, 0x1

    #@11c
    .line 504
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    #@11e
    aget v12, v12, v11

    #@120
    sub-int v12, v4, v12

    #@122
    add-int/lit16 v12, v12, 0x80

    #@124
    .line 503
    int-to-byte v12, v12

    #@125
    aput-byte v12, p5, v1

    #@127
    .line 506
    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    #@129
    iget v13, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    #@12b
    add-int/lit8 v13, v13, 0x1

    #@12d
    iput v13, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    #@12f
    aput v13, v12, v11

    #@131
    .line 507
    iput v11, p0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    #@133
    move v1, v2

    #@134
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto/16 :goto_5

    #@136
    .line 516
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_10
    add-int/lit8 v12, v2, 0x1

    #@138
    move/from16 v0, p7

    #@13a
    if-lt v12, v0, :cond_11

    #@13c
    .line 517
    add-int/lit8 v9, v9, -0x1

    #@13e
    move v1, v2

    #@13f
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto/16 :goto_3

    #@141
    .line 519
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_11
    add-int/lit8 v1, v2, 0x1

    #@143
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    add-int/lit8 v12, v11, 0x1

    #@145
    int-to-byte v12, v12

    #@146
    aput-byte v12, p5, v2

    #@148
    .line 520
    add-int/lit8 v2, v1, 0x1

    #@14a
    .line 521
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    #@14c
    aget v12, v12, v11

    #@14e
    sub-int v12, v4, v12

    #@150
    add-int/lit16 v12, v12, 0x80

    #@152
    .line 520
    int-to-byte v12, v12

    #@153
    aput-byte v12, p5, v1

    #@155
    move v1, v2

    #@156
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto/16 :goto_5

    #@158
    .line 530
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_12
    invoke-static {v4}, Landroid/icu/text/UnicodeCompressor;->findStaticWindow(I)I

    #@15b
    move-result v11

    #@15c
    .line 531
    const/4 v12, -0x1

    #@15d
    .line 530
    if-eq v11, v12, :cond_13

    #@15f
    .line 532
    invoke-static {v8, v11}, Landroid/icu/text/UnicodeCompressor;->inStaticWindow(II)Z

    #@162
    move-result v12

    #@163
    if-eqz v12, :cond_15

    #@165
    .line 548
    :cond_13
    invoke-static {v4}, Landroid/icu/text/UnicodeCompressor;->makeIndex(I)I

    #@168
    move-result v3

    #@169
    .line 549
    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fIndexCount:[I

    #@16b
    aget v13, v12, v3

    #@16d
    add-int/lit8 v13, v13, 0x1

    #@16f
    aput v13, v12, v3

    #@171
    .line 552
    add-int/lit8 v12, v9, 0x1

    #@173
    move/from16 v0, p3

    #@175
    if-ge v12, v0, :cond_17

    #@177
    .line 553
    add-int/lit8 v12, v9, 0x1

    #@179
    aget-char v5, p1, v12

    #@17b
    .line 563
    :goto_7
    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fIndexCount:[I

    #@17d
    aget v12, v12, v3

    #@17f
    const/4 v13, 0x1

    #@180
    if-gt v12, v13, :cond_14

    #@182
    .line 564
    invoke-static {v8}, Landroid/icu/text/UnicodeCompressor;->makeIndex(I)I

    #@185
    move-result v12

    #@186
    if-ne v3, v12, :cond_19

    #@188
    .line 565
    invoke-static {v5}, Landroid/icu/text/UnicodeCompressor;->makeIndex(I)I

    #@18b
    move-result v12

    #@18c
    if-ne v3, v12, :cond_19

    #@18e
    .line 569
    :cond_14
    add-int/lit8 v12, v2, 0x2

    #@190
    move/from16 v0, p7

    #@192
    if-lt v12, v0, :cond_18

    #@194
    .line 570
    add-int/lit8 v9, v9, -0x1

    #@196
    move v1, v2

    #@197
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto/16 :goto_3

    #@199
    .line 536
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_15
    add-int/lit8 v12, v2, 0x1

    #@19b
    move/from16 v0, p7

    #@19d
    if-lt v12, v0, :cond_16

    #@19f
    .line 537
    add-int/lit8 v9, v9, -0x1

    #@1a1
    move v1, v2

    #@1a2
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto/16 :goto_3

    #@1a4
    .line 539
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_16
    add-int/lit8 v1, v2, 0x1

    #@1a6
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    add-int/lit8 v12, v11, 0x1

    #@1a8
    int-to-byte v12, v12

    #@1a9
    aput-byte v12, p5, v2

    #@1ab
    .line 540
    add-int/lit8 v2, v1, 0x1

    #@1ad
    .line 541
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    sget-object v12, Landroid/icu/text/UnicodeCompressor;->sOffsets:[I

    #@1af
    aget v12, v12, v11

    #@1b1
    sub-int v12, v4, v12

    #@1b3
    .line 540
    int-to-byte v12, v12

    #@1b4
    aput-byte v12, p5, v1

    #@1b6
    move v1, v2

    #@1b7
    .line 532
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto/16 :goto_5

    #@1b9
    .line 555
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_17
    const/4 v5, -0x1

    #@1ba
    goto :goto_7

    #@1bb
    .line 573
    :cond_18
    invoke-direct {p0}, Landroid/icu/text/UnicodeCompressor;->getLRDefinedWindow()I

    #@1be
    move-result v11

    #@1bf
    .line 575
    add-int/lit8 v1, v2, 0x1

    #@1c1
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    add-int/lit8 v12, v11, 0x18

    #@1c3
    int-to-byte v12, v12

    #@1c4
    aput-byte v12, p5, v2

    #@1c6
    .line 576
    add-int/lit8 v2, v1, 0x1

    #@1c8
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    int-to-byte v12, v3

    #@1c9
    aput-byte v12, p5, v1

    #@1cb
    .line 577
    add-int/lit8 v1, v2, 0x1

    #@1cd
    .line 578
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    sget-object v12, Landroid/icu/text/UnicodeCompressor;->sOffsetTable:[I

    #@1cf
    aget v12, v12, v3

    #@1d1
    sub-int v12, v4, v12

    #@1d3
    add-int/lit16 v12, v12, 0x80

    #@1d5
    .line 577
    int-to-byte v12, v12

    #@1d6
    aput-byte v12, p5, v2

    #@1d8
    .line 581
    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    #@1da
    sget-object v13, Landroid/icu/text/UnicodeCompressor;->sOffsetTable:[I

    #@1dc
    aget v13, v13, v3

    #@1de
    aput v13, v12, v11

    #@1e0
    .line 582
    iput v11, p0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    #@1e2
    .line 583
    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    #@1e4
    iget v13, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    #@1e6
    add-int/lit8 v13, v13, 0x1

    #@1e8
    iput v13, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    #@1ea
    aput v13, v12, v11

    #@1ec
    goto/16 :goto_5

    #@1ee
    .line 596
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_19
    add-int/lit8 v12, v2, 0x3

    #@1f0
    move/from16 v0, p7

    #@1f2
    if-lt v12, v0, :cond_1a

    #@1f4
    .line 597
    add-int/lit8 v9, v9, -0x1

    #@1f6
    move v1, v2

    #@1f7
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto/16 :goto_3

    #@1f9
    .line 599
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_1a
    add-int/lit8 v1, v2, 0x1

    #@1fb
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    const/16 v12, 0xf

    #@1fd
    aput-byte v12, p5, v2

    #@1ff
    .line 601
    ushr-int/lit8 v6, v4, 0x8

    #@201
    .line 602
    and-int/lit16 v7, v4, 0xff

    #@203
    .line 604
    sget-object v12, Landroid/icu/text/UnicodeCompressor;->sUnicodeTagTable:[Z

    #@205
    aget-boolean v12, v12, v6

    #@207
    if-eqz v12, :cond_1b

    #@209
    .line 606
    add-int/lit8 v2, v1, 0x1

    #@20b
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    const/16 v12, -0x10

    #@20d
    aput-byte v12, p5, v1

    #@20f
    move v1, v2

    #@210
    .line 608
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    :cond_1b
    add-int/lit8 v2, v1, 0x1

    #@212
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    int-to-byte v12, v6

    #@213
    aput-byte v12, p5, v1

    #@215
    .line 609
    add-int/lit8 v1, v2, 0x1

    #@217
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    int-to-byte v12, v7

    #@218
    aput-byte v12, p5, v2

    #@21a
    .line 611
    const/4 v12, 0x1

    #@21b
    iput v12, p0, Landroid/icu/text/UnicodeCompressor;->fMode:I

    #@21d
    goto/16 :goto_0

    #@21f
    :pswitch_1
    move v10, v9

    #@220
    .end local v9    # "ucPos":I
    .restart local v10    # "ucPos":I
    move v2, v1

    #@221
    .line 621
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :goto_8
    move/from16 v0, p3

    #@223
    if-ge v10, v0, :cond_1e

    #@225
    move/from16 v0, p7

    #@227
    if-ge v2, v0, :cond_1e

    #@229
    .line 623
    add-int/lit8 v9, v10, 0x1

    #@22b
    .end local v10    # "ucPos":I
    .restart local v9    # "ucPos":I
    aget-char v4, p1, v10

    #@22d
    .line 626
    move/from16 v0, p3

    #@22f
    if-ge v9, v0, :cond_1f

    #@231
    .line 627
    aget-char v8, p1, v9

    #@233
    .line 633
    :goto_9
    invoke-static {v4}, Landroid/icu/text/UnicodeCompressor;->isCompressible(I)Z

    #@236
    move-result v12

    #@237
    if-eqz v12, :cond_20

    #@239
    .line 634
    const/4 v12, -0x1

    #@23a
    if-eq v8, v12, :cond_1c

    #@23c
    invoke-static {v8}, Landroid/icu/text/UnicodeCompressor;->isCompressible(I)Z

    #@23f
    move-result v12

    #@240
    if-eqz v12, :cond_20

    #@242
    .line 653
    :cond_1c
    const/16 v12, 0x80

    #@244
    if-ge v4, v12, :cond_25

    #@246
    .line 654
    and-int/lit16 v7, v4, 0xff

    #@248
    .line 659
    const/4 v12, -0x1

    #@249
    if-eq v8, v12, :cond_1d

    #@24b
    .line 660
    const/16 v12, 0x80

    #@24d
    if-ge v8, v12, :cond_1d

    #@24f
    sget-object v12, Landroid/icu/text/UnicodeCompressor;->sSingleTagTable:[Z

    #@251
    aget-boolean v12, v12, v7

    #@253
    if-eqz v12, :cond_22

    #@255
    .line 685
    :cond_1d
    add-int/lit8 v12, v2, 0x1

    #@257
    move/from16 v0, p7

    #@259
    if-lt v12, v0, :cond_24

    #@25b
    .line 686
    add-int/lit8 v9, v9, -0x1

    #@25d
    move v1, v2

    #@25e
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto/16 :goto_3

    #@260
    .end local v1    # "bytePos":I
    .end local v9    # "ucPos":I
    .restart local v2    # "bytePos":I
    .restart local v10    # "ucPos":I
    :cond_1e
    move v9, v10

    #@261
    .end local v10    # "ucPos":I
    .restart local v9    # "ucPos":I
    move v1, v2

    #@262
    .line 621
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto/16 :goto_0

    #@264
    .line 629
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_1f
    const/4 v8, -0x1

    #@265
    goto :goto_9

    #@266
    .line 637
    :cond_20
    add-int/lit8 v12, v2, 0x2

    #@268
    move/from16 v0, p7

    #@26a
    if-lt v12, v0, :cond_21

    #@26c
    .line 638
    add-int/lit8 v9, v9, -0x1

    #@26e
    move v1, v2

    #@26f
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto/16 :goto_3

    #@271
    .line 640
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_21
    ushr-int/lit8 v6, v4, 0x8

    #@273
    .line 641
    and-int/lit16 v7, v4, 0xff

    #@275
    .line 643
    sget-object v12, Landroid/icu/text/UnicodeCompressor;->sUnicodeTagTable:[Z

    #@277
    aget-boolean v12, v12, v6

    #@279
    if-eqz v12, :cond_31

    #@27b
    .line 645
    add-int/lit8 v1, v2, 0x1

    #@27d
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    const/16 v12, -0x10

    #@27f
    aput-byte v12, p5, v2

    #@281
    .line 647
    :goto_a
    add-int/lit8 v2, v1, 0x1

    #@283
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    int-to-byte v12, v6

    #@284
    aput-byte v12, p5, v1

    #@286
    .line 648
    add-int/lit8 v1, v2, 0x1

    #@288
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    int-to-byte v12, v7

    #@289
    aput-byte v12, p5, v2

    #@28b
    :goto_b
    move v10, v9

    #@28c
    .end local v9    # "ucPos":I
    .restart local v10    # "ucPos":I
    move v2, v1

    #@28d
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    goto :goto_8

    #@28e
    .line 664
    .end local v10    # "ucPos":I
    .restart local v9    # "ucPos":I
    :cond_22
    add-int/lit8 v12, v2, 0x1

    #@290
    move/from16 v0, p7

    #@292
    if-lt v12, v0, :cond_23

    #@294
    .line 665
    add-int/lit8 v9, v9, -0x1

    #@296
    move v1, v2

    #@297
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto/16 :goto_3

    #@299
    .line 668
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_23
    iget v11, p0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    #@29b
    .line 669
    add-int/lit8 v1, v2, 0x1

    #@29d
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    add-int/lit16 v12, v11, 0xe0

    #@29f
    int-to-byte v12, v12

    #@2a0
    aput-byte v12, p5, v2

    #@2a2
    .line 670
    add-int/lit8 v2, v1, 0x1

    #@2a4
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    int-to-byte v12, v7

    #@2a5
    aput-byte v12, p5, v1

    #@2a7
    .line 673
    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    #@2a9
    iget v13, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    #@2ab
    add-int/lit8 v13, v13, 0x1

    #@2ad
    iput v13, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    #@2af
    aput v13, v12, v11

    #@2b1
    .line 674
    const/4 v12, 0x0

    #@2b2
    iput v12, p0, Landroid/icu/text/UnicodeCompressor;->fMode:I

    #@2b4
    move v1, v2

    #@2b5
    .line 675
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto/16 :goto_0

    #@2b7
    .line 691
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_24
    add-int/lit8 v1, v2, 0x1

    #@2b9
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    const/4 v12, 0x0

    #@2ba
    aput-byte v12, p5, v2

    #@2bc
    .line 692
    add-int/lit8 v2, v1, 0x1

    #@2be
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    int-to-byte v12, v7

    #@2bf
    aput-byte v12, p5, v1

    #@2c1
    move v1, v2

    #@2c2
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto :goto_b

    #@2c3
    .line 697
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_25
    invoke-direct {p0, v4}, Landroid/icu/text/UnicodeCompressor;->findDynamicWindow(I)I

    #@2c6
    move-result v11

    #@2c7
    .line 698
    const/4 v12, -0x1

    #@2c8
    .line 697
    if-eq v11, v12, :cond_29

    #@2ca
    .line 702
    invoke-direct {p0, v8, v11}, Landroid/icu/text/UnicodeCompressor;->inDynamicWindow(II)Z

    #@2cd
    move-result v12

    #@2ce
    if-eqz v12, :cond_27

    #@2d0
    .line 706
    add-int/lit8 v12, v2, 0x1

    #@2d2
    move/from16 v0, p7

    #@2d4
    if-lt v12, v0, :cond_26

    #@2d6
    .line 707
    add-int/lit8 v9, v9, -0x1

    #@2d8
    move v1, v2

    #@2d9
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto/16 :goto_3

    #@2db
    .line 709
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_26
    add-int/lit8 v1, v2, 0x1

    #@2dd
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    add-int/lit16 v12, v11, 0xe0

    #@2df
    int-to-byte v12, v12

    #@2e0
    aput-byte v12, p5, v2

    #@2e2
    .line 710
    add-int/lit8 v2, v1, 0x1

    #@2e4
    .line 711
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    #@2e6
    aget v12, v12, v11

    #@2e8
    sub-int v12, v4, v12

    #@2ea
    add-int/lit16 v12, v12, 0x80

    #@2ec
    .line 710
    int-to-byte v12, v12

    #@2ed
    aput-byte v12, p5, v1

    #@2ef
    .line 714
    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    #@2f1
    iget v13, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    #@2f3
    add-int/lit8 v13, v13, 0x1

    #@2f5
    iput v13, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    #@2f7
    aput v13, v12, v11

    #@2f9
    .line 715
    iput v11, p0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    #@2fb
    .line 716
    const/4 v12, 0x0

    #@2fc
    iput v12, p0, Landroid/icu/text/UnicodeCompressor;->fMode:I

    #@2fe
    move v1, v2

    #@2ff
    .line 717
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto/16 :goto_0

    #@301
    .line 726
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_27
    add-int/lit8 v12, v2, 0x2

    #@303
    move/from16 v0, p7

    #@305
    if-lt v12, v0, :cond_28

    #@307
    .line 727
    add-int/lit8 v9, v9, -0x1

    #@309
    move v1, v2

    #@30a
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto/16 :goto_3

    #@30c
    .line 729
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_28
    ushr-int/lit8 v6, v4, 0x8

    #@30e
    .line 730
    and-int/lit16 v7, v4, 0xff

    #@310
    .line 732
    sget-object v12, Landroid/icu/text/UnicodeCompressor;->sUnicodeTagTable:[Z

    #@312
    aget-boolean v12, v12, v6

    #@314
    if-eqz v12, :cond_30

    #@316
    .line 734
    add-int/lit8 v1, v2, 0x1

    #@318
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    const/16 v12, -0x10

    #@31a
    aput-byte v12, p5, v2

    #@31c
    .line 736
    :goto_c
    add-int/lit8 v2, v1, 0x1

    #@31e
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    int-to-byte v12, v6

    #@31f
    aput-byte v12, p5, v1

    #@321
    .line 737
    add-int/lit8 v1, v2, 0x1

    #@323
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    int-to-byte v12, v7

    #@324
    aput-byte v12, p5, v2

    #@326
    goto/16 :goto_b

    #@328
    .line 744
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_29
    invoke-static {v4}, Landroid/icu/text/UnicodeCompressor;->makeIndex(I)I

    #@32b
    move-result v3

    #@32c
    .line 745
    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fIndexCount:[I

    #@32e
    aget v13, v12, v3

    #@330
    add-int/lit8 v13, v13, 0x1

    #@332
    aput v13, v12, v3

    #@334
    .line 748
    add-int/lit8 v12, v9, 0x1

    #@336
    move/from16 v0, p3

    #@338
    if-ge v12, v0, :cond_2b

    #@33a
    .line 749
    add-int/lit8 v12, v9, 0x1

    #@33c
    aget-char v5, p1, v12

    #@33e
    .line 760
    :goto_d
    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fIndexCount:[I

    #@340
    aget v12, v12, v3

    #@342
    const/4 v13, 0x1

    #@343
    if-gt v12, v13, :cond_2a

    #@345
    .line 761
    invoke-static {v8}, Landroid/icu/text/UnicodeCompressor;->makeIndex(I)I

    #@348
    move-result v12

    #@349
    if-ne v3, v12, :cond_2d

    #@34b
    .line 762
    invoke-static {v5}, Landroid/icu/text/UnicodeCompressor;->makeIndex(I)I

    #@34e
    move-result v12

    #@34f
    if-ne v3, v12, :cond_2d

    #@351
    .line 767
    :cond_2a
    add-int/lit8 v12, v2, 0x2

    #@353
    move/from16 v0, p7

    #@355
    if-lt v12, v0, :cond_2c

    #@357
    .line 768
    add-int/lit8 v9, v9, -0x1

    #@359
    move v1, v2

    #@35a
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto/16 :goto_3

    #@35c
    .line 751
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_2b
    const/4 v5, -0x1

    #@35d
    goto :goto_d

    #@35e
    .line 771
    :cond_2c
    invoke-direct {p0}, Landroid/icu/text/UnicodeCompressor;->getLRDefinedWindow()I

    #@361
    move-result v11

    #@362
    .line 773
    add-int/lit8 v1, v2, 0x1

    #@364
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    add-int/lit16 v12, v11, 0xe8

    #@366
    int-to-byte v12, v12

    #@367
    aput-byte v12, p5, v2

    #@369
    .line 774
    add-int/lit8 v2, v1, 0x1

    #@36b
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    int-to-byte v12, v3

    #@36c
    aput-byte v12, p5, v1

    #@36e
    .line 775
    add-int/lit8 v1, v2, 0x1

    #@370
    .line 776
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    sget-object v12, Landroid/icu/text/UnicodeCompressor;->sOffsetTable:[I

    #@372
    aget v12, v12, v3

    #@374
    sub-int v12, v4, v12

    #@376
    add-int/lit16 v12, v12, 0x80

    #@378
    .line 775
    int-to-byte v12, v12

    #@379
    aput-byte v12, p5, v2

    #@37b
    .line 779
    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    #@37d
    sget-object v13, Landroid/icu/text/UnicodeCompressor;->sOffsetTable:[I

    #@37f
    aget v13, v13, v3

    #@381
    aput v13, v12, v11

    #@383
    .line 780
    iput v11, p0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    #@385
    .line 781
    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    #@387
    iget v13, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    #@389
    add-int/lit8 v13, v13, 0x1

    #@38b
    iput v13, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    #@38d
    aput v13, v12, v11

    #@38f
    .line 782
    const/4 v12, 0x0

    #@390
    iput v12, p0, Landroid/icu/text/UnicodeCompressor;->fMode:I

    #@392
    goto/16 :goto_0

    #@394
    .line 793
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_2d
    add-int/lit8 v12, v2, 0x2

    #@396
    move/from16 v0, p7

    #@398
    if-lt v12, v0, :cond_2e

    #@39a
    .line 794
    add-int/lit8 v9, v9, -0x1

    #@39c
    move v1, v2

    #@39d
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto/16 :goto_3

    #@39f
    .line 796
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_2e
    ushr-int/lit8 v6, v4, 0x8

    #@3a1
    .line 797
    and-int/lit16 v7, v4, 0xff

    #@3a3
    .line 799
    sget-object v12, Landroid/icu/text/UnicodeCompressor;->sUnicodeTagTable:[Z

    #@3a5
    aget-boolean v12, v12, v6

    #@3a7
    if-eqz v12, :cond_2f

    #@3a9
    .line 801
    add-int/lit8 v1, v2, 0x1

    #@3ab
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    const/16 v12, -0x10

    #@3ad
    aput-byte v12, p5, v2

    #@3af
    .line 803
    :goto_e
    add-int/lit8 v2, v1, 0x1

    #@3b1
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    int-to-byte v12, v6

    #@3b2
    aput-byte v12, p5, v1

    #@3b4
    .line 804
    add-int/lit8 v1, v2, 0x1

    #@3b6
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    int-to-byte v12, v7

    #@3b7
    aput-byte v12, p5, v2

    #@3b9
    goto/16 :goto_b

    #@3bb
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_2f
    move v1, v2

    #@3bc
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto :goto_e

    #@3bd
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_30
    move v1, v2

    #@3be
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto/16 :goto_c

    #@3c0
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_31
    move v1, v2

    #@3c1
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto/16 :goto_a

    #@3c3
    .end local v1    # "bytePos":I
    .restart local v2    # "bytePos":I
    :cond_32
    move v1, v2

    #@3c4
    .end local v2    # "bytePos":I
    .restart local v1    # "bytePos":I
    goto/16 :goto_4

    #@3c6
    .line 394
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 828
    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    #@3
    const/16 v2, 0x80

    #@5
    aput v2, v1, v4

    #@7
    .line 829
    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    #@9
    const/16 v2, 0xc0

    #@b
    const/4 v3, 0x1

    #@c
    aput v2, v1, v3

    #@e
    .line 830
    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    #@10
    const/16 v2, 0x400

    #@12
    const/4 v3, 0x2

    #@13
    aput v2, v1, v3

    #@15
    .line 831
    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    #@17
    const/16 v2, 0x600

    #@19
    const/4 v3, 0x3

    #@1a
    aput v2, v1, v3

    #@1c
    .line 832
    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    #@1e
    const/16 v2, 0x900

    #@20
    const/4 v3, 0x4

    #@21
    aput v2, v1, v3

    #@23
    .line 833
    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    #@25
    const/16 v2, 0x3040

    #@27
    const/4 v3, 0x5

    #@28
    aput v2, v1, v3

    #@2a
    .line 834
    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    #@2c
    const/16 v2, 0x30a0

    #@2e
    const/4 v3, 0x6

    #@2f
    aput v2, v1, v3

    #@31
    .line 835
    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    #@33
    const v2, 0xff00

    #@36
    const/4 v3, 0x7

    #@37
    aput v2, v1, v3

    #@39
    .line 839
    const/4 v0, 0x0

    #@3a
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    #@3c
    if-ge v0, v1, :cond_0

    #@3e
    .line 840
    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    #@40
    aput v4, v1, v0

    #@42
    .line 839
    add-int/lit8 v0, v0, 0x1

    #@44
    goto :goto_0

    #@45
    .line 844
    :cond_0
    const/4 v0, 0x0

    #@46
    :goto_1
    const/16 v1, 0xff

    #@48
    if-gt v0, v1, :cond_1

    #@4a
    .line 845
    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fIndexCount:[I

    #@4c
    aput v4, v1, v0

    #@4e
    .line 844
    add-int/lit8 v0, v0, 0x1

    #@50
    goto :goto_1

    #@51
    .line 848
    :cond_1
    iput v4, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    #@53
    .line 849
    iput v4, p0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    #@55
    .line 850
    iput v4, p0, Landroid/icu/text/UnicodeCompressor;->fMode:I

    #@57
    .line 823
    return-void
.end method
