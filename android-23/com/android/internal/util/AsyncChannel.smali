.class public Lcom/android/internal/util/AsyncChannel;
.super Ljava/lang/Object;
.source "AsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/AsyncChannel$SyncMessenger;,
        Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;,
        Lcom/android/internal/util/AsyncChannel$DeathMonitor;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x11000

.field public static final CMD_CHANNEL_DISCONNECT:I = 0x11003

.field public static final CMD_CHANNEL_DISCONNECTED:I = 0x11004

.field public static final CMD_CHANNEL_FULLY_CONNECTED:I = 0x11002

.field public static final CMD_CHANNEL_FULL_CONNECTION:I = 0x11001

.field public static final CMD_CHANNEL_HALF_CONNECTED:I = 0x11000

.field private static final CMD_TO_STRING_COUNT:I = 0x5

.field private static final DBG:Z = false

.field public static final STATUS_BINDING_UNSUCCESSFUL:I = 0x1

.field public static final STATUS_FULL_CONNECTION_REFUSED_ALREADY_CONNECTED:I = 0x3

.field public static final STATUS_REMOTE_DISCONNECTION:I = 0x4

.field public static final STATUS_SEND_UNSUCCESSFUL:I = 0x2

.field public static final STATUS_SUCCESSFUL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AsyncChannel"

.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field private mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

.field private mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

.field private mDstMessenger:Landroid/os/Messenger;

.field private mSrcContext:Landroid/content/Context;

.field private mSrcHandler:Landroid/os/Handler;

.field private mSrcMessenger:Landroid/os/Messenger;


