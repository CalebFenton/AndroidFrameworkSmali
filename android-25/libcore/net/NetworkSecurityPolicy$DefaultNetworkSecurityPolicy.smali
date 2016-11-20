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
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Llibcore/net/NetworkSecurityPolicy;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public isCleartextTrafficPermitted()Z
    .locals 1

    #@0
    .prologue
    .line 77
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 82
    invoke-virtual {p0}, Llibcore/net/NetworkSecurityPolicy$DefaultNetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    #@3
    move-result v0

    #@4
    return v0
.end method
