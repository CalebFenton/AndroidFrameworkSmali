.class Lcom/android/server/wifi/RttService$RttServiceImpl;
.super Landroid/net/wifi/IRttManager$Stub;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RttServiceImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/RttService$RttServiceImpl$1;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x27300

.field private static final CMD_DRIVER_LOADED:I = 0x27300

.field private static final CMD_DRIVER_UNLOADED:I = 0x27301

.field private static final CMD_ISSUE_NEXT_REQUEST:I = 0x27302

.field private static final CMD_RTT_RESPONSE:I = 0x27303

.field private static final MAX_RESPONDER_DURATION_SECONDS:I = 0x258


# instance fields
.field private mClientHandler:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;

.field private mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

.field private final mLooper:Landroid/os/Looper;

.field private mRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mClients:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/RttService$RttServiceImpl;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/Queue;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/WifiNative;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2
    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 127
    invoke-direct {p0}, Landroid/net/wifi/IRttManager$Stub;-><init>()V

    #@3
    .line 257
    new-instance v0, Ljava/util/LinkedList;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;

    #@a
    .line 258
    new-instance v0, Ljava/util/HashMap;

    #@c
    const/4 v1, 0x4

    #@d
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@10
    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mClients:Ljava/util/HashMap;

    #@12
    .line 554
    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl$1;

    #@14
    invoke-direct {v0, p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$1;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;)V

    #@17
    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    #@19
    .line 128
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mContext:Landroid/content/Context;

    #@1b
    .line 129
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getWlanNativeInterface()Lcom/android/server/wifi/WifiNative;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@21
    .line 130
    iput-object p2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mLooper:Landroid/os/Looper;

    #@23
    .line 127
    return-void
.end method


# virtual methods
.method enforcePermissionCheck(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 545
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.LOCATION_HARDWARE"

    #@5
    .line 546
    iget v3, p1, Landroid/os/Message;->sendingUid:I

    #@7
    const-string/jumbo v4, "LocationRTT"

    #@a
    const/4 v5, -0x1

    #@b
    .line 545
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 551
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 547
    :catch_0
    move-exception v0

    #@11
    .line 548
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v1, "RttService"

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "UID: "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    iget v3, p1, Landroid/os/Message;->sendingUid:I

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    const-string/jumbo v3, " has no LOCATION_HARDWARE Permission"

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 549
    const/4 v1, 0x0

    #@35
    return v1
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    #@0
    .prologue
    .line 43
    new-instance v0, Landroid/os/Messenger;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mClientHandler:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;

    #@4
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@7
    return-object v0
.end method

.method public getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;
    .locals 1

    #@0
    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method issueNextRequest()Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 562
    const/4 v0, 0x0

    #@2
    .line 563
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;

    #@4
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_2

    #@a
    .line 564
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;

    #@c
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@12
    .line 565
    .local v0, "request":Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    if-eqz v0, :cond_0

    #@14
    .line 566
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@16
    iget-object v2, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->params:[Landroid/net/wifi/RttManager$RttParams;

    #@18
    iget-object v3, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    #@1a
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->requestRtt([Landroid/net/wifi/RttManager$RttParams;Lcom/android/server/wifi/WifiNative$RttEventHandler;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 567
    const-string/jumbo v1, "RttService"

    #@23
    new-instance v2, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v3, "Issued next RTT request with key: "

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    iget-object v3, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 568
    return-object v0

    #@3d
    .line 570
    :cond_1
    const-string/jumbo v1, "RttService"

    #@40
    const-string/jumbo v2, "Fail to issue key at native layer"

    #@43
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 571
    iget-object v1, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->ci:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    #@48
    .line 572
    const-string/jumbo v2, "Failed to start"

    #@4b
    const/4 v3, -0x1

    #@4c
    .line 571
    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportFailed(Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;ILjava/lang/String;)V

    #@4f
    goto :goto_0

    #@50
    .line 578
    .end local v0    # "request":Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    :cond_2
    const-string/jumbo v1, "RttService"

    #@53
    const-string/jumbo v2, "No more requests left"

    #@56
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@59
    .line 579
    return-object v4
.end method

.method replyFailed(Landroid/os/Message;ILjava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "reason"    # I
    .param p3, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 525
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v2

    #@4
    .line 526
    .local v2, "reply":Landroid/os/Message;
    const v3, 0x27202

    #@7
    iput v3, v2, Landroid/os/Message;->what:I

    #@9
    .line 527
    iput p2, v2, Landroid/os/Message;->arg1:I

    #@b
    .line 528
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@d
    iput v3, v2, Landroid/os/Message;->arg2:I

    #@f
    .line 530
    new-instance v0, Landroid/os/Bundle;

    #@11
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@14
    .line 531
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "android.net.wifi.RttManager.Description"

    #@17
    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 532
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1c
    .line 535
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 536
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@22
    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 524
    :cond_0
    :goto_0
    return-void

    #@26
    .line 538
    :catch_0
    move-exception v1

    #@27
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method replySucceeded(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 509
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 510
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@7
    move-result-object v1

    #@8
    .line 511
    .local v1, "reply":Landroid/os/Message;
    const v2, 0x27203

    #@b
    iput v2, v1, Landroid/os/Message;->what:I

    #@d
    .line 512
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@f
    iput v2, v1, Landroid/os/Message;->arg2:I

    #@11
    .line 513
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@13
    .line 515
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@15
    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 508
    .end local v1    # "reply":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    #@19
    .line 516
    .restart local v1    # "reply":Landroid/os/Message;
    :catch_0
    move-exception v0

    #@1a
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startService()V
    .locals 4

    #@0
    .prologue
    .line 134
    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mLooper:Landroid/os/Looper;

    #@4
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Landroid/os/Looper;)V

    #@7
    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mClientHandler:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;

    #@9
    .line 135
    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@b
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mLooper:Landroid/os/Looper;

    #@d
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Landroid/os/Looper;)V

    #@10
    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@12
    .line 137
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mContext:Landroid/content/Context;

    #@14
    .line 138
    new-instance v1, Lcom/android/server/wifi/RttService$RttServiceImpl$2;

    #@16
    invoke-direct {v1, p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$2;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;)V

    #@19
    .line 150
    new-instance v2, Landroid/content/IntentFilter;

    #@1b
    const-string/jumbo v3, "wifi_scan_available"

    #@1e
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@21
    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@24
    .line 152
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@26
    invoke-virtual {v0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->start()V

    #@29
    .line 133
    return-void
.end method
