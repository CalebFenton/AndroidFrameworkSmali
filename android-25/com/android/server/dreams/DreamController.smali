.class final Lcom/android/server/dreams/DreamController;
.super Ljava/lang/Object;
.source "DreamController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/dreams/DreamController$1;,
        Lcom/android/server/dreams/DreamController$2;,
        Lcom/android/server/dreams/DreamController$DreamRecord;,
        Lcom/android/server/dreams/DreamController$Listener;
    }
.end annotation


# static fields
.field private static final DREAM_CONNECTION_TIMEOUT:I = 0x1388

.field private static final DREAM_FINISH_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DreamController"


# instance fields
.field private final mCloseNotificationShadeIntent:Landroid/content/Intent;

.field private final mContext:Landroid/content/Context;

.field private mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

.field private mDreamStartTime:J

.field private final mDreamingStartedIntent:Landroid/content/Intent;

.field private final mDreamingStoppedIntent:Landroid/content/Intent;

.field private final mHandler:Landroid/os/Handler;

.field private final mIWindowManager:Landroid/view/IWindowManager;

.field private final mListener:Lcom/android/server/dreams/DreamController$Listener;

.field private final mStopStubbornDreamRunnable:Ljava/lang/Runnable;

.field private final mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$Listener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mListener:Lcom/android/server/dreams/DreamController$Listener;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/dreams/DreamController;Landroid/service/dreams/IDreamService;)V
    .locals 0
    .param p1, "service"    # Landroid/service/dreams/IDreamService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamController;->attach(Landroid/service/dreams/IDreamService;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/dreams/DreamController$Listener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/android/server/dreams/DreamController$Listener;

    #@0
    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    #@2
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 67
    new-instance v0, Landroid/content/Intent;

    #@7
    const-string/jumbo v1, "android.intent.action.DREAMING_STARTED"

    #@a
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mDreamingStartedIntent:Landroid/content/Intent;

    #@13
    .line 69
    new-instance v0, Landroid/content/Intent;

    #@15
    const-string/jumbo v1, "android.intent.action.DREAMING_STOPPED"

    #@18
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1b
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mDreamingStoppedIntent:Landroid/content/Intent;

    #@21
    .line 76
    new-instance v0, Lcom/android/server/dreams/DreamController$1;

    #@23
    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamController$1;-><init>(Lcom/android/server/dreams/DreamController;)V

    #@26
    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

    #@28
    .line 86
    new-instance v0, Lcom/android/server/dreams/DreamController$2;

    #@2a
    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamController$2;-><init>(Lcom/android/server/dreams/DreamController;)V

    #@2d
    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mStopStubbornDreamRunnable:Ljava/lang/Runnable;

    #@2f
    .line 95
    iput-object p1, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    #@31
    .line 96
    iput-object p2, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    #@33
    .line 97
    iput-object p3, p0, Lcom/android/server/dreams/DreamController;->mListener:Lcom/android/server/dreams/DreamController$Listener;

    #@35
    .line 98
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mIWindowManager:Landroid/view/IWindowManager;

    #@3b
    .line 99
    new-instance v0, Landroid/content/Intent;

    #@3d
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    #@40
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@43
    iput-object v0, p0, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeIntent:Landroid/content/Intent;

    #@45
    .line 100
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeIntent:Landroid/content/Intent;

    #@47
    const-string/jumbo v1, "reason"

    #@4a
    const-string/jumbo v2, "dream"

    #@4d
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@50
    .line 94
    return-void
.end method

