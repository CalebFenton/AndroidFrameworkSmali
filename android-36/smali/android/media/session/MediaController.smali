.class public final Landroid/media/session/MediaController;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaController$CallbackStub;,
        Landroid/media/session/MediaController$TransportControls;,
        Landroid/media/session/MediaController$PlaybackInfo;,
        Landroid/media/session/MediaController$Callback;,
        Landroid/media/session/MediaController$MessageHandler;
    }
.end annotation


# static fields
.field private static final greylist-max-o MSG_DESTROYED:I = 0x8

.field private static final greylist-max-o MSG_EVENT:I = 0x1

.field private static final greylist-max-o MSG_UPDATE_EXTRAS:I = 0x7

.field private static final greylist-max-o MSG_UPDATE_METADATA:I = 0x3

.field private static final greylist-max-o MSG_UPDATE_PLAYBACK_STATE:I = 0x2

.field private static final greylist-max-o MSG_UPDATE_QUEUE:I = 0x5

.field private static final greylist-max-o MSG_UPDATE_QUEUE_TITLE:I = 0x6

.field private static final greylist-max-o MSG_UPDATE_VOLUME:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaController"


# instance fields
.field private final greylist-max-o mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/session/MediaController$MessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCbRegistered:Z

.field private final greylist-max-o mCbStub:Landroid/media/session/MediaController$CallbackStub;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mPackageName:Ljava/lang/String;

.field private final greylist-max-o mSessionBinder:Landroid/media/session/ISessionController;

.field private blacklist mSessionInfo:Landroid/os/Bundle;

.field private greylist-max-o mTag:Ljava/lang/String;

.field private final greylist-max-o mToken:Landroid/media/session/MediaSession$Token;

