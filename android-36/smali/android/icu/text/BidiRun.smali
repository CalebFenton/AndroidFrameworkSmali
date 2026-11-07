.class public Landroid/icu/text/BidiRun;
.super Ljava/lang/Object;
.source "BidiRun.java"


# instance fields
.field greylist-max-o insertRemove:I

.field greylist-max-o level:B

.field greylist-max-o limit:I

.field greylist-max-o start:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Landroid/icu/text/BidiRun;-><init>(IIB)V

    .line 57
    return-void
.end method

.method constructor greylist-max-o <init>(IIB)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "embeddingLevel"    # B

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Landroid/icu/text/BidiRun;->start:I

    .line 65
    iput p2, p0, Landroid/icu/text/BidiRun;->limit:I

    .line 66
    iput-byte p3, p0, Landroid/icu/text/BidiRun;->level:B

    .line 67
    return-void
.end method


# virtual methods
.method greylist-max-o copyFrom(Landroid/icu/text/BidiRun;)V
    .registers 3
    .param p1, "run"    # Landroid/icu/text/BidiRun;

    .line 74
    iget v0, p1, Landroid/icu/text/BidiRun;->start:I

    iput v0, p0, Landroid/icu/text/BidiRun;->start:I

    .line 75
    iget v0, p1, Landroid/icu/text/BidiRun;->limit:I

    iput v0, p0, Landroid/icu/text/BidiRun;->limit:I

    .line 76
    iget-byte v0, p1, Landroid/icu/text/BidiRun;->level:B

    iput-byte v0, p0, Landroid/icu/text/BidiRun;->level:B

    .line 77
    iget v0, p1, Landroid/icu/text/BidiRun;->insertRemove:I

    iput v0, p0, Landroid/icu/text/BidiRun;->insertRemove:I

    .line 78
    return-void
.end method

.method public whitelist test-api getDirection()B
    .registers 2

    .line 137
    iget-byte v0, p0, Landroid/icu/text/BidiRun;->level:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    return v0
.end method

.method public whitelist test-api getEmbeddingLevel()B
    .registers 2

    .line 109
    iget-byte v0, p0, Landroid/icu/text/BidiRun;->level:B

    return v0
.end method

.method public whitelist test-api getLength()I
    .registers 3

    .line 101
    iget v0, p0, Landroid/icu/text/BidiRun;->limit:I

    iget v1, p0, Landroid/icu/text/BidiRun;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api getLimit()I
    .registers 2

    .line 93
    iget v0, p0, Landroid/icu/text/BidiRun;->limit:I

    return v0
.end method

.method public whitelist test-api getStart()I
    .registers 2

    .line 85
    iget v0, p0, Landroid/icu/text/BidiRun;->start:I

    return v0
.end method

.method public whitelist test-api isEvenRun()Z
    .registers 3

    .line 129
    iget-byte v0, p0, Landroid/icu/text/BidiRun;->level:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist test-api isOddRun()Z
    .registers 3

    .line 119
    iget-byte v0, p0, Landroid/icu/text/BidiRun;->level:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BidiRun "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/text/BidiRun;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/text/BidiRun;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Landroid/icu/text/BidiRun;->level:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
