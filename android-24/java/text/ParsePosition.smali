.class public Ljava/text/ParsePosition;
.super Ljava/lang/Object;
.source "ParsePosition.java"


# instance fields
.field errorIndex:I

.field index:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/text/ParsePosition;->index:I

    #@6
    .line 66
    const/4 v0, -0x1

    #@7
    iput v0, p0, Ljava/text/ParsePosition;->errorIndex:I

    #@9
    .line 88
    iput p1, p0, Ljava/text/ParsePosition;->index:I

    #@b
    .line 87
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 115
    if-nez p1, :cond_0

    #@3
    return v1

    #@4
    .line 116
    :cond_0
    instance-of v2, p1, Ljava/text/ParsePosition;

    #@6
    if-nez v2, :cond_1

    #@8
    .line 117
    return v1

    #@9
    :cond_1
    move-object v0, p1

    #@a
    .line 118
    check-cast v0, Ljava/text/ParsePosition;

    #@c
    .line 119
    .local v0, "other":Ljava/text/ParsePosition;
    iget v2, p0, Ljava/text/ParsePosition;->index:I

    #@e
    iget v3, v0, Ljava/text/ParsePosition;->index:I

    #@10
    if-ne v2, v3, :cond_2

    #@12
    iget v2, p0, Ljava/text/ParsePosition;->errorIndex:I

    #@14
    iget v3, v0, Ljava/text/ParsePosition;->errorIndex:I

    #@16
    if-ne v2, v3, :cond_2

    #@18
    const/4 v1, 0x1

    #@19
    :cond_2
    return v1
.end method

.method public getErrorIndex()I
    .locals 1

    #@0
    .prologue
    .line 108
    iget v0, p0, Ljava/text/ParsePosition;->errorIndex:I

    #@2
    return v0
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 74
    iget v0, p0, Ljava/text/ParsePosition;->index:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 127
    iget v0, p0, Ljava/text/ParsePosition;->errorIndex:I

    #@2
    shl-int/lit8 v0, v0, 0x10

    #@4
    iget v1, p0, Ljava/text/ParsePosition;->index:I

    #@6
    or-int/2addr v0, v1

    #@7
    return v0
.end method

.method public setErrorIndex(I)V
    .locals 0
    .param p1, "ei"    # I

    #@0
    .prologue
    .line 98
    iput p1, p0, Ljava/text/ParsePosition;->errorIndex:I

    #@2
    .line 96
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    #@0
    .prologue
    .line 81
    iput p1, p0, Ljava/text/ParsePosition;->index:I

    #@2
    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 135
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
    .line 136
    const-string/jumbo v1, "[index="

    #@14
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 136
    iget v1, p0, Ljava/text/ParsePosition;->index:I

    #@1a
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    .line 137
    const-string/jumbo v1, ",errorIndex="

    #@21
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 137
    iget v1, p0, Ljava/text/ParsePosition;->errorIndex:I

    #@27
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 137
    const/16 v1, 0x5d

    #@2d
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    return-object v0
.end method
