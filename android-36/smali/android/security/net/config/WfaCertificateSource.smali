.class public final Landroid/security/net/config/WfaCertificateSource;
.super Landroid/security/net/config/DirectoryCertificateSource;
.source "WfaCertificateSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/WfaCertificateSource$NoPreloadHolder;
    }
.end annotation


# static fields
.field private static final blacklist CACERTS_WFA_PATH:Ljava/lang/String; = "/apex/com.android.wifi/etc/security/cacerts_wfa"


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 34
    new-instance v0, Ljava/io/File;

    const-string v1, "/apex/com.android.wifi/etc/security/cacerts_wfa"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/security/net/config/DirectoryCertificateSource;-><init>(Ljava/io/File;)V

    .line 35
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/security/net/config/WfaCertificateSource-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/security/net/config/WfaCertificateSource;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/security/net/config/WfaCertificateSource;
    .registers 1

    .line 38
    invoke-static {}, Landroid/security/net/config/WfaCertificateSource$NoPreloadHolder;->-$$Nest$sfgetINSTANCE()Landroid/security/net/config/WfaCertificateSource;

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

    .line 25
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

    .line 25
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

    .line 25
    invoke-super {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getCertificates()Ljava/util/Set;
    .registers 2

    .line 25
    invoke-super {p0}, Landroid/security/net/config/DirectoryCertificateSource;->getCertificates()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist handleTrustStorageUpdate()V
    .registers 1

    .line 25
    invoke-super {p0}, Landroid/security/net/config/DirectoryCertificateSource;->handleTrustStorageUpdate()V

    return-void
.end method

.method protected blacklist isCertMarkedAsRemoved(Ljava/lang/String;)Z
    .registers 3
    .param p1, "caFile"    # Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    return v0
.end method
