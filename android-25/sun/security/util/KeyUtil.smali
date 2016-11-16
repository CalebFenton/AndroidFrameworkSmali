.class public final Lsun/security/util/KeyUtil;
.super Ljava/lang/Object;
.source "KeyUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final getKeySize(Ljava/security/Key;)I
    .locals 13
    .param p0, "key"    # Ljava/security/Key;

    #@0
    .prologue
    .line 59
    const/4 v9, -0x1

    #@1
    .line 61
    .local v9, "size":I
    instance-of v12, p0, Lsun/security/util/Length;

    #@3
    if-eqz v12, :cond_0

    #@5
    .line 63
    :try_start_0
    move-object v0, p0

    #@6
    check-cast v0, Lsun/security/util/Length;

    #@8
    move-object v8, v0

    #@9
    .line 64
    .local v8, "ruler":Lsun/security/util/Length;
    invoke-interface {v8}, Lsun/security/util/Length;->length()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result v9

    #@d
    .line 69
    .end local v8    # "ruler":Lsun/security/util/Length;
    :goto_0
    if-ltz v9, :cond_0

    #@f
    .line 70
    return v9

    #@10
    .line 75
    :cond_0
    instance-of v12, p0, Ljavax/crypto/SecretKey;

    #@12
    if-eqz v12, :cond_2

    #@14
    move-object v10, p0

    #@15
    .line 76
    check-cast v10, Ljavax/crypto/SecretKey;

    #@17
    .line 77
    .local v10, "sk":Ljavax/crypto/SecretKey;
    invoke-interface {v10}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 78
    .local v1, "format":Ljava/lang/String;
    const-string/jumbo v12, "RAW"

    #@1e
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v12

    #@22
    if-eqz v12, :cond_1

    #@24
    invoke-interface {v10}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@27
    move-result-object v12

    #@28
    if-eqz v12, :cond_1

    #@2a
    .line 79
    invoke-interface {v10}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@2d
    move-result-object v12

    #@2e
    array-length v12, v12

    #@2f
    mul-int/lit8 v9, v12, 0x8

    #@31
    .line 113
    .end local v1    # "format":Ljava/lang/String;
    .end local v10    # "sk":Ljavax/crypto/SecretKey;
    :cond_1
    :goto_1
    return v9

    #@32
    .line 82
    :cond_2
    instance-of v12, p0, Ljava/security/interfaces/RSAKey;

    #@34
    if-eqz v12, :cond_3

    #@36
    move-object v6, p0

    #@37
    .line 83
    check-cast v6, Ljava/security/interfaces/RSAKey;

    #@39
    .line 84
    .local v6, "pubk":Ljava/security/interfaces/RSAKey;
    invoke-interface {v6}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    #@3c
    move-result-object v12

    #@3d
    invoke-virtual {v12}, Ljava/math/BigInteger;->bitLength()I

    #@40
    move-result v9

    #@41
    goto :goto_1

    #@42
    .line 85
    .end local v6    # "pubk":Ljava/security/interfaces/RSAKey;
    :cond_3
    instance-of v12, p0, Ljava/security/interfaces/ECKey;

    #@44
    if-eqz v12, :cond_4

    #@46
    move-object v5, p0

    #@47
    .line 86
    check-cast v5, Ljava/security/interfaces/ECKey;

    #@49
    .line 87
    .local v5, "pubk":Ljava/security/interfaces/ECKey;
    invoke-interface {v5}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@4c
    move-result-object v3

    #@4d
    .line 93
    .local v3, "params":Ljava/security/spec/ECParameterSpec;
    if-eqz v3, :cond_1

    #@4f
    .line 94
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    #@52
    move-result-object v12

    #@53
    invoke-virtual {v12}, Ljava/math/BigInteger;->bitLength()I

    #@56
    move-result v9

    #@57
    goto :goto_1

    #@58
    .line 96
    .end local v3    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v5    # "pubk":Ljava/security/interfaces/ECKey;
    :cond_4
    instance-of v12, p0, Ljava/security/interfaces/DSAKey;

    #@5a
    if-eqz v12, :cond_5

    #@5c
    move-object v4, p0

    #@5d
    .line 97
    check-cast v4, Ljava/security/interfaces/DSAKey;

    #@5f
    .line 98
    .local v4, "pubk":Ljava/security/interfaces/DSAKey;
    invoke-interface {v4}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@62
    move-result-object v2

    #@63
    .line 104
    .local v2, "params":Ljava/security/interfaces/DSAParams;
    if-eqz v2, :cond_1

    #@65
    .line 105
    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    #@68
    move-result-object v12

    #@69
    invoke-virtual {v12}, Ljava/math/BigInteger;->bitLength()I

    #@6c
    move-result v9

    #@6d
    goto :goto_1

    #@6e
    .line 107
    .end local v2    # "params":Ljava/security/interfaces/DSAParams;
    .end local v4    # "pubk":Ljava/security/interfaces/DSAKey;
    :cond_5
    instance-of v12, p0, Ljavax/crypto/interfaces/DHKey;

    #@70
    if-eqz v12, :cond_1

    #@72
    move-object v7, p0

    #@73
    .line 108
    check-cast v7, Ljavax/crypto/interfaces/DHKey;

    #@75
    .line 109
    .local v7, "pubk":Ljavax/crypto/interfaces/DHKey;
    invoke-interface {v7}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@78
    move-result-object v12

    #@79
    invoke-virtual {v12}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@7c
    move-result-object v12

    #@7d
    invoke-virtual {v12}, Ljava/math/BigInteger;->bitLength()I

    #@80
    move-result v9

    #@81
    goto :goto_1

    #@82
    .line 65
    .end local v7    # "pubk":Ljavax/crypto/interfaces/DHKey;
    :catch_0
    move-exception v11

    #@83
    .local v11, "usoe":Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method

