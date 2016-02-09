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
.field private static final N_GRAM_MASK:I = 0xffffff


# instance fields
.field protected byteIndex:I

.field protected byteMap:[B

.field private hitCount:I

.field private ngram:I

.field private ngramCount:I

.field private ngramList:[I

.field protected spaceChar:B


# direct methods
.method public constructor <init>([I[B)V
    .locals 1
    .param p1, "theNgramList"    # [I
    .param p2, "theByteMap"    # [B

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 27
    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    #@6
    .line 28
    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    #@8
    .line 40
    iput-object p1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngramList:[I

    #@a
    .line 41
    iput-object p2, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->byteMap:[B

    #@c
    .line 43
    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    #@e
    .line 45
    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    #@10
    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    #@12
    .line 38
    return-void
.end method

.method private lookup(I)V
    .locals 1
    .param p1, "thisNgram"    # I

    #@0
    .prologue
    .line 92
    iget v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    #@6
    .line 94
    iget-object v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngramList:[I

    #@8
    invoke-static {v0, p1}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->search([II)I

    #@b
    move-result v0

    #@c
    if-ltz v0, :cond_0

    #@e
    .line 95
    iget v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    #@10
    add-int/lit8 v0, v0, 0x1

    #@12
    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    #@14
    .line 90
    :cond_0
    return-void
.end method

.method private nextByte(Landroid/icu/text/CharsetDetector;)I
    .locals 3
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    .line 108
    iget v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    #@2
    iget v1, p1, Landroid/icu/text/CharsetDetector;->fInputLen:I

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 109
    const/4 v0, -0x1

    #@7
    return v0

    #@8
    .line 112
    :cond_0
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    #@a
    iget v1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    #@c
    add-int/lit8 v2, v1, 0x1

    #@e
    iput v2, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    #@10
    aget-byte v0, v0, v1

    #@12
    and-int/lit16 v0, v0, 0xff

    #@14
    return v0
.end method

.method private static search([II)I
    .locals 2
    .param p0, "table"    # [I
    .param p1, "value"    # I

    #@0
    .prologue
    .line 53
    const/4 v0, 0x0

    #@1
    .line 55
    .local v0, "index":I
    const/16 v1, 0x20

    #@3
    aget v1, p0, v1

    #@5
    if-gt v1, p1, :cond_0

    #@7
    .line 56
    const/16 v0, 0x20

    #@9
    .line 59
    :cond_0
    add-int/lit8 v1, v0, 0x10

    #@b
    aget v1, p0, v1

    #@d
    if-gt v1, p1, :cond_1

    #@f
    .line 60
    add-int/lit8 v0, v0, 0x10

    #@11
    .line 63
    :cond_1
    add-int/lit8 v1, v0, 0x8

    #@13
    aget v1, p0, v1

    #@15
    if-gt v1, p1, :cond_2

    #@17
    .line 64
    add-int/lit8 v0, v0, 0x8

    #@19
    .line 67
    :cond_2
    add-int/lit8 v1, v0, 0x4

    #@1b
    aget v1, p0, v1

    #@1d
    if-gt v1, p1, :cond_3

    #@1f
    .line 68
    add-int/lit8 v0, v0, 0x4

    #@21
    .line 71
    :cond_3
    add-int/lit8 v1, v0, 0x2

    #@23
    aget v1, p0, v1

    #@25
    if-gt v1, p1, :cond_4

    #@27
    .line 72
    add-int/lit8 v0, v0, 0x2

    #@29
    .line 75
    :cond_4
    add-int/lit8 v1, v0, 0x1

    #@2b
    aget v1, p0, v1

    #@2d
    if-gt v1, p1, :cond_5

    #@2f
    .line 76
    add-int/lit8 v0, v0, 0x1

    #@31
    .line 79
    :cond_5
    aget v1, p0, v0

    #@33
    if-le v1, p1, :cond_6

    #@35
    .line 80
    add-int/lit8 v0, v0, -0x1

    #@37
    .line 83
    :cond_6
    if-ltz v0, :cond_7

    #@39
    aget v1, p0, v0

    #@3b
    if-eq v1, p1, :cond_8

    #@3d
    .line 84
    :cond_7
    const/4 v1, -0x1

    #@3e
    return v1

    #@3f
    .line 87
    :cond_8
    return v0
.end method


# virtual methods
.method protected addByte(I)V
    .locals 2
    .param p1, "b"    # I

    #@0
    .prologue
    .line 102
    iget v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    #@2
    shl-int/lit8 v0, v0, 0x8

    #@4
    and-int/lit16 v1, p1, 0xff

    #@6
    add-int/2addr v0, v1

    #@7
    const v1, 0xffffff

    #@a
    and-int/2addr v0, v1

    #@b
    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    #@d
    .line 103
    iget v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    #@f
    invoke-direct {p0, v0}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->lookup(I)V

    #@12
    .line 100
    return-void
.end method

.method public parse(Landroid/icu/text/CharsetDetector;)I
    .locals 1
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    .line 137
    const/16 v0, 0x20

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->parse(Landroid/icu/text/CharsetDetector;B)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public parse(Landroid/icu/text/CharsetDetector;B)I
    .locals 6
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;
    .param p2, "spaceCh"    # B

    #@0
    .prologue
    .line 142
    iput-byte p2, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    #@2
    .line 144
    invoke-virtual {p0, p1}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->parseCharacters(Landroid/icu/text/CharsetDetector;)V

    #@5
    .line 147
    iget-byte v2, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    #@7
    invoke-virtual {p0, v2}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->addByte(I)V

    #@a
    .line 149
    iget v2, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    #@c
    int-to-double v2, v2

    #@d
    iget v4, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    #@f
    int-to-double v4, v4

    #@10
    div-double v0, v2, v4

    #@12
    .line 157
    .local v0, "rawPercent":D
    const-wide v2, 0x3fd51eb851eb851fL    # 0.33

    #@17
    cmpl-double v2, v0, v2

    #@19
    if-lez v2, :cond_0

    #@1b
    .line 158
    const/16 v2, 0x62

    #@1d
    return v2

    #@1e
    .line 161
    :cond_0
    const-wide v2, 0x4072c00000000000L    # 300.0

    #@23
    mul-double/2addr v2, v0

    #@24
    double-to-int v2, v2

    #@25
    return v2
.end method

.method protected parseCharacters(Landroid/icu/text/CharsetDetector;)V
    .locals 5
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 118
    const/4 v1, 0x0

    #@2
    .line 120
    .local v1, "ignoreSpace":Z
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->nextByte(Landroid/icu/text/CharsetDetector;)I

    #@5
    move-result v0

    #@6
    .local v0, "b":I
    if-ltz v0, :cond_4

    #@8
    .line 121
    iget-object v4, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->byteMap:[B

    #@a
    aget-byte v2, v4, v0

    #@c
    .line 124
    .local v2, "mb":B
    if-eqz v2, :cond_0

    #@e
    .line 125
    iget-byte v4, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    #@10
    if-ne v2, v4, :cond_2

    #@12
    .end local v1    # "ignoreSpace":Z
    :goto_1
    if-nez v1, :cond_1

    #@14
    .line 126
    invoke-virtual {p0, v2}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->addByte(I)V

    #@17
    .line 129
    :cond_1
    iget-byte v4, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    #@19
    if-ne v2, v4, :cond_3

    #@1b
    const/4 v1, 0x1

    #@1c
    .restart local v1    # "ignoreSpace":Z
    goto :goto_0

    #@1d
    :cond_2
    move v1, v3

    #@1e
    .line 125
    goto :goto_1

    #@1f
    .line 129
    .end local v1    # "ignoreSpace":Z
    :cond_3
    const/4 v1, 0x0

    #@20
    .restart local v1    # "ignoreSpace":Z
    goto :goto_0

    #@21
    .line 115
    .end local v2    # "mb":B
    :cond_4
    return-void
.end method
