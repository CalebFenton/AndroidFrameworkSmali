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
.method private constructor greylist-max-o <init>()V
    .registers 4

    .line 33
    new-instance v0, Ljava/io/File;

    .line 34
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/Environment;->getUserConfigDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "cacerts-added"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, v0}, Landroid/security/net/config/DirectoryCertificateSource;-><init>(Ljava/io/File;)V

    .line 35
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/security/net/config/UserCertificateSource-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/security/net/config/UserCertificateSource;-><init>()V

    return-void
.end method

.method public static greylist-max-o getInstance()Landroid/security/net/config/UserCertificateSource;
    .registers 1

    .line 38
    invoke-static {}, Landroid/security/net/config/UserCertificateSource$NoPreloadHolder;->-$$Nest$sfgetINSTANCE()Landroid/security/net/config/UserCertificateSource;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic blacklist findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 27
    invoke-super {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 27
    invoke-super {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 27
    invoke-super {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getCertificates()Ljava/util/Set;
    .registers 2

    .line 27
    invoke-super {p0}, Landroid/security/net/config/DirectoryCertificateSource;->getCertificates()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist handleTrustStorageUpdate()V
    .registers 1

    .line 27
    invoke-super {p0}, Landroid/security/net/config/DirectoryCertificateSource;->handleTrustStorageUpdate()V

    return-void
.end method

.method protected greylist-max-o isCertMarkedAsRemoved(Ljava/lang/String;)Z
    .registers 3
    .param p1, "caFile"    # Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    return v0
.end method
