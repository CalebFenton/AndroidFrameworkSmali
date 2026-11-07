.class public Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;
.super Ljava/security/cert/X509CertSelector;
.source "X509CertStoreSelector.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Selector;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/security/cert/X509CertSelector;-><init>()V

    return-void
.end method

.method public static blacklist getInstance(Ljava/security/cert/X509CertSelector;)Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;
    .registers 6
    .param p0, "selector"    # Ljava/security/cert/X509CertSelector;

    .line 57
    if-eqz p0, :cond_a1

    .line 61
    new-instance v0, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    .line 62
    .local v0, "cs":Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getAuthorityKeyIdentifier()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;->setAuthorityKeyIdentifier([B)V

    .line 63
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getBasicConstraints()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;->setBasicConstraints(I)V

    .line 64
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 65
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getCertificateValid()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;->setCertificateValid(Ljava/util/Date;)V

    .line 66
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getMatchAllSubjectAltNames()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;->setMatchAllSubjectAltNames(Z)V

    .line 69
    :try_start_2a
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getPathToNames()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;->setPathToNames(Ljava/util/Collection;)V

    .line 70
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getExtendedKeyUsage()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;->setExtendedKeyUsage(Ljava/util/Set;)V

    .line 71
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getNameConstraints()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;->setNameConstraints([B)V

    .line 72
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getPolicy()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;->setPolicy(Ljava/util/Set;)V

    .line 73
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectPublicKeyAlgID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;->setSubjectPublicKeyAlgID(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;->setSubjectAlternativeNames(Ljava/util/Collection;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_54} :catch_87

    .line 79
    nop

    .line 80
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;->setIssuer(Ljavax/security/auth/x500/X500Principal;)V

    .line 81
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getKeyUsage()[Z

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;->setKeyUsage([Z)V

    .line 82
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getPrivateKeyValid()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;->setPrivateKeyValid(Ljava/util/Date;)V

    .line 83
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 84
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    .line 85
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectKeyIdentifier()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;->setSubjectKeyIdentifier([B)V

    .line 86
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;->setSubjectPublicKey(Ljava/security/PublicKey;)V

    .line 87
    return-object v0

    .line 76
    :catch_87
    move-exception v1

    .line 78
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error in passed in selector: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    .end local v0    # "cs":Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_a1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot create from null selector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 43
    invoke-super {p0}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;

    .line 45
    .local v0, "selector":Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;
    return-object v0
.end method

.method public blacklist match(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 26
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_6

    .line 28
    const/4 v0, 0x0

    return v0

    .line 31
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 33
    .local v0, "other":Ljava/security/cert/X509Certificate;
    invoke-super {p0, v0}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api match(Ljava/security/cert/Certificate;)Z
    .registers 3
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
