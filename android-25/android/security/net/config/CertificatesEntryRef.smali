.class public final Landroid/security/net/config/CertificatesEntryRef;
.super Ljava/lang/Object;
.source "CertificatesEntryRef.java"


# instance fields
.field private final mOverridesPins:Z

.field private final mSource:Landroid/security/net/config/CertificateSource;


# direct methods
.method public constructor <init>(Landroid/security/net/config/CertificateSource;Z)V
    .locals 0
    .param p1, "source"    # Landroid/security/net/config/CertificateSource;
    .param p2, "overridesPins"    # Z

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    iput-object p1, p0, Landroid/security/net/config/CertificatesEntryRef;->mSource:Landroid/security/net/config/CertificateSource;

    #@5
    .line 30
    iput-boolean p2, p0, Landroid/security/net/config/CertificatesEntryRef;->mOverridesPins:Z

    #@7
    .line 28
    return-void
.end method


# virtual methods
.method public findAllCertificatesByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Landroid/security/net/config/CertificatesEntryRef;->mSource:Landroid/security/net/config/CertificateSource;

    #@2
    invoke-interface {v0, p1}, Landroid/security/net/config/CertificateSource;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 56
    iget-object v1, p0, Landroid/security/net/config/CertificatesEntryRef;->mSource:Landroid/security/net/config/CertificateSource;

    #@3
    invoke-interface {v1, p1}, Landroid/security/net/config/CertificateSource;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    #@6
    move-result-object v0

    #@7
    .line 57
    .local v0, "foundCert":Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_0

    #@9
    .line 58
    return-object v2

    #@a
    .line 61
    :cond_0
    new-instance v1, Landroid/security/net/config/TrustAnchor;

    #@c
    iget-boolean v2, p0, Landroid/security/net/config/CertificatesEntryRef;->mOverridesPins:Z

    #@e
    invoke-direct {v1, v0, v2}, Landroid/security/net/config/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;Z)V

    #@11
    return-object v1
.end method

.method public findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 47
    iget-object v1, p0, Landroid/security/net/config/CertificatesEntryRef;->mSource:Landroid/security/net/config/CertificateSource;

    #@3
    invoke-interface {v1, p1}, Landroid/security/net/config/CertificateSource;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    #@6
    move-result-object v0

    #@7
    .line 48
    .local v0, "foundCert":Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_0

    #@9
    .line 49
    return-object v2

    #@a
    .line 52
    :cond_0
    new-instance v1, Landroid/security/net/config/TrustAnchor;

    #@c
    iget-boolean v2, p0, Landroid/security/net/config/CertificatesEntryRef;->mOverridesPins:Z

    #@e
    invoke-direct {v1, v0, v2}, Landroid/security/net/config/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;Z)V

    #@11
    return-object v1
.end method

.method public getTrustAnchors()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/security/net/config/TrustAnchor;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 39
    new-instance v0, Landroid/util/ArraySet;

    #@2
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@5
    .line 40
    .local v0, "anchors":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/TrustAnchor;>;"
    iget-object v3, p0, Landroid/security/net/config/CertificatesEntryRef;->mSource:Landroid/security/net/config/CertificateSource;

    #@7
    invoke-interface {v3}, Landroid/security/net/config/CertificateSource;->getCertificates()Ljava/util/Set;

    #@a
    move-result-object v3

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    .local v2, "cert$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@1b
    .line 41
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    new-instance v3, Landroid/security/net/config/TrustAnchor;

    #@1d
    iget-boolean v4, p0, Landroid/security/net/config/CertificatesEntryRef;->mOverridesPins:Z

    #@1f
    invoke-direct {v3, v1, v4}, Landroid/security/net/config/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;Z)V

    #@22
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@25
    goto :goto_0

    #@26
    .line 43
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    return-object v0
.end method

.method public handleTrustStorageUpdate()V
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Landroid/security/net/config/CertificatesEntryRef;->mSource:Landroid/security/net/config/CertificateSource;

    #@2
    invoke-interface {v0}, Landroid/security/net/config/CertificateSource;->handleTrustStorageUpdate()V

    #@5
    .line 68
    return-void
.end method

.method overridesPins()Z
    .locals 1

    #@0
    .prologue
    .line 34
    iget-boolean v0, p0, Landroid/security/net/config/CertificatesEntryRef;->mOverridesPins:Z

    #@2
    return v0
.end method
