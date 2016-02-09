.class public Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
.super Ljava/security/cert/X509CertSelector;
.source "X509CertStoreSelector.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/Selector;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Ljava/security/cert/X509CertSelector;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance(Ljava/security/cert/X509CertSelector;)Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .locals 5
    .param p0, "selector"    # Ljava/security/cert/X509CertSelector;

    #@0
    .prologue
    .line 55
    if-nez p0, :cond_0

    #@2
    .line 57
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "cannot create from null selector"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 59
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    #@d
    invoke-direct {v0}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    #@10
    .line 60
    .local v0, "cs":Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getAuthorityKeyIdentifier()[B

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setAuthorityKeyIdentifier([B)V

    #@17
    .line 61
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getBasicConstraints()I

    #@1a
    move-result v2

    #@1b
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setBasicConstraints(I)V

    #@1e
    .line 62
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    #@25
    .line 63
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getCertificateValid()Ljava/util/Date;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setCertificateValid(Ljava/util/Date;)V

    #@2c
    .line 64
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getMatchAllSubjectAltNames()Z

    #@2f
    move-result v2

    #@30
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setMatchAllSubjectAltNames(Z)V

    #@33
    .line 67
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getPathToNames()Ljava/util/Collection;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setPathToNames(Ljava/util/Collection;)V

    #@3a
    .line 68
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getExtendedKeyUsage()Ljava/util/Set;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setExtendedKeyUsage(Ljava/util/Set;)V

    #@41
    .line 69
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getNameConstraints()[B

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setNameConstraints([B)V

    #@48
    .line 70
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getPolicy()Ljava/util/Set;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setPolicy(Ljava/util/Set;)V

    #@4f
    .line 71
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectPublicKeyAlgID()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setSubjectPublicKeyAlgID(Ljava/lang/String;)V

    #@56
    .line 72
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectAlternativeNames()Ljava/util/Collection;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setSubjectAlternativeNames(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5d
    .line 78
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setIssuer(Ljavax/security/auth/x500/X500Principal;)V

    #@64
    .line 79
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getKeyUsage()[Z

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setKeyUsage([Z)V

    #@6b
    .line 80
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getPrivateKeyValid()Ljava/util/Date;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setPrivateKeyValid(Ljava/util/Date;)V

    #@72
    .line 81
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSerialNumber()Ljava/math/BigInteger;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    #@79
    .line 82
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubject()Ljavax/security/auth/x500/X500Principal;

    #@7c
    move-result-object v2

    #@7d
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    #@80
    .line 83
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectKeyIdentifier()[B

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setSubjectKeyIdentifier([B)V

    #@87
    .line 84
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectPublicKey()Ljava/security/PublicKey;

    #@8a
    move-result-object v2

    #@8b
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setSubjectPublicKey(Ljava/security/PublicKey;)V

    #@8e
    .line 85
    return-object v0

    #@8f
    .line 75
    :catch_0
    move-exception v1

    #@90
    .line 76
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@92
    new-instance v3, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v4, "error in passed in selector: "

    #@9a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v3

    #@9e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v3

    #@a2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v3

    #@a6
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a9
    throw v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 41
    invoke-super {p0}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    #@6
    .line 43
    .local v0, "selector":Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 24
    instance-of v1, p1, Ljava/security/cert/X509Certificate;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 26
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 29
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@9
    .line 31
    .local v0, "other":Ljava/security/cert/X509Certificate;
    invoke-super {p0, v0}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    #@c
    move-result v1

    #@d
    return v1
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->match(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method
