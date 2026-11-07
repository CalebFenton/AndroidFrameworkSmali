.class public Landroid/security/OverlayNetworkSecurityPolicy;
.super Llibcore/net/NetworkSecurityPolicy;
.source "OverlayNetworkSecurityPolicy.java"


# instance fields
.field private final blacklist mCleartextTrafficPermitted:Z

.field private final blacklist mParent:Llibcore/net/NetworkSecurityPolicy;


# direct methods
.method public constructor blacklist <init>(Llibcore/net/NetworkSecurityPolicy;Z)V
    .registers 3
    .param p1, "policy"    # Llibcore/net/NetworkSecurityPolicy;
    .param p2, "cleartextTrafficPermitted"    # Z

    .line 29
    invoke-direct {p0}, Llibcore/net/NetworkSecurityPolicy;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/security/OverlayNetworkSecurityPolicy;->mParent:Llibcore/net/NetworkSecurityPolicy;

    .line 31
    iput-boolean p2, p0, Landroid/security/OverlayNetworkSecurityPolicy;->mCleartextTrafficPermitted:Z

    .line 32
    return-void
.end method


# virtual methods
.method public blacklist test-api isCertificateTransparencyVerificationRequired(Ljava/lang/String;)Z
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Landroid/security/OverlayNetworkSecurityPolicy;->mParent:Llibcore/net/NetworkSecurityPolicy;

    invoke-virtual {v0, p1}, Llibcore/net/NetworkSecurityPolicy;->isCertificateTransparencyVerificationRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist test-api isCleartextTrafficPermitted()Z
    .registers 2

    .line 36
    iget-boolean v0, p0, Landroid/security/OverlayNetworkSecurityPolicy;->mCleartextTrafficPermitted:Z

    return v0
.end method

.method public blacklist test-api isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Landroid/security/OverlayNetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    return v0
.end method
