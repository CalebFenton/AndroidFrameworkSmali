.class public interface abstract Landroid/net/nsd/NsdManager$DiscoveryListener;
.super Ljava/lang/Object;
.source "NsdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DiscoveryListener"
.end annotation


# virtual methods
.method public abstract whitelist onDiscoveryStarted(Ljava/lang/String;)V
.end method

.method public abstract whitelist onDiscoveryStopped(Ljava/lang/String;)V
.end method

.method public abstract whitelist onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V
.end method

.method public abstract whitelist onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V
.end method

.method public abstract whitelist onStartDiscoveryFailed(Ljava/lang/String;I)V
.end method

.method public abstract whitelist onStopDiscoveryFailed(Ljava/lang/String;I)V
.end method
