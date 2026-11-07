.class Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
.super Ljava/lang/Object;
.source "SimpleBigDecimal.java"


# instance fields
.field private final blacklist bigInt:Ljava/math/BigInteger;

.field private final blacklist scale:I


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;I)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_a

    .line 54
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    .line 55
    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    return-void

    .line 51
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "scale may not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist checkScale(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)V
    .registers 2

    .line 60
    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    iget p1, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-ne p0, p1, :cond_7

    return-void

    .line 62
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only SimpleBigDecimal of same scale allowed in arithmetic operations"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 4

    .line 85
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)V

    .line 86
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, p1, p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public blacklist adjustScale(I)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 4

    if-ltz p1, :cond_15

    .line 74
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-ne p1, v0, :cond_7

    return-object p0

    .line 79
    :cond_7
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v1

    .line 71
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "scale may not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist compareTo(Ljava/math/BigInteger;)I
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 234
    :cond_4
    instance-of v1, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 239
    :cond_a
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    .line 240
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    iget p1, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-ne p0, p1, :cond_1d

    return v0

    :cond_1d
    return v2
.end method

.method public blacklist floor()Ljava/math/BigInteger;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getScale()I
    .registers 1

    .line 182
    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public blacklist negate()Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 3

    .line 96
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public blacklist round()Ljava/math/BigInteger;
    .registers 4

    .line 156
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 157
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->adjustScale(I)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public blacklist subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 2

    .line 101
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->negate()Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public blacklist subtract(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 5

    .line 106
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, p1, p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 187
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-nez v0, :cond_b

    .line 189
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 192
    :cond_b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 195
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_30

    .line 197
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 200
    :cond_30
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-ne v2, v3, :cond_44

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 202
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 204
    :cond_44
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    new-array v2, v2, [C

    const/4 v3, 0x2

    .line 207
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 209
    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    sub-int/2addr p0, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_5a
    if-ge v5, p0, :cond_63

    const/16 v6, 0x30

    .line 212
    aput-char v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    :cond_63
    :goto_63
    if-ge v4, v3, :cond_70

    add-int v5, p0, v4

    .line 216
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 218
    :cond_70
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    .line 220
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 221
    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
