.class Lcom/android/server/wifi/RttService$RttServiceImpl;
.super Landroid/net/wifi/IRttManager$Stub;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RttServiceImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$1;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x27300

.field private static final CMD_DRIVER_LOADED:I = 0x27300

.field private static final CMD_DRIVER_UNLOADED:I = 0x27301

.field private static final CMD_ISSUE_NEXT_REQUEST:I = 0x27302

.field private static final CMD_RTT_RESPONSE:I = 0x27303


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

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

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

.field final synthetic this$0:Lcom/android/server/wifi/RttService;


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

.method constructor <init>(Lcom/android/server/wifi/RttService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/wifi/RttService;

    #@0
    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->this$0:Lcom/android/server/wifi/RttService;

    #@2
    invoke-direct {p0}, Landroid/net/wifi/IRttManager$Stub;-><init>()V

    #@5
    .line 223
    new-instance v0, Ljava/util/LinkedList;

    #@7
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;

    #@c
    .line 224
    new-instance v0, Ljava/util/HashMap;

    #@e
    const/4 v1, 0x4

    #@f
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@12
    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mClients:Ljava/util/HashMap;

    #@14
    .line 445
    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl$1;

    #@16
    invoke-direct {v0, p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$1;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;)V

    #@19
    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    #@1b
    .line 111
    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/RttService;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/wifi/RttService;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->this$0:Lcom/android/server/wifi/RttService;

    #@2
    invoke-direct {p0}, Landroid/net/wifi/IRttManager$Stub;-><init>()V

    #@5
    .line 223
    new-instance v0, Ljava/util/LinkedList;

    #@7
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;

    #@c
    .line 224
    new-instance v0, Ljava/util/HashMap;

    #@e
    const/4 v1, 0x4

    #@f
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@12
    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mClients:Ljava/util/HashMap;

    #@14
    .line 445
    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl$1;

    #@16
    invoke-direct {v0, p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$1;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;)V

    #@19
    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    #@1b
    .line 114
    iput-object p2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mContext:Landroid/content/Context;

    #@1d
    .line 113
    return-void
.end method


# virtual methods
.method enforcePermissionCheck(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.LOCATION_HARDWARE"

    #@5
    .line 437
    iget v3, p1, Landroid/os/Message;->sendingUid:I

    #@7
    const-string/jumbo v4, "LocationRTT"

    #@a
    const/4 v5, -0x1

    #@b
    .line 436
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 442
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 438
    :catch_0
    move-exception v0

    #@11
    .line 439
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v1, "No params"

    #@14
    const/4 v2, -0x5

    #@15
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@18
    .line 440
    const/4 v1, 0x0

    #@19
    return v1
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    #@0
    .prologue
    .line 41
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
    .line 474
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method issueNextRequest()Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 453
    const/4 v0, 0x0

    #@2
    .line 454
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
    .line 455
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;

    #@c
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@12
    .line 456
    .local v0, "request":Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    if-eqz v0, :cond_0

    #@14
    .line 457
    iget-object v1, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->params:[Landroid/net/wifi/RttManager$RttParams;

    #@16
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    #@18
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiNative;->requestRtt([Landroid/net/wifi/RttManager$RttParams;Lcom/android/server/wifi/WifiNative$RttEventHandler;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 458
    const-string/jumbo v1, "RttService"

    #@21
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v3, "Issued next RTT request with key: "

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    iget-object v3, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 459
    return-object v0

    #@3b
    .line 461
    :cond_1
    const-string/jumbo v1, "RttService"

    #@3e
    const-string/jumbo v2, "Fail to issue key at native layer"

    #@41
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 462
    iget-object v1, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->ci:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    #@46
    .line 463
    const-string/jumbo v2, "Failed to start"

    #@49
    const/4 v3, -0x1

    #@4a
    .line 462
    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportFailed(Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;ILjava/lang/String;)V

    #@4d
    goto :goto_0

    #@4e
    .line 469
    .end local v0    # "request":Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    :cond_2
    const-string/jumbo v1, "RttService"

    #@51
    const-string/jumbo v2, "No more requests left"

    #@54
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 470
    return-object v4
.end method

.method replyFailed(Landroid/os/Message;ILjava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "reason"    # I
    .param p3, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 418
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v2

    #@4
    .line 419
    .local v2, "reply":Landroid/os/Message;
    const v3, 0x27202

    #@7
    iput v3, v2, Landroid/os/Message;->what:I

    #@9
    .line 420
    iput p2, v2, Landroid/os/Message;->arg1:I

    #@b
    .line 421
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@d
    iput v3, v2, Landroid/os/Message;->arg2:I

    #@f
    .line 423
    new-instance v0, Landroid/os/Bundle;

    #@11
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@14
    .line 424
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "android.net.wifi.RttManager.Description"

    #@17
    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 425
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1c
    .line 428
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@1e
    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 417
    :goto_0
    return-void

    #@22
    .line 429
    :catch_0
    move-exception v1

    #@23
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method replySucceeded(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 402
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 403
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@7
    move-result-object v1

    #@8
    .line 404
    .local v1, "reply":Landroid/os/Message;
    const v2, 0x27203

    #@b
    iput v2, v1, Landroid/os/Message;->what:I

    #@d
    .line 405
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@f
    iput v2, v1, Landroid/os/Message;->arg2:I

    #@11
    .line 406
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@13
    .line 408
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@15
    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 401
    .end local v1    # "reply":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    #@19
    .line 409
    .restart local v1    # "reply":Landroid/os/Message;
    :catch_0
    move-exception v0

    #@1a
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startService(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mContext:Landroid/content/Context;

    #@2
    .line 120
    new-instance v0, Landroid/os/HandlerThread;

    #@4
    const-string/jumbo v1, "WifiRttService"

    #@7
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@a
    .line 121
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@d
    .line 123
    new-instance v1, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;

    #@f
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@12
    move-result-object v2

    #@13
    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Landroid/os/Looper;)V

    #@16
    iput-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mClientHandler:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;

    #@18
    .line 124
    new-instance v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@1a
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Landroid/os/Looper;)V

    #@21
    iput-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@23
    .line 126
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mContext:Landroid/content/Context;

    #@25
    .line 127
    new-instance v2, Lcom/android/server/wifi/RttService$RttServiceImpl$2;

    #@27
    invoke-direct {v2, p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$2;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;)V

    #@2a
    .line 139
    new-instance v3, Landroid/content/IntentFilter;

    #@2c
    const-string/jumbo v4, "wifi_scan_available"

    #@2f
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@32
    .line 126
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@35
    .line 141
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@37
    invoke-virtual {v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->start()V

    #@3a
    .line 117
    return-void
.end method
