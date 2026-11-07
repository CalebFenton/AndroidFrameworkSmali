.class public Landroid/net/wifi/ILocalOnlyConnectionStatusListener$Default;
.super Ljava/lang/Object;
.source "ILocalOnlyConnectionStatusListener.java"

# interfaces
.implements Landroid/net/wifi/ILocalOnlyConnectionStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ILocalOnlyConnectionStatusListener;
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

.method public blacklist onConnectionStatus(Landroid/net/wifi/WifiNetworkSpecifier;I)V
    .registers 3
    .param p1, "wifiNetworkSpecifier"    # Landroid/net/wifi/WifiNetworkSpecifier;
    .param p2, "failureReason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
