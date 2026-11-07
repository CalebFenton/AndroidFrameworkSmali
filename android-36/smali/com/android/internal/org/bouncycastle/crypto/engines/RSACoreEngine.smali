.class Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;
.super Ljava/lang/Object;
.source "RSACoreEngine.java"


# instance fields
.field private blacklist forEncryption:Z

.field private blacklist key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist getPurpose(ZZ)Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;
    .registers 7
    .param p1, "isPrivate"    # Z
    .param p2, "forEncryption"    # Z

    .line 230
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    move v2, v0

    goto :goto_9

    :cond_8
    move v2, v1

    .line 231
    .local v2, "isSigning":Z
    :goto_9
    if-nez p1, :cond_f

    if-eqz p2, :cond_f

    move v3, v0

    goto :goto_10

    :cond_f
    move v3, v1

    .line 232
    .local v3, "isEncryption":Z
    :goto_10
    if-nez p1, :cond_15

    if-nez p2, :cond_15

    goto :goto_16

    :cond_15
    move v0, v1

    .line 234
    .local v0, "isVerifying":Z
    :goto_16
    if-eqz v2, :cond_1b

    .line 236
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->SIGNING:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    return-object v1

    .line 238
    :cond_1b
    if-eqz v3, :cond_20

    .line 240
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->ENCRYPTION:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    return-object v1

    .line 242
    :cond_20
    if-eqz v0, :cond_25

    .line 244
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->VERIFYING:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    return-object v1

    .line 247
    :cond_25
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    return-object v1
.end method


# virtual methods
.method public blacklist convertInput([BII)Ljava/math/BigInteger;
    .registers 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const-string v2, "input too large for RSA cipher."

    if-gt p3, v0, :cond_42

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    move-result v0

    add-int/2addr v0, v1

    if-ne p3, v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-eqz v0, :cond_16

    goto :goto_1c

    .line 104
    :cond_16
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1c
    :goto_1c
    if-nez p2, :cond_24

    array-length v0, p1

    if-eq p3, v0, :cond_22

    goto :goto_24

    .line 117
    :cond_22
    move-object v0, p1

    .local v0, "block":[B
    goto :goto_2a

    .line 111
    .end local v0    # "block":[B
    :cond_24
    :goto_24
    new-array v0, p3, [B

    .line 113
    .restart local v0    # "block":[B
    const/4 v3, 0x0

    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    :goto_2a
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 121
    .local v3, "res":Ljava/math/BigInteger;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_3c

    .line 126
    return-object v3

    .line 123
    :cond_3c
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    .end local v0    # "block":[B
    .end local v3    # "res":Ljava/math/BigInteger;
    :cond_42
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist convertOutput(Ljava/math/BigInteger;)[B
    .registers 7
    .param p1, "result"    # Ljava/math/BigInteger;

    .line 132
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 134
    .local v0, "output":[B
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_34

    .line 136
    aget-byte v1, v0, v3

    if-nez v1, :cond_1e

    array-length v1, v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v4

    if-le v1, v4, :cond_1e

    .line 138
    array-length v1, v0

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 140
    .local v1, "tmp":[B
    array-length v4, v1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    return-object v1

    .line 145
    .end local v1    # "tmp":[B
    :cond_1e
    array-length v1, v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v1

    new-array v1, v1, [B

    .line 149
    .restart local v1    # "tmp":[B
    array-length v2, v1

    array-length v4, v0

    sub-int/2addr v2, v4

    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    return-object v1

    .line 154
    .end local v1    # "tmp":[B
    :cond_33
    return-object v0

    .line 159
    :cond_34
    aget-byte v1, v0, v3

    if-nez v1, :cond_41

    .line 161
    array-length v1, v0

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 163
    .local v1, "rv":[B
    array-length v4, v1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_48

    .line 167
    .end local v1    # "rv":[B
    :cond_41
    array-length v1, v0

    new-array v1, v1, [B

    .line 169
    .restart local v1    # "rv":[B
    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    :goto_48
    invoke-static {v0, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 174
    return-object v1
.end method

.method public blacklist getInputBlockSize()I
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 62
    .local v0, "bitSize":I
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-eqz v1, :cond_15

    .line 64
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 68
    :cond_15
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    return v1
.end method

.method public blacklist getOutputBlockSize()I
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 83
    .local v0, "bitSize":I
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-eqz v1, :cond_13

    .line 85
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    return v1

    .line 89
    :cond_13
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 8
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 35
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_10

    .line 37
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 39
    .local v0, "rParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 40
    .end local v0    # "rParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_15

    .line 43
    :cond_10
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 46
    :goto_15
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    .line 48
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Ljava/math/BigInteger;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->isPrivate()Z

    move-result v3

    invoke-direct {p0, v3, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->getPurpose(ZZ)Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v3

    const-string v4, "RSA"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 49
    return-void
.end method

.method public blacklist processBlock(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 16
    .param p1, "input"    # Ljava/math/BigInteger;

    .line 180
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz v0, :cond_5f

    .line 187
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    .line 189
    .local v0, "crtKey":Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    .line 190
    .local v1, "e":Ljava/math/BigInteger;
    if-eqz v1, :cond_5f

    .line 192
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 193
    .local v2, "p":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    .line 194
    .local v3, "q":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDP()Ljava/math/BigInteger;

    move-result-object v4

    .line 195
    .local v4, "dP":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDQ()Ljava/math/BigInteger;

    move-result-object v5

    .line 196
    .local v5, "dQ":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQInv()Ljava/math/BigInteger;

    move-result-object v6

    .line 201
    .local v6, "qInv":Ljava/math/BigInteger;
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v4, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 204
    .local v7, "mP":Ljava/math/BigInteger;
    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v5, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 207
    .local v8, "mQ":Ljava/math/BigInteger;
    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 208
    .local v9, "h":Ljava/math/BigInteger;
    invoke-virtual {v9, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 209
    invoke-virtual {v9, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 212
    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 215
    .local v10, "m":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 216
    .local v11, "check":Ljava/math/BigInteger;
    invoke-virtual {v11, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_57

    .line 221
    return-object v10

    .line 218
    :cond_57
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "RSA engine faulty decryption/signing detected"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 225
    .end local v0    # "crtKey":Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    .end local v1    # "e":Ljava/math/BigInteger;
    .end local v2    # "p":Ljava/math/BigInteger;
    .end local v3    # "q":Ljava/math/BigInteger;
    .end local v4    # "dP":Ljava/math/BigInteger;
    .end local v5    # "dQ":Ljava/math/BigInteger;
    .end local v6    # "qInv":Ljava/math/BigInteger;
    .end local v7    # "mP":Ljava/math/BigInteger;
    .end local v8    # "mQ":Ljava/math/BigInteger;
    .end local v9    # "h":Ljava/math/BigInteger;
    .end local v10    # "m":Ljava/math/BigInteger;
    .end local v11    # "check":Ljava/math/BigInteger;
    :cond_5f
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