.method public static final isOracleJCEProvider(Ljava/lang/String;)Z
    .locals 1
    .param p0, "providerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 174
    if-eqz p0, :cond_1

    #@2
    const-string/jumbo v0, "SunJCE"

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 175
    const-string/jumbo v0, "SunPKCS11"

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    .line 174
    :goto_0
    return v0

    #@13
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0

    #@15
    :cond_1
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method public static final validate(Ljava/security/Key;)V
    .locals 2
    .param p0, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    if-nez p0, :cond_0

    #@2
    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 131
    const-string/jumbo v1, "The key to be validated cannot be null"

    #@7
    .line 130
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 134
    :cond_0
    instance-of v0, p0, Ljavax/crypto/interfaces/DHPublicKey;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 135
    check-cast p0, Ljavax/crypto/interfaces/DHPublicKey;

    #@11
    .end local p0    # "key":Ljava/security/Key;
    invoke-static {p0}, Lsun/security/util/KeyUtil;->validateDHPublicKey(Ljavax/crypto/interfaces/DHPublicKey;)V

    #@14
    .line 128
    :cond_1
    return-void
.end method

.method public static final validate(Ljava/security/spec/KeySpec;)V
    .locals 2
    .param p0, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    if-nez p0, :cond_0

    #@2
    .line 154
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 155
    const-string/jumbo v1, "The key spec to be validated cannot be null"

    #@7
    .line 154
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 158
    :cond_0
    instance-of v0, p0, Ljavax/crypto/spec/DHPublicKeySpec;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 159
    check-cast p0, Ljavax/crypto/spec/DHPublicKeySpec;

    #@11
    .end local p0    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-static {p0}, Lsun/security/util/KeyUtil;->validateDHPublicKey(Ljavax/crypto/spec/DHPublicKeySpec;)V

    #@14
    .line 152
    :cond_1
    return-void
.end method

.method private static validateDHPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 4
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "g"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 209
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    #@2
    .line 210
    .local v0, "leftOpen":Ljava/math/BigInteger;
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    #@4
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@7
    move-result-object v1

    #@8
    .line 211
    .local v1, "rightOpen":Ljava/math/BigInteger;
    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@b
    move-result v2

    #@c
    if-gtz v2, :cond_0

    #@e
    .line 212
    new-instance v2, Ljava/security/InvalidKeyException;

    #@10
    .line 213
    const-string/jumbo v3, "Diffie-Hellman public key is too small"

    #@13
    .line 212
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@16
    throw v2

    #@17
    .line 215
    :cond_0
    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@1a
    move-result v2

    #@1b
    if-ltz v2, :cond_1

    #@1d
    .line 216
    new-instance v2, Ljava/security/InvalidKeyException;

    #@1f
    .line 217
    const-string/jumbo v3, "Diffie-Hellman public key is too large"

    #@22
    .line 216
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@25
    throw v2

    #@26
    .line 206
    :cond_1
    return-void
.end method

.method private static validateDHPublicKey(Ljavax/crypto/interfaces/DHPublicKey;)V
    .locals 4
    .param p0, "publicKey"    # Ljavax/crypto/interfaces/DHPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 190
    invoke-interface {p0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@3
    move-result-object v2

    #@4
    .line 192
    .local v2, "paramSpec":Ljavax/crypto/spec/DHParameterSpec;
    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@7
    move-result-object v1

    #@8
    .line 193
    .local v1, "p":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@b
    move-result-object v0

    #@c
    .line 194
    .local v0, "g":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    #@f
    move-result-object v3

    #@10
    .line 196
    .local v3, "y":Ljava/math/BigInteger;
    invoke-static {v1, v0, v3}, Lsun/security/util/KeyUtil;->validateDHPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@13
    .line 189
    return-void
.end method

.method private static validateDHPublicKey(Ljavax/crypto/spec/DHPublicKeySpec;)V
    .locals 3
    .param p0, "publicKeySpec"    # Ljavax/crypto/spec/DHPublicKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 201
    invoke-virtual {p0}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    .line 202
    invoke-virtual {p0}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    #@b
    move-result-object v2

    #@c
    .line 201
    invoke-static {v0, v1, v2}, Lsun/security/util/KeyUtil;->validateDHPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@f
    .line 200
    return-void
.end method
