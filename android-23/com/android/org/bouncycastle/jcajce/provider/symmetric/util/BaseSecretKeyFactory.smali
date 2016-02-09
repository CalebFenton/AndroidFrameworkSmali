.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "BaseSecretKeyFactory.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field protected algName:Ljava/lang/String;

.field protected algOid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0
    .param p1, "algName"    # Ljava/lang/String;
    .param p2, "algOid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    #@3
    .line 25
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algName:Ljava/lang/String;

    #@5
    .line 26
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algOid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    .line 23
    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 2
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 33
    instance-of v0, p1, Ljavax/crypto/spec/SecretKeySpec;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 35
    check-cast p1, Ljavax/crypto/SecretKey;

    #@6
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    return-object p1

    #@7
    .line 38
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@9
    const-string/jumbo v1, "Invalid KeySpec"

    #@c
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
.end method

.method protected engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 7
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .param p2, "keySpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 46
    if-nez p2, :cond_0

    #@2
    .line 48
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    #@4
    const-string/jumbo v5, "keySpec parameter is null"

    #@7
    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 50
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 52
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    #@f
    const-string/jumbo v5, "key parameter is null"

    #@12
    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@15
    throw v4

    #@16
    .line 55
    :cond_1
    const-class v4, Ljavax/crypto/spec/SecretKeySpec;

    #@18
    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_2

    #@1e
    .line 57
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    #@20
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@23
    move-result-object v5

    #@24
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algName:Ljava/lang/String;

    #@26
    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@29
    return-object v4

    #@2a
    .line 62
    :cond_2
    const/4 v4, 0x1

    #@2b
    :try_start_0
    new-array v3, v4, [Ljava/lang/Class;

    #@2d
    const-class v4, [B

    #@2f
    const/4 v5, 0x0

    #@30
    aput-object v4, v3, v5

    #@32
    .line 64
    .local v3, "parameters":[Ljava/lang/Class;
    invoke-virtual {p2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@35
    move-result-object v0

    #@36
    .line 65
    .local v0, "c":Ljava/lang/reflect/Constructor;
    const/4 v4, 0x1

    #@37
    new-array v2, v4, [Ljava/lang/Object;

    #@39
    .line 67
    .local v2, "p":[Ljava/lang/Object;
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@3c
    move-result-object v4

    #@3d
    const/4 v5, 0x0

    #@3e
    aput-object v4, v2, v5

    #@40
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    move-result-object v4

    #@44
    check-cast v4, Ljava/security/spec/KeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    return-object v4

    #@47
    .line 72
    .end local v0    # "c":Ljava/lang/reflect/Constructor;
    .end local v2    # "p":[Ljava/lang/Object;
    .end local v3    # "parameters":[Ljava/lang/Class;
    :catch_0
    move-exception v1

    #@48
    .line 73
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    #@4a
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@51
    throw v4
.end method

.method protected engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 3
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 81
    if-nez p1, :cond_0

    #@2
    .line 83
    new-instance v0, Ljava/security/InvalidKeyException;

    #@4
    const-string/jumbo v1, "key parameter is null"

    #@7
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 86
    :cond_0
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algName:Ljava/lang/String;

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_1

    #@17
    .line 88
    new-instance v0, Ljava/security/InvalidKeyException;

    #@19
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v2, "Key not of type "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algName:Ljava/lang/String;

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    const-string/jumbo v2, "."

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    .line 91
    :cond_1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    #@3c
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@3f
    move-result-object v1

    #@40
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algName:Ljava/lang/String;

    #@42
    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@45
    return-object v0
.end method
