.class Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;
.super Ljava/security/cert/X509CertSelector;
.source "PKIXCertStoreSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectorClone"
.end annotation


# instance fields
.field private final selector:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;)V
    .locals 5
    .param p1, "selector"    # Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/security/cert/X509CertSelector;-><init>()V

    #@3
    .line 79
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->selector:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@5
    .line 81
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;->-get0(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;)Ljava/security/cert/CertSelector;

    #@8
    move-result-object v2

    #@9
    instance-of v2, v2, Ljava/security/cert/X509CertSelector;

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 83
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;->-get0(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;)Ljava/security/cert/CertSelector;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/security/cert/X509CertSelector;

    #@13
    .line 85
    .local v0, "baseSelector":Ljava/security/cert/X509CertSelector;
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getAuthorityKeyIdentifier()[B

    #@16
    move-result-object v2

    #@17
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CertSelector;->setAuthorityKeyIdentifier([B)V

    #@1a
    .line 86
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getBasicConstraints()I

    #@1d
    move-result v2

    #@1e
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CertSelector;->setBasicConstraints(I)V

    #@21
    .line 87
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    #@28
    .line 88
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getCertificateValid()Ljava/util/Date;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CertSelector;->setCertificateValid(Ljava/util/Date;)V

    #@2f
    .line 89
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getKeyUsage()[Z

    #@32
    move-result-object v2

    #@33
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CertSelector;->setKeyUsage([Z)V

    #@36
    .line 90
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getMatchAllSubjectAltNames()Z

    #@39
    move-result v2

    #@3a
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CertSelector;->setMatchAllSubjectAltNames(Z)V

    #@3d
    .line 91
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getPrivateKeyValid()Ljava/util/Date;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CertSelector;->setPrivateKeyValid(Ljava/util/Date;)V

    #@44
    .line 92
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getSerialNumber()Ljava/math/BigInteger;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    #@4b
    .line 93
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getSubjectKeyIdentifier()[B

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V

    #@52
    .line 94
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getSubjectPublicKey()Ljava/security/PublicKey;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CertSelector;->setSubjectPublicKey(Ljava/security/PublicKey;)V

    #@59
    .line 98
    :try_start_0
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getExtendedKeyUsage()Ljava/util/Set;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CertSelector;->setExtendedKeyUsage(Ljava/util/Set;)V

    #@60
    .line 99
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getIssuerAsBytes()[B

    #@63
    move-result-object v2

    #@64
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CertSelector;->setIssuer([B)V

    #@67
    .line 100
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getNameConstraints()[B

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CertSelector;->setNameConstraints([B)V

    #@6e
    .line 101
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getPathToNames()Ljava/util/Collection;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CertSelector;->setPathToNames(Ljava/util/Collection;)V

    #@75
    .line 102
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getPolicy()Ljava/util/Set;

    #@78
    move-result-object v2

    #@79
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CertSelector;->setPolicy(Ljava/util/Set;)V

    #@7c
    .line 103
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getSubjectAsBytes()[B

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CertSelector;->setSubject([B)V

    #@83
    .line 104
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getSubjectAlternativeNames()Ljava/util/Collection;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CertSelector;->setSubjectAlternativeNames(Ljava/util/Collection;)V

    #@8a
    .line 105
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getSubjectPublicKeyAlgID()Ljava/lang/String;

    #@8d
    move-result-object v2

    #@8e
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CertSelector;->setSubjectPublicKeyAlgID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@91
    .line 77
    .end local v0    # "baseSelector":Ljava/security/cert/X509CertSelector;
    :cond_0
    return-void

    #@92
    .line 108
    .restart local v0    # "baseSelector":Ljava/security/cert/X509CertSelector;
    :catch_0
    move-exception v1

    #@93
    .line 109
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    #@95
    new-instance v3, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v4, "base selector invalid: "

    #@9d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v3

    #@a1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@a4
    move-result-object v4

    #@a5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v3

    #@a9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v3

    #@ad
    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b0
    throw v2
.end method


# virtual methods
.method public match(Ljava/security/cert/Certificate;)Z
    .locals 1
    .param p1, "certificate"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->selector:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@2
    if-nez v0, :cond_1

    #@4
    if-eqz p1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0

    #@a
    :cond_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->selector:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@c
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;->match(Ljava/security/cert/Certificate;)Z

    #@f
    move-result v0

    #@10
    goto :goto_0
.end method
