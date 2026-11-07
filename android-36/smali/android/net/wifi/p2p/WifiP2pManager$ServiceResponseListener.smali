.class public interface abstract Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;
.super Ljava/lang/Object;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceResponseListener"
.end annotation


# virtual methods
.method public abstract whitelist onServiceAvailable(I[BLandroid/net/wifi/p2p/WifiP2pDevice;)V
.end method

.method public whitelist onUsdBasedServiceAvailable(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;)V
    .registers 3
    .param p1, "srcDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "usdResponseData"    # Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;

    .line 1062
    return-void
.end method
