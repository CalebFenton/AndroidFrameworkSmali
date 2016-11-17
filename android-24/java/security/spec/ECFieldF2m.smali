.class public Ljava/security/spec/ECFieldF2m;
.super Ljava/lang/Object;
.source "ECFieldF2m.java"

# interfaces
.implements Ljava/security/spec/ECField;


# instance fields
.field private ks:[I

.field private m:I

.field private rp:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "m"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 54
    if-gtz p1, :cond_0

    #@6
    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "m is not positive"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 57
    :cond_0
    iput p1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    #@11
    .line 58
    iput-object v0, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@13
    .line 59
    iput-object v0, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@15
    .line 53
    return-void
.end method

.method public constructor <init>(ILjava/math/BigInteger;)V
    .locals 6
    .param p1, "m"    # I
    .param p2, "rp"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 86
    iput p1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    #@6
    .line 87
    iput-object p2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@8
    .line 88
    if-gtz p1, :cond_0

    #@a
    .line 89
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v5, "m is not positive"

    #@f
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v4

    #@13
    .line 91
    :cond_0
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@15
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitCount()I

    #@18
    move-result v0

    #@19
    .line 92
    .local v0, "bitCount":I
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@1b
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->testBit(I)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_1

    #@21
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@23
    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->testBit(I)Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_1

    #@29
    .line 93
    const/4 v4, 0x3

    #@2a
    if-eq v0, v4, :cond_2

    #@2c
    const/4 v4, 0x5

    #@2d
    if-eq v0, v4, :cond_2

    #@2f
    .line 94
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@31
    .line 95
    const-string/jumbo v5, "rp does not represent a valid reduction polynomial"

    #@34
    .line 94
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v4

    #@38
    .line 98
    :cond_2
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@3a
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    #@41
    move-result-object v3

    #@42
    .line 99
    .local v3, "temp":Ljava/math/BigInteger;
    add-int/lit8 v4, v0, -0x2

    #@44
    new-array v4, v4, [I

    #@46
    iput-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@48
    .line 100
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@4a
    array-length v4, v4

    #@4b
    add-int/lit8 v1, v4, -0x1

    #@4d
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    #@4f
    .line 101
    invoke-virtual {v3}, Ljava/math/BigInteger;->getLowestSetBit()I

    #@52
    move-result v2

    #@53
    .line 102
    .local v2, "index":I
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@55
    aput v2, v4, v1

    #@57
    .line 103
    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    #@5a
    move-result-object v3

    #@5b
    .line 100
    add-int/lit8 v1, v1, -0x1

    #@5d
    goto :goto_0

    #@5e
    .line 84
    .end local v2    # "index":I
    :cond_3
    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 6
    .param p1, "m"    # I
    .param p2, "ks"    # [I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 135
    iput p1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    #@6
    .line 136
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    check-cast v2, [I

    #@c
    iput-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@e
    .line 137
    if-gtz p1, :cond_0

    #@10
    .line 138
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v3, "m is not positive"

    #@15
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v2

    #@19
    .line 140
    :cond_0
    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@1b
    array-length v2, v2

    #@1c
    if-eq v2, v5, :cond_1

    #@1e
    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@20
    array-length v2, v2

    #@21
    const/4 v3, 0x3

    #@22
    if-eq v2, v3, :cond_1

    #@24
    .line 141
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@26
    .line 142
    const-string/jumbo v3, "length of ks is neither 1 nor 3"

    #@29
    .line 141
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2

    #@2d
    .line 144
    :cond_1
    const/4 v0, 0x0

    #@2e
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@30
    array-length v2, v2

    #@31
    if-ge v0, v2, :cond_5

    #@33
    .line 145
    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@35
    aget v2, v2, v0

    #@37
    if-lt v2, v5, :cond_2

    #@39
    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@3b
    aget v2, v2, v0

    #@3d
    add-int/lit8 v3, p1, -0x1

    #@3f
    if-le v2, v3, :cond_3

    #@41
    .line 146
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@43
    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v4, "ks["

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    const-string/jumbo v4, "] is out of range"

    #@56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    .line 146
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@61
    throw v2

    #@62
    .line 149
    :cond_3
    if-eqz v0, :cond_4

    #@64
    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@66
    aget v2, v2, v0

    #@68
    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@6a
    add-int/lit8 v4, v0, -0x1

    #@6c
    aget v3, v3, v4

    #@6e
    if-lt v2, v3, :cond_4

    #@70
    .line 150
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@72
    .line 151
    const-string/jumbo v3, "values in ks are not in descending order"

    #@75
    .line 150
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@78
    throw v2

    #@79
    .line 144
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@7b
    goto :goto_0

    #@7c
    .line 155
    :cond_5
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    #@7e
    iput-object v2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@80
    .line 156
    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@82
    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    #@85
    move-result-object v2

    #@86
    iput-object v2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@88
    .line 157
    const/4 v1, 0x0

    #@89
    .local v1, "j":I
    :goto_1
    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@8b
    array-length v2, v2

    #@8c
    if-ge v1, v2, :cond_6

    #@8e
    .line 158
    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@90
    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@92
    aget v3, v3, v1

    #@94
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    #@97
    move-result-object v2

    #@98
    iput-object v2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@9a
    .line 157
    add-int/lit8 v1, v1, 0x1

    #@9c
    goto :goto_1

    #@9d
    .line 133
    :cond_6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 219
    if-ne p0, p1, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    return v0

    #@5
    .line 220
    :cond_0
    instance-of v0, p1, Ljava/security/spec/ECFieldF2m;

    #@7
    if-eqz v0, :cond_2

    #@9
    .line 223
    iget v2, p0, Ljava/security/spec/ECFieldF2m;->m:I

    #@b
    move-object v0, p1

    #@c
    check-cast v0, Ljava/security/spec/ECFieldF2m;

    #@e
    iget v0, v0, Ljava/security/spec/ECFieldF2m;->m:I

    #@10
    if-ne v2, v0, :cond_1

    #@12
    .line 224
    iget-object v0, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@14
    check-cast p1, Ljava/security/spec/ECFieldF2m;

    #@16
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@18
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@1b
    move-result v0

    #@1c
    .line 223
    :goto_0
    return v0

    #@1d
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    move v0, v1

    #@1e
    goto :goto_0

    #@1f
    .line 226
    :cond_2
    return v1
.end method

.method public getFieldSize()I
    .locals 1

    #@0
    .prologue
    .line 168
    iget v0, p0, Ljava/security/spec/ECFieldF2m;->m:I

    #@2
    return v0
.end method

.method public getM()I
    .locals 1

    #@0
    .prologue
    .line 178
    iget v0, p0, Ljava/security/spec/ECFieldF2m;->m:I

    #@2
    return v0
.end method

.method public getMidTermsOfReductionPolynomial()[I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 203
    iget-object v0, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@3
    if-nez v0, :cond_0

    #@5
    .line 204
    return-object v1

    #@6
    .line 206
    :cond_0
    iget-object v0, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@8
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [I

    #@e
    return-object v0
.end method

.method public getReductionPolynomial()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 235
    iget v1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    #@2
    shl-int/lit8 v0, v1, 0x5

    #@4
    .line 236
    .local v0, "value":I
    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@6
    if-nez v1, :cond_0

    #@8
    const/4 v1, 0x0

    #@9
    :goto_0
    add-int/2addr v0, v1

    #@a
    .line 239
    return v0

    #@b
    .line 236
    :cond_0
    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@d
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    #@10
    move-result v1

    #@11
    goto :goto_0
.end method
