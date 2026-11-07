.class public Ljavax/crypto/spec/RC2ParameterSpec;
.super Ljava/lang/Object;
.source "RC2ParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private greylist-max-o effectiveKeyBits:I

.field private greylist-max-o iv:[B


# direct methods
.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "effectiveKeyBits"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    .line 57
    iput p1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    .line 58
    return-void
.end method

.method public constructor whitelist test-api <init>(I[B)V
    .registers 4
    .param p1, "effectiveKeyBits"    # I
    .param p2, "iv"    # [B

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[BI)V

    .line 74
    return-void
.end method

.method public constructor whitelist test-api <init>(I[BI)V
    .registers 7
    .param p1, "effectiveKeyBits"    # I
    .param p2, "iv"    # [B
    .param p3, "offset"    # I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    .line 94
    iput p1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    .line 95
    if-eqz p2, :cond_23

    .line 96
    const/16 v0, 0x8

    .line 97
    .local v0, "blockSize":I
    array-length v1, p2

    sub-int/2addr v1, p3

    if-lt v1, v0, :cond_1b

    .line 100
    new-array v1, v0, [B

    iput-object v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    .line 101
    iget-object v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    const/4 v2, 0x0

    invoke-static {p2, p3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    return-void

    .line 98
    :cond_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IV too short"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    .end local v0    # "blockSize":I
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 135
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 136
    return v0

    .line 138
    :cond_4
    instance-of v1, p1, Ljavax/crypto/spec/RC2ParameterSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 139
    return v2

    .line 141
    :cond_a
    move-object v1, p1

    check-cast v1, Ljavax/crypto/spec/RC2ParameterSpec;

    .line 143
    .local v1, "other":Ljavax/crypto/spec/RC2ParameterSpec;
    iget v3, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    iget v4, v1, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    if-ne v3, v4, :cond_1e

    iget-object v3, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    iget-object v4, v1, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    .line 144
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    .line 143
    :goto_1f
    return v0
.end method

.method public whitelist test-api getEffectiveKeyBits()I
    .registers 2

    .line 110
    iget v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    return v0
.end method

.method public whitelist test-api getIV()[B
    .registers 2

    .line 120
    iget-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_e
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "retval":I
    iget-object v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    if-eqz v1, :cond_14

    .line 154
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    array-length v2, v2

    if-ge v1, v2, :cond_14

    .line 155
    iget-object v2, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    aget-byte v2, v2, v1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 158
    .end local v1    # "i":I
    :cond_14
    iget v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    add-int/2addr v1, v0

    move v0, v1

    return v1
.end method
