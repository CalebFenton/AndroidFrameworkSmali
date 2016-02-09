.class public Lcom/android/org/conscrypt/OpenSSLECKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "OpenSSLECKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 3
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    if-nez p1, :cond_0

    #@2
    .line 56
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@4
    const-string/jumbo v1, "keySpec == null"

    #@7
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 59
    :cond_0
    instance-of v0, p1, Ljava/security/spec/ECPrivateKeySpec;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 60
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    #@11
    check-cast p1, Ljava/security/spec/ECPrivateKeySpec;

    #@13
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v0, p1}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;-><init>(Ljava/security/spec/ECPrivateKeySpec;)V

    #@16
    return-object v0

    #@17
    .line 61
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_1
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 62
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@1d
    .line 63
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    const/16 v0, 0x198

    #@1f
    .line 62
    invoke-static {p1, v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPrivateKey(Ljava/security/spec/PKCS8EncodedKeySpec;I)Ljava/security/PrivateKey;

    #@22
    move-result-object v0

    #@23
    return-object v0

    #@24
    .line 65
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_2
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@26
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v2, "Must use ECPrivateKeySpec or PKCS8EncodedKeySpec; was "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 3
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 40
    if-nez p1, :cond_0

    #@2
    .line 41
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@4
    const-string/jumbo v1, "keySpec == null"

    #@7
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 44
    :cond_0
    instance-of v0, p1, Ljava/security/spec/ECPublicKeySpec;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 45
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;

    #@11
    check-cast p1, Ljava/security/spec/ECPublicKeySpec;

    #@13
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v0, p1}, Lcom/android/org/conscrypt/OpenSSLECPublicKey;-><init>(Ljava/security/spec/ECPublicKeySpec;)V

    #@16
    return-object v0

    #@17
    .line 46
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_1
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 47
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    #@1d
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    const/16 v0, 0x198

    #@1f
    invoke-static {p1, v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey(Ljava/security/spec/X509EncodedKeySpec;I)Ljava/security/PublicKey;

    #@22
    move-result-object v0

    #@23
    return-object v0

    #@24
    .line 49
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_2
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@26
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v2, "Must use ECPublicKeySpec or X509EncodedKeySpec; was "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 6
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    .local p2, "keySpec":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    #@2
    .line 73
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@4
    const-string/jumbo v4, "key == null"

    #@7
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 76
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 77
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@f
    const-string/jumbo v4, "keySpec == null"

    #@12
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@15
    throw v3

    #@16
    .line 80
    :cond_1
    const-string/jumbo v3, "EC"

    #@19
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v3

    #@21
    if-nez v3, :cond_2

    #@23
    .line 81
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@25
    const-string/jumbo v4, "Key must be an EC key"

    #@28
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v3

    #@2c
    .line 84
    :cond_2
    instance-of v3, p1, Ljava/security/interfaces/ECPublicKey;

    #@2e
    if-eqz v3, :cond_3

    #@30
    const-class v3, Ljava/security/spec/ECPublicKeySpec;

    #@32
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_3

    #@38
    move-object v1, p1

    #@39
    .line 85
    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    #@3b
    .line 86
    .local v1, "ecKey":Ljava/security/interfaces/ECPublicKey;
    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    #@3d
    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    #@40
    move-result-object v4

    #@41
    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@44
    move-result-object v5

    #@45
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    #@48
    return-object v3

    #@49
    .line 87
    .end local v1    # "ecKey":Ljava/security/interfaces/ECPublicKey;
    :cond_3
    instance-of v3, p1, Ljava/security/PublicKey;

    #@4b
    if-eqz v3, :cond_6

    #@4d
    const-class v3, Ljava/security/spec/ECPublicKeySpec;

    #@4f
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@52
    move-result v3

    #@53
    if-eqz v3, :cond_6

    #@55
    .line 88
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@58
    move-result-object v2

    #@59
    .line 89
    .local v2, "encoded":[B
    const-string/jumbo v3, "X.509"

    #@5c
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v3

    #@64
    if-eqz v3, :cond_4

    #@66
    if-nez v2, :cond_5

    #@68
    .line 90
    :cond_4
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@6a
    const-string/jumbo v4, "Not a valid X.509 encoding"

    #@6d
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@70
    throw v3

    #@71
    .line 92
    :cond_5
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    #@73
    invoke-direct {v3, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@76
    invoke-virtual {p0, v3}, Lcom/android/org/conscrypt/OpenSSLECKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    #@79
    move-result-object v1

    #@7a
    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    #@7c
    .line 93
    .restart local v1    # "ecKey":Ljava/security/interfaces/ECPublicKey;
    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    #@7e
    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    #@81
    move-result-object v4

    #@82
    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@85
    move-result-object v5

    #@86
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    #@89
    return-object v3

    #@8a
    .line 94
    .end local v1    # "ecKey":Ljava/security/interfaces/ECPublicKey;
    .end local v2    # "encoded":[B
    :cond_6
    instance-of v3, p1, Ljava/security/interfaces/ECPrivateKey;

    #@8c
    if-eqz v3, :cond_7

    #@8e
    .line 95
    const-class v3, Ljava/security/spec/ECPrivateKeySpec;

    #@90
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@93
    move-result v3

    #@94
    .line 94
    if-eqz v3, :cond_7

    #@96
    move-object v0, p1

    #@97
    .line 96
    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    #@99
    .line 97
    .local v0, "ecKey":Ljava/security/interfaces/ECPrivateKey;
    new-instance v3, Ljava/security/spec/ECPrivateKeySpec;

    #@9b
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    #@9e
    move-result-object v4

    #@9f
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@a2
    move-result-object v5

    #@a3
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    #@a6
    return-object v3

    #@a7
    .line 98
    .end local v0    # "ecKey":Ljava/security/interfaces/ECPrivateKey;
    :cond_7
    instance-of v3, p1, Ljava/security/PrivateKey;

    #@a9
    if-eqz v3, :cond_a

    #@ab
    const-class v3, Ljava/security/spec/ECPrivateKeySpec;

    #@ad
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@b0
    move-result v3

    #@b1
    if-eqz v3, :cond_a

    #@b3
    .line 99
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@b6
    move-result-object v2

    #@b7
    .line 100
    .restart local v2    # "encoded":[B
    const-string/jumbo v3, "PKCS#8"

    #@ba
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@bd
    move-result-object v4

    #@be
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c1
    move-result v3

    #@c2
    if-eqz v3, :cond_8

    #@c4
    if-nez v2, :cond_9

    #@c6
    .line 101
    :cond_8
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@c8
    const-string/jumbo v4, "Not a valid PKCS#8 encoding"

    #@cb
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@ce
    throw v3

    #@cf
    .line 104
    :cond_9
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@d1
    invoke-direct {v3, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@d4
    invoke-virtual {p0, v3}, Lcom/android/org/conscrypt/OpenSSLECKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    #@d7
    move-result-object v0

    #@d8
    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    #@da
    .line 105
    .restart local v0    # "ecKey":Ljava/security/interfaces/ECPrivateKey;
    new-instance v3, Ljava/security/spec/ECPrivateKeySpec;

    #@dc
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    #@df
    move-result-object v4

    #@e0
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@e3
    move-result-object v5

    #@e4
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    #@e7
    return-object v3

    #@e8
    .line 106
    .end local v0    # "ecKey":Ljava/security/interfaces/ECPrivateKey;
    .end local v2    # "encoded":[B
    :cond_a
    instance-of v3, p1, Ljava/security/PrivateKey;

    #@ea
    if-eqz v3, :cond_d

    #@ec
    .line 107
    const-class v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@ee
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@f1
    move-result v3

    #@f2
    .line 106
    if-eqz v3, :cond_d

    #@f4
    .line 108
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@f7
    move-result-object v2

    #@f8
    .line 109
    .restart local v2    # "encoded":[B
    const-string/jumbo v3, "PKCS#8"

    #@fb
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@fe
    move-result-object v4

    #@ff
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@102
    move-result v3

    #@103
    if-nez v3, :cond_b

    #@105
    .line 110
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@107
    new-instance v4, Ljava/lang/StringBuilder;

    #@109
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10c
    const-string/jumbo v5, "Encoding type must be PKCS#8; was "

    #@10f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v4

    #@113
    .line 111
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@116
    move-result-object v5

    #@117
    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v4

    #@11b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11e
    move-result-object v4

    #@11f
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@122
    throw v3

    #@123
    .line 112
    :cond_b
    if-nez v2, :cond_c

    #@125
    .line 113
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@127
    const-string/jumbo v4, "Key is not encodable"

    #@12a
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@12d
    throw v3

    #@12e
    .line 115
    :cond_c
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@130
    invoke-direct {v3, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@133
    return-object v3

    #@134
    .line 116
    .end local v2    # "encoded":[B
    :cond_d
    instance-of v3, p1, Ljava/security/PublicKey;

    #@136
    if-eqz v3, :cond_10

    #@138
    const-class v3, Ljava/security/spec/X509EncodedKeySpec;

    #@13a
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@13d
    move-result v3

    #@13e
    if-eqz v3, :cond_10

    #@140
    .line 117
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@143
    move-result-object v2

    #@144
    .line 118
    .restart local v2    # "encoded":[B
    const-string/jumbo v3, "X.509"

    #@147
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@14a
    move-result-object v4

    #@14b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14e
    move-result v3

    #@14f
    if-nez v3, :cond_e

    #@151
    .line 119
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@153
    new-instance v4, Ljava/lang/StringBuilder;

    #@155
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@158
    const-string/jumbo v5, "Encoding type must be X.509; was "

    #@15b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15e
    move-result-object v4

    #@15f
    .line 120
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@162
    move-result-object v5

    #@163
    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v4

    #@167
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16a
    move-result-object v4

    #@16b
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@16e
    throw v3

    #@16f
    .line 121
    :cond_e
    if-nez v2, :cond_f

    #@171
    .line 122
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@173
    const-string/jumbo v4, "Key is not encodable"

    #@176
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@179
    throw v3

    #@17a
    .line 124
    :cond_f
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    #@17c
    invoke-direct {v3, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@17f
    return-object v3

    #@180
    .line 126
    .end local v2    # "encoded":[B
    :cond_10
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@182
    new-instance v4, Ljava/lang/StringBuilder;

    #@184
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@187
    const-string/jumbo v5, "Unsupported key type and key spec combination; key="

    #@18a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v4

    #@18e
    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@191
    move-result-object v5

    #@192
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@195
    move-result-object v5

    #@196
    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    move-result-object v4

    #@19a
    .line 127
    const-string/jumbo v5, ", keySpec="

    #@19d
    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v4

    #@1a1
    .line 127
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1a4
    move-result-object v5

    #@1a5
    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v4

    #@1a9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ac
    move-result-object v4

    #@1ad
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@1b0
    throw v3
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 10
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 133
    if-nez p1, :cond_0

    #@2
    .line 134
    new-instance v7, Ljava/security/InvalidKeyException;

    #@4
    const-string/jumbo v8, "key == null"

    #@7
    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@a
    throw v7

    #@b
    .line 136
    :cond_0
    instance-of v7, p1, Lcom/android/org/conscrypt/OpenSSLECPublicKey;

    #@d
    if-nez v7, :cond_1

    #@f
    instance-of v7, p1, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    #@11
    if-eqz v7, :cond_2

    #@13
    .line 137
    :cond_1
    return-object p1

    #@14
    .line 138
    :cond_2
    instance-of v7, p1, Ljava/security/interfaces/ECPublicKey;

    #@16
    if-eqz v7, :cond_3

    #@18
    move-object v2, p1

    #@19
    .line 139
    check-cast v2, Ljava/security/interfaces/ECPublicKey;

    #@1b
    .line 141
    .local v2, "ecKey":Ljava/security/interfaces/ECPublicKey;
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    #@1e
    move-result-object v6

    #@1f
    .line 143
    .local v6, "w":Ljava/security/spec/ECPoint;
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@22
    move-result-object v4

    #@23
    .line 146
    .local v4, "params":Ljava/security/spec/ECParameterSpec;
    :try_start_0
    new-instance v7, Ljava/security/spec/ECPublicKeySpec;

    #@25
    invoke-direct {v7, v6, v4}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    #@28
    invoke-virtual {p0, v7}, Lcom/android/org/conscrypt/OpenSSLECKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    move-result-object v7

    #@2c
    return-object v7

    #@2d
    .line 147
    :catch_0
    move-exception v0

    #@2e
    .line 148
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v7, Ljava/security/InvalidKeyException;

    #@30
    invoke-direct {v7, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@33
    throw v7

    #@34
    .line 150
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v2    # "ecKey":Ljava/security/interfaces/ECPublicKey;
    .end local v4    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v6    # "w":Ljava/security/spec/ECPoint;
    :cond_3
    instance-of v7, p1, Ljava/security/interfaces/ECPrivateKey;

    #@36
    if-eqz v7, :cond_4

    #@38
    move-object v1, p1

    #@39
    .line 151
    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    #@3b
    .line 153
    .local v1, "ecKey":Ljava/security/interfaces/ECPrivateKey;
    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    #@3e
    move-result-object v5

    #@3f
    .line 155
    .local v5, "s":Ljava/math/BigInteger;
    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@42
    move-result-object v4

    #@43
    .line 158
    .restart local v4    # "params":Ljava/security/spec/ECParameterSpec;
    :try_start_1
    new-instance v7, Ljava/security/spec/ECPrivateKeySpec;

    #@45
    invoke-direct {v7, v5, v4}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    #@48
    invoke-virtual {p0, v7}, Lcom/android/org/conscrypt/OpenSSLECKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    #@4b
    move-result-object v7

    #@4c
    return-object v7

    #@4d
    .line 159
    :catch_1
    move-exception v0

    #@4e
    .line 160
    .restart local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v7, Ljava/security/InvalidKeyException;

    #@50
    invoke-direct {v7, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@53
    throw v7

    #@54
    .line 162
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v1    # "ecKey":Ljava/security/interfaces/ECPrivateKey;
    .end local v4    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v5    # "s":Ljava/math/BigInteger;
    :cond_4
    instance-of v7, p1, Ljava/security/PrivateKey;

    #@56
    if-eqz v7, :cond_6

    #@58
    const-string/jumbo v7, "PKCS#8"

    #@5b
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@5e
    move-result-object v8

    #@5f
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v7

    #@63
    if-eqz v7, :cond_6

    #@65
    .line 163
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@68
    move-result-object v3

    #@69
    .line 164
    .local v3, "encoded":[B
    if-nez v3, :cond_5

    #@6b
    .line 165
    new-instance v7, Ljava/security/InvalidKeyException;

    #@6d
    const-string/jumbo v8, "Key does not support encoding"

    #@70
    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@73
    throw v7

    #@74
    .line 168
    :cond_5
    :try_start_2
    new-instance v7, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@76
    invoke-direct {v7, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@79
    invoke-virtual {p0, v7}, Lcom/android/org/conscrypt/OpenSSLECKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2

    #@7c
    move-result-object v7

    #@7d
    return-object v7

    #@7e
    .line 169
    :catch_2
    move-exception v0

    #@7f
    .line 170
    .restart local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v7, Ljava/security/InvalidKeyException;

    #@81
    invoke-direct {v7, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@84
    throw v7

    #@85
    .line 172
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v3    # "encoded":[B
    :cond_6
    instance-of v7, p1, Ljava/security/PublicKey;

    #@87
    if-eqz v7, :cond_8

    #@89
    const-string/jumbo v7, "X.509"

    #@8c
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@8f
    move-result-object v8

    #@90
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@93
    move-result v7

    #@94
    if-eqz v7, :cond_8

    #@96
    .line 173
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@99
    move-result-object v3

    #@9a
    .line 174
    .restart local v3    # "encoded":[B
    if-nez v3, :cond_7

    #@9c
    .line 175
    new-instance v7, Ljava/security/InvalidKeyException;

    #@9e
    const-string/jumbo v8, "Key does not support encoding"

    #@a1
    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@a4
    throw v7

    #@a5
    .line 178
    :cond_7
    :try_start_3
    new-instance v7, Ljava/security/spec/X509EncodedKeySpec;

    #@a7
    invoke-direct {v7, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@aa
    invoke-virtual {p0, v7}, Lcom/android/org/conscrypt/OpenSSLECKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_3

    #@ad
    move-result-object v7

    #@ae
    return-object v7

    #@af
    .line 179
    :catch_3
    move-exception v0

    #@b0
    .line 180
    .restart local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v7, Ljava/security/InvalidKeyException;

    #@b2
    invoke-direct {v7, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@b5
    throw v7

    #@b6
    .line 183
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v3    # "encoded":[B
    :cond_8
    new-instance v7, Ljava/security/InvalidKeyException;

    #@b8
    new-instance v8, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v9, "Key must be EC public or private key; was "

    #@c0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v8

    #@c4
    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@c7
    move-result-object v9

    #@c8
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@cb
    move-result-object v9

    #@cc
    .line 183
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v8

    #@d0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v8

    #@d4
    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@d7
    throw v7
.end method
