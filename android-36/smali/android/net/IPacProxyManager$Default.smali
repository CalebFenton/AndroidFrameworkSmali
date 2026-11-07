.class public Landroid/net/IPacProxyManager$Default;
.super Ljava/lang/Object;
.source "IPacProxyManager.java"

# interfaces
.implements Landroid/net/IPacProxyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IPacProxyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addListener(Landroid/net/IPacProxyInstalledListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/IPacProxyInstalledListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist removeListener(Landroid/net/IPacProxyInstalledListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/IPacProxyInstalledListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)V
    .registers 2
    .param p1, "proxyInfo"    # Landroid/net/ProxyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method
