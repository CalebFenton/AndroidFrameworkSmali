.class public Landroid/media/MediaSession2;
.super Ljava/lang/Object;
.source "MediaSession2.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaSession2$SessionCallback;,
        Landroid/media/MediaSession2$ForegroundServiceEventCallback;,
        Landroid/media/MediaSession2$ControllerInfo;,
        Landroid/media/MediaSession2$Builder;
    }
.end annotation


# static fields
.field static final blacklist DEBUG:Z

.field private static final blacklist SESSION_ID_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist TAG:Ljava/lang/String; = "MediaSession2"


# instance fields
.field final blacklist mCallback:Landroid/media/MediaSession2$SessionCallback;

.field final blacklist mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mClosed:Z

.field private final blacklist mCommunicationManager:Landroid/media/MediaCommunicationManager;

.field final blacklist mConnectedControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/Controller2Link;",
            "Landroid/media/MediaSession2$ControllerInfo;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mContext:Landroid/content/Context;

.field private blacklist mForegroundServiceEventCallback:Landroid/media/MediaSession2$ForegroundServiceEventCallback;

.field final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private blacklist mPlaybackActive:Z

.field private final blacklist mResultHandler:Landroid/os/Handler;

.field private final blacklist mSessionActivity:Landroid/app/PendingIntent;

.field private final blacklist mSessionId:Ljava/lang/String;

.field final blacklist mSessionStub:Landroid/media/Session2Link;

.field private final blacklist mSessionToken:Landroid/media/Session2Token;


