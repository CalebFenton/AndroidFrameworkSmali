.class public Landroid/media/MediaController2;
.super Ljava/lang/Object;
.source "MediaController2.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaController2$ControllerCallback;,
        Landroid/media/MediaController2$SessionServiceConnection;,
        Landroid/media/MediaController2$Builder;
    }
.end annotation


# static fields
.field static final blacklist DEBUG:Z

.field static final blacklist TAG:Ljava/lang/String; = "MediaController2"


# instance fields
.field private blacklist mAllowedCommands:Landroid/media/Session2CommandGroup;

.field final blacklist mCallback:Landroid/media/MediaController2$ControllerCallback;

.field private final blacklist mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mClosed:Z

.field private blacklist mConnectedToken:Landroid/media/Session2Token;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mControllerStub:Landroid/media/Controller2Link;

.field private final blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mNextSeqNumber:I

.field private blacklist mPendingCommands:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/ResultReceiver;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPlaybackActive:Z

.field private blacklist mRequestedCommandSeqNumbers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mResultHandler:Landroid/os/Handler;

.field private final blacklist mServiceConnection:Landroid/media/MediaController2$SessionServiceConnection;

.field private blacklist mSessionBinder:Landroid/media/Session2Link;

.field private final blacklist mSessionToken:Landroid/media/Session2Token;


