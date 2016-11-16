.class Landroid/security/net/config/KeyStoreCertificateSource;
.super Ljava/lang/Object;
.source "KeyStoreCertificateSource.java"

# interfaces
.implements Landroid/security/net/config/CertificateSource;


# instance fields
.field private mCertificates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

.field private final mKeyStore:Ljava/security/KeyStore;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 1
    .param p1, "ks"    # Ljava/security/KeyStore;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mLock:Ljava/lang/Object;

    #@a
    .line 41
    iput-object p1, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mKeyStore:Ljava/security/KeyStore;

    #@c
    .line 40
    return-void
.end method

.method private ensureInitialized()V
    .locals 9

    #@0
    .prologue
    .line 51
    iget-object v7, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 52
    :try_start_0
    iget-object v6, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mCertificates:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v6, :cond_0

    #@7
    monitor-exit v7

    #@8
    .line 53
    return-void

    #@9
    .line 57
    :cond_0
    :try_start_1
    new-instance v5, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@b
    invoke-direct {v5}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>()V

    #@e
    .line 58
    .local v5, "localIndex":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    new-instance v2, Landroid/util/ArraySet;

    #@10
    iget-object v6, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mKeyStore:Ljava/security/KeyStore;

    #@12
    invoke-virtual {v6}, Ljava/security/KeyStore;->size()I

    #@15
    move-result v6

    #@16
    invoke-direct {v2, v6}, Landroid/util/ArraySet;-><init>(I)V

    #@19
    .line 59
    .local v2, "certificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    iget-object v6, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mKeyStore:Ljava/security/KeyStore;

    #@1b
    invoke-virtual {v6}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    #@1e
    move-result-object v4

    #@1f
    .local v4, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@22
    move-result v6

    #@23
    if-eqz v6, :cond_2

    #@25
    .line 60
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Ljava/lang/String;

    #@2b
    .line 61
    .local v0, "alias":Ljava/lang/String;
    iget-object v6, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mKeyStore:Ljava/security/KeyStore;

    #@2d
    invoke-virtual {v6, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    #@30
    move-result-object v1

    #@31
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@33
    .line 62
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_1

    #@35
    .line 63
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@38
    .line 64
    invoke-virtual {v5, v1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 69
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "certificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .end local v4    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v5    # "localIndex":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    :catch_0
    move-exception v3

    #@3d
    .line 70
    .local v3, "e":Ljava/security/KeyStoreException;
    :try_start_2
    new-instance v6, Ljava/lang/RuntimeException;

    #@3f
    const-string/jumbo v8, "Failed to load certificates from KeyStore"

    #@42
    invoke-direct {v6, v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@45
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    .line 51
    .end local v3    # "e":Ljava/security/KeyStoreException;
    :catchall_0
    move-exception v6

    #@47
    monitor-exit v7

    #@48
    throw v6

    #@49
    .line 67
    .restart local v2    # "certificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v4    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v5    # "localIndex":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    :cond_2
    :try_start_3
    iput-object v5, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@4b
    .line 68
    iput-object v2, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mCertificates:Ljava/util/Set;
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4d
    monitor-exit v7

    #@4e
    .line 50
    return-void
.end method


# virtual methods
.method public findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 5
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
    .line 97
    invoke-direct {p0}, Landroid/security/net/config/KeyStoreCertificateSource;->ensureInitialized()V

    #@3
    .line 98
    iget-object v4, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@5
    invoke-virtual {v4, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    #@8
    move-result-object v2

    #@9
    .line 99
    .local v2, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 100
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@12
    move-result-object v4

    #@13
    return-object v4

    #@14
    .line 102
    :cond_0
    new-instance v3, Landroid/util/ArraySet;

    #@16
    invoke-interface {v2}, Ljava/util/Set;->size()I

    #@19
    move-result v4

    #@1a
    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(I)V

    #@1d
    .line 103
    .local v3, "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v1

    #@21
    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_1

    #@27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Ljava/security/cert/TrustAnchor;

    #@2d
    .line 104
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@30
    move-result-object v4

    #@31
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@34
    goto :goto_0

    #@35
    .line 106
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    :cond_1
    return-object v3
.end method

.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 87
    invoke-direct {p0}, Landroid/security/net/config/KeyStoreCertificateSource;->ensureInitialized()V

    #@4
    .line 88
    iget-object v1, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@6
    invoke-virtual {v1, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    #@9
    move-result-object v0

    #@a
    .line 89
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    if-nez v0, :cond_0

    #@c
    .line 90
    return-object v2

    #@d
    .line 92
    :cond_0
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method public findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 77
    invoke-direct {p0}, Landroid/security/net/config/KeyStoreCertificateSource;->ensureInitialized()V

    #@4
    .line 78
    iget-object v1, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    #@6
    invoke-virtual {v1, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    #@9
    move-result-object v0

    #@a
    .line 79
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    if-nez v0, :cond_0

    #@c
    .line 80
    return-object v2

    #@d
    .line 82
    :cond_0
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method public getCertificates()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Landroid/security/net/config/KeyStoreCertificateSource;->ensureInitialized()V

    #@3
    .line 47
    iget-object v0, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mCertificates:Ljava/util/Set;

    #@5
    return-object v0
.end method

.method public handleTrustStorageUpdate()V
    .locals 0

    #@0
    .prologue
    .line 110
    return-void
.end method