.method private attach(Landroid/service/dreams/IDreamService;)V
    .locals 5
    .param p1, "service"    # Landroid/service/dreams/IDreamService;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 257
    :try_start_0
    invoke-interface {p1}, Landroid/service/dreams/IDreamService;->asBinder()Landroid/os/IBinder;

    #@4
    move-result-object v1

    #@5
    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@7
    const/4 v3, 0x0

    #@8
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@b
    .line 258
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@d
    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    #@f
    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@11
    iget-boolean v2, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    #@13
    .line 259
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@15
    iget-object v3, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamingStartedCallback:Landroid/os/IRemoteCallback;

    #@17
    .line 258
    invoke-interface {p1, v1, v2, v3}, Landroid/service/dreams/IDreamService;->attach(Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 266
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@1c
    iput-object p1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    #@1e
    .line 268
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@20
    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsTest:Z

    #@22
    if-nez v1, :cond_0

    #@24
    .line 269
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    #@26
    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mDreamingStartedIntent:Landroid/content/Intent;

    #@28
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@2a
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@2d
    .line 270
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@2f
    iput-boolean v4, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mSentStartBroadcast:Z

    #@31
    .line 255
    :cond_0
    return-void

    #@32
    .line 260
    :catch_0
    move-exception v0

    #@33
    .line 261
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DreamController"

    #@36
    const-string/jumbo v2, "The dream service died unexpectedly."

    #@39
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3c
    .line 262
    invoke-virtual {p0, v4}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V

    #@3f
    .line 263
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 104
    const-string/jumbo v0, "Dreamland:"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 105
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 106
    const-string/jumbo v0, "  mCurrentDream:"

    #@d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v1, "    mToken="

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@1e
    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2b
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v1, "    mName="

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@39
    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@46
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v1, "    mIsTest="

    #@4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@54
    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsTest:Z

    #@56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@61
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v1, "    mCanDoze="

    #@69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@6f
    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    #@71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@74
    move-result-object v0

    #@75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v0

    #@79
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7c
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v1, "    mUserId="

    #@84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v0

    #@88
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@8a
    iget v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mUserId:I

    #@8c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v0

    #@90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v0

    #@94
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@97
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v1, "    mBound="

    #@9f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v0

    #@a3
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@a5
    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    #@a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v0

    #@ab
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v0

    #@af
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b2
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    #@b4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b7
    const-string/jumbo v1, "    mService="

    #@ba
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v0

    #@be
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@c0
    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    #@c2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v0

    #@c6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v0

    #@ca
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cd
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    const-string/jumbo v1, "    mSentStartBroadcast="

    #@d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v0

    #@d9
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@db
    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mSentStartBroadcast:Z

    #@dd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v0

    #@e1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e4
    move-result-object v0

    #@e5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e8
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    #@ea
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ed
    const-string/jumbo v1, "    mWakingGently="

    #@f0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v0

    #@f4
    iget-object v1, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@f6
    iget-boolean v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakingGently:Z

    #@f8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v0

    #@fc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v0

    #@100
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@103
    .line 103
    :goto_0
    return-void

    #@104
    .line 117
    :cond_0
    const-string/jumbo v0, "  mCurrentDream: null"

    #@107
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10a
    goto :goto_0
.end method

.method public startDream(Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V
    .locals 13
    .param p1, "token"    # Landroid/os/Binder;
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "isTest"    # Z
    .param p4, "canDoze"    # Z
    .param p5, "userId"    # I
    .param p6, "wakeLock"    # Landroid/os/PowerManager$WakeLock;

    #@0
    .prologue
    .line 123
    const/4 v2, 0x1

    #@1
    invoke-virtual {p0, v2}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V

    #@4
    .line 125
    const-string/jumbo v2, "startDream"

    #@7
    const-wide/32 v4, 0x20000

    #@a
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@d
    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    #@f
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeIntent:Landroid/content/Intent;

    #@11
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@13
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@16
    .line 130
    const-string/jumbo v2, "DreamController"

    #@19
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "Starting dream: name="

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    .line 131
    const-string/jumbo v4, ", isTest="

    #@2c
    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    move/from16 v0, p3

    #@32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    .line 131
    const-string/jumbo v4, ", canDoze="

    #@39
    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    move/from16 v0, p4

    #@3f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    .line 132
    const-string/jumbo v4, ", userId="

    #@46
    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    move/from16 v0, p5

    #@4c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 134
    new-instance v2, Lcom/android/server/dreams/DreamController$DreamRecord;

    #@59
    move-object v3, p0

    #@5a
    move-object v4, p1

    #@5b
    move-object v5, p2

    #@5c
    move/from16 v6, p3

    #@5e
    move/from16 v7, p4

    #@60
    move/from16 v8, p5

    #@62
    move-object/from16 v9, p6

    #@64
    invoke-direct/range {v2 .. v9}, Lcom/android/server/dreams/DreamController$DreamRecord;-><init>(Lcom/android/server/dreams/DreamController;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V

    #@67
    iput-object v2, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@69
    .line 136
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@6c
    move-result-wide v2

    #@6d
    iput-wide v2, p0, Lcom/android/server/dreams/DreamController;->mDreamStartTime:J

    #@6f
    .line 137
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    #@71
    .line 138
    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@73
    iget-boolean v2, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    #@75
    if-eqz v2, :cond_0

    #@77
    const/16 v2, 0xdf

    #@79
    .line 137
    :goto_0
    invoke-static {v3, v2}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7c
    .line 141
    :try_start_1
    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mIWindowManager:Landroid/view/IWindowManager;

    #@7e
    const/16 v3, 0x7e7

    #@80
    invoke-interface {v2, p1, v3}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@83
    .line 148
    :try_start_2
    new-instance v12, Landroid/content/Intent;

    #@85
    const-string/jumbo v2, "android.service.dreams.DreamService"

    #@88
    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8b
    .line 149
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual {v12, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@8e
    .line 150
    const/high16 v2, 0x800000

    #@90
    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@93
    .line 152
    :try_start_3
    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    #@95
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@97
    .line 154
    new-instance v4, Landroid/os/UserHandle;

    #@99
    move/from16 v0, p5

    #@9b
    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@9e
    .line 153
    const v5, 0x4000001

    #@a1
    .line 152
    invoke-virtual {v2, v12, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@a4
    move-result v2

    #@a5
    if-nez v2, :cond_1

    #@a7
    .line 155
    const-string/jumbo v2, "DreamController"

    #@aa
    new-instance v3, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v4, "Unable to bind dream service: "

    #@b2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v3

    #@b6
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v3

    #@ba
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v3

    #@be
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c1
    .line 156
    const/4 v2, 0x1

    #@c2
    invoke-virtual {p0, v2}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c5
    .line 168
    const-wide/32 v2, 0x20000

    #@c8
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@cb
    .line 157
    return-void

    #@cc
    .line 138
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_0
    const/16 v2, 0xde

    #@ce
    goto :goto_0

    #@cf
    .line 142
    :catch_0
    move-exception v10

    #@d0
    .line 143
    .local v10, "ex":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v2, "DreamController"

    #@d3
    const-string/jumbo v3, "Unable to add window token for dream."

    #@d6
    invoke-static {v2, v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@d9
    .line 144
    const/4 v2, 0x1

    #@da
    invoke-virtual {p0, v2}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@dd
    .line 168
    const-wide/32 v2, 0x20000

    #@e0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@e3
    .line 145
    return-void

    #@e4
    .line 159
    .end local v10    # "ex":Landroid/os/RemoteException;
    .restart local v12    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v11

    #@e5
    .line 160
    .local v11, "ex":Ljava/lang/SecurityException;
    :try_start_5
    const-string/jumbo v2, "DreamController"

    #@e8
    new-instance v3, Ljava/lang/StringBuilder;

    #@ea
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ed
    const-string/jumbo v4, "Unable to bind dream service: "

    #@f0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v3

    #@f4
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v3

    #@f8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object v3

    #@fc
    invoke-static {v2, v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@ff
    .line 161
    const/4 v2, 0x1

    #@100
    invoke-virtual {p0, v2}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@103
    .line 168
    const-wide/32 v2, 0x20000

    #@106
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@109
    .line 162
    return-void

    #@10a
    .line 165
    .end local v11    # "ex":Ljava/lang/SecurityException;
    :cond_1
    :try_start_6
    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@10c
    const/4 v3, 0x1

    #@10d
    iput-boolean v3, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    #@10f
    .line 166
    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    #@111
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

    #@113
    const-wide/16 v4, 0x1388

    #@115
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@118
    .line 168
    const-wide/32 v2, 0x20000

    #@11b
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@11e
    .line 122
    return-void

    #@11f
    .line 167
    .end local v12    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    #@120
    .line 168
    const-wide/32 v4, 0x20000

    #@123
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@126
    .line 167
    throw v2
.end method

.method public stopDream(Z)V
    .locals 12
    .param p1, "immediate"    # Z

    #@0
    .prologue
    const-wide/32 v10, 0x20000

    #@3
    .line 173
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@5
    if-nez v3, :cond_0

    #@7
    .line 174
    return-void

    #@8
    .line 177
    :cond_0
    const-string/jumbo v3, "stopDream"

    #@b
    invoke-static {v10, v11, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@e
    .line 179
    if-nez p1, :cond_2

    #@10
    .line 180
    :try_start_0
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@12
    iget-boolean v3, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakingGently:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    if-eqz v3, :cond_1

    #@16
    .line 251
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@19
    .line 181
    return-void

    #@1a
    .line 184
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@1c
    iget-object v3, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    #@1e
    if-eqz v3, :cond_2

    #@20
    .line 186
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@22
    const/4 v4, 0x1

    #@23
    iput-boolean v4, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakingGently:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    .line 188
    :try_start_2
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@27
    iget-object v3, v3, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    #@29
    invoke-interface {v3}, Landroid/service/dreams/IDreamService;->wakeUp()V

    #@2c
    .line 189
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    #@2e
    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mStopStubbornDreamRunnable:Ljava/lang/Runnable;

    #@30
    const-wide/16 v6, 0x1388

    #@32
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@35
    .line 251
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@38
    .line 190
    return-void

    #@39
    .line 191
    :catch_0
    move-exception v0

    #@3a
    .line 197
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@3c
    .line 198
    .local v2, "oldDream":Lcom/android/server/dreams/DreamController$DreamRecord;
    const/4 v3, 0x0

    #@3d
    iput-object v3, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@3f
    .line 199
    const-string/jumbo v3, "DreamController"

    #@42
    new-instance v4, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v5, "Stopping dream: name="

    #@4a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    iget-object v5, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    .line 200
    const-string/jumbo v5, ", isTest="

    #@57
    .line 199
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    .line 200
    iget-boolean v5, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsTest:Z

    #@5d
    .line 199
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    .line 200
    const-string/jumbo v5, ", canDoze="

    #@64
    .line 199
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v4

    #@68
    .line 200
    iget-boolean v5, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    #@6a
    .line 199
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    .line 201
    const-string/jumbo v5, ", userId="

    #@71
    .line 199
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    .line 201
    iget v5, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mUserId:I

    #@77
    .line 199
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v4

    #@7f
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@82
    .line 202
    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    #@84
    .line 203
    iget-boolean v3, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    #@86
    if-eqz v3, :cond_6

    #@88
    const/16 v3, 0xdf

    #@8a
    .line 202
    :goto_0
    invoke-static {v4, v3}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    #@8d
    .line 204
    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    #@8f
    .line 205
    iget-boolean v3, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    #@91
    if-eqz v3, :cond_7

    #@93
    const-string/jumbo v3, "dozing_minutes"

    #@96
    .line 206
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@99
    move-result-wide v6

    #@9a
    iget-wide v8, p0, Lcom/android/server/dreams/DreamController;->mDreamStartTime:J

    #@9c
    sub-long/2addr v6, v8

    #@9d
    const-wide/32 v8, 0xea60

    #@a0
    div-long/2addr v6, v8

    #@a1
    long-to-int v5, v6

    #@a2
    .line 204
    invoke-static {v4, v3, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@a5
    .line 208
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    #@a7
    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mStopUnconnectedDreamRunnable:Ljava/lang/Runnable;

    #@a9
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@ac
    .line 209
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    #@ae
    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mStopStubbornDreamRunnable:Ljava/lang/Runnable;

    #@b0
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@b3
    .line 211
    iget-boolean v3, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mSentStartBroadcast:Z

    #@b5
    if-eqz v3, :cond_3

    #@b7
    .line 212
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    #@b9
    iget-object v4, p0, Lcom/android/server/dreams/DreamController;->mDreamingStoppedIntent:Landroid/content/Intent;

    #@bb
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@bd
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@c0
    .line 215
    :cond_3
    iget-object v3, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c2
    if-eqz v3, :cond_4

    #@c4
    .line 220
    :try_start_4
    iget-object v3, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    #@c6
    invoke-interface {v3}, Landroid/service/dreams/IDreamService;->detach()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@c9
    .line 226
    :goto_2
    :try_start_5
    iget-object v3, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    #@cb
    invoke-interface {v3}, Landroid/service/dreams/IDreamService;->asBinder()Landroid/os/IBinder;

    #@ce
    move-result-object v3

    #@cf
    const/4 v4, 0x0

    #@d0
    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@d3
    .line 230
    :goto_3
    const/4 v3, 0x0

    #@d4
    :try_start_6
    iput-object v3, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    #@d6
    .line 233
    :cond_4
    iget-boolean v3, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    #@d8
    if-eqz v3, :cond_5

    #@da
    .line 234
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    #@dc
    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@df
    .line 236
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/dreams/DreamController$DreamRecord;->releaseWakeLockIfNeeded()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@e2
    .line 239
    :try_start_7
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mIWindowManager:Landroid/view/IWindowManager;

    #@e4
    iget-object v4, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    #@e6
    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@e9
    .line 244
    :goto_4
    :try_start_8
    iget-object v3, p0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    #@eb
    new-instance v4, Lcom/android/server/dreams/DreamController$3;

    #@ed
    invoke-direct {v4, p0, v2}, Lcom/android/server/dreams/DreamController$3;-><init>(Lcom/android/server/dreams/DreamController;Lcom/android/server/dreams/DreamController$DreamRecord;)V

    #@f0
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@f3
    .line 251
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@f6
    .line 172
    return-void

    #@f7
    .line 203
    :cond_6
    const/16 v3, 0xde

    #@f9
    goto :goto_0

    #@fa
    .line 205
    :cond_7
    :try_start_9
    const-string/jumbo v3, "dreaming_minutes"

    #@fd
    goto :goto_1

    #@fe
    .line 240
    :catch_1
    move-exception v0

    #@ff
    .line 241
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "DreamController"

    #@102
    const-string/jumbo v4, "Error removing window token for dream."

    #@105
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@108
    goto :goto_4

    #@109
    .line 250
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "oldDream":Lcom/android/server/dreams/DreamController$DreamRecord;
    :catchall_0
    move-exception v3

    #@10a
    .line 251
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@10d
    .line 250
    throw v3

    #@10e
    .line 227
    .restart local v2    # "oldDream":Lcom/android/server/dreams/DreamController$DreamRecord;
    :catch_2
    move-exception v1

    #@10f
    .local v1, "ex":Ljava/util/NoSuchElementException;
    goto :goto_3

    #@110
    .line 221
    .end local v1    # "ex":Ljava/util/NoSuchElementException;
    :catch_3
    move-exception v0

    #@111
    .restart local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_2
.end method
