.class public Landroid/net/wifi/IOnWifiActivityEnergyInfoListener$Default;
.super Ljava/lang/Object;
.source "IOnWifiActivityEnergyInfoListener.java"

# interfaces
.implements Landroid/net/wifi/IOnWifiActivityEnergyInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IOnWifiActivityEnergyInfoListener;
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

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onWifiActivityEnergyInfo(Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/os/connectivity/WifiActivityEnergyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
