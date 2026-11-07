.class Landroid/security/net/config/KeyStoreCertificateSource;
.super Ljava/lang/Object;
.source "KeyStoreCertificateSource.java"

# interfaces
.implements Landroid/security/net/config/CertificateSource;


# instance fields
.field private blacklist mCertificates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

.field private final blacklist mKeyStore:Ljava/security/KeyStore;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Ljava/security/KeyStore;)V
    .registers 3
    .param p1, "ks"    # Ljava/security/KeyStore;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mLock:Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mKeyStore:Ljava/security/KeyStore;

    .line 42
    return-void
.end method

.method private blacklist ensureInitialized()V
    .registers 7

    .line 51
    iget-object v0, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_3
    iget-object v1, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mCertificates:Ljava/util/Set;

    if-eqz v1, :cond_9

    .line 53
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_4c

    return-void

    .line 57
    :cond_9
    :try_start_9
    new-instance v1, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-direct {v1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>()V

    .line 58
    .local v1, "localIndex":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3}, Ljava/security/KeyStore;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    .line 59
    .local v2, "certificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    iget-object v3, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_1f
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 60
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 61
    .local v4, "alias":Ljava/lang/String;
    iget-object v5, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5, v4}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 62
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v5, :cond_3b

    .line 63
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {v1, v5}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    .line 66
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    :cond_3b
    goto :goto_1f

    .line 67
    .end local v3    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_3c
    iput-object v1, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    .line 68
    iput-object v2, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mCertificates:Ljava/util/Set;
    :try_end_40
    .catch Ljava/security/KeyStoreException; {:try_start_9 .. :try_end_40} :catch_43
    .catchall {:try_start_9 .. :try_end_40} :catchall_4c

    .line 71
    .end local v1    # "localIndex":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    .end local v2    # "certificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    nop

    .line 72
    :try_start_41
    monitor-exit v0

    .line 73
    return-void

    .line 69
    :catch_43
    move-exception v1

    .line 70
    .local v1, "e":Ljava/security/KeyStoreException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to load certificates from KeyStore"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/security/net/config/KeyStoreCertificateSource;
    throw v2

    .line 72
    .end local v1    # "e":Ljava/security/KeyStoreException;
    .restart local p0    # "this":Landroid/security/net/config/KeyStoreCertificateSource;
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_4c

    throw v1
.end method


# virtual methods
.method public blacklist findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 7
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Landroid/security/net/config/KeyStoreCertificateSource;->ensureInitialized()V

    .line 98
    iget-object v0, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    .line 99
    .local v0, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 102
    :cond_14
    new-instance v1, Landroid/util/ArraySet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 103
    .local v1, "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/TrustAnchor;

    .line 104
    .local v3, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v3    # "anchor":Ljava/security/cert/TrustAnchor;
    goto :goto_21

    .line 106
    :cond_35
    return-object v1
.end method

.method public blacklist findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 87
    invoke-direct {p0}, Landroid/security/net/config/KeyStoreCertificateSource;->ensureInitialized()V

    .line 88
    iget-object v0, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    .line 89
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    if-nez v0, :cond_d

    .line 90
    const/4 v1, 0x0

    return-object v1

    .line 92
    :cond_d
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method

.method public blacklist findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 77
    invoke-direct {p0}, Landroid/security/net/config/KeyStoreCertificateSource;->ensureInitialized()V

    .line 78
    iget-object v0, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    .line 79
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    if-nez v0, :cond_d

    .line 80
    const/4 v1, 0x0

    return-object v1

    .line 82
    :cond_d
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getCertificates()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Landroid/security/net/config/KeyStoreCertificateSource;->ensureInitialized()V

    .line 47
    iget-object v0, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mCertificates:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist handleTrustStorageUpdate()V
    .registers 1

    .line 112
    return-void
.end method
