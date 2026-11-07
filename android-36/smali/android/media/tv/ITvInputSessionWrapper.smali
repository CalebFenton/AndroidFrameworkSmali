.class public Landroid/media/tv/ITvInputSessionWrapper;
.super Landroid/media/tv/ITvInputSession$Stub;
.source "ITvInputSessionWrapper.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;
    }
.end annotation


# static fields
.field private static final greylist-max-o DO_APP_PRIVATE_COMMAND:I = 0x9

.field private static final greylist-max-o DO_CREATE_OVERLAY_VIEW:I = 0xa

.field private static final greylist-max-o DO_DISPATCH_SURFACE_CHANGED:I = 0x4

.field private static final blacklist DO_NOTIFY_AD_BUFFER:I = 0x1c

.field private static final blacklist DO_NOTIFY_AD_SESSION_DATA:I = 0x24

.field private static final blacklist DO_NOTIFY_TV_MESSAGE:I = 0x20

.field private static final blacklist DO_PAUSE_RECORDING:I = 0x16

.field private static final greylist-max-o DO_RELAYOUT_OVERLAY_VIEW:I = 0xb

.field private static final greylist-max-o DO_RELEASE:I = 0x1

.field private static final blacklist DO_REMOVE_BROADCAST_INFO:I = 0x19

.field private static final greylist-max-o DO_REMOVE_OVERLAY_VIEW:I = 0xc

.field private static final blacklist DO_REQUEST_AD:I = 0x1b

.field private static final blacklist DO_REQUEST_BROADCAST_INFO:I = 0x18

.field private static final blacklist DO_RESUME_PLAYBACK:I = 0x22

.field private static final blacklist DO_RESUME_RECORDING:I = 0x17

.field private static final blacklist DO_SELECT_AUDIO_PRESENTATION:I = 0x1d

.field private static final greylist-max-o DO_SELECT_TRACK:I = 0x8

.field private static final greylist-max-o DO_SET_CAPTION_ENABLED:I = 0x7

.field private static final blacklist DO_SET_IAPP_NOTIFICATION_ENABLED:I = 0x1a

.field private static final greylist-max-o DO_SET_MAIN:I = 0x2

.field private static final greylist-max-o DO_SET_STREAM_VOLUME:I = 0x5

.field private static final greylist-max-o DO_SET_SURFACE:I = 0x3

.field private static final blacklist DO_SET_TV_MESSAGE_ENABLED:I = 0x1f

.field private static final blacklist DO_SET_VIDEO_FROZEN:I = 0x23

.field private static final greylist-max-o DO_START_RECORDING:I = 0x14

.field private static final blacklist DO_STOP_PLAYBACK:I = 0x21

.field private static final greylist-max-o DO_STOP_RECORDING:I = 0x15

.field private static final greylist-max-o DO_TIME_SHIFT_ENABLE_POSITION_TRACKING:I = 0x13

.field private static final greylist-max-o DO_TIME_SHIFT_PAUSE:I = 0xf

.field private static final greylist-max-o DO_TIME_SHIFT_PLAY:I = 0xe

.field private static final greylist-max-o DO_TIME_SHIFT_RESUME:I = 0x10

.field private static final greylist-max-o DO_TIME_SHIFT_SEEK_TO:I = 0x11

.field private static final blacklist DO_TIME_SHIFT_SET_MODE:I = 0x1e

.field private static final greylist-max-o DO_TIME_SHIFT_SET_PLAYBACK_PARAMS:I = 0x12

.field private static final greylist-max-o DO_TUNE:I = 0x6

.field private static final greylist-max-o DO_UNBLOCK_CONTENT:I = 0xd

.field private static final greylist-max-o EXECUTE_MESSAGE_TIMEOUT_LONG_MILLIS:I = 0x1388

.field private static final greylist-max-o EXECUTE_MESSAGE_TIMEOUT_SHORT_MILLIS:I = 0x32

.field private static final greylist-max-o EXECUTE_MESSAGE_TUNE_TIMEOUT_MILLIS:I = 0x7d0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TvInputSessionWrapper"