.field private final greylist-max-o mTransportControls:Landroid/media/session/MediaController$TransportControls;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mpostMessage(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/session/MediaController;->postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Landroid/media/session/MediaSession$Token;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/media/session/MediaController$CallbackStub;

    invoke-direct {v0, p0}, Landroid/media/session/MediaController$CallbackStub;-><init>(Landroid/media/session/MediaController;)V

    iput-object v0, p0, Landroid/media/session/MediaController;->mCbStub:Landroid/media/session/MediaController$CallbackStub;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaController;->mLock:Ljava/lang/Object;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/session/MediaController;->mCbRegistered:Z

    .line 103
    if-eqz p1, :cond_48

    .line 106
    if-eqz p2, :cond_40

    .line 109
    invoke-virtual {p2}, Landroid/media/session/MediaSession$Token;->getBinder()Landroid/media/session/ISessionController;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 112
    invoke-virtual {p2}, Landroid/media/session/MediaSession$Token;->getBinder()Landroid/media/session/ISessionController;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    .line 113
    new-instance v0, Landroid/media/session/MediaController$TransportControls;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/session/MediaController$TransportControls;-><init>(Landroid/media/session/MediaController;Landroid/media/session/MediaController-IA;)V

    iput-object v0, p0, Landroid/media/session/MediaController;->mTransportControls:Landroid/media/session/MediaController$TransportControls;

    .line 114
    iput-object p2, p0, Landroid/media/session/MediaController;->mToken:Landroid/media/session/MediaSession$Token;

    .line 115
    iput-object p1, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    .line 116
    return-void

    .line 110
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "token.getBinder() shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "token shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o addCallbackLocked(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V
    .registers 8
    .param p1, "cb"    # Landroid/media/session/MediaController$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 467
    invoke-direct {p0, p1}, Landroid/media/session/MediaController;->getHandlerForCallbackLocked(Landroid/media/session/MediaController$Callback;)Landroid/media/session/MediaController$MessageHandler;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 468
    const-string v0, "MediaController"

    const-string v1, "Callback is already added, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return-void

    .line 471
    :cond_e
    new-instance v0, Landroid/media/session/MediaController$MessageHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/media/session/MediaController$MessageHandler;-><init>(Landroid/os/Looper;Landroid/media/session/MediaController$Callback;)V

    .line 472
    .local v0, "holder":Landroid/media/session/MediaController$MessageHandler;
    iget-object v1, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/session/MediaController$MessageHandler;->-$$Nest$fputmRegistered(Landroid/media/session/MediaController$MessageHandler;Z)V

    .line 475
    iget-boolean v2, p0, Landroid/media/session/MediaController;->mCbRegistered:Z

    if-nez v2, :cond_3a

    .line 477
    :try_start_24
    iget-object v2, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    iget-object v3, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/media/session/MediaController;->mCbStub:Landroid/media/session/MediaController$CallbackStub;

    invoke-interface {v2, v3, v4}, Landroid/media/session/ISessionController;->registerCallback(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V

    .line 478
    iput-boolean v1, p0, Landroid/media/session/MediaController;->mCbRegistered:Z
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_33} :catch_34

    .line 481
    goto :goto_3a

    .line 479
    :catch_34
    move-exception v1

    .line 480
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 483
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_3a
    :goto_3a
    return-void
.end method

.method private greylist-max-o getHandlerForCallbackLocked(Landroid/media/session/MediaController$Callback;)Landroid/media/session/MediaController$MessageHandler;
    .registers 5
    .param p1, "cb"    # Landroid/media/session/MediaController$Callback;

    .line 518
    if-eqz p1, :cond_20

    .line 521
    iget-object v0, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_1e

    .line 522
    iget-object v1, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController$MessageHandler;

    .line 523
    .local v1, "handler":Landroid/media/session/MediaController$MessageHandler;
    invoke-static {v1}, Landroid/media/session/MediaController$MessageHandler;->-$$Nest$fgetmCallback(Landroid/media/session/MediaController$MessageHandler;)Landroid/media/session/MediaController$Callback;

    move-result-object v2

    if-ne p1, v2, :cond_1b

    .line 524
    return-object v1

    .line 521
    .end local v1    # "handler":Landroid/media/session/MediaController$MessageHandler;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 527
    .end local v0    # "i":I
    :cond_1e
    const/4 v0, 0x0

    return-object v0

    .line 519
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "data"    # Landroid/os/Bundle;

    .line 531
    iget-object v0, p0, Landroid/media/session/MediaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 532
    :try_start_3
    iget-object v1, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_1b

    .line 533
    iget-object v2, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController$MessageHandler;

    invoke-virtual {v2, p1, p2, p3}, Landroid/media/session/MediaController$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 532
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 535
    .end local v1    # "i":I
    :cond_1b
    monitor-exit v0

    .line 536
    return-void

    .line 535
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private greylist-max-o removeCallbackLocked(Landroid/media/session/MediaController$Callback;)Z
    .registers 7
    .param p1, "cb"    # Landroid/media/session/MediaController$Callback;

    .line 486
    const/4 v0, 0x0

    .line 487
    .local v0, "success":Z
    iget-object v1, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    const/4 v2, 0x0

    if-ltz v1, :cond_26

    .line 488
    iget-object v3, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaController$MessageHandler;

    .line 489
    .local v3, "handler":Landroid/media/session/MediaController$MessageHandler;
    invoke-static {v3}, Landroid/media/session/MediaController$MessageHandler;->-$$Nest$fgetmCallback(Landroid/media/session/MediaController$MessageHandler;)Landroid/media/session/MediaController$Callback;

    move-result-object v4

    if-ne p1, v4, :cond_23

    .line 490
    iget-object v4, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 491
    const/4 v0, 0x1

    .line 492
    invoke-static {v3, v2}, Landroid/media/session/MediaController$MessageHandler;->-$$Nest$fputmRegistered(Landroid/media/session/MediaController$MessageHandler;Z)V

    .line 487
    .end local v3    # "handler":Landroid/media/session/MediaController$MessageHandler;
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 495
    .end local v1    # "i":I
    :cond_26
    iget-boolean v1, p0, Landroid/media/session/MediaController;->mCbRegistered:Z

    if-eqz v1, :cond_43

    iget-object v1, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_43

    .line 497
    :try_start_32
    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    iget-object v3, p0, Landroid/media/session/MediaController;->mCbStub:Landroid/media/session/MediaController$CallbackStub;

    invoke-interface {v1, v3}, Landroid/media/session/ISessionController;->unregisterCallback(Landroid/media/session/ISessionControllerCallback;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_39} :catch_3d

    .line 500
    nop

    .line 501
    iput-boolean v2, p0, Landroid/media/session/MediaController;->mCbRegistered:Z

    goto :goto_43

    .line 498
    :catch_3d
    move-exception v1

    .line 499
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 503
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_43
    :goto_43
    return v0
.end method


# virtual methods
.method public whitelist adjustVolume(II)V
    .registers 6
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .line 321
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    iget-object v1, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/media/session/ISessionController;->adjustVolume(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    .line 325
    nop

    .line 326
    return-void

    .line 323
    :catch_13
    move-exception v0

    .line 324
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r controlsSameSession(Landroid/media/session/MediaController;)Z
    .registers 4
    .param p1, "other"    # Landroid/media/session/MediaController;

    .line 462
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 463
    :cond_4
    iget-object v0, p0, Landroid/media/session/MediaController;->mToken:Landroid/media/session/MediaSession$Token;

    iget-object v1, p1, Landroid/media/session/MediaController;->mToken:Landroid/media/session/MediaSession$Token;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 136
    if-eqz p1, :cond_21

    .line 139
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaSessionKey(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 140
    const/4 v0, 0x0

    return v0

    .line 143
    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    iget-object v1, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/media/session/ISessionController;->sendMediaButton(Ljava/lang/String;Landroid/view/KeyEvent;)Z

    move-result v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1a} :catch_1b

    return v0

    .line 144
    :catch_1b
    move-exception v0

    .line 145
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 137
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KeyEvent may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 3

    .line 206
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getExtras()Landroid/os/Bundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 207
    :catch_7
    move-exception v0

    .line 208
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getFlags()J
    .registers 3

    .line 241
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getFlags()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 242
    :catch_7
    move-exception v0

    .line 243
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getHandlerForCallback(Landroid/media/session/MediaController$Callback;)Landroid/os/Handler;
    .registers 4
    .param p1, "cb"    # Landroid/media/session/MediaController$Callback;

    .line 512
    iget-object v0, p0, Landroid/media/session/MediaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 513
    :try_start_3
    invoke-direct {p0, p1}, Landroid/media/session/MediaController;->getHandlerForCallbackLocked(Landroid/media/session/MediaController$Callback;)Landroid/media/session/MediaController$MessageHandler;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 514
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public whitelist getMetadata()Landroid/media/MediaMetadata;
    .registers 3

    .line 169
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 170
    :catch_7
    move-exception v0

    .line 171
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 3

    .line 400
    iget-object v0, p0, Landroid/media/session/MediaController;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 402
    :try_start_4
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/MediaController;->mPackageName:Ljava/lang/String;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    .line 405
    goto :goto_13

    .line 403
    :catch_d
    move-exception v0

    .line 404
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 407
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/media/session/MediaController;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;
    .registers 3

    .line 251
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 252
    :catch_7
    move-exception v0

    .line 253
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPlaybackState()Landroid/media/session/PlaybackState;
    .registers 3

    .line 156
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 157
    :catch_7
    move-exception v0

    .line 158
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getQueue()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .line 183
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getQueue()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 184
    .local v0, "list":Landroid/content/pm/ParceledListSlice;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-object v1

    .line 185
    .end local v0    # "list":Landroid/content/pm/ParceledListSlice;
    :catch_f
    move-exception v0

    .line 186
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getQueueTitle()Ljava/lang/CharSequence;
    .registers 3

    .line 195
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 196
    :catch_7
    move-exception v0

    .line 197
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRatingType()I
    .registers 3

    .line 228
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getRatingType()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 229
    :catch_7
    move-exception v0

    .line 230
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSessionActivity()Landroid/app/PendingIntent;
    .registers 3

    .line 265
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 266
    :catch_7
    move-exception v0

    .line 267
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSessionInfo()Landroid/os/Bundle;
    .registers 3

    .line 417
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionInfo:Landroid/os/Bundle;

    if-eqz v0, :cond_c

    .line 418
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionInfo:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 423
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getSessionInfo()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/MediaController;->mSessionInfo:Landroid/os/Bundle;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_3e

    .line 426
    nop

    .line 428
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionInfo:Landroid/os/Bundle;

    const-string v1, "MediaController"

    if-nez v0, :cond_25

    .line 429
    const-string v0, "sessionInfo is not set."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/media/session/MediaController;->mSessionInfo:Landroid/os/Bundle;

    goto :goto_36

    .line 431
    :cond_25
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionInfo:Landroid/os/Bundle;

    invoke-static {v0}, Landroid/media/session/MediaSession;->hasCustomParcelable(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 432
    const-string v0, "sessionInfo contains custom parcelable. Ignoring."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/media/session/MediaController;->mSessionInfo:Landroid/os/Bundle;

    .line 435
    :cond_36
    :goto_36
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionInfo:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 424
    :catch_3e
    move-exception v0

    .line 425
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSessionToken()Landroid/media/session/MediaSession$Token;
    .registers 2

    .line 277
    iget-object v0, p0, Landroid/media/session/MediaController;->mToken:Landroid/media/session/MediaSession$Token;

    return-object v0
.end method

.method public whitelist getTag()Ljava/lang/String;
    .registers 3

    .line 445
    iget-object v0, p0, Landroid/media/session/MediaController;->mTag:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 447
    :try_start_4
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/MediaController;->mTag:Ljava/lang/String;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    .line 450
    goto :goto_13

    .line 448
    :catch_d
    move-exception v0

    .line 449
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 452
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/media/session/MediaController;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTransportControls()Landroid/media/session/MediaController$TransportControls;
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/media/session/MediaController;->mTransportControls:Landroid/media/session/MediaController$TransportControls;

    return-object v0
.end method

.method public whitelist registerCallback(Landroid/media/session/MediaController$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/media/session/MediaController$Callback;

    .line 335
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 336
    return-void
.end method

.method public whitelist registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "callback"    # Landroid/media/session/MediaController$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 347
    if-eqz p1, :cond_17

    .line 350
    if-nez p2, :cond_b

    .line 351
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p2, v0

    goto :goto_c

    .line 350
    :cond_b
    move-object v0, p2

    .line 353
    .end local p2    # "handler":Landroid/os/Handler;
    .local v0, "handler":Landroid/os/Handler;
    :goto_c
    iget-object v1, p0, Landroid/media/session/MediaController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_f
    invoke-direct {p0, p1, v0}, Landroid/media/session/MediaController;->addCallbackLocked(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 355
    monitor-exit v1

    .line 356
    return-void

    .line 355
    :catchall_14
    move-exception p2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_14

    throw p2

    .line 348
    .end local v0    # "handler":Landroid/os/Handler;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 388
    :try_start_6
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    iget-object v1, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/media/session/ISessionController;->sendCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_13

    .line 391
    nop

    .line 392
    return-void

    .line 389
    :catch_13
    move-exception v0

    .line 390
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 385
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "command cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setVolumeTo(II)V
    .registers 6
    .param p1, "value"    # I
    .param p2, "flags"    # I

    .line 296
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    iget-object v1, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/media/session/ISessionController;->setVolumeTo(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    .line 300
    nop

    .line 301
    return-void

    .line 298
    :catch_13
    move-exception v0

    .line 299
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/media/session/MediaController$Callback;

    .line 365
    if-eqz p1, :cond_d

    .line 368
    iget-object v0, p0, Landroid/media/session/MediaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_5
    invoke-direct {p0, p1}, Landroid/media/session/MediaController;->removeCallbackLocked(Landroid/media/session/MediaController$Callback;)Z

    .line 370
    monitor-exit v0

    .line 371
    return-void

    .line 370
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v1

    .line 366
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
