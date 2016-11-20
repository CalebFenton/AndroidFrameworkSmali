.class public final Landroid/security/net/config/SystemCertificateSource;
.super Landroid/security/net/config/DirectoryCertificateSource;
.source "SystemCertificateSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/SystemCertificateSource$NoPreloadHolder;
    }
.end annotation


# instance fields
.field private final mUserRemovedCaDir:Ljava/io/File;


# direct methods
.method private constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 35
    new-instance v1, Ljava/io/File;

    #@2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "ANDROID_ROOT"

    #@a
    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    const-string/jumbo v3, "/etc/security/cacerts"

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@20
    invoke-direct {p0, v1}, Landroid/security/net/config/DirectoryCertificateSource;-><init>(Ljava/io/File;)V

    #@23
    .line 36
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@26
    move-result v1

    #@27
    invoke-static {v1}, Landroid/os/Environment;->getUserConfigDirectory(I)Ljava/io/File;

    #@2a
    move-result-object v0

    #@2b
    .line 37
    .local v0, "configDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@2d
    const-string/jumbo v2, "cacerts-removed"

    #@30
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@33
    iput-object v1, p0, Landroid/security/net/config/SystemCertificateSource;->mUserRemovedCaDir:Ljava/io/File;

    #@35
    .line 34
    return-void
.end method

.method synthetic constructor <init>(Landroid/security/net/config/SystemCertificateSource;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/security/net/config/SystemCertificateSource;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Landroid/security/net/config/SystemCertificateSource;
    .locals 1

    #@0
    .prologue
    .line 41
    invoke-static {}, Landroid/security/net/config/SystemCertificateSource$NoPreloadHolder;->-get0()Landroid/security/net/config/SystemCertificateSource;

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
    .locals 2
    .param p1, "caFile"    # Ljava/lang/String;

    #@0
    .prologue
    .line 46
    new-instance v0, Ljava/io/File;

    #@2
    iget-object v1, p0, Landroid/security/net/config/SystemCertificateSource;->mUserRemovedCaDir:Ljava/io/File;

    #@4
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@a
    move-result v0

    #@b
    return v0
.end method
