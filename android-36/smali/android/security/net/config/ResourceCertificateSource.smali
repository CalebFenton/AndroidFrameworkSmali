.class public Landroid/security/net/config/ResourceCertificateSource;
.super Ljava/lang/Object;
.source "ResourceCertificateSource.java"

# interfaces
.implements Landroid/security/net/config/CertificateSource;


# instance fields
.field private greylist-max-o mCertificates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mResourceId:I


# direct methods
.method public constructor greylist-max-o <init>(ILandroid/content/Context;)V
    .registers 4
    .param p1, "resourceId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/ResourceCertificateSource;->mLock:Ljava/lang/Object;

    .line 46
    iput p1, p0, Landroid/security/net/config/ResourceCertificateSource;->mResourceId:I

    .line 47
    iput-object p2, p0, Landroid/security/net/config/ResourceCertificateSource;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private greylist-max-o ensureInitialized()V
    .registers 9

    .line 51
    iget-object v0, p0, Landroid/security/net/config/ResourceCertificateSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_3
    iget-object v1, p0, Landroid/security/net/config/ResourceCertificateSource;->mCertificates:Ljava/util/Set;

    if-eqz v1, :cond_9

    .line 53
    monitor-exit v0

    return-void

    .line 55
    :cond_9
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_79

    .line 57
    .local v1, "certificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    const/4 v2, 0x0

    .line 59
    .local v2, "in":Ljava/io/InputStream;
    :try_start_f
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 60
    .local v3, "factory":Ljava/security/cert/CertificateFactory;
    iget-object v4, p0, Landroid/security/net/config/ResourceCertificateSource;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Landroid/security/net/config/ResourceCertificateSource;->mResourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    move-object v2, v4

    .line 61
    invoke-virtual {v3, v2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v4
    :try_end_26
    .catch Ljava/security/cert/CertificateException; {:try_start_f .. :try_end_26} :catch_58
    .catchall {:try_start_f .. :try_end_26} :catchall_56

    .line 66
    .end local v3    # "factory":Ljava/security/cert/CertificateFactory;
    .local v4, "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    :try_start_26
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 67
    nop

    .line 68
    new-instance v3, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-direct {v3}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>()V

    .line 69
    .local v3, "indexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_33
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/Certificate;

    .line 70
    .local v6, "cert":Ljava/security/cert/Certificate;
    move-object v7, v6

    check-cast v7, Ljava/security/cert/X509Certificate;

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    move-object v7, v6

    check-cast v7, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v7}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    .line 72
    nop

    .end local v6    # "cert":Ljava/security/cert/Certificate;
    goto :goto_33

    .line 73
    :cond_4d
    iput-object v1, p0, Landroid/security/net/config/ResourceCertificateSource;->mCertificates:Ljava/util/Set;

    .line 74
    iput-object v3, p0, Landroid/security/net/config/ResourceCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    .line 75
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/security/net/config/ResourceCertificateSource;->mContext:Landroid/content/Context;

    .line 76
    .end local v1    # "certificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "indexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    .end local v4    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_26 .. :try_end_55} :catchall_79

    .line 77
    return-void

    .line 66
    .restart local v1    # "certificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v2    # "in":Ljava/io/InputStream;
    :catchall_56
    move-exception v3

    goto :goto_74

    .line 62
    :catch_58
    move-exception v3

    .line 63
    .local v3, "e":Ljava/security/cert/CertificateException;
    :try_start_59
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load trust anchors from id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/security/net/config/ResourceCertificateSource;->mResourceId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "certificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .end local v2    # "in":Ljava/io/InputStream;
    .end local p0    # "this":Landroid/security/net/config/ResourceCertificateSource;
    throw v4
    :try_end_74
    .catchall {:try_start_59 .. :try_end_74} :catchall_56

    .line 66
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    .restart local v1    # "certificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Landroid/security/net/config/ResourceCertificateSource;
    :goto_74
    :try_start_74
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 67
    nop

    .end local p0    # "this":Landroid/security/net/config/ResourceCertificateSource;
    throw v3

    .line 76
    .end local v1    # "certificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Landroid/security/net/config/ResourceCertificateSource;
    :catchall_79
    move-exception v1

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_79

    throw v1
.end method


# virtual methods
.method public greylist-max-o findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
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

    .line 107
    invoke-direct {p0}, Landroid/security/net/config/ResourceCertificateSource;->ensureInitialized()V

    .line 108
    iget-object v0, p0, Landroid/security/net/config/ResourceCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    .line 109
    .local v0, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 110
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 112
    :cond_14
    new-instance v1, Landroid/util/ArraySet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 113
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

    .line 114
    .local v3, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v3    # "anchor":Ljava/security/cert/TrustAnchor;
    goto :goto_21

    .line 116
    :cond_35
    return-object v1
.end method

.method public greylist-max-o findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 97
    invoke-direct {p0}, Landroid/security/net/config/ResourceCertificateSource;->ensureInitialized()V

    .line 98
    iget-object v0, p0, Landroid/security/net/config/ResourceCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    .line 99
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    if-nez v0, :cond_d

    .line 100
    const/4 v1, 0x0

    return-object v1

    .line 102
    :cond_d
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 87
    invoke-direct {p0}, Landroid/security/net/config/ResourceCertificateSource;->ensureInitialized()V

    .line 88
    iget-object v0, p0, Landroid/security/net/config/ResourceCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

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

.method public greylist-max-o getCertificates()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Landroid/security/net/config/ResourceCertificateSource;->ensureInitialized()V

    .line 82
    iget-object v0, p0, Landroid/security/net/config/ResourceCertificateSource;->mCertificates:Ljava/util/Set;

    return-object v0
.end method

.method public greylist-max-o handleTrustStorageUpdate()V
    .registers 1

    .line 122
    return-void
.end method
