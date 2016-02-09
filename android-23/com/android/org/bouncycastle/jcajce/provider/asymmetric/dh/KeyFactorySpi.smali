.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyFactorySpi;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;
.source "KeyFactorySpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 1
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    instance-of v0, p1, Ljavax/crypto/spec/DHPrivateKeySpec;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 73
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;

    #@6
    check-cast p1, Ljavax/crypto/spec/DHPrivateKeySpec;

    #@8
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;-><init>(Ljavax/crypto/spec/DHPrivateKeySpec;)V

    #@b
    return-object v0

    #@c
    .line 76
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    #@f
    move-result-object v0

    #@10
    return-object v0
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
    .line 83
    instance-of v0, p1, Ljavax/crypto/spec/DHPublicKeySpec;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 85
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    #@6
    check-cast p1, Ljavax/crypto/spec/DHPublicKeySpec;

    #@8
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;-><init>(Ljavax/crypto/spec/DHPublicKeySpec;)V

    #@b
    return-object v0

    #@c
    .line 88
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 6
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "spec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 35
    const-class v2, Ljavax/crypto/spec/DHPrivateKeySpec;

    #@2
    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    instance-of v2, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    #@a
    if-eqz v2, :cond_0

    #@c
    move-object v0, p1

    #@d
    .line 37
    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    #@f
    .line 39
    .local v0, "k":Ljavax/crypto/interfaces/DHPrivateKey;
    new-instance v2, Ljavax/crypto/spec/DHPrivateKeySpec;

    #@11
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    #@14
    move-result-object v3

    #@15
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@1c
    move-result-object v4

    #@1d
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@24
    move-result-object v5

    #@25
    invoke-direct {v2, v3, v4, v5}, Ljavax/crypto/spec/DHPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@28
    return-object v2

    #@29
    .line 41
    .end local v0    # "k":Ljavax/crypto/interfaces/DHPrivateKey;
    :cond_0
    const-class v2, Ljavax/crypto/spec/DHPublicKeySpec;

    #@2b
    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_1

    #@31
    instance-of v2, p1, Ljavax/crypto/interfaces/DHPublicKey;

    #@33
    if-eqz v2, :cond_1

    #@35
    move-object v1, p1

    #@36
    .line 43
    check-cast v1, Ljavax/crypto/interfaces/DHPublicKey;

    #@38
    .line 45
    .local v1, "k":Ljavax/crypto/interfaces/DHPublicKey;
    new-instance v2, Ljavax/crypto/spec/DHPublicKeySpec;

    #@3a
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    #@3d
    move-result-object v3

    #@3e
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@45
    move-result-object v4

    #@46
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@4d
    move-result-object v5

    #@4e
    invoke-direct {v2, v3, v4, v5}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@51
    return-object v2

    #@52
    .line 48
    .end local v1    # "k":Ljavax/crypto/interfaces/DHPublicKey;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    #@55
    move-result-object v2

    #@56
    return-object v2
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
    .line 55
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 57
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    #@6
    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    #@8
    .end local p1    # "key":Ljava/security/Key;
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;-><init>(Ljavax/crypto/interfaces/DHPublicKey;)V

    #@b
    return-object v0

    #@c
    .line 59
    .restart local p1    # "key":Ljava/security/Key;
    :cond_0
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 61
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;

    #@12
    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    #@14
    .end local p1    # "key":Ljava/security/Key;
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;-><init>(Ljavax/crypto/interfaces/DHPrivateKey;)V

    #@17
    return-object v0

    #@18
    .line 64
    .restart local p1    # "key":Ljava/security/Key;
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    #@1a
    const-string/jumbo v1, "key type unknown"

    #@1d
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0
.end method

.method public generatePrivate(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 4
    .param p1, "keyInfo"    # Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    move-result-object v0

    #@8
    .line 96
    .local v0, "algOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 98
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;

    #@12
    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    #@15
    return-object v1

    #@16
    .line 100
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@18
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 102
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;

    #@20
    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    #@23
    return-object v1

    #@24
    .line 106
    :cond_1
    new-instance v1, Ljava/io/IOException;

    #@26
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v3, "algorithm identifier "

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    const-string/jumbo v3, " in key not recognised"

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@44
    throw v1
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
    .line 113
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    move-result-object v0

    #@8
    .line 115
    .local v0, "algOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 117
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    #@12
    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    #@15
    return-object v1

    #@16
    .line 119
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@18
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 121
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    #@20
    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;-><init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    #@23
    return-object v1

    #@24
    .line 125
    :cond_1
    new-instance v1, Ljava/io/IOException;

    #@26
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v3, "algorithm identifier "

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    const-string/jumbo v3, " in key not recognised"

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@44
    throw v1
.end method
