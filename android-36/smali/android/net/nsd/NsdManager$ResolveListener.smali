.class public interface abstract Landroid/net/nsd/NsdManager$ResolveListener;
.super Ljava/lang/Object;
.source "NsdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResolveListener"
.end annotation


# virtual methods
.method public whitelist onResolutionStopped(Landroid/net/nsd/NsdServiceInfo;)V
    .registers 2
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .line 968
    return-void
.end method

.method public abstract whitelist onResolveFailed(Landroid/net/nsd/NsdServiceInfo;I)V
.end method

.method public abstract whitelist onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V
.end method

.method public whitelist onStopResolutionFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .registers 3
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "errorCode"    # I

    .line 979
    return-void
.end method