# direct methods
.method public static synthetic blacklist $r8$lambda$Gz1M_daCrW0yd8QCzkxMD354vFU(Landroid/media/MediaController2;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/media/MediaController2;->lambda$new$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KaI5TfbHWsYHHwra12sXX6NN-lI(Landroid/media/MediaController2;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/media/MediaController2;->lambda$onPlaybackActiveChanged$3(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_Jb90bEOD3ATbJo4nl_YC1jp5QM(Landroid/media/MediaController2;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/media/MediaController2;->lambda$close$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cSyt-3H3zyQyiQCyxu--BW9jGnY(Landroid/media/MediaController2;ILandroid/os/ResultReceiver;Landroid/media/Session2Command;Landroid/os/Bundle;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaController2;->lambda$onSessionCommand$4(ILandroid/os/ResultReceiver;Landroid/media/Session2Command;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$g-bSEHvhTDfYKta0BRzWXO45XC4(Landroid/media/MediaController2;Landroid/media/Session2CommandGroup;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/media/MediaController2;->lambda$onConnected$2(Landroid/media/Session2CommandGroup;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackExecutor(Landroid/media/MediaController2;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/MediaController2;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmControllerStub(Landroid/media/MediaController2;)Landroid/media/Controller2Link;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/MediaController2;->mControllerStub:Landroid/media/Controller2Link;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/media/MediaController2;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/MediaController2;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingCommands(Landroid/media/MediaController2;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/MediaController2;->mPendingCommands:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionToken(Landroid/media/MediaController2;)Landroid/media/Session2Token;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/MediaController2;->mSessionToken:Landroid/media/Session2Token;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateConnectionRequest(Landroid/media/MediaController2;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/media/MediaController2;->createConnectionRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNextSeqNumber(Landroid/media/MediaController2;)I
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/media/MediaController2;->getNextSeqNumber()I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 60
    const-string v0, "MediaController2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/MediaController2;->DEBUG:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/media/Session2Token;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)V
    .registers 7

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/media/MediaController2$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/media/MediaController2$$ExternalSyntheticLambda2;-><init>(Landroid/media/MediaController2;)V

    iput-object v0, p0, Landroid/media/MediaController2;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaController2;->mLock:Ljava/lang/Object;

    if-eqz p1, :cond_74

    if-eqz p2, :cond_6c

    .line 111
    iput-object p1, p0, Landroid/media/MediaController2;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Landroid/media/MediaController2;->mSessionToken:Landroid/media/Session2Token;

    if-nez p4, :cond_1f

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p4

    :cond_1f
    iput-object p4, p0, Landroid/media/MediaController2;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    if-nez p5, :cond_28

    .line 114
    new-instance p5, Landroid/media/MediaController2$1;

    invoke-direct {p5, p0}, Landroid/media/MediaController2$1;-><init>(Landroid/media/MediaController2;)V

    :cond_28
    iput-object p5, p0, Landroid/media/MediaController2;->mCallback:Landroid/media/MediaController2$ControllerCallback;

    .line 115
    new-instance p4, Landroid/media/Controller2Link;

    invoke-direct {p4, p0}, Landroid/media/Controller2Link;-><init>(Landroid/media/MediaController2;)V

    iput-object p4, p0, Landroid/media/MediaController2;->mControllerStub:Landroid/media/Controller2Link;

    .line 117
    new-instance p4, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p4, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p4, p0, Landroid/media/MediaController2;->mResultHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 119
    iput p1, p0, Landroid/media/MediaController2;->mNextSeqNumber:I

    .line 120
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroid/media/MediaController2;->mPendingCommands:Landroid/util/ArrayMap;

    .line 121
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Landroid/media/MediaController2;->mRequestedCommandSeqNumbers:Landroid/util/ArraySet;

    .line 124
    invoke-virtual {p2}, Landroid/media/Session2Token;->getType()I

    move-result p1

    if-nez p1, :cond_5b

    const/4 p1, 0x0

    .line 125
    iput-object p1, p0, Landroid/media/MediaController2;->mServiceConnection:Landroid/media/MediaController2$SessionServiceConnection;

    .line 126
    invoke-direct {p0, p3}, Landroid/media/MediaController2;->requestConnectToSession(Landroid/os/Bundle;)Z

    move-result p1

    goto :goto_66

    .line 128
    :cond_5b
    new-instance p1, Landroid/media/MediaController2$SessionServiceConnection;

    invoke-direct {p1, p0, p3}, Landroid/media/MediaController2$SessionServiceConnection;-><init>(Landroid/media/MediaController2;Landroid/os/Bundle;)V

    iput-object p1, p0, Landroid/media/MediaController2;->mServiceConnection:Landroid/media/MediaController2$SessionServiceConnection;

    .line 129
    invoke-direct {p0}, Landroid/media/MediaController2;->requestConnectToService()Z

    move-result p1

    :goto_66
    if-nez p1, :cond_6b

    .line 132
    invoke-virtual {p0}, Landroid/media/MediaController2;->close()V

    :cond_6b
    return-void

    .line 109
    :cond_6c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "token shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :cond_74
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist createConnectionRequest(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    .line 359
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 360
    iget-object p0, p0, Landroid/media/MediaController2;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "android.media.key.PACKAGE_NAME"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string p0, "android.media.key.PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 362
    const-string p0, "android.media.key.CONNECTION_HINTS"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method private blacklist getNextSeqNumber()I
    .registers 4

    .line 353
    iget-object v0, p0, Landroid/media/MediaController2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_3
    iget v1, p0, Landroid/media/MediaController2;->mNextSeqNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/media/MediaController2;->mNextSeqNumber:I

    monitor-exit v0

    return v1

    :catchall_b
    move-exception p0

    .line 355
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method private synthetic blacklist lambda$close$1()V
    .registers 2

    .line 164
    iget-object v0, p0, Landroid/media/MediaController2;->mCallback:Landroid/media/MediaController2$ControllerCallback;

    invoke-virtual {v0, p0}, Landroid/media/MediaController2$ControllerCallback;->onDisconnected(Landroid/media/MediaController2;)V

    return-void
.end method

.method private synthetic blacklist lambda$new$0()V
    .registers 1

    .line 65
    invoke-virtual {p0}, Landroid/media/MediaController2;->close()V

    return-void
.end method

.method private synthetic blacklist lambda$onConnected$2(Landroid/media/Session2CommandGroup;)V
    .registers 3

    .line 296
    iget-object v0, p0, Landroid/media/MediaController2;->mCallback:Landroid/media/MediaController2$ControllerCallback;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaController2$ControllerCallback;->onConnected(Landroid/media/MediaController2;Landroid/media/Session2CommandGroup;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPlaybackActiveChanged$3(Z)V
    .registers 3

    .line 312
    iget-object v0, p0, Landroid/media/MediaController2;->mCallback:Landroid/media/MediaController2$ControllerCallback;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaController2$ControllerCallback;->onPlaybackActiveChanged(Landroid/media/MediaController2;Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onSessionCommand$4(ILandroid/os/ResultReceiver;Landroid/media/Session2Command;Landroid/os/Bundle;)V
    .registers 7

    .line 324
    iget-object v0, p0, Landroid/media/MediaController2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaController2;->mRequestedCommandSeqNumbers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    .line 326
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_32

    const/4 v0, 0x0

    if-nez p1, :cond_18

    if-eqz p2, :cond_31

    .line 329
    invoke-virtual {p2, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    .line 333
    :cond_18
    iget-object p1, p0, Landroid/media/MediaController2;->mCallback:Landroid/media/MediaController2$ControllerCallback;

    invoke-virtual {p1, p0, p3, p4}, Landroid/media/MediaController2$ControllerCallback;->onSessionCommand(Landroid/media/MediaController2;Landroid/media/Session2Command;Landroid/os/Bundle;)Landroid/media/Session2Command$Result;

    move-result-object p0

    if-eqz p2, :cond_31

    if-nez p0, :cond_26

    .line 337
    invoke-virtual {p2, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    .line 339
    :cond_26
    invoke-virtual {p0}, Landroid/media/Session2Command$Result;->getResultCode()I

    move-result p1

    invoke-virtual {p0}, Landroid/media/Session2Command$Result;->getResultData()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_31
    return-void

    :catchall_32
    move-exception p0

    .line 326
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0
.end method

.method private blacklist requestConnectToService()Z
    .registers 6

    .line 380
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MediaSession2Service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Landroid/media/MediaController2;->mSessionToken:Landroid/media/Session2Token;

    invoke-virtual {v1}, Landroid/media/Session2Token;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaController2;->mSessionToken:Landroid/media/Session2Token;

    invoke-virtual {v2}, Landroid/media/Session2Token;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    iget-object v1, p0, Landroid/media/MediaController2;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 398
    :try_start_19
    iget-object v2, p0, Landroid/media/MediaController2;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/media/MediaController2;->mServiceConnection:Landroid/media/MediaController2$SessionServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_46

    .line 401
    const-string v0, "MediaController2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/MediaController2;->mSessionToken:Landroid/media/Session2Token;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " failed"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 402
    monitor-exit v1

    return p0

    :catchall_44
    move-exception p0

    goto :goto_69

    .line 403
    :cond_46
    sget-boolean v0, Landroid/media/MediaController2;->DEBUG:Z

    if-eqz v0, :cond_67

    .line 404
    const-string v0, "MediaController2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/MediaController2;->mSessionToken:Landroid/media/Session2Token;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " succeeded"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_67
    monitor-exit v1

    return v4

    :goto_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_19 .. :try_end_6a} :catchall_44

    throw p0
.end method

.method private blacklist requestConnectToSession(Landroid/os/Bundle;)Z
    .registers 4

    .line 367
    iget-object v0, p0, Landroid/media/MediaController2;->mSessionToken:Landroid/media/Session2Token;

    invoke-virtual {v0}, Landroid/media/Session2Token;->getSessionLink()Landroid/media/Session2Link;

    move-result-object v0

    .line 368
    invoke-direct {p0, p1}, Landroid/media/MediaController2;->createConnectionRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 370
    :try_start_a
    iget-object v1, p0, Landroid/media/MediaController2;->mControllerStub:Landroid/media/Controller2Link;

    invoke-direct {p0}, Landroid/media/MediaController2;->getNextSeqNumber()I

    move-result p0

    invoke-virtual {v0, v1, p0, p1}, Landroid/media/Session2Link;->connect(Landroid/media/Controller2Link;ILandroid/os/Bundle;)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_13} :catch_15

    const/4 p0, 0x1

    return p0

    :catch_15
    move-exception p0

    .line 372
    const-string p1, "MediaController2"

    const-string v0, "Failed to call connection request"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public whitelist cancelSessionCommand(Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_26

    .line 250
    iget-object v0, p0, Landroid/media/MediaController2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_5
    iget-object v1, p0, Landroid/media/MediaController2;->mSessionBinder:Landroid/media/Session2Link;

    if-nez v1, :cond_d

    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    goto :goto_24

    .line 252
    :cond_d
    iget-object v1, p0, Landroid/media/MediaController2;->mPendingCommands:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_22

    .line 254
    iget-object v1, p0, Landroid/media/MediaController2;->mSessionBinder:Landroid/media/Session2Link;

    iget-object p0, p0, Landroid/media/MediaController2;->mControllerStub:Landroid/media/Controller2Link;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p0, p1}, Landroid/media/Session2Link;->cancelSessionCommand(Landroid/media/Controller2Link;I)V

    .line 256
    :cond_22
    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_b

    throw p0

    .line 248
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "token shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api close()V
    .registers 5

    .line 138
    iget-object v0, p0, Landroid/media/MediaController2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    iget-boolean v1, p0, Landroid/media/MediaController2;->mClosed:Z

    if-eqz v1, :cond_b

    .line 142
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_61

    .line 144
    :cond_b
    sget-boolean v1, Landroid/media/MediaController2;->DEBUG:Z

    if-eqz v1, :cond_25

    .line 145
    const-string v1, "MediaController2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 v1, 0x1

    .line 147
    iput-boolean v1, p0, Landroid/media/MediaController2;->mClosed:Z

    .line 148
    iget-object v1, p0, Landroid/media/MediaController2;->mServiceConnection:Landroid/media/MediaController2$SessionServiceConnection;

    if-eqz v1, :cond_31

    .line 150
    iget-object v2, p0, Landroid/media/MediaController2;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 152
    :cond_31
    iget-object v1, p0, Landroid/media/MediaController2;->mSessionBinder:Landroid/media/Session2Link;
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_9

    if-eqz v1, :cond_46

    .line 154
    :try_start_35
    iget-object v2, p0, Landroid/media/MediaController2;->mControllerStub:Landroid/media/Controller2Link;

    invoke-direct {p0}, Landroid/media/MediaController2;->getNextSeqNumber()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/Session2Link;->disconnect(Landroid/media/Controller2Link;I)V

    .line 155
    iget-object v1, p0, Landroid/media/MediaController2;->mSessionBinder:Landroid/media/Session2Link;

    iget-object v2, p0, Landroid/media/MediaController2;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/Session2Link;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_46} :catch_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_9

    :catch_46
    :cond_46
    const/4 v1, 0x0

    .line 160
    :try_start_47
    iput-object v1, p0, Landroid/media/MediaController2;->mConnectedToken:Landroid/media/Session2Token;

    .line 161
    iget-object v2, p0, Landroid/media/MediaController2;->mPendingCommands:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 162
    iget-object v2, p0, Landroid/media/MediaController2;->mRequestedCommandSeqNumbers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 163
    iget-object v2, p0, Landroid/media/MediaController2;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaController2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/media/MediaController2$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaController2;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 166
    iput-object v1, p0, Landroid/media/MediaController2;->mSessionBinder:Landroid/media/Session2Link;

    .line 167
    monitor-exit v0

    return-void

    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_47 .. :try_end_62} :catchall_9

    throw p0
.end method

.method public whitelist getConnectedToken()Landroid/media/Session2Token;
    .registers 2

    .line 182
    iget-object v0, p0, Landroid/media/MediaController2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-object p0, p0, Landroid/media/MediaController2;->mConnectedToken:Landroid/media/Session2Token;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 184
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public whitelist isPlaybackActive()Z
    .registers 2

    .line 194
    iget-object v0, p0, Landroid/media/MediaController2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_3
    iget-boolean p0, p0, Landroid/media/MediaController2;->mPlaybackActive:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 196
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method blacklist onCancelCommand(I)V
    .registers 3

    .line 347
    iget-object v0, p0, Landroid/media/MediaController2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_3
    iget-object p0, p0, Landroid/media/MediaController2;->mRequestedCommandSeqNumbers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 349
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method blacklist onConnected(ILandroid/os/Bundle;)V
    .registers 9

    .line 261
    const-string p1, "android.media.key.SESSION2LINK"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/media/Session2Link;

    .line 262
    const-string p1, "android.media.key.ALLOWED_COMMANDS"

    .line 263
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/media/Session2CommandGroup;

    .line 264
    const-string v0, "android.media.key.PLAYBACK_ACTIVE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 266
    const-string v1, "android.media.key.TOKEN_EXTRAS"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_2a

    .line 268
    const-string p2, "MediaController2"

    const-string v1, "extras shouldn\'t be null."

    invoke-static {p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object p2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_28
    :goto_28
    move-object v5, p2

    goto :goto_3a

    .line 270
    :cond_2a
    invoke-static {p2}, Landroid/media/MediaSession2;->hasCustomParcelable(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 271
    const-string p2, "MediaController2"

    const-string v1, "extras contain custom parcelable. Ignoring."

    invoke-static {p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-object p2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_28

    .line 275
    :goto_3a
    sget-boolean p2, Landroid/media/MediaController2;->DEBUG:Z

    if-eqz p2, :cond_5c

    .line 276
    const-string p2, "MediaController2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyConnected sessionBinder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", allowedCommands="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    if-eqz v4, :cond_94

    if-nez p1, :cond_61

    goto :goto_94

    .line 284
    :cond_61
    iget-object p2, p0, Landroid/media/MediaController2;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 285
    :try_start_64
    iput-object v4, p0, Landroid/media/MediaController2;->mSessionBinder:Landroid/media/Session2Link;

    .line 286
    iput-object p1, p0, Landroid/media/MediaController2;->mAllowedCommands:Landroid/media/Session2CommandGroup;

    .line 287
    iput-boolean v0, p0, Landroid/media/MediaController2;->mPlaybackActive:Z

    .line 291
    iget-object v0, p0, Landroid/media/MediaController2;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/media/Session2Link;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 292
    new-instance v0, Landroid/media/Session2Token;

    iget-object v1, p0, Landroid/media/MediaController2;->mSessionToken:Landroid/media/Session2Token;

    invoke-virtual {v1}, Landroid/media/Session2Token;->getUid()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaController2;->mSessionToken:Landroid/media/Session2Token;

    .line 293
    invoke-virtual {v2}, Landroid/media/Session2Token;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/media/Session2Token;-><init>(IILjava/lang/String;Landroid/media/Session2Link;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/MediaController2;->mConnectedToken:Landroid/media/Session2Token;

    .line 294
    monitor-exit p2
    :try_end_85
    .catchall {:try_start_64 .. :try_end_85} :catchall_90

    .line 295
    iget-object p2, p0, Landroid/media/MediaController2;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/media/MediaController2$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaController2$$ExternalSyntheticLambda4;-><init>(Landroid/media/MediaController2;Landroid/media/Session2CommandGroup;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_90
    move-exception v0

    move-object p0, v0

    .line 294
    :try_start_92
    monitor-exit p2
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_90

    throw p0

    .line 281
    :cond_94
    :goto_94
    invoke-virtual {p0}, Landroid/media/MediaController2;->close()V

    return-void
.end method

.method blacklist onDisconnected(I)V
    .registers 2

    .line 303
    invoke-virtual {p0}, Landroid/media/MediaController2;->close()V

    return-void
.end method

.method blacklist onPlaybackActiveChanged(IZ)V
    .registers 4

    .line 308
    iget-object p1, p0, Landroid/media/MediaController2;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 309
    :try_start_3
    iput-boolean p2, p0, Landroid/media/MediaController2;->mPlaybackActive:Z

    .line 310
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_11

    .line 311
    iget-object p1, p0, Landroid/media/MediaController2;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/media/MediaController2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Landroid/media/MediaController2$$ExternalSyntheticLambda1;-><init>(Landroid/media/MediaController2;Z)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_11
    move-exception p0

    .line 310
    :try_start_12
    monitor-exit p1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method blacklist onSessionCommand(ILandroid/media/Session2Command;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 12

    .line 319
    iget-object v1, p0, Landroid/media/MediaController2;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 320
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaController2;->mRequestedCommandSeqNumbers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 321
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1d

    .line 322
    iget-object v0, p0, Landroid/media/MediaController2;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/MediaController2$$ExternalSyntheticLambda3;

    move-object v2, p0

    move v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v4, p4

    invoke-direct/range {v1 .. v6}, Landroid/media/MediaController2$$ExternalSyntheticLambda3;-><init>(Landroid/media/MediaController2;ILandroid/os/ResultReceiver;Landroid/media/Session2Command;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1d
    move-exception v0

    move-object p0, v0

    .line 321
    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1d

    throw p0
.end method

.method public whitelist sendSessionCommand(Landroid/media/Session2Command;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 10

    if-eqz p1, :cond_38

    .line 213
    new-instance v5, Landroid/media/MediaController2$2;

    iget-object v0, p0, Landroid/media/MediaController2;->mResultHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v0, p1}, Landroid/media/MediaController2$2;-><init>(Landroid/media/MediaController2;Landroid/os/Handler;Landroid/media/Session2Command;)V

    .line 225
    iget-object v6, p0, Landroid/media/MediaController2;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 226
    :try_start_c
    iget-object v0, p0, Landroid/media/MediaController2;->mSessionBinder:Landroid/media/Session2Link;

    if-eqz v0, :cond_34

    .line 227
    invoke-direct {p0}, Landroid/media/MediaController2;->getNextSeqNumber()I

    move-result v2

    .line 228
    iget-object v0, p0, Landroid/media/MediaController2;->mPendingCommands:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_27

    .line 230
    :try_start_1d
    iget-object v0, p0, Landroid/media/MediaController2;->mSessionBinder:Landroid/media/Session2Link;

    iget-object v1, p0, Landroid/media/MediaController2;->mControllerStub:Landroid/media/Controller2Link;

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/media/Session2Link;->sendSessionCommand(Landroid/media/Controller2Link;ILandroid/media/Session2Command;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_26} :catch_2a
    .catchall {:try_start_1d .. :try_end_26} :catchall_27

    goto :goto_34

    :catchall_27
    move-exception v0

    move-object p0, v0

    goto :goto_36

    .line 233
    :catch_2a
    :try_start_2a
    iget-object p0, p0, Landroid/media/MediaController2;->mPendingCommands:Landroid/util/ArrayMap;

    invoke-virtual {p0, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, -0x1

    const/4 p1, 0x0

    .line 234
    invoke-virtual {v5, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 237
    :cond_34
    :goto_34
    monitor-exit v6

    return-object v5

    :goto_36
    monitor-exit v6
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_27

    throw p0

    .line 210
    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "command shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
