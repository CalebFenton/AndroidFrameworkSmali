.class public interface abstract Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;
.super Ljava/lang/Object;
.source "NetworkChangeNotifierAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract blacklist onConnectionCostChanged(I)V
.end method

.method public abstract blacklist onConnectionSubtypeChanged(I)V
.end method

.method public abstract blacklist onConnectionTypeChanged(I)V
.end method

.method public abstract blacklist onNetworkConnect(JI)V
.end method

.method public abstract blacklist onNetworkDisconnect(J)V
.end method

.method public abstract blacklist onNetworkSoonToDisconnect(J)V
.end method

.method public abstract blacklist purgeActiveNetworkList([J)V
.end method
