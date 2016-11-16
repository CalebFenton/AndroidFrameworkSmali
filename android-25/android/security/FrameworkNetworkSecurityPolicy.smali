.class public Landroid/security/FrameworkNetworkSecurityPolicy;
.super Llibcore/net/NetworkSecurityPolicy;
.source "FrameworkNetworkSecurityPolicy.java"


# instance fields
.field private final mCleartextTrafficPermitted:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "cleartextTrafficPermitted"    # Z

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Llibcore/net/NetworkSecurityPolicy;-><init>()V

    #@3
    .line 28
    iput-boolean p1, p0, Landroid/security/FrameworkNetworkSecurityPolicy;->mCleartextTrafficPermitted:Z

    #@5
    .line 27
    return-void
.end method


# virtual methods
.method public isCleartextTrafficPermitted()Z
    .locals 1

    #@0
    .prologue
    .line 33
    iget-boolean v0, p0, Landroid/security/FrameworkNetworkSecurityPolicy;->mCleartextTrafficPermitted:Z

    #@2
    return v0
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/security/FrameworkNetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    #@3
    move-result v0

    #@4
    return v0
.end method
