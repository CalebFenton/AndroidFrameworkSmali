.class public Landroid/net/wifi/IWifiNetworkSelectionConfigListener$Default;
.super Ljava/lang/Object;
.source "IWifiNetworkSelectionConfigListener.java"

# interfaces
.implements Landroid/net/wifi/IWifiNetworkSelectionConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiNetworkSelectionConfigListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onResult(Landroid/net/wifi/WifiNetworkSelectionConfig;)V
    .registers 2
    .param p1, "value"    # Landroid/net/wifi/WifiNetworkSelectionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
