.class public Lcom/android/internal/util/AsyncChannel;
.super Ljava/lang/Object;
.source "AsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;,
        Lcom/android/internal/util/AsyncChannel$DeathMonitor;,
        Lcom/android/internal/util/AsyncChannel$SyncMessenger;
    }
.end annotation


# static fields
.field private static final greylist-max-o BASE:I = 0x11000

.field public static final greylist-max-o CMD_CHANNEL_DISCONNECT:I = 0x11003

.field public static final greylist-max-o CMD_CHANNEL_DISCONNECTED:I = 0x11004

.field public static final greylist-max-o CMD_CHANNEL_FULLY_CONNECTED:I = 0x11002

.field public static final greylist CMD_CHANNEL_FULL_CONNECTION:I = 0x11001

.field public static final greylist CMD_CHANNEL_HALF_CONNECTED:I = 0x11000

.field private static final greylist-max-o CMD_TO_STRING_COUNT:I = 0x5

.field private static final greylist-max-o DBG:Z = false

.field public static final greylist-max-o STATUS_BINDING_UNSUCCESSFUL:I = 0x1

.field public static final greylist-max-o STATUS_FULL_CONNECTION_REFUSED_ALREADY_CONNECTED:I = 0x3

.field public static final greylist-max-o STATUS_REMOTE_DISCONNECTION:I = 0x4

.field public static final greylist-max-o STATUS_SEND_UNSUCCESSFUL:I = 0x2

.field public static final greylist STATUS_SUCCESSFUL:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AsyncChannel"

