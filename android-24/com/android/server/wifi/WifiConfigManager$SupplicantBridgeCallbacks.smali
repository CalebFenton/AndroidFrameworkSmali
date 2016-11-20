.class Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;
.super Ljava/lang/Object;
.source "WifiConfigManager.java"

# interfaces
.implements Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupplicantBridgeCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConfigManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiConfigManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConfigManager;

    #@0
    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;->this$0:Lcom/android/server/wifi/WifiConfigManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConfigManager;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;-><init>(Lcom/android/server/wifi/WifiConfigManager;)V

    #@3
    return-void
.end method


# virtual methods
.method public notifyANQPResponse(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V
    .locals 5
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    const/4 v4, 0x0

    #@1
    .line 313
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;->this$0:Lcom/android/server/wifi/WifiConfigManager;

    #@3
    invoke-static {v1, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->-wrap3(Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    #@6
    .line 314
    if-eqz p2, :cond_0

    #@8
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 315
    :cond_0
    return-void

    #@f
    .line 317
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/ScanDetail;->propagateANQPInfo(Ljava/util/Map;)V

    #@12
    .line 319
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;->this$0:Lcom/android/server/wifi/WifiConfigManager;

    #@14
    const/4 v2, 0x0

    #@15
    invoke-static {v1, p1, v2}, Lcom/android/server/wifi/WifiConfigManager;->-wrap1(Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/Map;

    #@18
    move-result-object v0

    #@19
    .line 320
    .local v0, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;->getClass()Ljava/lang/Class;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    const-string/jumbo v3, " pass 2 matches: "

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 321
    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigManager;->-wrap0(Ljava/util/Map;)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    .line 320
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 323
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;->this$0:Lcom/android/server/wifi/WifiConfigManager;

    #@46
    invoke-static {v1, p1, v0, v4}, Lcom/android/server/wifi/WifiConfigManager;->-wrap2(Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;Ljava/util/List;)V

    #@49
    .line 312
    return-void
.end method

.method public notifyIconFailed(J)V
    .locals 3
    .param p1, "bssid"    # J

    #@0
    .prologue
    .line 327
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.net.wifi.PASSPOINT_ICON_RECEIVED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 328
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 329
    const-string/jumbo v1, "bssid"

    #@10
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@13
    .line 330
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;->this$0:Lcom/android/server/wifi/WifiConfigManager;

    #@15
    invoke-static {v1}, Lcom/android/server/wifi/WifiConfigManager;->-get0(Lcom/android/server/wifi/WifiConfigManager;)Landroid/content/Context;

    #@18
    move-result-object v1

    #@19
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1b
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@1e
    .line 326
    return-void
.end method
