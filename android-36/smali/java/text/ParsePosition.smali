.class public Ljava/text/ParsePosition;
.super Ljava/lang/Object;
.source "ParsePosition.java"


# instance fields
.field greylist-max-o errorIndex:I

.field greylist-max-o index:I


# direct methods
.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "index"    # I

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/ParsePosition;->index:I

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Ljava/text/ParsePosition;->errorIndex:I

    .line 95
    iput p1, p0, Ljava/text/ParsePosition;->index:I

    .line 96
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 127
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 128
    :cond_4
    instance-of v1, p1, Ljava/text/ParsePosition;

    if-eqz v1, :cond_19

    move-object v1, p1

    check-cast v1, Ljava/text/ParsePosition;

    .line 130
    .local v1, "other":Ljava/text/ParsePosition;
    iget v2, p0, Ljava/text/ParsePosition;->index:I

    iget v3, v1, Ljava/text/ParsePosition;->index:I

    if-ne v2, v3, :cond_18

    iget v2, p0, Ljava/text/ParsePosition;->errorIndex:I

    iget v3, v1, Ljava/text/ParsePosition;->errorIndex:I

    if-ne v2, v3, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0

    .line 129
    .end local v1    # "other":Ljava/text/ParsePosition;
    :cond_19
    return v0
.end method

.method public whitelist test-api getErrorIndex()I
    .registers 2

    .line 119
    iget v0, p0, Ljava/text/ParsePosition;->errorIndex:I

    return v0
.end method

.method public whitelist test-api getIndex()I
    .registers 2

    .line 77
    iget v0, p0, Ljava/text/ParsePosition;->index:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 138
    iget v0, p0, Ljava/text/ParsePosition;->errorIndex:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Ljava/text/ParsePosition;->index:I

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api setErrorIndex(I)V
    .registers 2
    .param p1, "ei"    # I

    .line 107
    iput p1, p0, Ljava/text/ParsePosition;->errorIndex:I

    .line 108
    return-void
.end method

.method public whitelist test-api setIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .line 86
    iput p1, p0, Ljava/text/ParsePosition;->index:I

    .line 87
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/ParsePosition;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",errorIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/ParsePosition;->errorIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