# instance fields
.field private final greylist-max-o mCaller:Lcom/android/internal/os/HandlerCaller;

.field private greylist-max-o mChannel:Landroid/view/InputChannel;

.field private final greylist-max-o mIsRecordingSession:Z

.field private greylist-max-o mReceiver:Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

.field private greylist-max-o mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

.field private greylist-max-o mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTvInputSessionImpl(Landroid/media/tv/ITvInputSessionWrapper;)Landroid/media/tv/TvInputService$Session;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/media/tv/TvInputService$RecordingSession;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recordingSessionImpl"    # Landroid/media/tv/TvInputService$RecordingSession;

    .line 109
    invoke-direct {p0}, Landroid/media/tv/ITvInputSession$Stub;-><init>()V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    .line 111
    new-instance v1, Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p0, v0}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 112
    iput-object p2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    .line 113
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/media/tv/TvInputService$Session;Landroid/view/InputChannel;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionImpl"    # Landroid/media/tv/TvInputService$Session;
    .param p3, "channel"    # Landroid/view/InputChannel;

    .line 97
    invoke-direct {p0}, Landroid/media/tv/ITvInputSession$Stub;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    .line 99
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 100
    iput-object p2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 101
    iput-object p3, p0, Landroid/media/tv/ITvInputSessionWrapper;->mChannel:Landroid/view/InputChannel;

    .line 102
    if-eqz p3, :cond_20

    .line 103
    new-instance v0, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p3, v1}, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;-><init>(Landroid/media/tv/ITvInputSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mReceiver:Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

    .line 105
    :cond_20
    return-void
.end method


# virtual methods
.method public greylist-max-o appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 393
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 395
    return-void
.end method

.method public greylist-max-o createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 399
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 401
    return-void
.end method

.method public greylist-max-o dispatchSurfaceChanged(III)V
    .registers 11
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 353
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x4

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "format":I
    .end local p2    # "width":I
    .end local p3    # "height":I
    .local v3, "format":I
    .local v4, "width":I
    .local v5, "height":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIII(IIIII)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 355
    return-void
.end method

.method public greylist-max-o executeMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 117
    iget-boolean v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    if-eqz v0, :cond_10

    :cond_8
    iget-boolean v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    if-nez v0, :cond_11

    .line 119
    :cond_10
    return-void

    .line 122
    :cond_11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 123
    .local v0, "startTime":J
    iget v2, p1, Landroid/os/Message;->what:I

    const-string v3, "TvInputSessionWrapper"

    packed-switch v2, :pswitch_data_332

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled message code: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_287

    .line 307
    :pswitch_36
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 308
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/TvInputService$Session;->notifyTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 309
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 310
    goto/16 :goto_287

    .line 303
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4c
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->setVideoFrozen(Z)V

    .line 304
    goto/16 :goto_287

    .line 299
    :pswitch_5b
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    invoke-virtual {v2}, Landroid/media/tv/TvInputService$Session;->resumePlayback()V

    .line 300
    goto/16 :goto_287

    .line 295
    :pswitch_62
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->stopPlayback(I)V

    .line 296
    goto/16 :goto_287

    .line 289
    :pswitch_6b
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 290
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/TvInputService$Session;->onTvMessageReceived(ILandroid/os/Bundle;)V

    .line 291
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 292
    goto/16 :goto_287

    .line 275
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_85
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 276
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/TvInputService$Session;->setTvMessageEnabled(IZ)V

    .line 277
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 278
    goto/16 :goto_287

    .line 230
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_a3
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->timeShiftSetMode(I)V

    .line 231
    goto/16 :goto_287

    .line 256
    :pswitch_ac
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 257
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 258
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 257
    invoke-virtual {v4, v5, v6}, Landroid/media/tv/TvInputService$Session;->selectAudioPresentation(II)V

    .line 259
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 260
    goto/16 :goto_287

    .line 285
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_ca
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/AdBuffer;

    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->notifyAdBufferReady(Landroid/media/tv/AdBuffer;)V

    .line 286
    goto/16 :goto_287

    .line 281
    :pswitch_d5
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/AdRequest;

    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->requestAd(Landroid/media/tv/AdRequest;)V

    .line 282
    goto/16 :goto_287

    .line 271
    :pswitch_e0
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->setInteractiveAppNotificationEnabled(Z)V

    .line 272
    goto/16 :goto_287

    .line 267
    :pswitch_ef
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->removeBroadcastInfo(I)V

    .line 268
    goto/16 :goto_287

    .line 263
    :pswitch_f8
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/BroadcastInfoRequest;

    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->requestBroadcastInfo(Landroid/media/tv/BroadcastInfoRequest;)V

    .line 264
    goto/16 :goto_287

    .line 252
    :pswitch_103
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$RecordingSession;->resumeRecording(Landroid/os/Bundle;)V

    .line 253
    goto/16 :goto_287

    .line 248
    :pswitch_10e
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$RecordingSession;->pauseRecording(Landroid/os/Bundle;)V

    .line 249
    goto/16 :goto_287

    .line 244
    :pswitch_119
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    invoke-virtual {v2}, Landroid/media/tv/TvInputService$RecordingSession;->stopRecording()V

    .line 245
    goto/16 :goto_287

    .line 238
    :pswitch_120
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 239
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/net/Uri;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/TvInputService$RecordingSession;->startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 240
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 241
    goto/16 :goto_287

    .line 234
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_136
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->timeShiftEnablePositionTracking(Z)V

    .line 235
    goto/16 :goto_287

    .line 226
    :pswitch_145
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/media/PlaybackParams;

    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 227
    goto/16 :goto_287

    .line 222
    :pswitch_150
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/media/tv/TvInputService$Session;->timeShiftSeekTo(J)V

    .line 223
    goto/16 :goto_287

    .line 218
    :pswitch_15f
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    invoke-virtual {v2}, Landroid/media/tv/TvInputService$Session;->timeShiftResume()V

    .line 219
    goto/16 :goto_287

    .line 214
    :pswitch_166
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    invoke-virtual {v2}, Landroid/media/tv/TvInputService$Session;->timeShiftPause()V

    .line 215
    goto/16 :goto_287

    .line 210
    :pswitch_16d
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->timeShiftPlay(Landroid/net/Uri;)V

    .line 211
    goto/16 :goto_287

    .line 206
    :pswitch_178
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->unblockContent(Ljava/lang/String;)V

    .line 207
    goto/16 :goto_287

    .line 202
    :pswitch_183
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->removeOverlayView(Z)V

    .line 203
    goto/16 :goto_287

    .line 198
    :pswitch_18b
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->relayoutOverlayView(Landroid/graphics/Rect;)V

    .line 199
    goto/16 :goto_287

    .line 192
    :pswitch_196
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 193
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/TvInputService$Session;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 194
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 195
    goto/16 :goto_287

    .line 181
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1ac
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 182
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-boolean v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    if-eqz v4, :cond_1c2

    .line 183
    iget-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/TvInputService$RecordingSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1cf

    .line 186
    :cond_1c2
    iget-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/TvInputService$Session;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 188
    :goto_1cf
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 189
    goto/16 :goto_287

    .line 175
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1d4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 176
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/TvInputService$Session;->selectTrack(ILjava/lang/String;)V

    .line 177
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 178
    goto/16 :goto_287

    .line 171
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1ee
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->setCaptionEnabled(Z)V

    .line 172
    goto/16 :goto_287

    .line 161
    :pswitch_1fd
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 162
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-boolean v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    if-eqz v4, :cond_213

    .line 163
    iget-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/net/Uri;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/TvInputService$RecordingSession;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_220

    .line 165
    :cond_213
    iget-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/net/Uri;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/TvInputService$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 167
    :goto_220
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 168
    goto :goto_287

    .line 157
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_224
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->setStreamVolume(F)V

    .line 158
    goto :goto_287

    .line 151
    :pswitch_232
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 152
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget v5, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v6, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v7, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/tv/TvInputService$Session;->dispatchSurfaceChanged(III)V

    .line 153
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 154
    goto :goto_287

    .line 147
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_245
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/Surface;

    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->setSurface(Landroid/view/Surface;)V

    .line 148
    goto :goto_287

    .line 143
    :pswitch_24f
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->setMain(Z)V

    .line 144
    goto :goto_287

    .line 125
    :pswitch_25d
    iget-boolean v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_26a

    .line 126
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    invoke-virtual {v2}, Landroid/media/tv/TvInputService$RecordingSession;->release()V

    .line 127
    iput-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    goto :goto_287

    .line 129
    :cond_26a
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    invoke-virtual {v2}, Landroid/media/tv/TvInputService$Session;->release()V

    .line 130
    iput-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 131
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mReceiver:Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

    if-eqz v2, :cond_27c

    .line 132
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mReceiver:Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

    invoke-virtual {v2}, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->dispose()V

    .line 133
    iput-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mReceiver:Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

    .line 135
    :cond_27c
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_287

    .line 136
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 137
    iput-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mChannel:Landroid/view/InputChannel;

    .line 317
    :cond_287
    :goto_287
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    .line 318
    .local v4, "durationMs":J
    const-wide/16 v6, 0x32

    cmp-long v2, v4, v6

    if-lez v2, :cond_331

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handling message ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") took too long time (duration="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "ms)"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x6

    const-string v6, "ms > "

    if-ne v2, v3, :cond_2f5

    const-wide/16 v2, 0x7d0

    cmp-long v2, v4, v2

    if-gtz v2, :cond_2cc

    goto :goto_2f5

    .line 322
    :cond_2cc
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too much time to handle tune request. ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x7d0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "ms) Consider handling the tune request in a separate thread."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 326
    :cond_2f5
    :goto_2f5
    const-wide/16 v2, 0x1388

    cmp-long v2, v4, v2

    if-gtz v2, :cond_2fc

    goto :goto_331

    .line 327
    :cond_2fc
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too much time to handle a request. (type="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x1388

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "ms)."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 331
    :cond_331
    :goto_331
    return-void

    :pswitch_data_332
    .packed-switch 0x1
        :pswitch_25d
        :pswitch_24f
        :pswitch_245
        :pswitch_232
        :pswitch_224
        :pswitch_1fd
        :pswitch_1ee
        :pswitch_1d4
        :pswitch_1ac
        :pswitch_196
        :pswitch_18b
        :pswitch_183
        :pswitch_178
        :pswitch_16d
        :pswitch_166
        :pswitch_15f
        :pswitch_150
        :pswitch_145
        :pswitch_136
        :pswitch_120
        :pswitch_119
        :pswitch_10e
        :pswitch_103
        :pswitch_f8
        :pswitch_ef
        :pswitch_e0
        :pswitch_d5
        :pswitch_ca
        :pswitch_ac
        :pswitch_a3
        :pswitch_85
        :pswitch_6b
        :pswitch_62
        :pswitch_5b
        :pswitch_4c
        :pswitch_36
    .end packed-switch
.end method

.method public blacklist notifyAdBufferReady(Landroid/media/tv/AdBuffer;)V
    .registers 5
    .param p1, "buffer"    # Landroid/media/tv/AdBuffer;

    .line 495
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 496
    return-void
.end method

.method public blacklist notifyTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 500
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 501
    const/16 v2, 0x24

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 500
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 502
    return-void
.end method

.method public blacklist notifyTvMessage(ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 511
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x20

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 512
    return-void
.end method

.method public blacklist pauseRecording(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/Bundle;

    .line 470
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x16

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 471
    return-void
.end method

.method public greylist-max-o relayoutOverlayView(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 405
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 406
    return-void
.end method

.method public greylist-max-o release()V
    .registers 4

    .line 335
    iget-boolean v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    if-nez v0, :cond_9

    .line 336
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputService$Session;->scheduleOverlayViewCleanup()V

    .line 338
    :cond_9
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 339
    return-void
.end method

.method public blacklist removeBroadcastInfo(I)V
    .registers 5
    .param p1, "requestId"    # I

    .line 485
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x19

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 486
    return-void
.end method

.method public greylist-max-o removeOverlayView()V
    .registers 4

    .line 410
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 411
    return-void
.end method

.method public blacklist requestAd(Landroid/media/tv/AdRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/media/tv/AdRequest;

    .line 490
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 491
    return-void
.end method

.method public blacklist requestBroadcastInfo(Landroid/media/tv/BroadcastInfoRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/media/tv/BroadcastInfoRequest;

    .line 480
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x18

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 481
    return-void
.end method

.method public blacklist resumePlayback()V
    .registers 4

    .line 527
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 528
    return-void
.end method

.method public blacklist resumeRecording(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/Bundle;

    .line 475
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 476
    return-void
.end method

.method public blacklist selectAudioPresentation(II)V
    .registers 8
    .param p1, "presentationId"    # I
    .param p2, "programId"    # I

    .line 376
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 377
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1d

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 376
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 378
    return-void
.end method

.method public greylist-max-o selectTrack(ILjava/lang/String;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .line 382
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 383
    return-void
.end method

.method public greylist-max-o setCaptionEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 371
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x7

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 372
    return-void
.end method

.method public blacklist setInteractiveAppNotificationEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 387
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 388
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x1a

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 387
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 389
    return-void
.end method

.method public greylist-max-o setMain(Z)V
    .registers 6
    .param p1, "isMain"    # Z

    .line 343
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 344
    return-void
.end method

.method public greylist-max-o setSurface(Landroid/view/Surface;)V
    .registers 5
    .param p1, "surface"    # Landroid/view/Surface;

    .line 348
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 349
    return-void
.end method

.method public blacklist setTvMessageEnabled(IZ)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "enabled"    # Z

    .line 516
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 517
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 516
    const/16 v4, 0x1f

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 518
    return-void
.end method

.method public blacklist setVideoFrozen(Z)V
    .registers 6
    .param p1, "isFrozen"    # Z

    .line 506
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x23

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 507
    return-void
.end method

.method public final greylist-max-o setVolume(F)V
    .registers 6
    .param p1, "volume"    # F

    .line 359
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x5

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 360
    return-void
.end method

.method public blacklist startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "programUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 459
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 461
    return-void
.end method

.method public blacklist stopPlayback(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 522
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x21

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 523
    return-void
.end method

.method public greylist-max-o stopRecording()V
    .registers 4

    .line 465
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 466
    return-void
.end method

.method public greylist-max-o timeShiftEnablePositionTracking(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .line 453
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 454
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 453
    const/16 v3, 0x13

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 455
    return-void
.end method

.method public greylist-max-o timeShiftPause()V
    .registers 4

    .line 427
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 428
    return-void
.end method

.method public greylist-max-o timeShiftPlay(Landroid/net/Uri;)V
    .registers 5
    .param p1, "recordedProgramUri"    # Landroid/net/Uri;

    .line 421
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 423
    return-void
.end method

.method public greylist-max-o timeShiftResume()V
    .registers 4

    .line 432
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 433
    return-void
.end method

.method public greylist-max-o timeShiftSeekTo(J)V
    .registers 7
    .param p1, "timeMs"    # J

    .line 437
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x11

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 438
    return-void
.end method

.method public blacklist timeShiftSetMode(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 448
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 449
    return-void
.end method

.method public greylist-max-o timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    .registers 5
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .line 442
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 444
    return-void
.end method

.method public greylist-max-o tune(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 365
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->removeMessages(I)V

    .line 366
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 367
    return-void
.end method

.method public greylist-max-o unblockContent(Ljava/lang/String;)V
    .registers 5
    .param p1, "unblockedRating"    # Ljava/lang/String;

    .line 415
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 417
    return-void
.end method
