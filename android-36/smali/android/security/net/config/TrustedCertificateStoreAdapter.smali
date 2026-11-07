.class public Landroid/security/net/config/TrustedCertificateStoreAdapter;
.super Lcom/android/org/conscrypt/TrustedCertificateStore;
.source "TrustedCertificateStoreAdapter.java"


# instance fields
.field private final greylist-max-o mConfig:Landroid/security/net/config/NetworkSecurityConfig;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/security/net/config/NetworkSecurityConfig;)V
    .registers 2
    .param p1, "config"    # Landroid/security/net/config/NetworkSecurityConfig;

    .line 31
    invoke-direct {p0}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 32
    iput-object p1, p0, Landroid/security/net/config/TrustedCertificateStoreAdapter;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    .line 33
    return-void
.end method


# virtual methods
.method public greylist-max-o test-api aliases()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public greylist-max-o test-api allSystemAliases()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public greylist-max-o test-api containsAlias(Ljava/lang/String;)Z
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public greylist-max-o test-api findAllIssuers(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 3
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

    .line 46
    iget-object v0, p0, Landroid/security/net/config/TrustedCertificateStoreAdapter;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v0, p1}, Landroid/security/net/config/NetworkSecurityConfig;->findAllCertificatesByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o test-api findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 37
    iget-object v0, p0, Landroid/security/net/config/TrustedCertificateStoreAdapter;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v0, p1}, Landroid/security/net/config/NetworkSecurityConfig;->findTrustAnchorByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    move-result-object v0

    .line 38
    .local v0, "anchor":Landroid/security/net/config/TrustAnchor;
    if-nez v0, :cond_a

    .line 39
    const/4 v1, 0x0

    return-object v1

    .line 41
    :cond_a
    iget-object v1, v0, Landroid/security/net/config/TrustAnchor;->certificate:Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method public greylist-max-o test-api getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public greylist-max-o test-api getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "includeDeletedSystem"    # Z

    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public greylist-max-o test-api getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 3
    .param p1, "c"    # Ljava/security/cert/Certificate;

    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public greylist-max-o test-api getCertificateAlias(Ljava/security/cert/Certificate;Z)Ljava/lang/String;
    .registers 4
    .param p1, "c"    # Ljava/security/cert/Certificate;
    .param p2, "includeDeletedSystem"    # Z

    .line 119
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public greylist-max-o test-api getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;
    .registers 4
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "x"    # Ljava/security/cert/X509Certificate;

    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public greylist-max-o test-api getCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public greylist-max-o test-api getTrustAnchor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 51
    iget-object v0, p0, Landroid/security/net/config/TrustedCertificateStoreAdapter;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v0, p1}, Landroid/security/net/config/NetworkSecurityConfig;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    move-result-object v0

    .line 52
    .local v0, "anchor":Landroid/security/net/config/TrustAnchor;
    if-nez v0, :cond_a

    .line 53
    const/4 v1, 0x0

    return-object v1

    .line 55
    :cond_a
    iget-object v1, v0, Landroid/security/net/config/TrustAnchor;->certificate:Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method public greylist-max-o test-api isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z
    .registers 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 61
    iget-object v0, p0, Landroid/security/net/config/TrustedCertificateStoreAdapter;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v0, p1}, Landroid/security/net/config/NetworkSecurityConfig;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    move-result-object v0

    .line 62
    .local v0, "anchor":Landroid/security/net/config/TrustAnchor;
    if-nez v0, :cond_a

    .line 63
    const/4 v1, 0x0

    return v1

    .line 65
    :cond_a
    iget-boolean v1, v0, Landroid/security/net/config/TrustAnchor;->overridesPins:Z

    return v1
.end method

.method public greylist-max-o test-api userAliases()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
