.class public Ljavax/crypto/spec/RC5ParameterSpec;
.super Ljava/lang/Object;
.source "RC5ParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private greylist-max-o iv:[B

.field private greylist-max-o rounds:I

.field private greylist-max-o version:I

.field private greylist-max-o wordSize:I


# direct methods
.method public constructor whitelist test-api <init>(III)V
    .registers 5
    .param p1, "version"    # I
    .param p2, "rounds"    # I
    .param p3, "wordSize"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    .line 63
    iput p1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    .line 64
    iput p2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    .line 65
    iput p3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    .line 66
    return-void
.end method

.method public constructor whitelist test-api <init>(III[B)V
    .registers 11
    .param p1, "version"    # I
    .param p2, "rounds"    # I
    .param p3, "wordSize"    # I
    .param p4, "iv"    # [B

    .line 86
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "version":I
    .end local p2    # "rounds":I
    .end local p3    # "wordSize":I
    .end local p4    # "iv":[B
    .local v1, "version":I
    .local v2, "rounds":I
    .local v3, "wordSize":I
    .local v4, "iv":[B
    invoke-direct/range {v0 .. v5}, Ljavax/crypto/spec/RC5ParameterSpec;-><init>(III[BI)V

    .line 87
    return-void
.end method

.method public constructor whitelist test-api <init>(III[BI)V
    .registers 9
    .param p1, "version"    # I
    .param p2, "rounds"    # I
    .param p3, "wordSize"    # I
    .param p4, "iv"    # [B
    .param p5, "offset"    # I

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    .line 114
    iput p1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    .line 115
    iput p2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    .line 116
    iput p3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    .line 117
    if-eqz p4, :cond_29

    .line 118
    div-int/lit8 v0, p3, 0x8

    mul-int/lit8 v0, v0, 0x2

    .line 119
    .local v0, "blockSize":I
    array-length v1, p4

    sub-int/2addr v1, p5

    if-lt v1, v0, :cond_21

    .line 122
    new-array v1, v0, [B

    iput-object v1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    .line 123
    iget-object v1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    const/4 v2, 0x0

    invoke-static {p4, p5, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    return-void

    .line 120
    :cond_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IV too short"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    .end local v0    # "blockSize":I
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 175
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 176
    return v0

    .line 178
    :cond_4
    instance-of v1, p1, Ljavax/crypto/spec/RC5ParameterSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 179
    return v2

    .line 181
    :cond_a
    move-object v1, p1

    check-cast v1, Ljavax/crypto/spec/RC5ParameterSpec;

    .line 183
    .local v1, "other":Ljavax/crypto/spec/RC5ParameterSpec;
    iget v3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    iget v4, v1, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    iget v4, v1, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    iget v4, v1, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    if-ne v3, v4, :cond_2a

    iget-object v3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    iget-object v4, v1, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    .line 186
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v2

    .line 183
    :goto_2b
    return v0
.end method

.method public whitelist test-api getIV()[B
    .registers 2

    .line 160
    iget-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_e
    return-object v0
.end method

.method public whitelist test-api getRounds()I
    .registers 2

    .line 141
    iget v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    return v0
.end method

.method public whitelist test-api getVersion()I
    .registers 2

    .line 132
    iget v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    return v0
.end method

.method public whitelist test-api getWordSize()I
    .registers 2

    .line 150
    iget v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "retval":I
    iget-object v1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    if-eqz v1, :cond_14

    .line 196
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    array-length v2, v2

    if-ge v1, v2, :cond_14

    .line 197
    iget-object v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    aget-byte v2, v2, v1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 200
    .end local v1    # "i":I
    :cond_14
    iget v1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    iget v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    add-int/2addr v1, v2

    iget v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 201
    return v0
.end method
