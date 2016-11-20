.class public final Landroid/security/net/config/UserCertificateSource;
.super Landroid/security/net/config/DirectoryCertificateSource;
.source "UserCertificateSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/UserCertificateSource$NoPreloadHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 33
    new-instance v0, Ljava/io/File;

    #@2
    .line 34
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@5
    move-result v1

    #@6
    invoke-static {v1}, Landroid/os/Environment;->getUserConfigDirectory(I)Ljava/io/File;

    #@9
    move-result-object v1

    #@a
    const-string/jumbo v2, "cacerts-added"

    #@d
    .line 33
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@10
    invoke-direct {p0, v0}, Landroid/security/net/config/DirectoryCertificateSource;-><init>(Ljava/io/File;)V

    #@13
    .line 32
    return-void
.end method

.method synthetic constructor <init>(Landroid/security/net/config/UserCertificateSource;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/security/net/config/UserCertificateSource;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Landroid/security/net/config/UserCertificateSource;
    .locals 1

    #@0
    .prologue
    .line 38
    invoke-static {}, Landroid/security/net/config/UserCertificateSource$NoPreloadHolder;->-get0()Landroid/security/net/config/UserCertificateSource;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method


# virtual methods
.method public bridge synthetic findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    invoke-super {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    invoke-super {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    invoke-super {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getCertificates()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Landroid/security/net/config/DirectoryCertificateSource;->getCertificates()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic handleTrustStorageUpdate()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Landroid/security/net/config/DirectoryCertificateSource;->handleTrustStorageUpdate()V

    #@3
    return-void
.end method

.method protected isCertMarkedAsRemoved(Ljava/lang/String;)Z
    .locals 1
    .param p1, "caFile"    # Ljava/lang/String;

    #@0
    .prologue
    .line 43
    const/4 v0, 0x0

    #@1
    return v0
.end method
