.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyFactorySpi;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;
.source "KeyFactorySpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 6
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    instance-of v3, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 91
    :try_start_0
    move-object v0, p1

    #@5
    check-cast v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@7
    move-object v3, v0

    #@8
    invoke-virtual {v3}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    #@b
    move-result-object v3

    #@c
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyFactorySpi;->generatePrivate(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v3

    #@14
    return-object v3

    #@15
    .line 94
    :catch_0
    move-exception v1

    #@16
    .line 100
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;

    #@18
    .line 101
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@1a
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    #@1d
    move-result-object v4

    #@1e
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    #@21
    move-result-object v4

    #@22
    .line 100
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@25
    return-object v3

    #@26
    .line 104
    :catch_1
    move-exception v2

    #@27
    .line 105
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ExtendedInvalidKeySpecException;

    #@29
    new-instance v4, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v5, "unable to process key spec: "

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ExtendedInvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@44
    throw v3

    #@45
    .line 109
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_0
    instance-of v3, p1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    #@47
    if-eqz v3, :cond_1

    #@49
    .line 111
    new-instance v3, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;

    #@4b
    check-cast p1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    #@4d
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;-><init>(Ljava/security/spec/RSAPrivateCrtKeySpec;)V

    #@50
    return-object v3

    #@51
    .line 113
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_1
    instance-of v3, p1, Ljava/security/spec/RSAPrivateKeySpec;

    #@53
    if-eqz v3, :cond_2

    #@55
    .line 115
    new-instance v3, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;

    #@57
    check-cast p1, Ljava/security/spec/RSAPrivateKeySpec;

    #@59
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;-><init>(Ljava/security/spec/RSAPrivateKeySpec;)V

    #@5c
    return-object v3

    #@5d
    .line 118
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_2
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@5f
    new-instance v4, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v5, "Unknown KeySpec type: "

    #@67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6e
    move-result-object v5

    #@6f
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@72
    move-result-object v5

    #@73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v4

    #@7b
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v3
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 1
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    instance-of v0, p1, Ljava/security/spec/RSAPublicKeySpec;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 127
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;

    #@6
    check-cast p1, Ljava/security/spec/RSAPublicKeySpec;

    #@8
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;-><init>(Ljava/security/spec/RSAPublicKeySpec;)V

    #@b
    return-object v0

    #@c
    .line 130
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 12
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "spec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 36
    const-class v0, Ljava/security/spec/RSAPublicKeySpec;

    #@2
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    #@a
    if-eqz v0, :cond_0

    #@c
    move-object v11, p1

    #@d
    .line 38
    check-cast v11, Ljava/security/interfaces/RSAPublicKey;

    #@f
    .line 40
    .local v11, "k":Ljava/security/interfaces/RSAPublicKey;
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    #@11
    invoke-interface {v11}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@14
    move-result-object v1

    #@15
    invoke-interface {v11}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    #@18
    move-result-object v2

    #@19
    invoke-direct {v0, v1, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@1c
    return-object v0

    #@1d
    .line 42
    .end local v11    # "k":Ljava/security/interfaces/RSAPublicKey;
    :cond_0
    const-class v0, Ljava/security/spec/RSAPrivateKeySpec;

    #@1f
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_1

    #@25
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    #@27
    if-eqz v0, :cond_1

    #@29
    move-object v10, p1

    #@2a
    .line 44
    check-cast v10, Ljava/security/interfaces/RSAPrivateKey;

    #@2c
    .line 46
    .local v10, "k":Ljava/security/interfaces/RSAPrivateKey;
    new-instance v0, Ljava/security/spec/RSAPrivateKeySpec;

    #@2e
    invoke-interface {v10}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    #@31
    move-result-object v1

    #@32
    invoke-interface {v10}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@35
    move-result-object v2

    #@36
    invoke-direct {v0, v1, v2}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@39
    return-object v0

    #@3a
    .line 48
    .end local v10    # "k":Ljava/security/interfaces/RSAPrivateKey;
    :cond_1
    const-class v0, Ljava/security/spec/RSAPrivateCrtKeySpec;

    #@3c
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_2

    #@42
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    #@44
    if-eqz v0, :cond_2

    #@46
    move-object v9, p1

    #@47
    .line 50
    check-cast v9, Ljava/security/interfaces/RSAPrivateCrtKey;

    #@49
    .line 52
    .local v9, "k":Ljava/security/interfaces/RSAPrivateCrtKey;
    new-instance v0, Ljava/security/spec/RSAPrivateCrtKeySpec;

    #@4b
    .line 53
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    #@4e
    move-result-object v1

    #@4f
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    #@52
    move-result-object v2

    #@53
    .line 54
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    #@56
    move-result-object v3

    #@57
    .line 55
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    #@5a
    move-result-object v4

    #@5b
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    #@5e
    move-result-object v5

    #@5f
    .line 56
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    #@62
    move-result-object v6

    #@63
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    #@66
    move-result-object v7

    #@67
    .line 57
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    #@6a
    move-result-object v8

    #@6b
    .line 52
    invoke-direct/range {v0 .. v8}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@6e
    return-object v0

    #@6f
    .line 60
    .end local v9    # "k":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    #@72
    move-result-object v0

    #@73
    return-object v0
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 69
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;

    #@6
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    #@8
    .end local p1    # "key":Ljava/security/Key;
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;-><init>(Ljava/security/interfaces/RSAPublicKey;)V

    #@b
    return-object v0

    #@c
    .line 71
    .restart local p1    # "key":Ljava/security/Key;
    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 73
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;

    #@12
    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    #@14
    .end local p1    # "key":Ljava/security/Key;
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;-><init>(Ljava/security/interfaces/RSAPrivateCrtKey;)V

    #@17
    return-object v0

    #@18
    .line 75
    .restart local p1    # "key":Ljava/security/Key;
    :cond_1
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 77
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;

    #@1e
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    #@20
    .end local p1    # "key":Ljava/security/Key;
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;-><init>(Ljava/security/interfaces/RSAPrivateKey;)V

    #@23
    return-object v0

    #@24
    .line 80
    .restart local p1    # "key":Ljava/security/Key;
    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    #@26
    const-string/jumbo v1, "key type unknown"

    #@29
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0
.end method

.method public generatePrivate(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 5
    .param p1, "keyInfo"    # Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    move-result-object v0

    #@8
    .line 138
    .local v0, "algOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->isRsaOid(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 140
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@11
    move-result-object v2

    #@12
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    #@15
    move-result-object v1

    #@16
    .line 142
    .local v1, "rsaPrivKey":Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getCoefficient()Ljava/math/BigInteger;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_0

    #@20
    .line 144
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;

    #@22
    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;)V

    #@25
    return-object v2

    #@26
    .line 148
    :cond_0
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;

    #@28
    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    #@2b
    return-object v2

    #@2c
    .line 153
    .end local v1    # "rsaPrivKey":Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;
    :cond_1
    new-instance v2, Ljava/io/IOException;

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "algorithm identifier "

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    const-string/jumbo v4, " in key not recognised"

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v2
.end method

.method public generatePublic(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 4
    .param p1, "keyInfo"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    move-result-object v0

    #@8
    .line 162
    .local v0, "algOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->isRsaOid(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 164
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;

    #@10
    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    #@13
    return-object v1

    #@14
    .line 168
    :cond_0
    new-instance v1, Ljava/io/IOException;

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "algorithm identifier "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    const-string/jumbo v3, " in key not recognised"

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1
.end method