# direct methods
.method static synthetic -set0(Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/util/AsyncChannel;I)V
    .locals 0
    .param p1, "status"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/util/AsyncChannel;->replyDisconnected(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/util/AsyncChannel;I)V
    .locals 0
    .param p1, "status"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/util/AsyncChannel;->replyHalfConnected(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 154
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    sput-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@5
    .line 156
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@7
    const-string/jumbo v1, "CMD_CHANNEL_HALF_CONNECTED"

    #@a
    const/4 v2, 0x0

    #@b
    aput-object v1, v0, v2

    #@d
    .line 157
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@f
    const-string/jumbo v1, "CMD_CHANNEL_FULL_CONNECTION"

    #@12
    const/4 v2, 0x1

    #@13
    aput-object v1, v0, v2

    #@15
    .line 158
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@17
    const-string/jumbo v1, "CMD_CHANNEL_FULLY_CONNECTED"

    #@1a
    const/4 v2, 0x2

    #@1b
    aput-object v1, v0, v2

    #@1d
    .line 159
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@1f
    const-string/jumbo v1, "CMD_CHANNEL_DISCONNECT"

    #@22
    const/4 v2, 0x3

    #@23
    aput-object v1, v0, v2

    #@25
    .line 160
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@27
    const-string/jumbo v1, "CMD_CHANNEL_DISCONNECTED"

    #@2a
    const/4 v2, 0x4

    #@2b
    aput-object v1, v0, v2

    #@2d
    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method protected static cmdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "cmd"    # I

    #@0
    .prologue
    .line 163
    const v0, 0x11000

    #@3
    sub-int/2addr p0, v0

    #@4
    .line 164
    if-ltz p0, :cond_0

    #@6
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@8
    array-length v0, v0

    #@9
    if-ge p0, v0, :cond_0

    #@b
    .line 165
    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    #@d
    aget-object v0, v0, p0

    #@f
    return-object v0

    #@10
    .line 167
    :cond_0
    const/4 v0, 0x0

    #@11
    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 907
    const-string/jumbo v0, "AsyncChannel"

    #@3
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 906
    return-void
.end method

.method private replyDisconnected(I)V
    .locals 3
    .param p1, "status"    # I

    #@0
    .prologue
    .line 873
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 874
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    #@7
    const v2, 0x11004

    #@a
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@d
    move-result-object v0

    #@e
    .line 875
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    #@10
    .line 876
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@12
    .line 877
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    #@14
    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@16
    .line 878
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    #@18
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@1b
    .line 871
    return-void
.end method

.method private replyHalfConnected(I)V
    .locals 6
    .param p1, "status"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 843
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    #@3
    const v3, 0x11000

    #@6
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    .line 844
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    #@c
    .line 845
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e
    .line 846
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    #@10
    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@12
    .line 851
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    #@14
    if-nez v2, :cond_0

    #@16
    .line 852
    new-instance v2, Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    #@18
    invoke-direct {v2, p0}, Lcom/android/internal/util/AsyncChannel$DeathMonitor;-><init>(Lcom/android/internal/util/AsyncChannel;)V

    #@1b
    iput-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    #@1d
    .line 854
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    #@1f
    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    #@22
    move-result-object v2

    #@23
    iget-object v3, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    #@25
    const/4 v4, 0x0

    #@26
    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 862
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    #@2b
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@2e
    .line 842
    return-void

    #@2f
    .line 855
    :catch_0
    move-exception v0

    #@30
    .line 856
    .local v0, "e":Landroid/os/RemoteException;
    iput-object v5, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    #@32
    .line 858
    const/4 v2, 0x1

    #@33
    iput v2, v1, Landroid/os/Message;->arg1:I

    #@35
    goto :goto_0
.end method


# virtual methods
.method public connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .param p3, "dstHandler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 418
    new-instance v0, Landroid/os/Messenger;

    #@2
    invoke-direct {v0, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@5
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    #@8
    .line 417
    return-void
.end method

.method public connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    .locals 1
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .param p3, "dstMessenger"    # Landroid/os/Messenger;

    #@0
    .prologue
    .line 377
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    #@3
    .line 380
    const/4 v0, 0x0

    #@4
    invoke-direct {p0, v0}, Lcom/android/internal/util/AsyncChannel;->replyHalfConnected(I)V

    #@7
    .line 373
    return-void
.end method

.method public connect(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Class;)V
    .locals 2
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 359
    .local p3, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 358
    return-void
.end method

.method public connect(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .param p3, "dstPackageName"    # Ljava/lang/String;
    .param p4, "dstClassName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 341
    new-instance v0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move-object v4, p3

    #@6
    move-object v5, p4

    #@7
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;-><init>(Lcom/android/internal/util/AsyncChannel;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 342
    .local v0, "ca":Lcom/android/internal/util/AsyncChannel$1ConnectAsync;
    new-instance v1, Ljava/lang/Thread;

    #@c
    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@f
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@12
    .line 316
    return-void
.end method

.method public connect(Lcom/android/internal/util/AsyncService;Landroid/os/Messenger;)V
    .locals 1
    .param p1, "srcAsyncService"    # Lcom/android/internal/util/AsyncService;
    .param p2, "dstMessenger"    # Landroid/os/Messenger;

    #@0
    .prologue
    .line 432
    invoke-virtual {p1}, Lcom/android/internal/util/AsyncService;->getHandler()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    #@7
    .line 431
    return-void
.end method

.method public connectSrcHandlerToPackageSync(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .param p3, "dstPackageName"    # Ljava/lang/String;
    .param p4, "dstClassName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 226
    new-instance v3, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    #@3
    invoke-direct {v3, p0}, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;-><init>(Lcom/android/internal/util/AsyncChannel;)V

    #@6
    iput-object v3, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    #@8
    .line 229
    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    #@a
    .line 230
    iput-object p2, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    #@c
    .line 231
    new-instance v3, Landroid/os/Messenger;

    #@e
    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@11
    iput-object v3, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    #@13
    .line 238
    const/4 v3, 0x0

    #@14
    iput-object v3, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    #@16
    .line 241
    new-instance v0, Landroid/content/Intent;

    #@18
    const-string/jumbo v3, "android.intent.action.MAIN"

    #@1b
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1e
    .line 242
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@21
    .line 243
    iget-object v3, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    #@23
    invoke-virtual {p1, v0, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@26
    move-result v1

    #@27
    .line 245
    .local v1, "result":Z
    if-eqz v1, :cond_0

    #@29
    const/4 v2, 0x0

    #@2a
    :cond_0
    return v2
.end method

.method public connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I
    .locals 1
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .param p3, "dstHandler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 279
    new-instance v0, Landroid/os/Messenger;

    #@2
    invoke-direct {v0, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@5
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I
    .locals 1
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .param p3, "dstMessenger"    # Landroid/os/Messenger;

    #@0
    .prologue
    .line 262
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    #@3
    .line 265
    const/4 v0, 0x0

    #@4
    return v0
.end method

.method public connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    .locals 2
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .param p3, "dstMessenger"    # Landroid/os/Messenger;

    #@0
    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    #@2
    .line 400
    iput-object p2, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    #@4
    .line 401
    new-instance v0, Landroid/os/Messenger;

    #@6
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    #@8
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@b
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    #@d
    .line 404
    iput-object p3, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    #@f
    .line 395
    return-void
.end method

.method public disconnect()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 451
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    #@4
    if-eqz v2, :cond_0

    #@6
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 452
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    #@c
    iget-object v3, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    #@e
    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@11
    .line 453
    iput-object v4, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    #@13
    .line 458
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@16
    move-result-object v1

    #@17
    .line 459
    .local v1, "msg":Landroid/os/Message;
    const v2, 0x11004

    #@1a
    iput v2, v1, Landroid/os/Message;->what:I

    #@1c
    .line 460
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    #@1e
    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@20
    .line 461
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    #@22
    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 465
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    invoke-direct {p0, v5}, Lcom/android/internal/util/AsyncChannel;->replyDisconnected(I)V

    #@28
    .line 466
    iput-object v4, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    #@2a
    .line 468
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    #@2c
    if-nez v2, :cond_1

    #@2e
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    #@30
    if-eqz v2, :cond_1

    #@32
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    #@34
    if-eqz v2, :cond_1

    #@36
    .line 469
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    #@38
    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    #@3b
    move-result-object v2

    #@3c
    iget-object v3, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    #@3e
    invoke-interface {v2, v3, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@41
    .line 470
    iput-object v4, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    #@43
    .line 450
    :cond_1
    return-void

    #@44
    .line 462
    :catch_0
    move-exception v0

    #@45
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public disconnected()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 439
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    #@3
    .line 440
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    #@5
    .line 441
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    #@7
    .line 442
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    #@9
    .line 443
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    #@b
    .line 444
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    #@d
    .line 438
    return-void
.end method

.method public fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I
    .locals 3
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcHandler"    # Landroid/os/Handler;
    .param p3, "dstHandler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 293
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    #@3
    move-result v1

    #@4
    .line 294
    .local v1, "status":I
    if-nez v1, :cond_0

    #@6
    .line 295
    const v2, 0x11001

    #@9
    invoke-virtual {p0, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    .line 296
    .local v0, "response":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    #@f
    .line 298
    .end local v0    # "response":Landroid/os/Message;
    :cond_0
    return v1
.end method

.method public replyToMessage(Landroid/os/Message;I)V
    .locals 1
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "what"    # I

    #@0
    .prologue
    .line 580
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 581
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    #@6
    .line 582
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    #@9
    .line 579
    return-void
.end method

.method public replyToMessage(Landroid/os/Message;II)V
    .locals 1
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    #@0
    .prologue
    .line 593
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 594
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    #@6
    .line 595
    iput p3, v0, Landroid/os/Message;->arg1:I

    #@8
    .line 596
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    #@b
    .line 592
    return-void
.end method

.method public replyToMessage(Landroid/os/Message;III)V
    .locals 1
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    #@0
    .prologue
    .line 608
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 609
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    #@6
    .line 610
    iput p3, v0, Landroid/os/Message;->arg1:I

    #@8
    .line 611
    iput p4, v0, Landroid/os/Message;->arg2:I

    #@a
    .line 612
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    #@d
    .line 607
    return-void
.end method

.method public replyToMessage(Landroid/os/Message;IIILjava/lang/Object;)V
    .locals 1
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 625
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 626
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    #@6
    .line 627
    iput p3, v0, Landroid/os/Message;->arg1:I

    #@8
    .line 628
    iput p4, v0, Landroid/os/Message;->arg2:I

    #@a
    .line 629
    iput-object p5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    .line 630
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    #@f
    .line 624
    return-void
.end method

.method public replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 1
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 641
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 642
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    #@6
    .line 643
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    .line 644
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    #@b
    .line 640
    return-void
.end method

.method public replyToMessage(Landroid/os/Message;Landroid/os/Message;)V
    .locals 3
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "dstMsg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 565
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    #@2
    iput-object v1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@4
    .line 566
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@6
    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 563
    :goto_0
    return-void

    #@a
    .line 567
    :catch_0
    move-exception v0

    #@b
    .line 568
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "TODO: handle replyToMessage RemoteException"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v1}, Lcom/android/internal/util/AsyncChannel;->log(Ljava/lang/String;)V

    #@22
    .line 569
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    #@25
    goto :goto_0
.end method

.method public sendMessage(I)V
    .locals 1
    .param p1, "what"    # I

    #@0
    .prologue
    .line 494
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 495
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    #@6
    .line 496
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    #@9
    .line 493
    return-void
.end method

.method public sendMessage(II)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    #@0
    .prologue
    .line 506
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 507
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    #@6
    .line 508
    iput p2, v0, Landroid/os/Message;->arg1:I

    #@8
    .line 509
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    #@b
    .line 505
    return-void
.end method

.method public sendMessage(III)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    #@0
    .prologue
    .line 520
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 521
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    #@6
    .line 522
    iput p2, v0, Landroid/os/Message;->arg1:I

    #@8
    .line 523
    iput p3, v0, Landroid/os/Message;->arg2:I

    #@a
    .line 524
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    #@d
    .line 519
    return-void
.end method

.method public sendMessage(IIILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 536
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 537
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    #@6
    .line 538
    iput p2, v0, Landroid/os/Message;->arg1:I

    #@8
    .line 539
    iput p3, v0, Landroid/os/Message;->arg2:I

    #@a
    .line 540
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    .line 541
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    #@f
    .line 535
    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 551
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 552
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    #@6
    .line 553
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    .line 554
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    #@b
    .line 550
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 480
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    #@2
    iput-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@4
    .line 482
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    #@6
    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 479
    :goto_0
    return-void

    #@a
    .line 483
    :catch_0
    move-exception v0

    #@b
    .line 484
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    #@c
    invoke-direct {p0, v1}, Lcom/android/internal/util/AsyncChannel;->replyDisconnected(I)V

    #@f
    goto :goto_0
.end method

.method public sendMessageSynchronously(I)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I

    #@0
    .prologue
    .line 665
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 666
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    #@6
    .line 667
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    .line 668
    .local v1, "resultMsg":Landroid/os/Message;
    return-object v1
.end method

.method public sendMessageSynchronously(II)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    #@0
    .prologue
    .line 679
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 680
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    #@6
    .line 681
    iput p2, v0, Landroid/os/Message;->arg1:I

    #@8
    .line 682
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    #@b
    move-result-object v1

    #@c
    .line 683
    .local v1, "resultMsg":Landroid/os/Message;
    return-object v1
.end method

.method public sendMessageSynchronously(III)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    #@0
    .prologue
    .line 695
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 696
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    #@6
    .line 697
    iput p2, v0, Landroid/os/Message;->arg1:I

    #@8
    .line 698
    iput p3, v0, Landroid/os/Message;->arg2:I

    #@a
    .line 699
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    #@d
    move-result-object v1

    #@e
    .line 700
    .local v1, "resultMsg":Landroid/os/Message;
    return-object v1
.end method

.method public sendMessageSynchronously(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 713
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 714
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    #@6
    .line 715
    iput p2, v0, Landroid/os/Message;->arg1:I

    #@8
    .line 716
    iput p3, v0, Landroid/os/Message;->arg2:I

    #@a
    .line 717
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    .line 718
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    #@f
    move-result-object v1

    #@10
    .line 719
    .local v1, "resultMsg":Landroid/os/Message;
    return-object v1
.end method

.method public sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 730
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 731
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    #@6
    .line 732
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    .line 733
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    #@b
    move-result-object v1

    #@c
    .line 734
    .local v1, "resultMsg":Landroid/os/Message;
    return-object v1
.end method

.method public sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 654
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->-wrap0(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    .line 655
    .local v0, "resultMsg":Landroid/os/Message;
    return-object v0
.end method
