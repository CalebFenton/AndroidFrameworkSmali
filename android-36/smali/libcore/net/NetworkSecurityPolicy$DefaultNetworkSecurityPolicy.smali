.class public final Llibcore/net/NetworkSecurityPolicy$DefaultNetworkSecurityPolicy;
.super Llibcore/net/NetworkSecurityPolicy;
.source "NetworkSecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/net/NetworkSecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultNetworkSecurityPolicy"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 147
    invoke-direct {p0}, Llibcore/net/NetworkSecurityPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist test-api isCertificateTransparencyVerificationRequired(Ljava/lang/String;)Z
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;

    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist test-api isCleartextTrafficPermitted()Z
    .registers 2

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist test-api isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Llibcore/net/NetworkSecurityPolicy$DefaultNetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    return v0
.end method
