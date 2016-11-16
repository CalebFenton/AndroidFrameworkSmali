.class Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;
.super Ljava/lang/Object;
.source "RSACoreEngine.java"


# instance fields
.field private forEncryption:Z

.field private key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public convertInput([BII)Ljava/math/BigInteger;
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 90
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    #@4
    move-result v2

    #@5
    add-int/lit8 v2, v2, 0x1

    #@7
    if-le p3, v2, :cond_0

    #@9
    .line 92
    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@b
    const-string/jumbo v3, "input too large for RSA cipher."

    #@e
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    #@15
    move-result v2

    #@16
    add-int/lit8 v2, v2, 0x1

    #@18
    if-ne p3, v2, :cond_1

    #@1a
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    #@1c
    if-eqz v2, :cond_3

    #@1e
    .line 101
    :cond_1
    if-nez p2, :cond_2

    #@20
    array-length v2, p1

    #@21
    if-eq p3, v2, :cond_4

    #@23
    .line 103
    :cond_2
    new-array v0, p3, [B

    #@25
    .line 105
    .local v0, "block":[B
    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@28
    .line 112
    :goto_0
    new-instance v1, Ljava/math/BigInteger;

    #@2a
    const/4 v2, 0x1

    #@2b
    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    #@2e
    .line 113
    .local v1, "res":Ljava/math/BigInteger;
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@30
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@37
    move-result v2

    #@38
    if-ltz v2, :cond_5

    #@3a
    .line 115
    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@3c
    const-string/jumbo v3, "input too large for RSA cipher."

    #@3f
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@42
    throw v2

    #@43
    .line 96
    .end local v0    # "block":[B
    .end local v1    # "res":Ljava/math/BigInteger;
    :cond_3
    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@45
    const-string/jumbo v3, "input too large for RSA cipher."

    #@48
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v2

    #@4c
    .line 109
    :cond_4
    move-object v0, p1

    #@4d
    .restart local v0    # "block":[B
    goto :goto_0

    #@4e
    .line 118
    .restart local v1    # "res":Ljava/math/BigInteger;
    :cond_5
    return-object v1
.end method

.method public convertOutput(Ljava/math/BigInteger;)[B
    .locals 6
    .param p1, "result"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 124
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    #@5
    move-result-object v0

    #@6
    .line 126
    .local v0, "output":[B
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 128
    aget-byte v2, v0, v4

    #@c
    if-nez v2, :cond_0

    #@e
    array-length v2, v0

    #@f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    #@12
    move-result v3

    #@13
    if-le v2, v3, :cond_0

    #@15
    .line 130
    array-length v2, v0

    #@16
    add-int/lit8 v2, v2, -0x1

    #@18
    new-array v1, v2, [B

    #@1a
    .line 132
    .local v1, "tmp":[B
    array-length v2, v1

    #@1b
    invoke-static {v0, v5, v1, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1e
    .line 134
    return-object v1

    #@1f
    .line 137
    .end local v1    # "tmp":[B
    :cond_0
    array-length v2, v0

    #@20
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    #@23
    move-result v3

    #@24
    if-ge v2, v3, :cond_2

    #@26
    .line 139
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    #@29
    move-result v2

    #@2a
    new-array v1, v2, [B

    #@2c
    .line 141
    .restart local v1    # "tmp":[B
    array-length v2, v1

    #@2d
    array-length v3, v0

    #@2e
    sub-int/2addr v2, v3

    #@2f
    array-length v3, v0

    #@30
    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@33
    .line 143
    return-object v1

    #@34
    .line 148
    .end local v1    # "tmp":[B
    :cond_1
    aget-byte v2, v0, v4

    #@36
    if-nez v2, :cond_2

    #@38
    .line 150
    array-length v2, v0

    #@39
    add-int/lit8 v2, v2, -0x1

    #@3b
    new-array v1, v2, [B

    #@3d
    .line 152
    .restart local v1    # "tmp":[B
    array-length v2, v1

    #@3e
    invoke-static {v0, v5, v1, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@41
    .line 154
    return-object v1

    #@42
    .line 158
    .end local v1    # "tmp":[B
    :cond_2
    return-object v0
.end method

.method public getInputBlockSize()I
    .locals 2

    #@0
    .prologue
    .line 52
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@2
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    #@9
    move-result v0

    #@a
    .line 54
    .local v0, "bitSize":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 56
    add-int/lit8 v1, v0, 0x7

    #@10
    div-int/lit8 v1, v1, 0x8

    #@12
    add-int/lit8 v1, v1, -0x1

    #@14
    return v1

    #@15
    .line 60
    :cond_0
    add-int/lit8 v1, v0, 0x7

    #@17
    div-int/lit8 v1, v1, 0x8

    #@19
    return v1
.end method

.method public getOutputBlockSize()I
    .locals 2

    #@0
    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@2
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    #@9
    move-result v0

    #@a
    .line 75
    .local v0, "bitSize":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 77
    add-int/lit8 v1, v0, 0x7

    #@10
    div-int/lit8 v1, v1, 0x8

    #@12
    return v1

    #@13
    .line 81
    :cond_0
    add-int/lit8 v1, v0, 0x7

    #@15
    div-int/lit8 v1, v1, 0x8

    #@17
    add-int/lit8 v1, v1, -0x1

    #@19
    return v1
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    .line 29
    instance-of v1, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p2

    #@5
    .line 31
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@7
    .line 33
    .local v0, "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@d
    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@f
    .line 40
    .end local v0    # "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    #@11
    .line 27
    return-void

    #@12
    .line 37
    .restart local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_0
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@14
    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@16
    goto :goto_0
.end method

.method public processBlock(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 12
    .param p1, "input"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 163
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@2
    instance-of v10, v10, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    #@4
    if-eqz v10, :cond_0

    #@6
    .line 170
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@8
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    #@a
    .line 172
    .local v0, "crtKey":Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getP()Ljava/math/BigInteger;

    #@d
    move-result-object v7

    #@e
    .line 173
    .local v7, "p":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQ()Ljava/math/BigInteger;

    #@11
    move-result-object v8

    #@12
    .line 174
    .local v8, "q":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDP()Ljava/math/BigInteger;

    #@15
    move-result-object v1

    #@16
    .line 175
    .local v1, "dP":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDQ()Ljava/math/BigInteger;

    #@19
    move-result-object v2

    #@1a
    .line 176
    .local v2, "dQ":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQInv()Ljava/math/BigInteger;

    #@1d
    move-result-object v9

    #@1e
    .line 181
    .local v9, "qInv":Ljava/math/BigInteger;
    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@21
    move-result-object v10

    #@22
    invoke-virtual {v10, v1, v7}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@25
    move-result-object v5

    #@26
    .line 184
    .local v5, "mP":Ljava/math/BigInteger;
    invoke-virtual {p1, v8}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@29
    move-result-object v10

    #@2a
    invoke-virtual {v10, v2, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@2d
    move-result-object v6

    #@2e
    .line 187
    .local v6, "mQ":Ljava/math/BigInteger;
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@31
    move-result-object v3

    #@32
    .line 188
    .local v3, "h":Ljava/math/BigInteger;
    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@35
    move-result-object v3

    #@36
    .line 189
    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@39
    move-result-object v3

    #@3a
    .line 192
    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3d
    move-result-object v4

    #@3e
    .line 193
    .local v4, "m":Ljava/math/BigInteger;
    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@41
    move-result-object v4

    #@42
    .line 195
    return-object v4

    #@43
    .line 200
    .end local v0    # "crtKey":Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    .end local v1    # "dP":Ljava/math/BigInteger;
    .end local v2    # "dQ":Ljava/math/BigInteger;
    .end local v3    # "h":Ljava/math/BigInteger;
    .end local v4    # "m":Ljava/math/BigInteger;
    .end local v5    # "mP":Ljava/math/BigInteger;
    .end local v6    # "mQ":Ljava/math/BigInteger;
    .end local v7    # "p":Ljava/math/BigInteger;
    .end local v8    # "q":Ljava/math/BigInteger;
    .end local v9    # "qInv":Ljava/math/BigInteger;
    :cond_0
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@45
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    #@48
    move-result-object v10

    #@49
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@4b
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    #@4e
    move-result-object v11

    #@4f
    .line 199
    invoke-virtual {p1, v10, v11}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@52
    move-result-object v10

    #@53
    return-object v10
.end method
