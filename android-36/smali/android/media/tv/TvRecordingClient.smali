.class public Landroid/media/tv/TvRecordingClient;
.super Ljava/lang/Object;
.source "TvRecordingClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvRecordingClient$RecordingCallback;,
        Landroid/media/tv/TvRecordingClient$MySessionCallback;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TvRecordingClient"


# instance fields
.field private final greylist-max-o mCallback:Landroid/media/tv/TvRecordingClient$RecordingCallback;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private blacklist mIsPaused:Z

.field private greylist-max-o mIsRecordingStarted:Z

.field private blacklist mIsRecordingStopping:Z

.field private greylist-max-o mIsTuned:Z

.field private final greylist-max-o mPendingAppPrivateCommands:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mRecordingId:Ljava/lang/String;

.field private greylist-max-o mSession:Landroid/media/tv/TvInputManager$Session;

.field private greylist-max-o mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

.field private blacklist mTvIAppView:Landroid/media/tv/interactive/TvInteractiveAppView;

.field private final greylist-max-o mTvInputManager:Landroid/media/tv/TvInputManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvRecordingClient;->mCallback:Landroid/media/tv/TvRecordingClient$RecordingCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRecordingStarted(Landroid/media/tv/TvRecordingClient;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsTuned(Landroid/media/tv/TvRecordingClient;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/tv/TvRecordingClient;->mIsTuned:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingAppPrivateCommands(Landroid/media/tv/TvRecordingClient;)Ljava/util/Queue;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvRecordingClient;->mPendingAppPrivateCommands:Ljava/util/Queue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRecordingId(Landroid/media/tv/TvRecordingClient;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvRecordingClient;->mRecordingId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSession(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvInputManager$Session;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTvIAppView(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/interactive/TvInteractiveAppView;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvRecordingClient;->mTvIAppView:Landroid/media/tv/interactive/TvInteractiveAppView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsPaused(Landroid/media/tv/TvRecordingClient;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsRecordingStarted(Landroid/media/tv/TvRecordingClient;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsRecordingStopping(Landroid/media/tv/TvRecordingClient;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStopping:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsTuned(Landroid/media/tv/TvRecordingClient;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/TvRecordingClient;->mIsTuned:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSession(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvInputManager$Session;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSessionCallback(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvRecordingClient$MySessionCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/tv/TvRecordingClient$RecordingCallback;Landroid/os/Handler;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/media/tv/TvRecordingClient$RecordingCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvRecordingClient;->mPendingAppPrivateCommands:Ljava/util/Queue;

    .line 70
    iput-object p3, p0, Landroid/media/tv/TvRecordingClient;->mCallback:Landroid/media/tv/TvRecordingClient$RecordingCallback;

    .line 71
    if-nez p4, :cond_18

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_19

    :cond_18
    move-object v0, p4

    :goto_19
    iput-object v0, p0, Landroid/media/tv/TvRecordingClient;->mHandler:Landroid/os/Handler;

    .line 72
    const-string v0, "tv_input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager;

    iput-object v0, p0, Landroid/media/tv/TvRecordingClient;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 73
    return-void
.end method

.method private greylist-max-o resetInternal()V
    .registers 3

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    .line 187
    iget-object v1, p0, Landroid/media/tv/TvRecordingClient;->mPendingAppPrivateCommands:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 188
    iget-object v1, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v1, :cond_1c

    .line 189
    iget-object v1, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v1}, Landroid/media/tv/TvInputManager$Session;->release()V

    .line 190
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/tv/TvRecordingClient;->mIsTuned:Z

    .line 191
    iput-boolean v1, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    .line 192
    iput-boolean v1, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    .line 193
    iput-boolean v1, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStopping:Z

    .line 194
    iput-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    .line 196
    :cond_1c
    return-void
.end method


# virtual methods
.method public blacklist getSessionCallback()Landroid/media/tv/TvInputManager$SessionCallback;
    .registers 2

    .line 402
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    return-object v0
.end method

.method public whitelist pauseRecording()V
    .registers 2

    .line 297
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/media/tv/TvRecordingClient;->pauseRecording(Landroid/os/Bundle;)V

    .line 298
    return-void
.end method

.method public whitelist pauseRecording(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/Bundle;

    .line 316
    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStopping:Z

    if-nez v0, :cond_3a

    .line 320
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mTvInputManager:Landroid/media/tv/TvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    iget-object v1, v1, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager;->getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;

    move-result-object v0

    .line 321
    .local v0, "info":Landroid/media/tv/TvInputInfo;
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->canPauseRecording()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 325
    iget-boolean v1, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    if-eqz v1, :cond_25

    .line 326
    const-string v1, "TvRecordingClient"

    const-string v2, "pauseRecording failed - recording already paused"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_25
    iget-object v1, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v1, :cond_31

    .line 329
    iget-object v1, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$Session;->pauseRecording(Landroid/os/Bundle;)V

    .line 330
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    .line 332
    :cond_31
    return-void

    .line 322
    :cond_32
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "pauseRecording failed - operation not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    .end local v0    # "info":Landroid/media/tv/TvInputInfo;
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pauseRecording failed - recording not yet started or stopping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist release()V
    .registers 1

    .line 182
    invoke-direct {p0}, Landroid/media/tv/TvRecordingClient;->resetInternal()V

    .line 183
    return-void
.end method

.method public whitelist resumeRecording()V
    .registers 2

    .line 346
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/media/tv/TvRecordingClient;->resumeRecording(Landroid/os/Bundle;)V

    .line 347
    return-void
.end method

.method public whitelist resumeRecording(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "params"    # Landroid/os/Bundle;

    .line 363
    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStopping:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsTuned:Z

    if-eqz v0, :cond_24

    .line 368
    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    if-nez v0, :cond_17

    .line 369
    const-string v0, "TvRecordingClient"

    const-string v1, "resumeRecording failed - recording not yet paused"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_17
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_23

    .line 372
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->resumeRecording(Landroid/os/Bundle;)V

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    .line 375
    :cond_23
    return-void

    .line 364
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "resumeRecording failed - recording not yet started or stopping or not yet tuned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 387
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 390
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_10

    .line 391
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_37

    .line 393
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendAppPrivateCommand - session not yet created (action \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" pending)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TvRecordingClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mPendingAppPrivateCommands:Ljava/util/Queue;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 397
    :goto_37
    return-void

    .line 388
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action cannot be null or an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTvInteractiveAppView(Landroid/media/tv/interactive/TvInteractiveAppView;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/media/tv/interactive/TvInteractiveAppView;
    .param p2, "recordingId"    # Ljava/lang/String;

    .line 93
    if-eqz p1, :cond_d

    if-eqz p2, :cond_5

    goto :goto_d

    .line 94
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null recordingId is not allowed only when the view is not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_d
    :goto_d
    if-nez p1, :cond_1a

    if-nez p2, :cond_12

    goto :goto_1a

    .line 98
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "recordingId should be null when the view is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1a
    :goto_1a
    iput-object p1, p0, Landroid/media/tv/TvRecordingClient;->mTvIAppView:Landroid/media/tv/interactive/TvInteractiveAppView;

    .line 102
    iput-object p2, p0, Landroid/media/tv/TvRecordingClient;->mRecordingId:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public whitelist startRecording(Landroid/net/Uri;)V
    .registers 3
    .param p1, "programUri"    # Landroid/net/Uri;

    .line 219
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0}, Landroid/media/tv/TvRecordingClient;->startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 220
    return-void
.end method

.method public whitelist startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "programUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 246
    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStopping:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsTuned:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    if-nez v0, :cond_24

    .line 250
    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    if-eqz v0, :cond_17

    .line 251
    const-string v0, "TvRecordingClient"

    const-string v1, "startRecording failed - recording already started"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_17
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_23

    .line 254
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    .line 257
    :cond_23
    return-void

    .line 247
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "startRecording failed -recording not yet stopped or not yet tuned or paused"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stopRecording()V
    .registers 3

    .line 272
    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    if-nez v0, :cond_b

    .line 273
    const-string v0, "TvRecordingClient"

    const-string v1, "stopRecording failed - recording not yet started"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_b
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_1b

    .line 276
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->stopRecording()V

    .line 277
    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    if-eqz v0, :cond_1b

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStopping:Z

    .line 281
    :cond_1b
    return-void
.end method

.method public whitelist tune(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/tv/TvRecordingClient;->tune(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 124
    return-void
.end method

.method public whitelist tune(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;
    .param p3, "params"    # Landroid/os/Bundle;

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 152
    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    if-eqz v0, :cond_f

    goto :goto_17

    .line 153
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "tune failed - recording already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    iget-object v0, v0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 156
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_33

    .line 157
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    iput-object p2, v0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    .line 158
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p2, p3}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_3b

    .line 160
    :cond_33
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    iput-object p2, v0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    .line 161
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    iput-object p3, v0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mConnectionParams:Landroid/os/Bundle;

    .line 163
    :goto_3b
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsTuned:Z

    goto :goto_5a

    .line 165
    :cond_3f
    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    if-nez v0, :cond_5b

    .line 168
    invoke-direct {p0}, Landroid/media/tv/TvRecordingClient;->resetInternal()V

    .line 169
    new-instance v0, Landroid/media/tv/TvRecordingClient$MySessionCallback;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/tv/TvRecordingClient$MySessionCallback;-><init>(Landroid/media/tv/TvRecordingClient;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    .line 170
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-eqz v0, :cond_5a

    .line 171
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mTvInputManager:Landroid/media/tv/TvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    iget-object v2, p0, Landroid/media/tv/TvRecordingClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/tv/TvInputManager;->createRecordingSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    .line 174
    :cond_5a
    :goto_5a
    return-void

    .line 166
    :cond_5b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "tune failed - inputId is changed during pause"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputId cannot be null or an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
