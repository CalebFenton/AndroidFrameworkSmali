.class Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;
.super Landroid/icu/text/CharsetRecog_mbcs;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_mbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_gb_18030"
.end annotation


# static fields
.field static commonChars:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 518
    const/16 v0, 0x64

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    .line 514
    sput-object v0, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;->commonChars:[I

    #@9
    .line 453
    return-void

    #@a
    .line 518
    :array_0
    .array-data 4
        0xa1a1
        0xa1a2
        0xa1a3
        0xa1a4
        0xa1b0
        0xa1b1
        0xa1f1
        0xa1f3
        0xa3a1
        0xa3ac
        0xa3ba
        0xb1a8
        0xb1b8
        0xb1be
        0xb2bb
        0xb3c9
        0xb3f6
        0xb4f3
        0xb5bd
        0xb5c4
        0xb5e3
        0xb6af
        0xb6d4
        0xb6e0
        0xb7a2
        0xb7a8
        0xb7bd
        0xb7d6
        0xb7dd
        0xb8b4
        0xb8df
        0xb8f6
        0xb9ab
        0xb9c9
        0xb9d8
        0xb9fa
        0xb9fd
        0xbacd
        0xbba7
        0xbbd6
        0xbbe1
        0xbbfa
        0xbcbc
        0xbcdb
        0xbcfe
        0xbdcc
        0xbecd
        0xbedd
        0xbfb4
        0xbfc6
        0xbfc9
        0xc0b4
        0xc0ed
        0xc1cb
        0xc2db
        0xc3c7
        0xc4dc
        0xc4ea
        0xc5cc
        0xc6f7
        0xc7f8
        0xc8ab
        0xc8cb
        0xc8d5
        0xc8e7
        0xc9cf
        0xc9fa
        0xcab1
        0xcab5
        0xcac7
        0xcad0
        0xcad6
        0xcaf5
        0xcafd
        0xccec
        0xcdf8
        0xceaa
        0xcec4
        0xced2
        0xcee5
        0xcfb5
        0xcfc2
        0xcfd6
        0xd0c2
        0xd0c5
        0xd0d0
        0xd0d4
        0xd1a7
        0xd2aa
        0xd2b2
        0xd2b5
        0xd2bb
        0xd2d4
        0xd3c3
        0xd3d0
        0xd3fd
        0xd4c2
        0xd4da
        0xd5e2
        0xd6d0
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 453
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_mbcs;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 541
    const-string/jumbo v0, "zh"

    #@3
    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 531
    const-string/jumbo v0, "GB18030"

    #@3
    return-object v0
.end method

.method match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 2
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    .line 535
    sget-object v1, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;->commonChars:[I

    #@2
    invoke-virtual {p0, p1, v1}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;->match(Landroid/icu/text/CharsetDetector;[I)I

    #@5
    move-result v0

    #@6
    .line 536
    .local v0, "confidence":I
    if-nez v0, :cond_0

    #@8
    const/4 v1, 0x0

    #@9
    :goto_0
    return-object v1

    #@a
    :cond_0
    new-instance v1, Landroid/icu/text/CharsetMatch;

    #@c
    invoke-direct {v1, p1, p0, v0}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V

    #@f
    goto :goto_0
.end method

.method nextChar(Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;Landroid/icu/text/CharsetDetector;)Z
    .locals 10
    .param p1, "it"    # Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;
    .param p2, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    const/16 v9, 0x39

    #@2
    const/16 v8, 0x30

    #@4
    const/16 v7, 0xfe

    #@6
    const/4 v4, 0x1

    #@7
    const/4 v5, 0x0

    #@8
    .line 462
    iget v6, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    #@a
    iput v6, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->index:I

    #@c
    .line 463
    iput-boolean v5, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    #@e
    .line 464
    const/4 v0, 0x0

    #@f
    .line 465
    .local v0, "firstByte":I
    const/4 v2, 0x0

    #@10
    .line 466
    .local v2, "secondByte":I
    const/4 v3, 0x0

    #@11
    .line 467
    .local v3, "thirdByte":I
    const/4 v1, 0x0

    #@12
    .line 470
    .local v1, "fourthByte":I
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    #@15
    move-result v0

    #@16
    .end local v0    # "firstByte":I
    iput v0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    #@18
    .line 472
    .restart local v0    # "firstByte":I
    if-gez v0, :cond_1

    #@1a
    .line 474
    iput-boolean v4, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    #@1c
    .line 511
    :cond_0
    :goto_0
    iget-boolean v6, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    #@1e
    if-nez v6, :cond_5

    #@20
    :goto_1
    return v4

    #@21
    .line 478
    :cond_1
    const/16 v6, 0x80

    #@23
    if-le v0, v6, :cond_0

    #@25
    .line 483
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    #@28
    move-result v2

    #@29
    .line 484
    iget v6, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    #@2b
    shl-int/lit8 v6, v6, 0x8

    #@2d
    or-int/2addr v6, v2

    #@2e
    iput v6, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    #@30
    .line 486
    const/16 v6, 0x81

    #@32
    if-lt v0, v6, :cond_0

    #@34
    if-gt v0, v7, :cond_0

    #@36
    .line 488
    const/16 v6, 0x40

    #@38
    if-lt v2, v6, :cond_2

    #@3a
    const/16 v6, 0x7e

    #@3c
    if-le v2, v6, :cond_0

    #@3e
    :cond_2
    const/16 v6, 0x50

    #@40
    if-lt v2, v6, :cond_3

    #@42
    if-le v2, v7, :cond_0

    #@44
    .line 493
    :cond_3
    if-lt v2, v8, :cond_4

    #@46
    if-gt v2, v9, :cond_4

    #@48
    .line 494
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    #@4b
    move-result v3

    #@4c
    .line 496
    const/16 v6, 0x81

    #@4e
    if-lt v3, v6, :cond_4

    #@50
    if-gt v3, v7, :cond_4

    #@52
    .line 497
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    #@55
    move-result v1

    #@56
    .line 499
    if-lt v1, v8, :cond_4

    #@58
    if-gt v1, v9, :cond_4

    #@5a
    .line 500
    iget v6, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    #@5c
    shl-int/lit8 v6, v6, 0x10

    #@5e
    shl-int/lit8 v7, v3, 0x8

    #@60
    or-int/2addr v6, v7

    #@61
    or-int/2addr v6, v1

    #@62
    iput v6, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    #@64
    goto :goto_0

    #@65
    .line 506
    :cond_4
    iput-boolean v4, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    #@67
    goto :goto_0

    #@68
    :cond_5
    move v4, v5

    #@69
    .line 511
    goto :goto_1
.end method
