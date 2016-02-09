.class final Landroid/app/SystemServiceRegistry$44;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher",
        "<",
        "Landroid/net/wifi/p2p/WifiP2pManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 494
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService()Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 3

    #@0
    .prologue
    .line 497
    const-string/jumbo v2, "wifip2p"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 498
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/p2p/IWifiP2pManager;

    #@a
    move-result-object v1

    #@b
    .line 499
    .local v1, "service":Landroid/net/wifi/p2p/IWifiP2pManager;
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pManager;

    #@d
    invoke-direct {v2, v1}, Landroid/net/wifi/p2p/WifiP2pManager;-><init>(Landroid/net/wifi/p2p/IWifiP2pManager;)V

    #@10
    return-object v2
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 496
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$44;->createService()Landroid/net/wifi/p2p/WifiP2pManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
