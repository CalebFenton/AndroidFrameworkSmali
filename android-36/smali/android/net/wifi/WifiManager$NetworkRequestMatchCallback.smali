.class public interface abstract Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkRequestMatchCallback"
.end annotation


# virtual methods
.method public whitelist onAbort()V
    .registers 1

    .line 3140
    return-void
.end method

.method public whitelist onMatch(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 3150
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    return-void
.end method

.method public whitelist onUserSelectionCallbackRegistration(Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;)V
    .registers 2
    .param p1, "userSelectionCallback"    # Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    .line 3131
    return-void
.end method

.method public whitelist onUserSelectionConnectFailure(Landroid/net/wifi/WifiConfiguration;)V
    .registers 2
    .param p1, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;

    .line 3168
    return-void
.end method

.method public whitelist onUserSelectionConnectSuccess(Landroid/net/wifi/WifiConfiguration;)V
    .registers 2
    .param p1, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;

    .line 3159
    return-void
.end method
