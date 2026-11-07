.class public final Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "OpenSSLRSAKeyFactory.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 5
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 63
    if-eqz p1, :cond_4a

    .line 67
    instance-of v0, p1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    if-eqz v0, :cond_f

    .line 68
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;

    move-object v1, p1

    check-cast v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;-><init>(Ljava/security/spec/RSAPrivateCrtKeySpec;)V

    return-object v0

    .line 69
    :cond_f
    instance-of v0, p1, Ljava/security/spec/RSAPrivateKeySpec;

    if-eqz v0, :cond_1c

    .line 70
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    move-object v1, p1

    check-cast v1, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Ljava/security/spec/RSAPrivateKeySpec;)V

    return-object v0

    .line 71
    :cond_1c
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v0, :cond_29

    .line 72
    move-object v0, p1

    check-cast v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPrivateKey(Ljava/security/spec/PKCS8EncodedKeySpec;I)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0

    .line 75
    :cond_29
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must use RSAPublicKeySpec or PKCS8EncodedKeySpec; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_4a
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "keySpec == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 5
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 48
    if-eqz p1, :cond_3d

    .line 52
    instance-of v0, p1, Ljava/security/spec/RSAPublicKeySpec;

    if-eqz v0, :cond_f

    .line 53
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    move-object v1, p1

    check-cast v1, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;-><init>(Ljava/security/spec/RSAPublicKeySpec;)V

    return-object v0

    .line 54
    :cond_f
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v0, :cond_1c

    .line 55
    move-object v0, p1

    check-cast v0, Ljava/security/spec/X509EncodedKeySpec;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey(Ljava/security/spec/X509EncodedKeySpec;I)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0

    .line 57
    :cond_1c
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must use RSAPublicKeySpec or X509EncodedKeySpec; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_3d
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "keySpec == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 15
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 82
    .local p2, "keySpec":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_247

    .line 86
    if-eqz p2, :cond_23f

    .line 90
    const-string v0, "RSA"

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_237

    .line 94
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_2d

    const-class v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 95
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 97
    .local v0, "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 98
    .local v1, "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 99
    .end local v0    # "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_2d
    instance-of v0, p1, Ljava/security/PublicKey;

    const-string v1, "X.509"

    if-eqz v0, :cond_6c

    const-class v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 100
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 101
    .local v0, "encoded":[B
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    if-eqz v0, :cond_64

    .line 104
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 105
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    .line 107
    .local v1, "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 108
    .local v2, "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v2

    .line 102
    .end local v1    # "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    .end local v2    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_64
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "Not a valid X.509 encoding"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    .end local v0    # "encoded":[B
    :cond_6c
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_a1

    const-class v0, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 110
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 111
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 113
    .local v0, "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    new-instance v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    .line 114
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v6

    .line 115
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v8

    .line 116
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 117
    .local v1, "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 118
    .end local v0    # "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_a1
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_be

    const-class v0, Ljava/security/spec/RSAPrivateKeySpec;

    .line 119
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 120
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 122
    .restart local v0    # "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    new-instance v1, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 123
    .restart local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 124
    .end local v0    # "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_be
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_db

    const-class v0, Ljava/security/spec/RSAPrivateKeySpec;

    .line 125
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 126
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 128
    .local v0, "rsaKey":Ljava/security/interfaces/RSAPrivateKey;
    new-instance v1, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 129
    .restart local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 130
    .end local v0    # "rsaKey":Ljava/security/interfaces/RSAPrivateKey;
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_db
    instance-of v0, p1, Ljava/security/PrivateKey;

    const-string v2, "Not a valid PKCS#8 encoding"

    const-string v3, "PKCS#8"

    if-eqz v0, :cond_141

    const-class v0, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 131
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 132
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 133
    .local v0, "encoded":[B
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13b

    if-eqz v0, :cond_13b

    .line 136
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 137
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    .line 138
    .local v1, "privKey":Ljava/security/interfaces/RSAPrivateKey;
    instance-of v2, v1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v2, :cond_133

    .line 139
    move-object v2, v1

    check-cast v2, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 141
    .local v2, "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    new-instance v3, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-interface {v2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    .line 142
    invoke-interface {v2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v7

    .line 143
    invoke-interface {v2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-interface {v2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v9

    invoke-interface {v2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v10

    .line 144
    invoke-interface {v2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct/range {v3 .. v11}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 145
    .local v3, "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v3

    .line 147
    .end local v2    # "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    .end local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_133
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "Encoded key is not an RSAPrivateCrtKey"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    .end local v1    # "privKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_13b
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    .end local v0    # "encoded":[B
    :cond_141
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-eqz v0, :cond_17c

    const-class v0, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17c

    .line 150
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 151
    .restart local v0    # "encoded":[B
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_176

    if-eqz v0, :cond_176

    .line 154
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 155
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    .line 157
    .local v1, "rsaKey":Ljava/security/interfaces/RSAPrivateKey;
    new-instance v2, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 158
    .local v2, "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v2

    .line 152
    .end local v1    # "rsaKey":Ljava/security/interfaces/RSAPrivateKey;
    .end local v2    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_176
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    .end local v0    # "encoded":[B
    :cond_17c
    instance-of v0, p1, Ljava/security/PrivateKey;

    const-string v2, "Key is not encodable"

    if-eqz v0, :cond_1c3

    const-class v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 160
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1c3

    .line 161
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 162
    .restart local v0    # "encoded":[B
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a6

    .line 165
    if-eqz v0, :cond_1a0

    .line 168
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 169
    .local v1, "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 166
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_1a0
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_1a6
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoding type must be PKCS#8; was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 164
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    .end local v0    # "encoded":[B
    :cond_1c3
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_208

    const-class v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_208

    .line 171
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 172
    .restart local v0    # "encoded":[B
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1eb

    .line 175
    if-eqz v0, :cond_1e5

    .line 178
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 179
    .restart local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 176
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_1e5
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_1eb
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoding type must be X.509; was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 174
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    .end local v0    # "encoded":[B
    :cond_208
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key type and key spec combination; key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", keySpec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_237
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Key must be a RSA key"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_23f
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "keySpec == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_247
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .registers 13
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 188
    if-eqz p1, :cond_102

    .line 192
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    if-nez v0, :cond_101

    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v0, :cond_c

    goto/16 :goto_101

    .line 194
    :cond_c
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_2c

    .line 195
    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    .line 198
    .local v1, "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    :try_start_13
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 199
    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_24
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_13 .. :try_end_24} :catch_25

    return-object v0

    .line 200
    :catch_25
    move-exception v0

    .line 201
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 203
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v1    # "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_2c
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_64

    .line 204
    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 205
    .local v1, "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    .line 206
    .local v3, "modulus":Ljava/math/BigInteger;
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    .line 207
    .local v4, "publicExponent":Ljava/math/BigInteger;
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v5

    .line 208
    .local v5, "privateExponent":Ljava/math/BigInteger;
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v6

    .line 209
    .local v6, "primeP":Ljava/math/BigInteger;
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v7

    .line 210
    .local v7, "primeQ":Ljava/math/BigInteger;
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v8

    .line 211
    .local v8, "primeExponentP":Ljava/math/BigInteger;
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v9

    .line 212
    .local v9, "primeExponentQ":Ljava/math/BigInteger;
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v10

    .line 215
    .local v10, "crtCoefficient":Ljava/math/BigInteger;
    :try_start_53
    new-instance v2, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-direct/range {v2 .. v10}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0
    :try_end_5c
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_53 .. :try_end_5c} :catch_5d

    return-object v0

    .line 218
    :catch_5d
    move-exception v0

    .line 219
    .restart local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 221
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v1    # "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    .end local v3    # "modulus":Ljava/math/BigInteger;
    .end local v4    # "publicExponent":Ljava/math/BigInteger;
    .end local v5    # "privateExponent":Ljava/math/BigInteger;
    .end local v6    # "primeP":Ljava/math/BigInteger;
    .end local v7    # "primeQ":Ljava/math/BigInteger;
    .end local v8    # "primeExponentP":Ljava/math/BigInteger;
    .end local v9    # "primeExponentQ":Ljava/math/BigInteger;
    .end local v10    # "crtCoefficient":Ljava/math/BigInteger;
    :cond_64
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_84

    .line 222
    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    .line 223
    .local v1, "rsaKey":Ljava/security/interfaces/RSAPrivateKey;
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 224
    .local v2, "modulus":Ljava/math/BigInteger;
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    .line 227
    .local v3, "privateExponent":Ljava/math/BigInteger;
    :try_start_73
    new-instance v0, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v0, v2, v3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0
    :try_end_7c
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_73 .. :try_end_7c} :catch_7d

    return-object v0

    .line 228
    :catch_7d
    move-exception v0

    .line 229
    .restart local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-direct {v4, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 231
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v1    # "rsaKey":Ljava/security/interfaces/RSAPrivateKey;
    .end local v2    # "modulus":Ljava/math/BigInteger;
    .end local v3    # "privateExponent":Ljava/math/BigInteger;
    :cond_84
    instance-of v0, p1, Ljava/security/PrivateKey;

    const-string v1, "Key does not support encoding"

    if-eqz v0, :cond_b3

    const-string v0, "PKCS#8"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 232
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    .line 233
    .local v2, "encoded":[B
    if-eqz v2, :cond_ad

    .line 237
    :try_start_9c
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0
    :try_end_a5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_9c .. :try_end_a5} :catch_a6

    return-object v0

    .line 238
    :catch_a6
    move-exception v0

    .line 239
    .restart local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 234
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    :cond_ad
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    .end local v2    # "encoded":[B
    :cond_b3
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_e0

    const-string v0, "X.509"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 242
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    .line 243
    .restart local v2    # "encoded":[B
    if-eqz v2, :cond_da

    .line 247
    :try_start_c9
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_d2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_c9 .. :try_end_d2} :catch_d3

    return-object v0

    .line 248
    :catch_d3
    move-exception v0

    .line 249
    .restart local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 244
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    :cond_da
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    .end local v2    # "encoded":[B
    :cond_e0
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key must be an RSA public or private key; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 253
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_101
    :goto_101
    return-object p1

    .line 189
    :cond_102
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
