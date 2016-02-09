.class public Ljavax/crypto/spec/RC2ParameterSpec;
.super Ljava/lang/Object;
.source "RC2ParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final effectiveKeyBits:I

.field private final iv:[B


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "effectiveKeyBits"    # I

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    iput p1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    #@5
    .line 41
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    #@8
    .line 39
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 3
    .param p1, "effectiveKeyBits"    # I
    .param p2, "iv"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/16 v1, 0x8

    #@3
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 59
    if-nez p2, :cond_0

    #@8
    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "iv == null"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 62
    :cond_0
    array-length v0, p2

    #@12
    if-ge v0, v1, :cond_1

    #@14
    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v1, "iv.length < 8"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 65
    :cond_1
    iput p1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    #@1f
    .line 66
    new-array v0, v1, [B

    #@21
    iput-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    #@23
    .line 67
    iget-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    #@25
    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@28
    .line 58
    return-void
.end method

.method public constructor <init>(I[BI)V
    .locals 3
    .param p1, "effectiveKeyBits"    # I
    .param p2, "iv"    # [B
    .param p3, "offset"    # I

    #@0
    .prologue
    const/16 v2, 0x8

    #@2
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 89
    if-nez p2, :cond_0

    #@7
    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "iv == null"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 92
    :cond_0
    array-length v0, p2

    #@11
    sub-int/2addr v0, p3

    #@12
    if-ge v0, v2, :cond_1

    #@14
    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v1, "iv.length - offset < 8"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 95
    :cond_1
    iput p1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    #@1f
    .line 96
    new-array v0, v2, [B

    #@21
    iput-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    #@23
    .line 97
    iget-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    #@25
    const/4 v1, 0x0

    #@26
    invoke-static {p2, p3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@29
    .line 88
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
    .line 134
    if-ne p1, p0, :cond_0

    #@3
    .line 135
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 137
    :cond_0
    instance-of v2, p1, Ljavax/crypto/spec/RC2ParameterSpec;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 138
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 140
    check-cast v0, Ljavax/crypto/spec/RC2ParameterSpec;

    #@d
    .line 141
    .local v0, "ps":Ljavax/crypto/spec/RC2ParameterSpec;
    iget v2, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    #@f
    iget v3, v0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    #@11
    if-ne v2, v3, :cond_2

    #@13
    .line 142
    iget-object v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    #@15
    iget-object v2, v0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    #@17
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@1a
    move-result v1

    #@1b
    .line 141
    :cond_2
    return v1
.end method

.method public getEffectiveKeyBits()I
    .locals 1

    #@0
    .prologue
    .line 106
    iget v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    #@2
    return v0
.end method

.method public getIV()[B
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 115
    iget-object v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    #@4
    if-nez v1, :cond_0

    #@6
    .line 116
    return-object v2

    #@7
    .line 118
    :cond_0
    iget-object v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    #@9
    array-length v1, v1

    #@a
    new-array v0, v1, [B

    #@c
    .line 119
    .local v0, "result":[B
    iget-object v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    #@e
    iget-object v2, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    #@10
    array-length v2, v2

    #@11
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@14
    .line 120
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    .line 152
    iget v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    #@2
    .line 153
    .local v1, "result":I
    iget-object v2, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    #@4
    if-nez v2, :cond_0

    #@6
    .line 154
    return v1

    #@7
    .line 156
    :cond_0
    iget-object v3, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    #@9
    const/4 v2, 0x0

    #@a
    array-length v4, v3

    #@b
    :goto_0
    if-ge v2, v4, :cond_1

    #@d
    aget-byte v0, v3, v2

    #@f
    .line 157
    .local v0, "element":B
    add-int/2addr v1, v0

    #@10
    .line 156
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 159
    .end local v0    # "element":B
    :cond_1
    return v1
.end method
