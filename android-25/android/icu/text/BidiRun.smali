.class public Landroid/icu/text/BidiRun;
.super Ljava/lang/Object;
.source "BidiRun.java"


# instance fields
.field insertRemove:I

.field level:B

.field limit:I

.field start:I


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 55
    invoke-direct {p0, v0, v0, v0}, Landroid/icu/text/BidiRun;-><init>(IIB)V

    #@4
    .line 53
    return-void
.end method

.method constructor <init>(IIB)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "embeddingLevel"    # B

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    iput p1, p0, Landroid/icu/text/BidiRun;->start:I

    #@5
    .line 64
    iput p2, p0, Landroid/icu/text/BidiRun;->limit:I

    #@7
    .line 65
    iput-byte p3, p0, Landroid/icu/text/BidiRun;->level:B

    #@9
    .line 61
    return-void
.end method


# virtual methods
.method copyFrom(Landroid/icu/text/BidiRun;)V
    .locals 1
    .param p1, "run"    # Landroid/icu/text/BidiRun;

    #@0
    .prologue
    .line 73
    iget v0, p1, Landroid/icu/text/BidiRun;->start:I

    #@2
    iput v0, p0, Landroid/icu/text/BidiRun;->start:I

    #@4
    .line 74
    iget v0, p1, Landroid/icu/text/BidiRun;->limit:I

    #@6
    iput v0, p0, Landroid/icu/text/BidiRun;->limit:I

    #@8
    .line 75
    iget-byte v0, p1, Landroid/icu/text/BidiRun;->level:B

    #@a
    iput-byte v0, p0, Landroid/icu/text/BidiRun;->level:B

    #@c
    .line 76
    iget v0, p1, Landroid/icu/text/BidiRun;->insertRemove:I

    #@e
    iput v0, p0, Landroid/icu/text/BidiRun;->insertRemove:I

    #@10
    .line 71
    return-void
.end method

.method public getDirection()B
    .locals 1

    #@0
    .prologue
    .line 136
    iget-byte v0, p0, Landroid/icu/text/BidiRun;->level:B

    #@2
    and-int/lit8 v0, v0, 0x1

    #@4
    int-to-byte v0, v0

    #@5
    return v0
.end method

.method public getEmbeddingLevel()B
    .locals 1

    #@0
    .prologue
    .line 108
    iget-byte v0, p0, Landroid/icu/text/BidiRun;->level:B

    #@2
    return v0
.end method

.method public getLength()I
    .locals 2

    #@0
    .prologue
    .line 100
    iget v0, p0, Landroid/icu/text/BidiRun;->limit:I

    #@2
    iget v1, p0, Landroid/icu/text/BidiRun;->start:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public getLimit()I
    .locals 1

    #@0
    .prologue
    .line 92
    iget v0, p0, Landroid/icu/text/BidiRun;->limit:I

    #@2
    return v0
.end method

.method public getStart()I
    .locals 1

    #@0
    .prologue
    .line 84
    iget v0, p0, Landroid/icu/text/BidiRun;->start:I

    #@2
    return v0
.end method

.method public isEvenRun()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 128
    iget-byte v1, p0, Landroid/icu/text/BidiRun;->level:B

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isOddRun()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 118
    iget-byte v1, p0, Landroid/icu/text/BidiRun;->level:B

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-ne v1, v0, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "BidiRun "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/icu/text/BidiRun;->start:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " - "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/icu/text/BidiRun;->limit:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, " @ "

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-byte v1, p0, Landroid/icu/text/BidiRun;->level:B

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method
