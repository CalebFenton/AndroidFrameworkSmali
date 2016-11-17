.class public Landroid/net/wifi/nan/WifiNanSubscribeSession;
.super Landroid/net/wifi/nan/WifiNanSession;
.source "WifiNanSubscribeSession.java"


# direct methods
.method public constructor <init>(Landroid/net/wifi/nan/WifiNanManager;I)V
    .locals 0
    .param p1, "manager"    # Landroid/net/wifi/nan/WifiNanManager;
    .param p2, "sessionId"    # I

    #@0
    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/nan/WifiNanSession;-><init>(Landroid/net/wifi/nan/WifiNanManager;I)V

    #@3
    .line 31
    return-void
.end method


# virtual methods
.method public subscribe(Landroid/net/wifi/nan/SubscribeData;Landroid/net/wifi/nan/SubscribeSettings;)V
    .locals 2
    .param p1, "subscribeData"    # Landroid/net/wifi/nan/SubscribeData;
    .param p2, "subscribeSettings"    # Landroid/net/wifi/nan/SubscribeSettings;

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSession;->mManager:Landroid/net/wifi/nan/WifiNanManager;

    #@2
    iget v1, p0, Landroid/net/wifi/nan/WifiNanSession;->mSessionId:I

    #@4
    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/nan/WifiNanManager;->subscribe(ILandroid/net/wifi/nan/SubscribeData;Landroid/net/wifi/nan/SubscribeSettings;)V

    #@7
    .line 44
    return-void
.end method
