.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;
.super Ljava/security/KeyFactorySpi;
.source "BaseKeyFactorySpi.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 15
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
    .line 23
    instance-of v1, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 27
    :try_start_0
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@6
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    #@9
    move-result-object v1

    #@a
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->generatePrivate(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 30
    :catch_0
    move-exception v0

    #@14
    .line 31
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    #@16
    const-string/jumbo v2, "encoded key spec not recognised"

    #@19
    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 36
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_0
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    #@1f
    const-string/jumbo v2, "key spec not recognised"

    #@22
    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1
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
    .line 44
    instance-of v1, p1, Ljava/security/spec/X509EncodedKeySpec;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 48
    :try_start_0
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    #@6
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    #@9
    move-result-object v1

    #@a
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->generatePublic(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 51
    :catch_0
    move-exception v0

    #@14
    .line 52
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    #@16
    const-string/jumbo v2, "encoded key spec not recognised"

    #@19
    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_0
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    #@1f
    const-string/jumbo v2, "key spec not recognised"

    #@22
    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 3
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "spec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 66
    const-class v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@2
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    const-string/jumbo v1, "PKCS#8"

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 68
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@17
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@1e
    return-object v0

    #@1f
    .line 70
    :cond_0
    const-class v0, Ljava/security/spec/X509EncodedKeySpec;

    #@21
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_1

    #@27
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    const-string/jumbo v1, "X.509"

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_1

    #@34
    .line 72
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    #@36
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@39
    move-result-object v1

    #@3a
    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@3d
    return-object v0

    #@3e
    .line 75
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@40
    new-instance v1, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v2, "not implemented yet "

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    const-string/jumbo v2, " "

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@62
    throw v0
.end method
