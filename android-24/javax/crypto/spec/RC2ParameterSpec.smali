.class public Ljavax/crypto/spec/RC2ParameterSpec;
.super Ljava/lang/Object;
.source "RC2ParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private effectiveKeyBits:I

.field private iv:[B


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "effectiveKeyBits"    # I

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    #@6
    .line 57
    iput p1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    #@8
    .line 56
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "effectiveKeyBits"    # I
    .param p2, "iv"    # [B

    #@0
    .prologue
    .line 73
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[BI)V

    #@4
    .line 72
    return-void
.end method

.method public constructor <init>(I[BI)V
    .locals 3
    .param p1, "effectiveKeyBits"    # I
    .param p2, "iv"    # [B
    .param p3, "offset"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 47
    iput-object v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    #@6
    .line 94
    iput p1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    #@8
    .line 95
    if-nez p2, :cond_0

    #@a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v2, "IV missing"

    #@f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 96
    :cond_0
    const/16 v0, 0x8

    #@15
    .line 97
    .local v0, "blockSize":I
    array-length v1, p2

    #@16
    sub-int/2addr v1, p3

    #@17
    .line 96
    const/16 v2, 0x8

    #@19
    .line 97
    if-ge v1, v2, :cond_1

    #@1b
    .line 98
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v2, "IV too short"

    #@20
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 100
    :cond_1
    new-array v1, v0, [B

    #@26
    iput-object v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    #@28
    .line 101
    iget-object v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    #@2a
    const/4 v2, 0x0

    #@2b
    invoke-static {p2, p3, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2e
    .line 93
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
    .line 135
    if-ne p1, p0, :cond_0

    #@3
    .line 136
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 138
    :cond_0
    instance-of v2, p1, Ljavax/crypto/spec/RC2ParameterSpec;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 139
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 141
    nop

    #@c
    nop

    #@d
    .line 143
    .local v0, "other":Ljavax/crypto/spec/RC2ParameterSpec;
    iget v2, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    #@f
    iget v3, v0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    #@11
    if-ne v2, v3, :cond_2

    #@13
    .line 144
    iget-object v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    #@15
    iget-object v2, v0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    #@17
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@1a
    move-result v1

    #@1b
    .line 143
    :cond_2
    return v1
.end method

.method public getEffectiveKeyBits()I
    .locals 1

    #@0
    .prologue
    .line 110
    iget v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    #@2
    return v0
.end method

.method public getIV()[B
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 120
    iget-object v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    #@8
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [B

    #@e
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 152
    const/4 v1, 0x0

    #@1
    .line 153
    .local v1, "retval":I
    iget-object v2, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 154
    const/4 v0, 0x1

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    #@8
    array-length v2, v2

    #@9
    if-ge v0, v2, :cond_0

    #@b
    .line 155
    iget-object v2, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    #@d
    aget-byte v2, v2, v0

    #@f
    mul-int/2addr v2, v0

    #@10
    add-int/2addr v1, v2

    #@11
    .line 154
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 158
    .end local v0    # "i":I
    :cond_0
    iget v2, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    #@16
    add-int/2addr v1, v2

    #@17
    return v1
.end method
