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
.field static blacklist commonChars:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 528
    const/16 v0, 0x64

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;->commonChars:[I

    return-void

    :array_a
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

.method constructor blacklist <init>()V
    .registers 1

    .line 467
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_mbcs;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getLanguage()Ljava/lang/String;
    .registers 2

    .line 558
    const-string v0, "zh"

    return-object v0
.end method

.method blacklist getName()Ljava/lang/String;
    .registers 2

    .line 546
    const-string v0, "GB18030"

    return-object v0
.end method

.method blacklist match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .registers 4
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    .line 551
    sget-object v0, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;->commonChars:[I

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;->match(Landroid/icu/text/CharsetDetector;[I)I

    move-result v0

    .line 552
    .local v0, "confidence":I
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_f

    :cond_a
    new-instance v1, Landroid/icu/text/CharsetMatch;

    invoke-direct {v1, p1, p0, v0}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V

    :goto_f
    return-object v1
.end method

.method blacklist nextChar(Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;Landroid/icu/text/CharsetDetector;)Z
    .registers 12
    .param p1, "it"    # Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;
    .param p2, "det"    # Landroid/icu/text/CharsetDetector;

    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 478
    const/4 v0, 0x0

    .line 479
    .local v0, "firstByte":I
    const/4 v1, 0x0

    .line 480
    .local v1, "secondByte":I
    const/4 v2, 0x0

    .line 481
    .local v2, "thirdByte":I
    const/4 v3, 0x0

    .line 484
    .local v3, "fourthByte":I
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    move-result v4

    iput v4, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 486
    .end local v0    # "firstByte":I
    .local v4, "firstByte":I
    const/4 v0, 0x1

    if-gez v4, :cond_13

    .line 488
    iput-boolean v0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    .line 489
    goto :goto_5f

    .line 492
    :cond_13
    const/16 v5, 0x80

    if-gt v4, v5, :cond_18

    .line 494
    goto :goto_5f

    .line 497
    :cond_18
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    move-result v1

    .line 498
    iget v5, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v1

    iput v5, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 500
    const/16 v5, 0x81

    if-lt v4, v5, :cond_5f

    const/16 v6, 0xfe

    if-gt v4, v6, :cond_5f

    .line 502
    const/16 v7, 0x40

    if-lt v1, v7, :cond_33

    const/16 v7, 0x7e

    if-le v1, v7, :cond_5f

    :cond_33
    const/16 v7, 0x50

    if-lt v1, v7, :cond_3a

    if-gt v1, v6, :cond_3a

    .line 503
    goto :goto_5f

    .line 507
    :cond_3a
    const/16 v7, 0x30

    if-lt v1, v7, :cond_5d

    const/16 v8, 0x39

    if-gt v1, v8, :cond_5d

    .line 508
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    move-result v2

    .line 510
    if-lt v2, v5, :cond_5d

    if-gt v2, v6, :cond_5d

    .line 511
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    move-result v3

    .line 513
    if-lt v3, v7, :cond_5d

    if-gt v3, v8, :cond_5d

    .line 514
    iget v5, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    shl-int/lit8 v5, v5, 0x10

    shl-int/lit8 v6, v2, 0x8

    or-int/2addr v5, v6

    or-int/2addr v5, v3

    iput v5, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 515
    goto :goto_5f

    .line 520
    :cond_5d
    iput-boolean v0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 525
    :cond_5f
    :goto_5f
    iget-boolean v5, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    xor-int/2addr v0, v5

    return v0
.end method
