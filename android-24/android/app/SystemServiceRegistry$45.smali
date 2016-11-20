.class final Landroid/app/SystemServiceRegistry$45;
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
        "Landroid/net/wifi/nan/WifiNanManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 518
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService()Landroid/net/wifi/nan/WifiNanManager;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 521
    const-string/jumbo v2, "wifinan"

    #@4
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v0

    #@8
    .line 522
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nan/IWifiNanManager;

    #@b
    move-result-object v1

    #@c
    .line 523
    .local v1, "service":Landroid/net/wifi/nan/IWifiNanManager;
    if-nez v1, :cond_0

    #@e
    .line 524
    return-object v3

    #@f
    .line 526
    :cond_0
    new-instance v2, Landroid/net/wifi/nan/WifiNanManager;

    #@11
    invoke-direct {v2, v1}, Landroid/net/wifi/nan/WifiNanManager;-><init>(Landroid/net/wifi/nan/IWifiNanManager;)V

    #@14
    return-object v2
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 520
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$45;->createService()Landroid/net/wifi/nan/WifiNanManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
