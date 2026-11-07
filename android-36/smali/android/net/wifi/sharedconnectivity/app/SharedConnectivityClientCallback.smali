.class public interface abstract Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;
.super Ljava/lang/Object;
.source "SharedConnectivityClientCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public abstract whitelist onHotspotNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V
.end method

.method public abstract whitelist onHotspotNetworksUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onKnownNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V
.end method

.method public abstract whitelist onKnownNetworksUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onRegisterCallbackFailed(Ljava/lang/Exception;)V
.end method

.method public abstract whitelist onServiceConnected()V
.end method

.method public abstract whitelist onServiceDisconnected()V
.end method

.method public abstract whitelist onSharedConnectivitySettingsChanged(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V
.end method
