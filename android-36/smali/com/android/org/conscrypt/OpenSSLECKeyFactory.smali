.class public final Lcom/android/org/conscrypt/OpenSSLECKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "OpenSSLECKeyFactory.java"


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
    if-eqz p1, :cond_3e

    .line 67
    instance-of v0, p1, Ljava/security/spec/ECPrivateKeySpec;

    if-eqz v0, :cond_f

    .line 68
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    move-object v1, p1

    check-cast v1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;-><init>(Ljava/security/spec/ECPrivateKeySpec;)V

    return-object v0

    .line 69
    :cond_f
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v0, :cond_1d

    .line 70
    move-object v0, p1

    check-cast v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    const/16 v1, 0x198

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPrivateKey(Ljava/security/spec/PKCS8EncodedKeySpec;I)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0

    .line 73
    :cond_1d
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must use ECPrivateKeySpec or PKCS8EncodedKeySpec; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 74
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
    :cond_3e
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
    if-eqz p1, :cond_3e

    .line 52
    instance-of v0, p1, Ljava/security/spec/ECPublicKeySpec;

    if-eqz v0, :cond_f

    .line 53
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;

    move-object v1, p1

    check-cast v1, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLECPublicKey;-><init>(Ljava/security/spec/ECPublicKeySpec;)V

    return-object v0

    .line 54
    :cond_f
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v0, :cond_1d

    .line 55
    move-object v0, p1

    check-cast v0, Ljava/security/spec/X509EncodedKeySpec;

    const/16 v1, 0x198

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey(Ljava/security/spec/X509EncodedKeySpec;I)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0

    .line 57
    :cond_1d
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must use ECPublicKeySpec or X509EncodedKeySpec; was "

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
    :cond_3e
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "keySpec == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 8
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

    .line 80
    .local p2, "keySpec":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_193

    .line 84
    if-eqz p2, :cond_18b

    .line 88
    const-string v0, "EC"

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_183

    .line 92
    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_2d

    const-class v0, Ljava/security/spec/ECPublicKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 93
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    .line 95
    .local v0, "ecKey":Ljava/security/interfaces/ECPublicKey;
    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 96
    .local v1, "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 97
    .end local v0    # "ecKey":Ljava/security/interfaces/ECPublicKey;
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_2d
    instance-of v0, p1, Ljava/security/PublicKey;

    const-string v1, "X.509"

    if-eqz v0, :cond_6c

    const-class v0, Ljava/security/spec/ECPublicKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 98
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 99
    .local v0, "encoded":[B
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    if-eqz v0, :cond_64

    .line 102
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLECKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 104
    .local v1, "ecKey":Ljava/security/interfaces/ECPublicKey;
    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 105
    .local v2, "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v2

    .line 100
    .end local v1    # "ecKey":Ljava/security/interfaces/ECPublicKey;
    .end local v2    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_64
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "Not a valid X.509 encoding"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    .end local v0    # "encoded":[B
    :cond_6c
    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_89

    const-class v0, Ljava/security/spec/ECPrivateKeySpec;

    .line 107
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 108
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 110
    .local v0, "ecKey":Ljava/security/interfaces/ECPrivateKey;
    new-instance v1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 111
    .local v1, "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 112
    .end local v0    # "ecKey":Ljava/security/interfaces/ECPrivateKey;
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_89
    instance-of v0, p1, Ljava/security/PrivateKey;

    const-string v2, "PKCS#8"

    if-eqz v0, :cond_c8

    const-class v0, Ljava/security/spec/ECPrivateKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 113
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 114
    .local v0, "encoded":[B
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    if-eqz v0, :cond_c0

    .line 117
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 118
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLECKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    .line 120
    .local v1, "ecKey":Ljava/security/interfaces/ECPrivateKey;
    new-instance v2, Ljava/security/spec/ECPrivateKeySpec;

    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 121
    .restart local v2    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v2

    .line 115
    .end local v1    # "ecKey":Ljava/security/interfaces/ECPrivateKey;
    .end local v2    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_c0
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "Not a valid PKCS#8 encoding"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    .end local v0    # "encoded":[B
    :cond_c8
    instance-of v0, p1, Ljava/security/PrivateKey;

    const-string v3, "Key is not encodable"

    if-eqz v0, :cond_10f

    const-class v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 123
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 124
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 125
    .restart local v0    # "encoded":[B
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 128
    if-eqz v0, :cond_ec

    .line 131
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 132
    .local v1, "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 129
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_ec
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_f2
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoding type must be PKCS#8; was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 127
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    .end local v0    # "encoded":[B
    :cond_10f
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_154

    const-class v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_154

    .line 134
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 135
    .restart local v0    # "encoded":[B
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_137

    .line 138
    if-eqz v0, :cond_131

    .line 141
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 142
    .restart local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 139
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_131
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_137
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoding type must be X.509; was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 137
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    .end local v0    # "encoded":[B
    :cond_154
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key type and key spec combination; key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
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

    .line 89
    :cond_183
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Key must be an EC key"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_18b
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "keySpec == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_193
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .registers 7
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 151
    if-eqz p1, :cond_ca

    .line 154
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLECPublicKey;

    if-nez v0, :cond_c9

    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    if-eqz v0, :cond_c

    goto/16 :goto_c9

    .line 156
    :cond_c
    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_2c

    .line 157
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    .line 159
    .local v0, "ecKey":Ljava/security/interfaces/ECPublicKey;
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 161
    .local v1, "w":Ljava/security/spec/ECPoint;
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    .line 164
    .local v2, "params":Ljava/security/spec/ECParameterSpec;
    :try_start_1b
    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v3, v1, v2}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {p0, v3}, Lcom/android/org/conscrypt/OpenSSLECKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3
    :try_end_24
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1b .. :try_end_24} :catch_25

    return-object v3

    .line 165
    :catch_25
    move-exception v3

    .line 166
    .local v3, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-direct {v4, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 168
    .end local v0    # "ecKey":Ljava/security/interfaces/ECPublicKey;
    .end local v1    # "w":Ljava/security/spec/ECPoint;
    .end local v2    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v3    # "e":Ljava/security/spec/InvalidKeySpecException;
    :cond_2c
    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_4c

    .line 169
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 171
    .local v0, "ecKey":Ljava/security/interfaces/ECPrivateKey;
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v1

    .line 173
    .local v1, "s":Ljava/math/BigInteger;
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    .line 176
    .restart local v2    # "params":Ljava/security/spec/ECParameterSpec;
    :try_start_3b
    new-instance v3, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {v3, v1, v2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {p0, v3}, Lcom/android/org/conscrypt/OpenSSLECKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3
    :try_end_44
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3b .. :try_end_44} :catch_45

    return-object v3

    .line 177
    :catch_45
    move-exception v3

    .line 178
    .restart local v3    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-direct {v4, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 180
    .end local v0    # "ecKey":Ljava/security/interfaces/ECPrivateKey;
    .end local v1    # "s":Ljava/math/BigInteger;
    .end local v2    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v3    # "e":Ljava/security/spec/InvalidKeySpecException;
    :cond_4c
    instance-of v0, p1, Ljava/security/PrivateKey;

    const-string v1, "Key does not support encoding"

    if-eqz v0, :cond_7b

    const-string v0, "PKCS#8"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 181
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 182
    .local v0, "encoded":[B
    if-eqz v0, :cond_75

    .line 186
    :try_start_64
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLECKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1
    :try_end_6d
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_64 .. :try_end_6d} :catch_6e

    return-object v1

    .line 187
    :catch_6e
    move-exception v1

    .line 188
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 183
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :cond_75
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    .end local v0    # "encoded":[B
    :cond_7b
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_a8

    const-string v0, "X.509"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 191
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 192
    .restart local v0    # "encoded":[B
    if-eqz v0, :cond_a2

    .line 196
    :try_start_91
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLECKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1
    :try_end_9a
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_91 .. :try_end_9a} :catch_9b

    return-object v1

    .line 197
    :catch_9b
    move-exception v1

    .line 198
    .restart local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 193
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :cond_a2
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    .end local v0    # "encoded":[B
    :cond_a8
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key must be EC public or private key; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 202
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

    .line 155
    :cond_c9
    :goto_c9
    return-object p1

    .line 152
    :cond_ca
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
