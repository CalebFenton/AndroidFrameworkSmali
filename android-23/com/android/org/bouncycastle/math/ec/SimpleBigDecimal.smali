.class Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
.super Ljava/lang/Object;
.source "SimpleBigDecimal.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bigInt:Ljava/math/BigInteger;

.field private final scale:I


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;I)V
    .locals 2
    .param p1, "bigInt"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    if-gez p2, :cond_0

    #@5
    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "scale may not be negative"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 53
    :cond_0
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    #@10
    .line 54
    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@12
    .line 46
    return-void
.end method

.method private checkScale(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)V
    .locals 2
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@0
    .prologue
    .line 59
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@2
    iget v1, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Only SimpleBigDecimal of same scale allowed in arithmetic operations"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 57
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/math/BigInteger;I)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/math/BigInteger;
    .param p1, "scale"    # I

    #@0
    .prologue
    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@2
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@9
    return-object v0
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@0
    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)V

    #@3
    .line 85
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@5
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    #@7
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    #@9
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@c
    move-result-object v1

    #@d
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@f
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@12
    return-object v0
.end method

.method public add(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3
    .param p1, "b"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 90
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    #@4
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@6
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@d
    move-result-object v1

    #@e
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@10
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@13
    return-object v0
.end method

.method public adjustScale(I)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3
    .param p1, "newScale"    # I

    #@0
    .prologue
    .line 68
    if-gez p1, :cond_0

    #@2
    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "scale may not be negative"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 73
    :cond_0
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@d
    if-ne p1, v0, :cond_1

    #@f
    .line 75
    return-object p0

    #@10
    .line 78
    :cond_1
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@12
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    #@14
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@16
    sub-int v2, p1, v2

    #@18
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@1f
    return-object v0
.end method

.method public compareTo(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)I
    .locals 2
    .param p1, "val"    # Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@0
    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)V

    #@3
    .line 140
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    #@5
    iget-object v1, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    #@7
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public compareTo(Ljava/math/BigInteger;)I
    .locals 2
    .param p1, "val"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    #@2
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@4
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public divide(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 4
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@0
    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)V

    #@3
    .line 123
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    #@5
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@7
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@a
    move-result-object v0

    #@b
    .line 124
    .local v0, "dividend":Ljava/math/BigInteger;
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@d
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    #@f
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@12
    move-result-object v2

    #@13
    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@15
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@18
    return-object v1
.end method

