.class public Ljava/text/ParsePosition;
.super Ljava/lang/Object;
.source "ParsePosition.java"


# instance fields
.field private currentPosition:I

.field private errorIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/text/ParsePosition;->errorIndex:I

    #@6
    .line 36
    iput p1, p0, Ljava/text/ParsePosition;->currentPosition:I

    #@8
    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 53
    instance-of v2, p1, Ljava/text/ParsePosition;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 54
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 56
    check-cast v0, Ljava/text/ParsePosition;

    #@9
    .line 57
    .local v0, "pos":Ljava/text/ParsePosition;
    iget v2, p0, Ljava/text/ParsePosition;->currentPosition:I

    #@b
    iget v3, v0, Ljava/text/ParsePosition;->currentPosition:I

    #@d
    if-ne v2, v3, :cond_1

    #@f
    .line 58
    iget v2, p0, Ljava/text/ParsePosition;->errorIndex:I

    #@11
    iget v3, v0, Ljava/text/ParsePosition;->errorIndex:I

    #@13
    if-ne v2, v3, :cond_1

    #@15
    const/4 v1, 0x1

    #@16
    .line 57
    :cond_1
    return v1
.end method

.method public getErrorIndex()I
    .locals 1

    #@0
    .prologue
    .line 67
    iget v0, p0, Ljava/text/ParsePosition;->errorIndex:I

    #@2
    return v0
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 76
    iget v0, p0, Ljava/text/ParsePosition;->currentPosition:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 81
    iget v0, p0, Ljava/text/ParsePosition;->currentPosition:I

    #@2
    iget v1, p0, Ljava/text/ParsePosition;->errorIndex:I

    #@4
    add-int/2addr v0, v1

    #@5
    return v0
.end method

.method public setErrorIndex(I)V
    .locals 0
    .param p1, "index"    # I

    #@0
    .prologue
    .line 91
    iput p1, p0, Ljava/text/ParsePosition;->errorIndex:I

    #@2
    .line 90
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    #@0
    .prologue
    .line 101
    iput p1, p0, Ljava/text/ParsePosition;->currentPosition:I

    #@2
    .line 100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/text/ParsePosition;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, "[index="

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget v1, p0, Ljava/text/ParsePosition;->currentPosition:I

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    .line 112
    const-string/jumbo v1, ", errorIndex="

    #@21
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 112
    iget v1, p0, Ljava/text/ParsePosition;->errorIndex:I

    #@27
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 112
    const-string/jumbo v1, "]"

    #@2e
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    return-object v0
.end method
