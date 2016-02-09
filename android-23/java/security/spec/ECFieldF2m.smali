.class public Ljava/security/spec/ECFieldF2m;
.super Ljava/lang/Object;
.source "ECFieldF2m.java"

# interfaces
.implements Ljava/security/spec/ECField;


# static fields
.field private static final PPB_LEN:I = 0x5

.field private static final PPB_MID_LEN:I = 0x3

.field private static final TPB_LEN:I = 0x3

.field private static final TPB_MID_LEN:I = 0x1


# instance fields
.field private final ks:[I

.field private final m:I

.field private final rp:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "m"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 53
    iput p1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    #@6
    .line 54
    iget v0, p0, Ljava/security/spec/ECFieldF2m;->m:I

    #@8
    if-gtz v0, :cond_0

    #@a
    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "m <= 0"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 57
    :cond_0
    iput-object v1, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@15
    .line 58
    iput-object v1, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@17
    .line 52
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
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 78
    iput p1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    #@6
    .line 79
    iget v3, p0, Ljava/security/spec/ECFieldF2m;->m:I

    #@8
    if-gtz v3, :cond_0

    #@a
    .line 80
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v4, "m <= 0"

    #@f
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v3

    #@13
    .line 82
    :cond_0
    iput-object p2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@15
    .line 83
    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@17
    if-nez v3, :cond_1

    #@19
    .line 84
    new-instance v3, Ljava/lang/NullPointerException;

    #@1b
    const-string/jumbo v4, "rp == null"

    #@1e
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@21
    throw v3

    #@22
    .line 89
    :cond_1
    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@24
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitCount()I

    #@27
    move-result v2

    #@28
    .line 90
    .local v2, "rp_bc":I
    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@2a
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    #@2d
    move-result v3

    #@2e
    add-int/lit8 v4, p1, 0x1

    #@30
    if-ne v3, v4, :cond_2

    #@32
    .line 91
    const/4 v3, 0x3

    #@33
    if-eq v2, v3, :cond_3

    #@35
    const/4 v3, 0x5

    #@36
    if-eq v2, v3, :cond_3

    #@38
    .line 93
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@3a
    const-string/jumbo v4, "rp is invalid"

    #@3d
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v3

    #@41
    .line 92
    :cond_3
    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@43
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->testBit(I)Z

    #@46
    move-result v3

    #@47
    if-eqz v3, :cond_2

    #@49
    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@4b
    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->testBit(I)Z

    #@4e
    move-result v3

    #@4f
    if-eqz v3, :cond_2

    #@51
    .line 98
    add-int/lit8 v3, v2, -0x2

    #@53
    new-array v3, v3, [I

    #@55
    iput-object v3, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@57
    .line 100
    invoke-virtual {p2, v5}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    #@5a
    move-result-object v1

    #@5b
    .line 101
    .local v1, "rpTmp":Ljava/math/BigInteger;
    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@5d
    array-length v3, v3

    #@5e
    add-int/lit8 v0, v3, -0x1

    #@60
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    #@62
    .line 102
    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@64
    invoke-virtual {v1}, Ljava/math/BigInteger;->getLowestSetBit()I

    #@67
    move-result v4

    #@68
    aput v4, v3, v0

    #@6a
    .line 103
    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@6c
    aget v3, v3, v0

    #@6e
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    #@71
    move-result-object v1

    #@72
    .line 101
    add-int/lit8 v0, v0, -0x1

    #@74
    goto :goto_0

    #@75
    .line 77
    :cond_4
    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 8
    .param p1, "m"    # I
    .param p2, "ks"    # [I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 124
    iput p1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    #@7
    .line 125
    iget v4, p0, Ljava/security/spec/ECFieldF2m;->m:I

    #@9
    if-gtz v4, :cond_0

    #@b
    .line 126
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v5, "m <= 0"

    #@10
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v4

    #@14
    .line 131
    :cond_0
    array-length v4, p2

    #@15
    new-array v4, v4, [I

    #@17
    iput-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@19
    .line 132
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@1b
    iget-object v5, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@1d
    array-length v5, v5

    #@1e
    invoke-static {p2, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy([II[III)V

    #@21
    .line 135
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@23
    array-length v4, v4

    #@24
    if-eq v4, v7, :cond_1

    #@26
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@28
    array-length v4, v4

    #@29
    const/4 v5, 0x3

    #@2a
    if-eq v4, v5, :cond_1

    #@2c
    .line 137
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@2e
    const-string/jumbo v5, "the length of ks is invalid"

    #@31
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v4

    #@35
    .line 145
    :cond_1
    const/4 v0, 0x0

    #@36
    .line 146
    .local v0, "checkFailed":Z
    iget v2, p0, Ljava/security/spec/ECFieldF2m;->m:I

    #@38
    .line 147
    .local v2, "prev":I
    const/4 v1, 0x0

    #@39
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@3b
    array-length v4, v4

    #@3c
    if-ge v1, v4, :cond_3

    #@3e
    .line 148
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@40
    aget v4, v4, v1

    #@42
    if-ge v4, v2, :cond_2

    #@44
    .line 149
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@46
    aget v2, v4, v1

    #@48
    .line 147
    add-int/lit8 v1, v1, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 152
    :cond_2
    const/4 v0, 0x1

    #@4c
    .line 155
    :cond_3
    if-nez v0, :cond_4

    #@4e
    if-ge v2, v7, :cond_5

    #@50
    .line 156
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@52
    const-string/jumbo v5, "ks is invalid"

    #@55
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@58
    throw v4

    #@59
    .line 161
    :cond_5
    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    #@5b
    iget v5, p0, Ljava/security/spec/ECFieldF2m;->m:I

    #@5d
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    #@60
    move-result-object v3

    #@61
    .line 163
    .local v3, "rpTmp":Ljava/math/BigInteger;
    const/4 v1, 0x0

    #@62
    :goto_1
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@64
    array-length v4, v4

    #@65
    if-ge v1, v4, :cond_6

    #@67
    .line 164
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@69
    aget v4, v4, v1

    #@6b
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    #@6e
    move-result-object v3

    #@6f
    .line 163
    add-int/lit8 v1, v1, 0x1

    #@71
    goto :goto_1

    #@72
    .line 166
    :cond_6
    iput-object v3, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@74
    .line 123
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 179
    if-ne p0, p1, :cond_0

    #@3
    .line 180
    return v3

    #@4
    .line 182
    :cond_0
    instance-of v1, p1, Ljava/security/spec/ECFieldF2m;

    #@6
    if-eqz v1, :cond_2

    #@8
    move-object v0, p1

    #@9
    .line 183
    check-cast v0, Ljava/security/spec/ECFieldF2m;

    #@b
    .line 185
    .local v0, "o":Ljava/security/spec/ECFieldF2m;
    iget v1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    #@d
    iget v2, v0, Ljava/security/spec/ECFieldF2m;->m:I

    #@f
    if-ne v1, v2, :cond_2

    #@11
    .line 187
    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@13
    if-nez v1, :cond_1

    #@15
    .line 188
    iget-object v1, v0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@17
    if-nez v1, :cond_2

    #@19
    .line 190
    return v3

    #@1a
    .line 196
    :cond_1
    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@1c
    iget-object v2, v0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@1e
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@21
    move-result v1

    #@22
    return v1

    #@23
    .line 200
    .end local v0    # "o":Ljava/security/spec/ECFieldF2m;
    :cond_2
    const/4 v1, 0x0

    #@24
    return v1
.end method

.method public getFieldSize()I
    .locals 1

    #@0
    .prologue
    .line 209
    iget v0, p0, Ljava/security/spec/ECFieldF2m;->m:I

    #@2
    return v0
.end method

.method public getM()I
    .locals 1

    #@0
    .prologue
    .line 219
    iget v0, p0, Ljava/security/spec/ECFieldF2m;->m:I

    #@2
    return v0
.end method

.method public getMidTermsOfReductionPolynomial()[I
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 234
    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@4
    if-nez v1, :cond_0

    #@6
    .line 235
    return-object v2

    #@7
    .line 237
    :cond_0
    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@9
    array-length v1, v1

    #@a
    new-array v0, v1, [I

    #@c
    .line 238
    .local v0, "ret":[I
    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    #@e
    array-length v2, v0

    #@f
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@12
    .line 239
    return-object v0
.end method

.method public getReductionPolynomial()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@2
    if-nez v0, :cond_0

    #@4
    iget v0, p0, Ljava/security/spec/ECFieldF2m;->m:I

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    iget v0, p0, Ljava/security/spec/ECFieldF2m;->m:I

    #@9
    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    #@b
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    #@e
    move-result v1

    #@f
    add-int/2addr v0, v1

    #@10
    goto :goto_0
.end method