.method public divide(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3
    .param p1, "b"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 129
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    #@4
    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@7
    move-result-object v1

    #@8
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@a
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@d
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 228
    if-ne p0, p1, :cond_0

    #@4
    .line 230
    return v1

    #@5
    .line 233
    :cond_0
    instance-of v3, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 235
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 238
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@d
    .line 239
    .local v0, "other":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    #@f
    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    #@11
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_2

    #@17
    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@19
    iget v4, v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@1b
    if-ne v3, v4, :cond_2

    #@1d
    :goto_0
    return v1

    #@1e
    :cond_2
    move v1, v2

    #@1f
    goto :goto_0
.end method

.method public floor()Ljava/math/BigInteger;
    .locals 2

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    #@2
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@4
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getScale()I
    .locals 1

    #@0
    .prologue
    .line 181
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    #@2
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@8
    xor-int/2addr v0, v1

    #@9
    return v0
.end method

.method public intValue()I
    .locals 1

    #@0
    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public longValue()J
    .locals 2

    #@0
    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public multiply(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 4
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@0
    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)V

    #@3
    .line 112
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@5
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    #@7
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    #@9
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@c
    move-result-object v1

    #@d
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@f
    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@11
    add-int/2addr v2, v3

    #@12
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@15
    return-object v0
.end method

.method public multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3
    .param p1, "b"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 117
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    #@4
    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@7
    move-result-object v1

    #@8
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@a
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@d
    return-object v0
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3

    #@0
    .prologue
    .line 95
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    #@4
    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    #@7
    move-result-object v1

    #@8
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@a
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@d
    return-object v0
.end method

.method public round()Ljava/math/BigInteger;
    .locals 3

    #@0
    .prologue
    .line 155
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@2
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@4
    const/4 v2, 0x1

    #@5
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@8
    .line 156
    .local v0, "oneHalf":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->adjustScale(I)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    #@15
    move-result-object v1

    #@16
    return-object v1
.end method

.method public shiftLeft(I)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3
    .param p1, "n"    # I

    #@0
    .prologue
    .line 134
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    #@4
    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@7
    move-result-object v1

    #@8
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@a
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@d
    return-object v0
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 1
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@0
    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->negate()Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public subtract(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3
    .param p1, "b"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 105
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    #@4
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@6
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@d
    move-result-object v1

    #@e
    .line 106
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@10
    .line 105
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@13
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    #@0
    .prologue
    const/4 v13, -0x1

    #@1
    .line 186
    iget v11, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@3
    if-nez v11, :cond_0

    #@5
    .line 188
    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    #@7
    invoke-virtual {v11}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    #@a
    move-result-object v11

    #@b
    return-object v11

    #@c
    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    #@f
    move-result-object v0

    #@10
    .line 193
    .local v0, "floorBigInt":Ljava/math/BigInteger;
    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    #@12
    iget v12, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@14
    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@17
    move-result-object v12

    #@18
    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1b
    move-result-object v1

    #@1c
    .line 194
    .local v1, "fract":Ljava/math/BigInteger;
    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    #@1e
    invoke-virtual {v11}, Ljava/math/BigInteger;->signum()I

    #@21
    move-result v11

    #@22
    if-ne v11, v13, :cond_1

    #@24
    .line 196
    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@26
    iget v12, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@28
    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@2b
    move-result-object v11

    #@2c
    invoke-virtual {v11, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@2f
    move-result-object v1

    #@30
    .line 199
    :cond_1
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    #@33
    move-result v11

    #@34
    if-ne v11, v13, :cond_2

    #@36
    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    #@38
    invoke-virtual {v1, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v11

    #@3c
    if-eqz v11, :cond_3

    #@3e
    .line 203
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    #@41
    move-result-object v7

    #@42
    .line 205
    .local v7, "leftOfPoint":Ljava/lang/String;
    iget v11, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@44
    new-array v2, v11, [C

    #@46
    .line 206
    .local v2, "fractCharArr":[C
    const/4 v11, 0x2

    #@47
    invoke-virtual {v1, v11}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    .line 207
    .local v4, "fractStr":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@4e
    move-result v3

    #@4f
    .line 208
    .local v3, "fractLen":I
    iget v11, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    #@51
    sub-int v10, v11, v3

    #@53
    .line 209
    .local v10, "zeroes":I
    const/4 v5, 0x0

    #@54
    .local v5, "i":I
    :goto_1
    if-ge v5, v10, :cond_4

    #@56
    .line 211
    const/16 v11, 0x30

    #@58
    aput-char v11, v2, v5

    #@5a
    .line 209
    add-int/lit8 v5, v5, 0x1

    #@5c
    goto :goto_1

    #@5d
    .line 201
    .end local v2    # "fractCharArr":[C
    .end local v3    # "fractLen":I
    .end local v4    # "fractStr":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v7    # "leftOfPoint":Ljava/lang/String;
    .end local v10    # "zeroes":I
    :cond_3
    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@5f
    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@62
    move-result-object v0

    #@63
    goto :goto_0

    #@64
    .line 213
    .restart local v2    # "fractCharArr":[C
    .restart local v3    # "fractLen":I
    .restart local v4    # "fractStr":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v7    # "leftOfPoint":Ljava/lang/String;
    .restart local v10    # "zeroes":I
    :cond_4
    const/4 v6, 0x0

    #@65
    .local v6, "j":I
    :goto_2
    if-ge v6, v3, :cond_5

    #@67
    .line 215
    add-int v11, v10, v6

    #@69
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    #@6c
    move-result v12

    #@6d
    aput-char v12, v2, v11

    #@6f
    .line 213
    add-int/lit8 v6, v6, 0x1

    #@71
    goto :goto_2

    #@72
    .line 217
    :cond_5
    new-instance v8, Ljava/lang/String;

    #@74
    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([C)V

    #@77
    .line 219
    .local v8, "rightOfPoint":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    #@79
    invoke-direct {v9, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@7c
    .line 220
    .local v9, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v11, "."

    #@7f
    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@82
    .line 221
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@85
    .line 223
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@88
    move-result-object v11

    #@89
    return-object v11
.end method