# direct methods
.method public static synthetic blacklist $r8$lambda$EQDm50HFWbl_MktRxK0DNCyceWo(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;ILandroid/os/ResultReceiver;Landroid/media/Session2Command;Landroid/os/Bundle;)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaSession2;->lambda$onSessionCommand$2(Landroid/media/MediaSession2$ControllerInfo;ILandroid/os/ResultReceiver;Landroid/media/Session2Command;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HKPfe_va10vvTZjOE8F_tsaK6rU(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Landroid/media/Controller2Link;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/media/MediaSession2;->lambda$onConnect$0(Landroid/media/MediaSession2$ControllerInfo;Landroid/media/Controller2Link;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gFFQN2dhFh9EEuNlzHSW47eTnhM(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/media/MediaSession2;->lambda$onDisconnect$1(Landroid/media/MediaSession2$ControllerInfo;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 67
    const-string v0, "MediaSession2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/MediaSession2;->DEBUG:Z

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/MediaSession2;->SESSION_ID_LIST:Ljava/util/List;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroid/media/MediaSession2$SessionCallback;Landroid/os/Bundle;)V
    .registers 16

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaSession2;->mLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaSession2;->mConnectedControllers:Ljava/util/Map;

    .line 106
    const-class v1, Landroid/media/MediaSession2;

    monitor-enter v1

    .line 107
    :try_start_14
    sget-object v0, Landroid/media/MediaSession2;->SESSION_ID_LIST:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    .line 110
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_71

    .line 113
    iput-object p1, p0, Landroid/media/MediaSession2;->mContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Landroid/media/MediaSession2;->mSessionId:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Landroid/media/MediaSession2;->mSessionActivity:Landroid/app/PendingIntent;

    .line 116
    iput-object p4, p0, Landroid/media/MediaSession2;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 117
    iput-object p5, p0, Landroid/media/MediaSession2;->mCallback:Landroid/media/MediaSession2$SessionCallback;

    .line 118
    new-instance v7, Landroid/media/Session2Link;

    invoke-direct {v7, p0}, Landroid/media/Session2Link;-><init>(Landroid/media/MediaSession2;)V

    iput-object v7, p0, Landroid/media/MediaSession2;->mSessionStub:Landroid/media/Session2Link;

    .line 119
    new-instance v3, Landroid/media/Session2Token;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    move-object v8, p6

    invoke-direct/range {v3 .. v8}, Landroid/media/Session2Token;-><init>(IILjava/lang/String;Landroid/media/Session2Link;Landroid/os/Bundle;)V

    iput-object v3, p0, Landroid/media/MediaSession2;->mSessionToken:Landroid/media/Session2Token;

    .line 121
    invoke-static {}, Landroid/media/internal/utils/build/SdkLevel;->isAtLeastS()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_56

    .line 122
    const-class p2, Landroid/media/MediaCommunicationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/MediaCommunicationManager;

    iput-object p2, p0, Landroid/media/MediaSession2;->mCommunicationManager:Landroid/media/MediaCommunicationManager;

    .line 123
    iput-object p3, p0, Landroid/media/MediaSession2;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    goto :goto_62

    .line 125
    :cond_56
    const-class p2, Landroid/media/session/MediaSessionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/session/MediaSessionManager;

    iput-object p2, p0, Landroid/media/MediaSession2;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 126
    iput-object p3, p0, Landroid/media/MediaSession2;->mCommunicationManager:Landroid/media/MediaCommunicationManager;

    .line 129
    :goto_62
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/media/MediaSession2;->mResultHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 130
    iput-boolean p1, p0, Landroid/media/MediaSession2;->mClosed:Z

    return-void

    :catchall_71
    move-exception v0

    move-object p0, v0

    goto :goto_8b

    .line 108
    :cond_74
    :try_start_74
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Session ID must be unique. ID="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 111
    :goto_8b
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_74 .. :try_end_8c} :catchall_71

    throw p0
.end method

.method static blacklist hasCustomParcelable(Landroid/os/Bundle;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    .line 300
    :try_start_5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_9
    .catch Landroid/os/BadParcelableException; {:try_start_5 .. :try_end_9} :catch_37
    .catchall {:try_start_5 .. :try_end_9} :catchall_35

    .line 301
    :try_start_9
    invoke-virtual {v2, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 302
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 303
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p0

    .line 305
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 306
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2a
    .catch Landroid/os/BadParcelableException; {:try_start_9 .. :try_end_2a} :catch_2e
    .catchall {:try_start_9 .. :try_end_2a} :catchall_2b

    goto :goto_1b

    :catchall_2b
    move-exception p0

    move-object v1, v2

    goto :goto_46

    :catch_2e
    move-exception p0

    move-object v1, v2

    goto :goto_38

    .line 313
    :cond_31
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_35
    move-exception p0

    goto :goto_46

    :catch_37
    move-exception p0

    .line 309
    :goto_38
    :try_start_38
    const-string v0, "MediaSession2"

    const-string v2, "Custom parcelable in bundle."

    invoke-static {v0, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_35

    if-eqz v1, :cond_44

    .line 313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_44
    const/4 p0, 0x1

    return p0

    :goto_46
    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 315
    :cond_4b
    throw p0
.end method

.method private synthetic blacklist lambda$onConnect$0(Landroid/media/MediaSession2$ControllerInfo;Landroid/media/Controller2Link;)V
    .registers 8

    .line 378
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaSession2;->isClosed()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_6a

    if-eqz v0, :cond_30

    .line 425
    sget-boolean v0, Landroid/media/MediaSession2;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 426
    const-string v0, "MediaSession2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rejecting connection or notifying that session is closed, controllerInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_20
    iget-object v0, p0, Landroid/media/MediaSession2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_23
    iget-object p0, p0, Landroid/media/MediaSession2;->mConnectedControllers:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_2d

    .line 432
    invoke-virtual {p1}, Landroid/media/MediaSession2$ControllerInfo;->notifyDisconnected()V

    return-void

    :catchall_2d
    move-exception p0

    .line 431
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0

    .line 381
    :cond_30
    :try_start_30
    iget-object v0, p0, Landroid/media/MediaSession2;->mCallback:Landroid/media/MediaSession2$SessionCallback;

    .line 382
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaSession2$SessionCallback;->onConnect(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;)Landroid/media/Session2CommandGroup;

    move-result-object v0

    iput-object v0, p1, Landroid/media/MediaSession2$ControllerInfo;->mAllowedCommands:Landroid/media/Session2CommandGroup;

    if-nez v0, :cond_6d

    .line 386
    invoke-virtual {p1}, Landroid/media/MediaSession2$ControllerInfo;->isTrusted()Z

    move-result v0
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_6a

    if-nez v0, :cond_6d

    .line 425
    sget-boolean v0, Landroid/media/MediaSession2;->DEBUG:Z

    if-eqz v0, :cond_5a

    .line 426
    const-string v0, "MediaSession2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rejecting connection or notifying that session is closed, controllerInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_5a
    iget-object v0, p0, Landroid/media/MediaSession2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_5d
    iget-object p0, p0, Landroid/media/MediaSession2;->mConnectedControllers:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_5d .. :try_end_63} :catchall_67

    .line 432
    invoke-virtual {p1}, Landroid/media/MediaSession2$ControllerInfo;->notifyDisconnected()V

    return-void

    :catchall_67
    move-exception p0

    .line 431
    :try_start_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw p0

    :catchall_6a
    move-exception v0

    goto/16 :goto_153

    .line 389
    :cond_6d
    :try_start_6d
    iget-object v0, p1, Landroid/media/MediaSession2$ControllerInfo;->mAllowedCommands:Landroid/media/Session2CommandGroup;

    if-nez v0, :cond_7c

    .line 392
    new-instance v0, Landroid/media/Session2CommandGroup$Builder;

    invoke-direct {v0}, Landroid/media/Session2CommandGroup$Builder;-><init>()V

    .line 393
    invoke-virtual {v0}, Landroid/media/Session2CommandGroup$Builder;->build()Landroid/media/Session2CommandGroup;

    move-result-object v0

    iput-object v0, p1, Landroid/media/MediaSession2$ControllerInfo;->mAllowedCommands:Landroid/media/Session2CommandGroup;

    .line 395
    :cond_7c
    sget-boolean v0, Landroid/media/MediaSession2;->DEBUG:Z

    if-eqz v0, :cond_96

    .line 396
    const-string v1, "MediaSession2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accepting connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_96
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 402
    const-string v2, "android.media.key.SESSION2LINK"

    iget-object v3, p0, Landroid/media/MediaSession2;->mSessionStub:Landroid/media/Session2Link;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 403
    const-string v2, "android.media.key.ALLOWED_COMMANDS"

    iget-object v3, p1, Landroid/media/MediaSession2$ControllerInfo;->mAllowedCommands:Landroid/media/Session2CommandGroup;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 405
    const-string v2, "android.media.key.PLAYBACK_ACTIVE"

    invoke-virtual {p0}, Landroid/media/MediaSession2;->isPlaybackActive()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 406
    const-string v2, "android.media.key.TOKEN_EXTRAS"

    iget-object v3, p0, Landroid/media/MediaSession2;->mSessionToken:Landroid/media/Session2Token;

    invoke-virtual {v3}, Landroid/media/Session2Token;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 410
    invoke-virtual {p0}, Landroid/media/MediaSession2;->isClosed()Z

    move-result v2
    :try_end_c1
    .catchall {:try_start_6d .. :try_end_c1} :catchall_6a

    if-eqz v2, :cond_eb

    if-eqz v0, :cond_db

    .line 426
    const-string v0, "MediaSession2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rejecting connection or notifying that session is closed, controllerInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_db
    iget-object v2, p0, Landroid/media/MediaSession2;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 430
    :try_start_de
    iget-object p0, p0, Landroid/media/MediaSession2;->mConnectedControllers:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    monitor-exit v2
    :try_end_e4
    .catchall {:try_start_de .. :try_end_e4} :catchall_e8

    .line 432
    invoke-virtual {p1}, Landroid/media/MediaSession2$ControllerInfo;->notifyDisconnected()V

    return-void

    :catchall_e8
    move-exception p0

    .line 431
    :try_start_e9
    monitor-exit v2
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    throw p0

    .line 413
    :cond_eb
    :try_start_eb
    invoke-virtual {p1, v1}, Landroid/media/MediaSession2$ControllerInfo;->notifyConnected(Landroid/os/Bundle;)V

    .line 414
    iget-object v1, p0, Landroid/media/MediaSession2;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_f1
    .catchall {:try_start_eb .. :try_end_f1} :catchall_6a

    .line 415
    :try_start_f1
    iget-object v2, p0, Landroid/media/MediaSession2;->mConnectedControllers:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_117

    .line 416
    const-string v2, "MediaSession2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Controller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has sent connection request multiple times"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_117

    :catchall_115
    move-exception v0

    goto :goto_151

    .line 419
    :cond_117
    :goto_117
    iget-object v2, p0, Landroid/media/MediaSession2;->mConnectedControllers:Ljava/util/Map;

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    monitor-exit v1
    :try_end_11d
    .catchall {:try_start_f1 .. :try_end_11d} :catchall_115

    .line 421
    :try_start_11d
    iget-object v1, p0, Landroid/media/MediaSession2;->mCallback:Landroid/media/MediaSession2$SessionCallback;

    invoke-virtual {v1, p0, p1}, Landroid/media/MediaSession2$SessionCallback;->onPostConnect(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;)V
    :try_end_122
    .catchall {:try_start_11d .. :try_end_122} :catchall_6a

    .line 424
    invoke-virtual {p0}, Landroid/media/MediaSession2;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_150

    if-eqz v0, :cond_140

    .line 426
    const-string v0, "MediaSession2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rejecting connection or notifying that session is closed, controllerInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_140
    iget-object v0, p0, Landroid/media/MediaSession2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_143
    iget-object p0, p0, Landroid/media/MediaSession2;->mConnectedControllers:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    monitor-exit v0
    :try_end_149
    .catchall {:try_start_143 .. :try_end_149} :catchall_14d

    .line 432
    invoke-virtual {p1}, Landroid/media/MediaSession2$ControllerInfo;->notifyDisconnected()V

    return-void

    :catchall_14d
    move-exception p0

    .line 431
    :try_start_14e
    monitor-exit v0
    :try_end_14f
    .catchall {:try_start_14e .. :try_end_14f} :catchall_14d

    throw p0

    :cond_150
    return-void

    .line 420
    :goto_151
    :try_start_151
    monitor-exit v1
    :try_end_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_115

    :try_start_152
    throw v0
    :try_end_153
    .catchall {:try_start_152 .. :try_end_153} :catchall_6a

    .line 425
    :goto_153
    sget-boolean v1, Landroid/media/MediaSession2;->DEBUG:Z

    if-eqz v1, :cond_16d

    .line 426
    const-string v1, "MediaSession2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting connection or notifying that session is closed, controllerInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_16d
    iget-object v1, p0, Landroid/media/MediaSession2;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 430
    :try_start_170
    iget-object p0, p0, Landroid/media/MediaSession2;->mConnectedControllers:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    monitor-exit v1
    :try_end_176
    .catchall {:try_start_170 .. :try_end_176} :catchall_17a

    .line 432
    invoke-virtual {p1}, Landroid/media/MediaSession2$ControllerInfo;->notifyDisconnected()V

    .line 434
    throw v0

    :catchall_17a
    move-exception p0

    .line 431
    :try_start_17b
    monitor-exit v1
    :try_end_17c
    .catchall {:try_start_17b .. :try_end_17c} :catchall_17a

    throw p0
.end method

.method private synthetic blacklist lambda$onDisconnect$1(Landroid/media/MediaSession2$ControllerInfo;)V
    .registers 3

    .line 448
    iget-object v0, p0, Landroid/media/MediaSession2;->mCallback:Landroid/media/MediaSession2$SessionCallback;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaSession2$SessionCallback;->onDisconnected(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSessionCommand$2(Landroid/media/MediaSession2$ControllerInfo;ILandroid/os/ResultReceiver;Landroid/media/Session2Command;Landroid/os/Bundle;)V
    .registers 8

    .line 472
    invoke-virtual {p1, p2}, Landroid/media/MediaSession2$ControllerInfo;->removeRequestedCommandSeqNumber(I)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_e

    if-eqz p3, :cond_27

    .line 474
    invoke-virtual {p3, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    .line 478
    :cond_e
    iget-object p2, p0, Landroid/media/MediaSession2;->mCallback:Landroid/media/MediaSession2$SessionCallback;

    invoke-virtual {p2, p0, p1, p4, p5}, Landroid/media/MediaSession2$SessionCallback;->onSessionCommand(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Landroid/media/Session2Command;Landroid/os/Bundle;)Landroid/media/Session2Command$Result;

    move-result-object p0

    if-eqz p3, :cond_27

    if-nez p0, :cond_1c

    .line 482
    invoke-virtual {p3, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    .line 484
    :cond_1c
    invoke-virtual {p0}, Landroid/media/Session2Command$Result;->getResultCode()I

    move-result p1

    invoke-virtual {p0}, Landroid/media/Session2Command$Result;->getResultData()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p3, p1, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_27
    return-void
.end method


# virtual methods
.method public whitelist broadcastSessionCommand(Landroid/media/Session2Command;Landroid/os/Bundle;)V
    .registers 5

    if-eqz p1, :cond_1c

    .line 188
    invoke-virtual {p0}, Landroid/media/MediaSession2;->getConnectedControllers()Ljava/util/List;

    move-result-object p0

    .line 189
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaSession2$ControllerInfo;

    const/4 v1, 0x0

    .line 190
    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaSession2$ControllerInfo;->sendSessionCommand(Landroid/media/Session2Command;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto :goto_a

    :cond_1b
    return-void

    .line 186
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "command shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist cancelSessionCommand(Landroid/media/MediaSession2$ControllerInfo;Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_10

    if-eqz p2, :cond_8

    .line 238
    invoke-virtual {p1, p2}, Landroid/media/MediaSession2$ControllerInfo;->cancelSessionCommand(Ljava/lang/Object;)V

    return-void

    .line 236
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "token shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 233
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "controller shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api close()V
    .registers 6

    .line 138
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaSession2;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_46

    .line 139
    :try_start_3
    iget-boolean v1, p0, Landroid/media/MediaSession2;->mClosed:Z

    if-eqz v1, :cond_b

    .line 140
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_44

    :cond_b
    const/4 v1, 0x1

    .line 142
    iput-boolean v1, p0, Landroid/media/MediaSession2;->mClosed:Z

    .line 143
    invoke-virtual {p0}, Landroid/media/MediaSession2;->getConnectedControllers()Ljava/util/List;

    move-result-object v1

    .line 144
    iget-object v2, p0, Landroid/media/MediaSession2;->mConnectedControllers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 145
    iget-object v2, p0, Landroid/media/MediaSession2;->mForegroundServiceEventCallback:Landroid/media/MediaSession2$ForegroundServiceEventCallback;

    const/4 v3, 0x0

    .line 146
    iput-object v3, p0, Landroid/media/MediaSession2;->mForegroundServiceEventCallback:Landroid/media/MediaSession2$ForegroundServiceEventCallback;

    .line 147
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_9

    .line 148
    :try_start_1d
    const-class v0, Landroid/media/MediaSession2;

    monitor-enter v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_46

    .line 149
    :try_start_20
    sget-object v3, Landroid/media/MediaSession2;->SESSION_ID_LIST:Ljava/util/List;

    iget-object v4, p0, Landroid/media/MediaSession2;->mSessionId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 150
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_41

    if-eqz v2, :cond_2d

    .line 152
    :try_start_2a
    invoke-virtual {v2, p0}, Landroid/media/MediaSession2$ForegroundServiceEventCallback;->onSessionClosed(Landroid/media/MediaSession2;)V

    .line 154
    :cond_2d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_31
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaSession2$ControllerInfo;

    .line 155
    invoke-virtual {v0}, Landroid/media/MediaSession2$ControllerInfo;->notifyDisconnected()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_40} :catch_46

    goto :goto_31

    :catchall_41
    move-exception p0

    .line 150
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    :try_start_43
    throw p0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_44} :catch_46

    .line 147
    :goto_44
    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_9

    :try_start_45
    throw p0
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_46} :catch_46

    :catch_46
    :cond_46
    return-void
.end method

.method blacklist getCallback()Landroid/media/MediaSession2$SessionCallback;
    .registers 1

    .line 326
    iget-object p0, p0, Landroid/media/MediaSession2;->mCallback:Landroid/media/MediaSession2$SessionCallback;

    return-object p0
.end method

.method public whitelist getConnectedControllers()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaSession2$ControllerInfo;",
            ">;"
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    iget-object v1, p0, Landroid/media/MediaSession2;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 284
    :try_start_8
    iget-object p0, p0, Landroid/media/MediaSession2;->mConnectedControllers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 285
    monitor-exit v1

    return-object v0

    :catchall_13
    move-exception p0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 1

    .line 167
    iget-object p0, p0, Landroid/media/MediaSession2;->mSessionId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getToken()Landroid/media/Session2Token;
    .registers 1

    .line 175
    iget-object p0, p0, Landroid/media/MediaSession2;->mSessionToken:Landroid/media/Session2Token;

    return-object p0
.end method

.method blacklist isClosed()Z
    .registers 2

    .line 320
    iget-object v0, p0, Landroid/media/MediaSession2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_3
    iget-boolean p0, p0, Landroid/media/MediaSession2;->mClosed:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 322
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public whitelist isPlaybackActive()Z
    .registers 2

    .line 270
    iget-object v0, p0, Landroid/media/MediaSession2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_3
    iget-boolean p0, p0, Landroid/media/MediaSession2;->mPlaybackActive:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 272
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method blacklist isTrustedForMediaControl(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Z
    .registers 3

    .line 330
    invoke-static {}, Landroid/media/internal/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 331
    iget-object p0, p0, Landroid/media/MediaSession2;->mCommunicationManager:Landroid/media/MediaCommunicationManager;

    invoke-virtual {p0, p1}, Landroid/media/MediaCommunicationManager;->isTrustedForMediaControl(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Z

    move-result p0

    return p0

    .line 333
    :cond_d
    iget-object p0, p0, Landroid/media/MediaSession2;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSessionManager;->isTrustedForMediaControl(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Z

    move-result p0

    return p0
.end method

.method blacklist onCancelCommand(Landroid/media/Controller2Link;I)V
    .registers 4

    .line 493
    iget-object v0, p0, Landroid/media/MediaSession2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 494
    :try_start_3
    iget-object p0, p0, Landroid/media/MediaSession2;->mConnectedControllers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaSession2$ControllerInfo;

    .line 495
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_13

    if-nez p0, :cond_f

    return-void

    .line 499
    :cond_f
    invoke-virtual {p0, p2}, Landroid/media/MediaSession2$ControllerInfo;->removeRequestedCommandSeqNumber(I)Z

    return-void

    :catchall_13
    move-exception p0

    .line 495
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p0
.end method

.method blacklist onConnect(Landroid/media/Controller2Link;IIILandroid/os/Bundle;)V
    .registers 7

    if-nez p2, :cond_8

    .line 355
    const-string p2, "android.media.key.PID"

    invoke-virtual {p5, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 357
    :cond_8
    const-string p4, "android.media.key.PACKAGE_NAME"

    invoke-virtual {p5, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 359
    new-instance v0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    invoke-direct {v0, p4, p2, p3}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    .line 361
    const-string p2, "android.media.key.CONNECTION_HINTS"

    invoke-virtual {p5, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 362
    const-string p3, "MediaSession2"

    if-nez p2, :cond_25

    .line 363
    const-string p2, "connectionHints shouldn\'t be null."

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    sget-object p2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_32

    .line 365
    :cond_25
    invoke-static {p2}, Landroid/media/MediaSession2;->hasCustomParcelable(Landroid/os/Bundle;)Z

    move-result p4

    if-eqz p4, :cond_32

    .line 366
    const-string p2, "connectionHints contain custom parcelable. Ignoring."

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    sget-object p2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 370
    :cond_32
    :goto_32
    new-instance p3, Landroid/media/MediaSession2$ControllerInfo;

    .line 372
    invoke-virtual {p0, v0}, Landroid/media/MediaSession2;->isTrustedForMediaControl(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Z

    move-result p4

    invoke-direct {p3, v0, p4, p1, p2}, Landroid/media/MediaSession2$ControllerInfo;-><init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ZLandroid/media/Controller2Link;Landroid/os/Bundle;)V

    .line 375
    iget-object p2, p0, Landroid/media/MediaSession2;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance p4, Landroid/media/MediaSession2$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, p3, p1}, Landroid/media/MediaSession2$$ExternalSyntheticLambda1;-><init>(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Landroid/media/Controller2Link;)V

    invoke-interface {p2, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method blacklist onDisconnect(Landroid/media/Controller2Link;I)V
    .registers 4

    .line 441
    iget-object p2, p0, Landroid/media/MediaSession2;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 442
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaSession2;->mConnectedControllers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaSession2$ControllerInfo;

    .line 443
    monitor-exit p2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1a

    if-nez p1, :cond_f

    return-void

    .line 447
    :cond_f
    iget-object p2, p0, Landroid/media/MediaSession2;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/media/MediaSession2$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaSession2$$ExternalSyntheticLambda2;-><init>(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1a
    move-exception p0

    .line 443
    :try_start_1b
    monitor-exit p2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method blacklist onSessionCommand(Landroid/media/Controller2Link;ILandroid/media/Session2Command;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 15

    if-nez p1, :cond_3

    goto :goto_12

    .line 460
    :cond_3
    iget-object v1, p0, Landroid/media/MediaSession2;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 461
    :try_start_6
    iget-object v0, p0, Landroid/media/MediaSession2;->mConnectedControllers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/media/MediaSession2$ControllerInfo;

    .line 462
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_2e

    if-nez v4, :cond_13

    :goto_12
    return-void

    .line 468
    :cond_13
    iget-object p1, p0, Landroid/media/MediaSession2;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 469
    :try_start_16
    invoke-virtual {v4, p2}, Landroid/media/MediaSession2$ControllerInfo;->addRequestedCommandSeqNumber(I)V

    .line 470
    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_2a

    .line 471
    iget-object p1, p0, Landroid/media/MediaSession2;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/MediaSession2$$ExternalSyntheticLambda0;

    move-object v3, p0

    move v5, p2

    move-object v7, p3

    move-object v8, p4

    move-object v6, p5

    invoke-direct/range {v2 .. v8}, Landroid/media/MediaSession2$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;ILandroid/os/ResultReceiver;Landroid/media/Session2Command;Landroid/os/Bundle;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_2a
    move-exception v0

    move-object p0, v0

    .line 470
    :try_start_2c
    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2a

    throw p0

    :catchall_2e
    move-exception v0

    move-object p0, v0

    .line 462
    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2e

    throw p0
.end method

.method public whitelist sendSessionCommand(Landroid/media/MediaSession2$ControllerInfo;Landroid/media/Session2Command;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 6

    if-eqz p1, :cond_17

    if-eqz p2, :cond_f

    .line 212
    new-instance v0, Landroid/media/MediaSession2$1;

    iget-object v1, p0, Landroid/media/MediaSession2;->mResultHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/media/MediaSession2$1;-><init>(Landroid/media/MediaSession2;Landroid/os/Handler;Landroid/media/MediaSession2$ControllerInfo;Landroid/media/Session2Command;)V

    .line 221
    invoke-virtual {p1, p2, p3, v0}, Landroid/media/MediaSession2$ControllerInfo;->sendSessionCommand(Landroid/media/Session2Command;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-object v0

    .line 210
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "command shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 207
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "controller shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method blacklist setForegroundServiceEventCallback(Landroid/media/MediaSession2$ForegroundServiceEventCallback;)V
    .registers 4

    .line 338
    iget-object v0, p0, Landroid/media/MediaSession2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaSession2;->mForegroundServiceEventCallback:Landroid/media/MediaSession2$ForegroundServiceEventCallback;

    if-ne v1, p1, :cond_b

    .line 340
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_1c

    :cond_b
    if-eqz v1, :cond_18

    if-nez p1, :cond_10

    goto :goto_18

    .line 343
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A session cannot be added to multiple services"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 345
    :cond_18
    :goto_18
    iput-object p1, p0, Landroid/media/MediaSession2;->mForegroundServiceEventCallback:Landroid/media/MediaSession2$ForegroundServiceEventCallback;

    .line 346
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_9

    throw p0
.end method

.method public whitelist setPlaybackActive(Z)V
    .registers 4

    .line 248
    iget-object v0, p0, Landroid/media/MediaSession2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_3
    iget-boolean v1, p0, Landroid/media/MediaSession2;->mPlaybackActive:Z

    if-ne v1, p1, :cond_b

    .line 250
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_2e

    .line 252
    :cond_b
    iput-boolean p1, p0, Landroid/media/MediaSession2;->mPlaybackActive:Z

    .line 253
    iget-object v1, p0, Landroid/media/MediaSession2;->mForegroundServiceEventCallback:Landroid/media/MediaSession2$ForegroundServiceEventCallback;

    .line 254
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_9

    if-eqz v1, :cond_15

    .line 256
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaSession2$ForegroundServiceEventCallback;->onPlaybackActiveChanged(Landroid/media/MediaSession2;Z)V

    .line 258
    :cond_15
    invoke-virtual {p0}, Landroid/media/MediaSession2;->getConnectedControllers()Ljava/util/List;

    move-result-object p0

    .line 259
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaSession2$ControllerInfo;

    .line 260
    invoke-virtual {v0, p1}, Landroid/media/MediaSession2$ControllerInfo;->notifyPlaybackActiveChanged(Z)V

    goto :goto_1d

    :cond_2d
    return-void

    .line 254
    :goto_2e
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_9

    throw p0
.end method
