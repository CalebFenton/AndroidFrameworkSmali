.class Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;
.super Ljava/lang/Object;
.source "RSACoreEngine.java"


# instance fields
.field private blacklist forEncryption:Z

.field private blacklist key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist getPurpose(ZZ)Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;
    .registers 6

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    move v1, v0

    goto :goto_9

    :cond_8
    move v1, p0

    :goto_9
    if-nez p1, :cond_f

    if-eqz p2, :cond_f

    move v2, v0

    goto :goto_10

    :cond_f
    move v2, p0

    :goto_10
    if-nez p1, :cond_15

    if-nez p2, :cond_15

    move p0, v0

    :cond_15
    if-eqz v1, :cond_1a

    .line 236
    sget-object p0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->SIGNING:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    return-object p0

    :cond_1a
    if-eqz v2, :cond_1f

    .line 240
    sget-object p0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->ENCRYPTION:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    return-object p0

    :cond_1f
    if-eqz p0, :cond_24

    .line 244
    sget-object p0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->VERIFYING:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    return-object p0

    .line 247
    :cond_24
    sget-object p0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    return-object p0
.end method


# virtual methods
.method public blacklist convertInput([BII)Ljava/math/BigInteger;
    .registers 8

    .line 98
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const-string v2, "input too large for RSA cipher."

    if-gt p3, v0, :cond_40

    .line 102
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    move-result v0

    add-int/2addr v0, v1

    if-ne p3, v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-eqz v0, :cond_16

    goto :goto_1c

    .line 104
    :cond_16
    new-instance p0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    :goto_1c
    if-nez p2, :cond_21

    .line 109
    array-length v0, p1

    if-eq p3, v0, :cond_28

    .line 111
    :cond_21
    new-array v0, p3, [B

    const/4 v3, 0x0

    .line 113
    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 120
    :cond_28
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 121
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gez p0, :cond_3a

    return-object p2

    .line 123
    :cond_3a
    new-instance p0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 100
    :cond_40
    new-instance p0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist convertOutput(Ljava/math/BigInteger;)[B
    .registers 6

    .line 132
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 134
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_32

    .line 136
    aget-byte v0, p1, v2

    if-nez v0, :cond_1d

    array-length v0, p1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v3

    if-le v0, v3, :cond_1d

    .line 138
    array-length p0, p1

    sub-int/2addr p0, v1

    new-array v0, p0, [B

    .line 140
    invoke-static {p1, v1, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 145
    :cond_1d
    array-length v0, p1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 147
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result p0

    new-array v0, p0, [B

    .line 149
    array-length v1, p1

    sub-int/2addr p0, v1

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_31
    return-object p1

    .line 159
    :cond_32
    aget-byte p0, p1, v2

    if-nez p0, :cond_3e

    .line 161
    array-length p0, p1

    sub-int/2addr p0, v1

    new-array v0, p0, [B

    .line 163
    invoke-static {p1, v1, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_44

    .line 167
    :cond_3e
    array-length p0, p1

    new-array v0, p0, [B

    .line 169
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    :goto_44
    invoke-static {p1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    return-object v0
.end method

.method public blacklist getInputBlockSize()I
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 62
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-eqz p0, :cond_15

    add-int/lit8 v0, v0, 0x7

    .line 64
    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_15
    add-int/lit8 v0, v0, 0x7

    .line 68
    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public blacklist getOutputBlockSize()I
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 83
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-eqz p0, :cond_13

    add-int/lit8 v0, v0, 0x7

    .line 85
    div-int/lit8 v0, v0, 0x8

    return v0

    :cond_13
    add-int/lit8 v0, v0, 0x7

    .line 89
    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6

    .line 35
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_f

    .line 37
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 39
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    goto :goto_13

    .line 43
    :cond_f
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 46
    :goto_13
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    .line 48
    new-instance p2, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Ljava/math/BigInteger;)I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getPurpose(ZZ)Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object p0

    const-string p1, "RSA"

    invoke-direct {p2, p1, v0, v1, p0}, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {p2}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method

.method public blacklist processBlock(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 9

    .line 180
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    instance-of v1, v0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz v1, :cond_5d

    .line 187
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    .line 189
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_5d

    .line 192
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getP()Ljava/math/BigInteger;

    move-result-object p0

    .line 193
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    .line 194
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDP()Ljava/math/BigInteger;

    move-result-object v3

    .line 195
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDQ()Ljava/math/BigInteger;

    move-result-object v4

    .line 196
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQInv()Ljava/math/BigInteger;

    move-result-object v5

    .line 201
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v3, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 204
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v4, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 207
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 208
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 209
    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 212
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 215
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 216
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    return-object p0

    .line 218
    :cond_55
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RSA engine faulty decryption/signing detected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 225
    :cond_5d
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