.field private static greylist-max-o sCmdToString:[Ljava/lang/String;


# instance fields
.field private greylist-max-o mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

.field private greylist-max-o mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

.field private greylist-max-o mDstMessenger:Landroid/os/Messenger;

.field private greylist-max-o mSrcContext:Landroid/content/Context;

.field private greylist-max-o mSrcHandler:Landroid/os/Handler;

.field private greylist-max-o mSrcMessenger:Landroid/os/Messenger;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmDstMessenger(Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreplyDisconnected(Lcom/android/internal/util/AsyncChannel;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/util/AsyncChannel;->replyDisconnected(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreplyHalfConnected(Lcom/android/internal/util/AsyncChannel;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/util/AsyncChannel;->replyHalfConnected(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 158
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    .line 160
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CMD_CHANNEL_HALF_CONNECTED"

    aput-object v2, v0, v1

    .line 161
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "CMD_CHANNEL_FULL_CONNECTION"

    aput-object v2, v0, v1

    .line 162
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "CMD_CHANNEL_FULLY_CONNECTED"

    aput-object v2, v0, v1

    .line 163
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "CMD_CHANNEL_DISCONNECT"

    aput-object v2, v0, v1

    .line 164
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "CMD_CHANNEL_DISCONNECTED"

    aput-object v2, v0, v1

    .line 165
    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    return-void
.end method

.method protected static greylist-max-p cmdToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "cmd"    # I

    .line 168
    const v0, 0x11000

    sub-int/2addr p0, v0

    .line 169
    if-ltz p0, :cond_10

    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_10

    .line 170
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 172
    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o linkToDeathMonitor()Z
    .registers 4

    .line 888
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    if-nez v0, :cond_21

    .line 889
    new-instance v0, Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    invoke-direct {v0, p0}, Lcom/android/internal/util/AsyncChannel$DeathMonitor;-><init>(Lcom/android/internal/util/AsyncChannel;)V

    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    .line 891
    const/4 v0, 0x0

    :try_start_10
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1b} :catch_1c

    .line 895
    goto :goto_21

    .line 892
    :catch_1c
    move-exception v1

    .line 893
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    .line 894
    return v0

    .line 897
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_21
    :goto_21
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 942
    const-string v0, "AsyncChannel"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    return-void
.end method

.method private greylist-max-o replyDisconnected(I)V
    .registers 4
    .param p1, "status"    # I

    .line 908
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    .line 909
    :cond_5
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    const v1, 0x11004

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 910
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 911
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 912
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 913
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 914
    return-void
.end method

.method private greylist-max-o replyHalfConnected(I)V
    .registers 4
    .param p1, "status"    # I

    .line 870
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    const v1, 0x11000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 871
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 872
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 873
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 874
    invoke-direct {p0}, Lcom/android/internal/util/AsyncChannel;->linkToDeathMonitor()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 876
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 879
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 880
    return-void
.end method


# virtual methods
.method public greylist-max-o connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .registers 5
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .param p3, "dstHandler"    # Landroid/os/Handler;

    .line 427
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 428
    return-void
.end method

.method public greylist connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    .registers 5
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .param p3, "dstMessenger"    # Landroid/os/Messenger;

    .line 386
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 389
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/util/AsyncChannel;->replyHalfConnected(I)V

    .line 392
    return-void
.end method

.method public greylist-max-o connect(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Class;)V
    .registers 6
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 367
    .local p3, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public greylist-max-o connect(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .param p3, "dstPackageName"    # Ljava/lang/String;
    .param p4, "dstClassName"    # Ljava/lang/String;

    .line 349
    new-instance v0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "srcContext":Landroid/content/Context;
    .end local p2    # "srcHandler":Landroid/os/Handler;
    .end local p3    # "dstPackageName":Ljava/lang/String;
    .end local p4    # "dstClassName":Ljava/lang/String;
    .local v2, "srcContext":Landroid/content/Context;
    .local v3, "srcHandler":Landroid/os/Handler;
    .local v4, "dstPackageName":Ljava/lang/String;
    .local v5, "dstClassName":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;-><init>(Lcom/android/internal/util/AsyncChannel;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .local v0, "ca":Lcom/android/internal/util/AsyncChannel$1ConnectAsync;
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 353
    return-void
.end method

.method public greylist-max-o connect(Lcom/android/internal/util/AsyncService;Landroid/os/Messenger;)V
    .registers 4
    .param p1, "srcAsyncService"    # Lcom/android/internal/util/AsyncService;
    .param p2, "dstMessenger"    # Landroid/os/Messenger;

    .line 441
    invoke-virtual {p1}, Lcom/android/internal/util/AsyncService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 442
    return-void
.end method

.method public greylist-max-o connectSrcHandlerToPackageSync(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .param p3, "dstPackageName"    # Ljava/lang/String;
    .param p4, "dstClassName"    # Ljava/lang/String;

    .line 233
    new-instance v0, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    invoke-direct {v0, p0}, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;-><init>(Lcom/android/internal/util/AsyncChannel;)V

    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    .line 236
    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    .line 237
    iput-object p2, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    .line 238
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    .line 248
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 252
    .local v1, "result":Z
    xor-int/lit8 v2, v1, 0x1

    return v2
.end method

.method public greylist-max-o connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I
    .registers 5
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .param p3, "dstHandler"    # Landroid/os/Handler;

    .line 287
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v0

    return v0
.end method

.method public greylist connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I
    .registers 5
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .param p3, "dstMessenger"    # Landroid/os/Messenger;

    .line 270
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-r connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    .registers 6
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .param p3, "dstMessenger"    # Landroid/os/Messenger;

    .line 409
    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    .line 410
    iput-object p2, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    .line 411
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    .line 414
    iput-object p3, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    .line 416
    return-void
.end method

.method public greylist disconnect()V
    .registers 5

    .line 461
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    if-eqz v0, :cond_12

    .line 462
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 463
    iput-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    .line 468
    :cond_12
    :try_start_12
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 469
    .local v0, "msg":Landroid/os/Message;
    const v2, 0x11004

    iput v2, v0, Landroid/os/Message;->what:I

    .line 470
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 471
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_24} :catch_25

    .line 473
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_26

    .line 472
    :catch_25
    move-exception v0

    .line 475
    :goto_26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/util/AsyncChannel;->replyDisconnected(I)V

    .line 476
    iput-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    .line 478
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    if-nez v2, :cond_45

    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    if-eqz v2, :cond_45

    .line 479
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    invoke-interface {v2, v3, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 480
    iput-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    .line 482
    :cond_45
    return-void
.end method

.method public greylist-max-o disconnected()V
    .registers 2

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    .line 449
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    .line 450
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    .line 451
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    .line 452
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    .line 453
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    .line 454
    return-void
.end method

.method public greylist-max-o fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I
    .registers 6
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .param p3, "dstHandler"    # Landroid/os/Handler;

    .line 301
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v0

    .line 302
    .local v0, "status":I
    if-nez v0, :cond_f

    .line 303
    const v1, 0x11001

    invoke-virtual {p0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 304
    .local v1, "response":Landroid/os/Message;
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 306
    .end local v1    # "response":Landroid/os/Message;
    :cond_f
    return v0
.end method

.method public greylist-max-p replyToMessage(Landroid/os/Message;I)V
    .registers 4
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .line 597
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 598
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 599
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 600
    return-void
.end method

.method public greylist-max-r replyToMessage(Landroid/os/Message;II)V
    .registers 5
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .line 611
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 612
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 613
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 614
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 615
    return-void
.end method

.method public greylist-max-o replyToMessage(Landroid/os/Message;III)V
    .registers 6
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .line 626
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 627
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 628
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 629
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 630
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 631
    return-void
.end method

.method public greylist-max-r replyToMessage(Landroid/os/Message;IIILjava/lang/Object;)V
    .registers 7
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    .line 644
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 645
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 646
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 647
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 648
    iput-object p5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 649
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 650
    return-void
.end method

.method public greylist-max-r replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .registers 5
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 661
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 662
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 663
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 664
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 665
    return-void
.end method

.method public greylist replyToMessage(Landroid/os/Message;Landroid/os/Message;)V
    .registers 6
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "dstMsg"    # Landroid/os/Message;

    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    iput-object v0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 582
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 586
    goto :goto_24

    .line 583
    :catch_a
    move-exception v0

    .line 584
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TODO: handle replyToMessage RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/AsyncChannel;->log(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 587
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method public greylist sendMessage(I)V
    .registers 3
    .param p1, "what"    # I

    .line 506
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 507
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 508
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 509
    return-void
.end method

.method public greylist-max-r sendMessage(II)V
    .registers 4
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .line 519
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 520
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 521
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 522
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 523
    return-void
.end method

.method public greylist sendMessage(III)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 534
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 535
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 536
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 537
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 538
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 539
    return-void
.end method

.method public greylist sendMessage(IIILjava/lang/Object;)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 551
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 552
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 553
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 554
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 555
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 556
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 557
    return-void
.end method

.method public greylist-max-o sendMessage(ILjava/lang/Object;)V
    .registers 4
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 566
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 567
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 568
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 569
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 570
    return-void
.end method

.method public greylist sendMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 491
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 493
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 496
    goto :goto_f

    .line 494
    :catch_a
    move-exception v0

    .line 495
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/internal/util/AsyncChannel;->replyDisconnected(I)V

    .line 497
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method public greylist-max-o sendMessageSynchronously(I)Landroid/os/Message;
    .registers 4
    .param p1, "what"    # I

    .line 686
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 687
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 688
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 689
    .local v1, "resultMsg":Landroid/os/Message;
    return-object v1
.end method

.method public greylist-max-o sendMessageSynchronously(II)Landroid/os/Message;
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .line 700
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 701
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 702
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 703
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 704
    .local v1, "resultMsg":Landroid/os/Message;
    return-object v1
.end method

.method public greylist-max-r sendMessageSynchronously(III)Landroid/os/Message;
    .registers 6
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 717
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 718
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 719
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 720
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 721
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 722
    .local v1, "resultMsg":Landroid/os/Message;
    return-object v1
.end method

.method public greylist-max-o sendMessageSynchronously(IIILjava/lang/Object;)Landroid/os/Message;
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 735
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 736
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 737
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 738
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 739
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 740
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 741
    .local v1, "resultMsg":Landroid/os/Message;
    return-object v1
.end method

.method public greylist-max-o sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;
    .registers 5
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 752
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 753
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 754
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 755
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 756
    .local v1, "resultMsg":Landroid/os/Message;
    return-object v1
.end method

.method public greylist-max-r sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 675
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    invoke-static {v0, p1}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->-$$Nest$smsendMessageSynchronously(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 676
    .local v0, "resultMsg":Landroid/os/Message;
    return-object v0
.end method
