.class Landroid/icu/text/CharsetRecog_sbcs$NGramParser;
.super Ljava/lang/Object;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NGramParser"
.end annotation


# static fields
.field private static final blacklist N_GRAM_MASK:I = 0xffffff


# instance fields
.field protected blacklist byteIndex:I

.field protected blacklist byteMap:[B

.field private blacklist hitCount:I

.field private blacklist ngram:I

.field private blacklist ngramCount:I

.field private blacklist ngramList:[I

.field protected blacklist spaceChar:B


# direct methods
.method public constructor blacklist <init>([I[B)V
    .registers 4
    .param p1, "theNgramList"    # [I
    .param p2, "theByteMap"    # [B

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    .line 32
    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    .line 44
    iput-object p1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngramList:[I

    .line 45
    iput-object p2, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->byteMap:[B

    .line 47
    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    .line 49
    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    .line 50
    return-void
.end method

.method private blacklist lookup(I)V
    .registers 3
    .param p1, "thisNgram"    # I

    .line 96
    iget v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    .line 98
    iget-object v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngramList:[I

    invoke-static {v0, p1}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->search([II)I

    move-result v0

    if-ltz v0, :cond_14

    .line 99
    iget v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    .line 102
    :cond_14
    return-void
.end method

.method private blacklist nextByte(Landroid/icu/text/CharsetDetector;)I
    .registers 5
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    .line 112
    iget v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    iget v1, p1, Landroid/icu/text/CharsetDetector;->fInputLen:I

    if-lt v0, v1, :cond_8

    .line 113
    const/4 v0, -0x1

    return v0

    .line 116
    :cond_8
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    iget v1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private static blacklist search([II)I
    .registers 4
    .param p0, "table"    # [I
    .param p1, "value"    # I

    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x20

    aget v1, p0, v1

    if-gt v1, p1, :cond_9

    .line 60
    add-int/lit8 v0, v0, 0x20

    .line 63
    :cond_9
    add-int/lit8 v1, v0, 0x10

    aget v1, p0, v1

    if-gt v1, p1, :cond_11

    .line 64
    add-int/lit8 v0, v0, 0x10

    .line 67
    :cond_11
    add-int/lit8 v1, v0, 0x8

    aget v1, p0, v1

    if-gt v1, p1, :cond_19

    .line 68
    add-int/lit8 v0, v0, 0x8

    .line 71
    :cond_19
    add-int/lit8 v1, v0, 0x4

    aget v1, p0, v1

    if-gt v1, p1, :cond_21

    .line 72
    add-int/lit8 v0, v0, 0x4

    .line 75
    :cond_21
    add-int/lit8 v1, v0, 0x2

    aget v1, p0, v1

    if-gt v1, p1, :cond_29

    .line 76
    add-int/lit8 v0, v0, 0x2

    .line 79
    :cond_29
    add-int/lit8 v1, v0, 0x1

    aget v1, p0, v1

    if-gt v1, p1, :cond_31

    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 83
    :cond_31
    aget v1, p0, v0

    if-le v1, p1, :cond_37

    .line 84
    add-int/lit8 v0, v0, -0x1

    .line 87
    :cond_37
    if-ltz v0, :cond_3f

    aget v1, p0, v0

    if-eq v1, p1, :cond_3e

    goto :goto_3f

    .line 91
    :cond_3e
    return v0

    .line 88
    :cond_3f
    :goto_3f
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method protected blacklist addByte(I)V
    .registers 4
    .param p1, "b"    # I

    .line 106
    iget v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p1, 0xff

    add-int/2addr v0, v1

    const v1, 0xffffff

    and-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    .line 107
    iget v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    invoke-direct {p0, v0}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->lookup(I)V

    .line 108
    return-void
.end method

.method public blacklist parse(Landroid/icu/text/CharsetDetector;)I
    .registers 3
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    .line 141
    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->parse(Landroid/icu/text/CharsetDetector;B)I

    move-result v0

    return v0
.end method

.method public blacklist parse(Landroid/icu/text/CharsetDetector;B)I
    .registers 7
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;
    .param p2, "spaceCh"    # B

    .line 146
    iput-byte p2, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    .line 148
    invoke-virtual {p0, p1}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->parseCharacters(Landroid/icu/text/CharsetDetector;)V

    .line 151
    iget-byte v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    invoke-virtual {p0, v0}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->addByte(I)V

    .line 153
    iget v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    int-to-double v0, v0

    iget v2, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 161
    .local v0, "rawPercent":D
    const-wide v2, 0x3fd51eb851eb851fL    # 0.33

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1d

    .line 162
    const/16 v2, 0x62

    return v2

    .line 165
    :cond_1d
    const-wide v2, 0x4072c00000000000L    # 300.0

    mul-double/2addr v2, v0

    double-to-int v2, v2

    return v2
.end method

.method protected blacklist parseCharacters(Landroid/icu/text/CharsetDetector;)V
    .registers 6
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    .line 122
    const/4 v0, 0x0

    .line 124
    .local v0, "ignoreSpace":Z
    :goto_1
    invoke-direct {p0, p1}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->nextByte(Landroid/icu/text/CharsetDetector;)I

    move-result v1

    move v2, v1

    .local v2, "b":I
    if-ltz v1, :cond_20

    .line 125
    iget-object v1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->byteMap:[B

    aget-byte v1, v1, v2

    .line 128
    .local v1, "mb":B
    if-eqz v1, :cond_1f

    .line 129
    iget-byte v3, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    if-ne v1, v3, :cond_14

    if-nez v0, :cond_17

    .line 130
    :cond_14
    invoke-virtual {p0, v1}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->addByte(I)V

    .line 133
    :cond_17
    iget-byte v3, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    if-ne v1, v3, :cond_1d

    const/4 v3, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v3, 0x0

    :goto_1e
    move v0, v3

    .line 135
    .end local v1    # "mb":B
    :cond_1f
    goto :goto_1

    .line 137
    :cond_20
    return-void
.end method
