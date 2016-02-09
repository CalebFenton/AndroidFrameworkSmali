.class Lcom/android/server/wifi/WifiServiceImpl$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->registerForPackageOrUserRemoval()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;

    #@0
    .prologue
    .line 1406
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$4;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, -0x1

    #@2
    .line 1409
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v4

    #@6
    const-string/jumbo v5, "android.intent.action.PACKAGE_REMOVED"

    #@9
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_0

    #@f
    .line 1411
    const-string/jumbo v4, "android.intent.extra.REPLACING"

    #@12
    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_2

    #@18
    .line 1412
    return-void

    #@19
    .line 1409
    :cond_0
    const-string/jumbo v5, "android.intent.action.USER_REMOVED"

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_1

    #@22
    .line 1424
    const-string/jumbo v4, "android.intent.extra.user_handle"

    #@25
    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@28
    move-result v3

    #@29
    .line 1425
    .local v3, "userHandle":I
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl$4;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@2b
    iget-object v4, v4, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@2d
    invoke-virtual {v4, v3}, Lcom/android/server/wifi/WifiStateMachine;->removeUserConfigs(I)V

    #@30
    .line 1408
    .end local v3    # "userHandle":I
    :cond_1
    :goto_0
    return-void

    #@31
    .line 1414
    :cond_2
    const-string/jumbo v4, "android.intent.extra.UID"

    #@34
    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@37
    move-result v1

    #@38
    .line 1415
    .local v1, "uid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@3b
    move-result-object v2

    #@3c
    .line 1416
    .local v2, "uri":Landroid/net/Uri;
    if-eq v1, v6, :cond_3

    #@3e
    if-nez v2, :cond_4

    #@40
    .line 1417
    :cond_3
    return-void

    #@41
    .line 1419
    :cond_4
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    .line 1420
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl$4;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@47
    iget-object v4, v4, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@49
    invoke-virtual {v4, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->removeAppConfigs(Ljava/lang/String;I)V

    #@4c
    goto :goto_0
.end method
