.class public Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;
.super Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;
.source "ITvInteractiveAppSessionWrapper.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;
    }
.end annotation


# static fields
.field private static final blacklist DO_CREATE_BI_INTERACTIVE_APP:I = 0x5

.field private static final blacklist DO_CREATE_MEDIA_VIEW:I = 0x1b

.field private static final blacklist DO_DESTROY_BI_INTERACTIVE_APP:I = 0x6

.field private static final blacklist DO_DISPATCH_SURFACE_CHANGED:I = 0x18

.field private static final blacklist DO_NOTIFY_AD_BUFFER_CONSUMED:I = 0x20

.field private static final blacklist DO_NOTIFY_AD_RESPONSE:I = 0x1a

.field private static final blacklist DO_NOTIFY_BROADCAST_INFO_RESPONSE:I = 0x19

.field private static final blacklist DO_NOTIFY_CONTENT_ALLOWED:I = 0x14

.field private static final blacklist DO_NOTIFY_CONTENT_BLOCKED:I = 0x15

.field private static final blacklist DO_NOTIFY_ERROR:I = 0xe

.field private static final blacklist DO_NOTIFY_RECORDING_CONNECTION_FAILED:I = 0x29

.field private static final blacklist DO_NOTIFY_RECORDING_DISCONNECTED:I = 0x2a

.field private static final blacklist DO_NOTIFY_RECORDING_ERROR:I = 0x2c

.field private static final blacklist DO_NOTIFY_RECORDING_SCHEDULED:I = 0x2d

.field private static final blacklist DO_NOTIFY_RECORDING_STARTED:I = 0x1e

.field private static final blacklist DO_NOTIFY_RECORDING_STOPPED:I = 0x1f

.field private static final blacklist DO_NOTIFY_RECORDING_TUNED:I = 0x2b

.field private static final blacklist DO_NOTIFY_SIGNAL_STRENGTH:I = 0x16

.field private static final blacklist DO_NOTIFY_TIME_SHIFT_CURRENT_POSITION_CHANGED:I = 0x27

.field private static final blacklist DO_NOTIFY_TIME_SHIFT_PLAYBACK_PARAMS:I = 0x24

.field private static final blacklist DO_NOTIFY_TIME_SHIFT_START_POSITION_CHANGED:I = 0x26

.field private static final blacklist DO_NOTIFY_TIME_SHIFT_STATUS_CHANGED:I = 0x25

.field private static final blacklist DO_NOTIFY_TRACKS_CHANGED:I = 0x11

.field private static final blacklist DO_NOTIFY_TRACK_SELECTED:I = 0x10

.field private static final blacklist DO_NOTIFY_TUNED:I = 0xf

.field private static final blacklist DO_NOTIFY_TV_MESSAGE:I = 0x21

.field private static final blacklist DO_NOTIFY_VIDEO_AVAILABLE:I = 0x12

.field private static final blacklist DO_NOTIFY_VIDEO_FREEZE_UPDATED:I = 0x31

.field private static final blacklist DO_NOTIFY_VIDEO_UNAVAILABLE:I = 0x13

.field private static final blacklist DO_RELAYOUT_MEDIA_VIEW:I = 0x1c

.field private static final blacklist DO_RELEASE:I = 0x1

.field private static final blacklist DO_REMOVE_MEDIA_VIEW:I = 0x1d

.field private static final blacklist DO_RESET_INTERACTIVE_APP:I = 0x4

.field private static final blacklist DO_SEND_AVAILABLE_SPEEDS:I = 0x2f

.field private static final blacklist DO_SEND_CERTIFICATE:I = 0x32

.field private static final blacklist DO_SEND_CURRENT_CHANNEL_LCN:I = 0x9

.field private static final blacklist DO_SEND_CURRENT_CHANNEL_URI:I = 0x8

.field private static final blacklist DO_SEND_CURRENT_TV_INPUT_ID:I = 0xc

.field private static final blacklist DO_SEND_CURRENT_VIDEO_BOUNDS:I = 0x28

.field private static final blacklist DO_SEND_RECORDING_INFO:I = 0x22

.field private static final blacklist DO_SEND_RECORDING_INFO_LIST:I = 0x23

.field private static final blacklist DO_SEND_SELECTED_TRACK_INFO:I = 0x30

.field private static final blacklist DO_SEND_SIGNING_RESULT:I = 0xd

.field private static final blacklist DO_SEND_STREAM_VOLUME:I = 0xa

.field private static final blacklist DO_SEND_TIME_SHIFT_MODE:I = 0x2e

.field private static final blacklist DO_SEND_TRACK_INFO_LIST:I = 0xb

.field private static final blacklist DO_SET_SURFACE:I = 0x17

.field private static final blacklist DO_SET_TELETEXT_APP_ENABLED:I = 0x7

.field private static final blacklist DO_START_INTERACTIVE_APP:I = 0x2

.field private static final blacklist DO_STOP_INTERACTIVE_APP:I = 0x3

.field private static final blacklist EXECUTE_MESSAGE_TIMEOUT_LONG_MILLIS:I = 0x1388

.field private static final blacklist EXECUTE_MESSAGE_TIMEOUT_SHORT_MILLIS:I = 0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "ITvInteractiveAppSessionWrapper"


# instance fields
.field private final blacklist mCaller:Lcom/android/internal/os/HandlerCaller;

.field private blacklist mChannel:Landroid/view/InputChannel;

.field private blacklist mReceiver:Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;

.field private blacklist mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSessionImpl(Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;)Landroid/media/tv/interactive/TvInteractiveAppService$Session;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/view/InputChannel;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mSessionImpl"    # Landroid/media/tv/interactive/TvInteractiveAppService$Session;
    .param p3, "channel"    # Landroid/view/InputChannel;

    .line 115
    invoke-direct {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;-><init>()V

    .line 116
    iput-object p2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    .line 117
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 118
    iput-object p3, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mChannel:Landroid/view/InputChannel;

    .line 119
    if-eqz p3, :cond_1d

    .line 120
    new-instance v0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p3, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;-><init>(Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mReceiver:Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;

    .line 122
    :cond_1d
    return-void
.end method


# virtual methods
.method public blacklist createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "biIAppUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 414
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 415
    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 414
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 416
    return-void
.end method

.method public blacklist createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 667
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 668
    const/16 v2, 0x1b

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 667
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 669
    return-void
.end method

.method public blacklist destroyBiInteractiveApp(Ljava/lang/String;)V
    .registers 5
    .param p1, "biIAppId"    # Ljava/lang/String;

    .line 420
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 421
    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 420
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 422
    return-void
.end method

.method public blacklist dispatchSurfaceChanged(III)V
    .registers 11
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 645
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 646
    const/16 v2, 0x18

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

    .line 645
    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 647
    return-void
.end method

.method public blacklist executeMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 126
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    if-nez v0, :cond_5

    .line 127
    return-void

    .line 130
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 131
    .local v0, "startTime":J
    iget v2, p1, Landroid/os/Message;->what:I

    const-string v3, "ITvInteractiveAppSessionWrapper"

    packed-switch v2, :pswitch_data_390

    .line 383
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

    goto/16 :goto_355

    .line 376
    :pswitch_2a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 377
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v7, Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendCertificate(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 379
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 380
    goto/16 :goto_355

    .line 372
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_48
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyVideoFreezeUpdated(Z)V

    .line 373
    goto/16 :goto_355

    .line 254
    :pswitch_57
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendSelectedTrackInfo(Ljava/util/List;)V

    .line 255
    goto/16 :goto_355

    .line 200
    :pswitch_62
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [F

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendAvailableSpeeds([F)V

    .line 201
    goto/16 :goto_355

    .line 196
    :pswitch_6d
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendTimeShiftMode(I)V

    .line 197
    goto/16 :goto_355

    .line 366
    :pswitch_7c
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 367
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyRecordingScheduled(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 369
    goto/16 :goto_355

    .line 360
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_92
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 361
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyRecordingError(Ljava/lang/String;I)V

    .line 362
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 363
    goto/16 :goto_355

    .line 354
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_ac
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 355
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyRecordingTuned(Ljava/lang/String;Landroid/net/Uri;)V

    .line 356
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 357
    goto/16 :goto_355

    .line 348
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_c2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 349
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyRecordingDisconnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 351
    goto/16 :goto_355

    .line 341
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_d8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 342
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyRecordingConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 345
    goto/16 :goto_355

    .line 172
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_ee
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendCurrentVideoBounds(Landroid/graphics/Rect;)V

    .line 173
    goto/16 :goto_355

    .line 334
    :pswitch_f9
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 335
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    .line 336
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 335
    invoke-virtual {v4, v5, v6, v7}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyTimeShiftCurrentPositionChanged(Ljava/lang/String;J)V

    .line 337
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 338
    goto/16 :goto_355

    .line 327
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_113
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 328
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    .line 329
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 328
    invoke-virtual {v4, v5, v6, v7}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyTimeShiftStartPositionChanged(Ljava/lang/String;J)V

    .line 330
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 331
    goto/16 :goto_355

    .line 321
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_12d
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 322
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyTimeShiftStatusChanged(Ljava/lang/String;I)V

    .line 323
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 324
    goto/16 :goto_355

    .line 317
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_147
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/media/PlaybackParams;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyTimeShiftPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 318
    goto/16 :goto_355

    .line 208
    :pswitch_152
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendTvRecordingInfoList(Ljava/util/List;)V

    .line 209
    goto/16 :goto_355

    .line 204
    :pswitch_15d
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/TvRecordingInfo;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendTvRecordingInfo(Landroid/media/tv/TvRecordingInfo;)V

    .line 205
    goto/16 :goto_355

    .line 248
    :pswitch_168
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 249
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyTvMessage(ILandroid/os/Bundle;)V

    .line 250
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 251
    goto/16 :goto_355

    .line 313
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_182
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/AdBuffer;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyAdBufferConsumed(Landroid/media/tv/AdBuffer;)V

    .line 314
    goto/16 :goto_355

    .line 218
    :pswitch_18d
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyRecordingStopped(Ljava/lang/String;)V

    .line 219
    goto/16 :goto_355

    .line 212
    :pswitch_198
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 213
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyRecordingStarted(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 215
    goto/16 :goto_355

    .line 309
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1ae
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->removeMediaView(Z)V

    .line 310
    goto/16 :goto_355

    .line 305
    :pswitch_1b6
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->relayoutMediaView(Landroid/graphics/Rect;)V

    .line 306
    goto/16 :goto_355

    .line 299
    :pswitch_1c1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 300
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 301
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 302
    goto/16 :goto_355

    .line 295
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1d7
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/AdResponse;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyAdResponse(Landroid/media/tv/AdResponse;)V

    .line 296
    goto/16 :goto_355

    .line 291
    :pswitch_1e2
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/BroadcastInfoResponse;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V

    .line 292
    goto/16 :goto_355

    .line 284
    :pswitch_1ed
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 285
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget v5, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 286
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 285
    invoke-virtual {v4, v5, v6, v7}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->dispatchSurfaceChanged(III)V

    .line 287
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 288
    goto/16 :goto_355

    .line 280
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_219
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/Surface;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->setSurface(Landroid/view/Surface;)V

    .line 281
    goto/16 :goto_355

    .line 276
    :pswitch_224
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifySignalStrength(I)V

    .line 277
    goto/16 :goto_355

    .line 270
    :pswitch_233
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 271
    .local v2, "contentRating":Ljava/lang/String;
    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    .line 272
    invoke-static {v2}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v5

    .line 271
    invoke-virtual {v4, v5}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyContentBlocked(Landroid/media/tv/TvContentRating;)V

    .line 273
    goto/16 :goto_355

    .line 266
    .end local v2    # "contentRating":Ljava/lang/String;
    :pswitch_242
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyContentAllowed()V

    .line 267
    goto/16 :goto_355

    .line 262
    :pswitch_249
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyVideoUnavailable(I)V

    .line 263
    goto/16 :goto_355

    .line 258
    :pswitch_258
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyVideoAvailable()V

    .line 259
    goto/16 :goto_355

    .line 244
    :pswitch_25f
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyTracksChanged(Ljava/util/List;)V

    .line 245
    goto/16 :goto_355

    .line 238
    :pswitch_26a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 239
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyTrackSelected(ILjava/lang/String;)V

    .line 240
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 241
    goto/16 :goto_355

    .line 234
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_284
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyTuned(Landroid/net/Uri;)V

    .line 235
    goto/16 :goto_355

    .line 228
    :pswitch_28f
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 229
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 230
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 231
    goto/16 :goto_355

    .line 222
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2a5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 223
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, [B

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendSigningResult(Ljava/lang/String;[B)V

    .line 224
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 225
    goto/16 :goto_355

    .line 192
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2bb
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendCurrentTvInputId(Ljava/lang/String;)V

    .line 193
    goto/16 :goto_355

    .line 188
    :pswitch_2c6
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendTrackInfoList(Ljava/util/List;)V

    .line 189
    goto/16 :goto_355

    .line 184
    :pswitch_2d1
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendStreamVolume(F)V

    .line 185
    goto/16 :goto_355

    .line 180
    :pswitch_2e0
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendCurrentChannelLcn(I)V

    .line 181
    goto :goto_355

    .line 176
    :pswitch_2ee
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendCurrentChannelUri(Landroid/net/Uri;)V

    .line 177
    goto :goto_355

    .line 168
    :pswitch_2f8
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->setTeletextAppEnabled(Z)V

    .line 169
    goto :goto_355

    .line 164
    :pswitch_306
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->destroyBiInteractiveApp(Ljava/lang/String;)V

    .line 165
    goto :goto_355

    .line 158
    :pswitch_310
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 159
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/net/Uri;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 161
    goto :goto_355

    .line 154
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_325
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->resetInteractiveApp()V

    .line 155
    goto :goto_355

    .line 150
    :pswitch_32b
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->stopInteractiveApp()V

    .line 151
    goto :goto_355

    .line 146
    :pswitch_331
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->startInteractiveApp()V

    .line 147
    goto :goto_355

    .line 133
    :pswitch_337
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->release()V

    .line 134
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    .line 135
    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mReceiver:Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;

    if-eqz v4, :cond_34a

    .line 136
    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mReceiver:Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;

    invoke-virtual {v4}, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;->dispose()V

    .line 137
    iput-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mReceiver:Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;

    .line 139
    :cond_34a
    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mChannel:Landroid/view/InputChannel;

    if-eqz v4, :cond_355

    .line 140
    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mChannel:Landroid/view/InputChannel;

    invoke-virtual {v4}, Landroid/view/InputChannel;->dispose()V

    .line 141
    iput-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mChannel:Landroid/view/InputChannel;

    .line 387
    :cond_355
    :goto_355
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    .line 388
    .local v4, "durationMs":J
    const-wide/16 v6, 0x3e8

    cmp-long v2, v4, v6

    if-lez v2, :cond_38e

    .line 389
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

    const-string/jumbo v6, "ms)"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    nop

    .line 395
    :cond_38e
    return-void

    nop

    :pswitch_data_390
    .packed-switch 0x1
        :pswitch_337
        :pswitch_331
        :pswitch_32b
        :pswitch_325
        :pswitch_310
        :pswitch_306
        :pswitch_2f8
        :pswitch_2ee
        :pswitch_2e0
        :pswitch_2d1
        :pswitch_2c6
        :pswitch_2bb
        :pswitch_2a5
        :pswitch_28f
        :pswitch_284
        :pswitch_26a
        :pswitch_25f
        :pswitch_258
        :pswitch_249
        :pswitch_242
        :pswitch_233
        :pswitch_224
        :pswitch_219
        :pswitch_1ed
        :pswitch_1e2
        :pswitch_1d7
        :pswitch_1c1
        :pswitch_1b6
        :pswitch_1ae
        :pswitch_198
        :pswitch_18d
        :pswitch_182
        :pswitch_168
        :pswitch_15d
        :pswitch_152
        :pswitch_147
        :pswitch_12d
        :pswitch_113
        :pswitch_f9
        :pswitch_ee
        :pswitch_d8
        :pswitch_c2
        :pswitch_ac
        :pswitch_92
        :pswitch_7c
        :pswitch_6d
        :pswitch_62
        :pswitch_57
        :pswitch_48
        :pswitch_2a
    .end packed-switch
.end method

.method public blacklist notifyAdBufferConsumed(Landroid/media/tv/AdBuffer;)V
    .registers 5
    .param p1, "buffer"    # Landroid/media/tv/AdBuffer;

    .line 662
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x20

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 663
    return-void
.end method

.method public blacklist notifyAdResponse(Landroid/media/tv/AdResponse;)V
    .registers 5
    .param p1, "response"    # Landroid/media/tv/AdResponse;

    .line 657
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 658
    return-void
.end method

.method public blacklist notifyBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    .registers 5
    .param p1, "response"    # Landroid/media/tv/BroadcastInfoResponse;

    .line 651
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 652
    const/16 v2, 0x19

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 651
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 653
    return-void
.end method

.method public blacklist notifyContentAllowed()V
    .registers 4

    .line 583
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 584
    return-void
.end method

.method public blacklist notifyContentBlocked(Ljava/lang/String;)V
    .registers 5
    .param p1, "rating"    # Ljava/lang/String;

    .line 588
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 589
    return-void
.end method

.method public blacklist notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "errMsg"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 503
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 504
    const/16 v2, 0xe

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 503
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 505
    return-void
.end method

.method public blacklist notifyRecordingConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "inputId"    # Ljava/lang/String;

    .line 610
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x29

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 612
    return-void
.end method

.method public blacklist notifyRecordingDisconnected(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "inputId"    # Ljava/lang/String;

    .line 616
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 618
    return-void
.end method

.method public blacklist notifyRecordingError(Ljava/lang/String;I)V
    .registers 7
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "err"    # I

    .line 628
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 629
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 628
    const/16 v3, 0x2c

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 630
    return-void
.end method

.method public blacklist notifyRecordingScheduled(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .line 634
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 636
    return-void
.end method

.method public blacklist notifyRecordingStarted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .line 598
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 600
    return-void
.end method

.method public blacklist notifyRecordingStopped(Ljava/lang/String;)V
    .registers 5
    .param p1, "recordingId"    # Ljava/lang/String;

    .line 604
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 606
    return-void
.end method

.method public blacklist notifyRecordingTuned(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 6
    .param p1, "recordingId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;

    .line 622
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x2b

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 624
    return-void
.end method

.method public blacklist notifySignalStrength(I)V
    .registers 6
    .param p1, "strength"    # I

    .line 593
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x16

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 594
    return-void
.end method

.method public blacklist notifyTimeShiftCurrentPositionChanged(Ljava/lang/String;J)V
    .registers 8
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "timeMs"    # J

    .line 527
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 528
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 527
    const/16 v3, 0x27

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 529
    return-void
.end method

.method public blacklist notifyTimeShiftPlaybackParams(Landroid/media/PlaybackParams;)V
    .registers 5
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .line 509
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 510
    const/16 v2, 0x24

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 509
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 511
    return-void
.end method

.method public blacklist notifyTimeShiftStartPositionChanged(Ljava/lang/String;J)V
    .registers 8
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "timeMs"    # J

    .line 521
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 522
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 521
    const/16 v3, 0x26

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 523
    return-void
.end method

.method public blacklist notifyTimeShiftStatusChanged(Ljava/lang/String;I)V
    .registers 7
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 515
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 516
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 515
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 517
    return-void
.end method

.method public blacklist notifyTrackSelected(ILjava/lang/String;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .line 544
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 545
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 544
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 546
    return-void
.end method

.method public blacklist notifyTracksChanged(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 562
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 563
    return-void
.end method

.method public blacklist notifyTuned(Landroid/net/Uri;)V
    .registers 5
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 539
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 540
    return-void
.end method

.method public blacklist notifyTvMessage(ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 550
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 551
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x21

    invoke-virtual {v1, v3, v2, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 550
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 552
    return-void
.end method

.method public blacklist notifyVideoAvailable()V
    .registers 4

    .line 567
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 568
    return-void
.end method

.method public blacklist notifyVideoFreezeUpdated(Z)V
    .registers 6
    .param p1, "isFrozen"    # Z

    .line 577
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 578
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 577
    const/16 v3, 0x31

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 579
    return-void
.end method

.method public blacklist notifyVideoUnavailable(I)V
    .registers 6
    .param p1, "reason"    # I

    .line 572
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x13

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 573
    return-void
.end method

.method public blacklist relayoutMediaView(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 673
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 674
    return-void
.end method

.method public blacklist release()V
    .registers 4

    .line 533
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->scheduleMediaViewCleanup()V

    .line 534
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 535
    return-void
.end method

.method public blacklist removeMediaView()V
    .registers 4

    .line 678
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 679
    return-void
.end method

.method public blacklist resetInteractiveApp()V
    .registers 4

    .line 409
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 410
    return-void
.end method

.method public blacklist sendAvailableSpeeds([F)V
    .registers 5
    .param p1, "speeds"    # [F

    .line 473
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 474
    const/16 v2, 0x2f

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 473
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 475
    return-void
.end method

.method public blacklist sendCertificate(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "certBundle"    # Landroid/os/Bundle;

    .line 497
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 498
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x32

    invoke-virtual {v1, v3, p1, v2, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 497
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 499
    return-void
.end method

.method public blacklist sendCurrentChannelLcn(I)V
    .registers 6
    .param p1, "lcn"    # I

    .line 444
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 445
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 444
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 446
    return-void
.end method

.method public blacklist sendCurrentChannelUri(Landroid/net/Uri;)V
    .registers 5
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 438
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 439
    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 438
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 440
    return-void
.end method

.method public blacklist sendCurrentTvInputId(Ljava/lang/String;)V
    .registers 5
    .param p1, "inputId"    # Ljava/lang/String;

    .line 462
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 463
    const/16 v2, 0xc

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 462
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 464
    return-void
.end method

.method public blacklist sendCurrentVideoBounds(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 432
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 433
    const/16 v2, 0x28

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 432
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 434
    return-void
.end method

.method public blacklist sendSelectedTrackInfo(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 556
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 557
    const/16 v2, 0x30

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 556
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 558
    return-void
.end method

.method public blacklist sendSigningResult(Ljava/lang/String;[B)V
    .registers 6
    .param p1, "signingId"    # Ljava/lang/String;
    .param p2, "result"    # [B

    .line 491
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 492
    const/16 v2, 0xd

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 491
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 493
    return-void
.end method

.method public blacklist sendStreamVolume(F)V
    .registers 6
    .param p1, "volume"    # F

    .line 450
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 451
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 450
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 452
    return-void
.end method

.method public blacklist sendTimeShiftMode(I)V
    .registers 6
    .param p1, "mode"    # I

    .line 468
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x2e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 469
    return-void
.end method

.method public blacklist sendTrackInfoList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 456
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 457
    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 456
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 458
    return-void
.end method

.method public blacklist sendTvRecordingInfo(Landroid/media/tv/TvRecordingInfo;)V
    .registers 5
    .param p1, "recordingInfo"    # Landroid/media/tv/TvRecordingInfo;

    .line 479
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 480
    const/16 v2, 0x22

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 479
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 481
    return-void
.end method

.method public blacklist sendTvRecordingInfoList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvRecordingInfo;",
            ">;)V"
        }
    .end annotation

    .line 485
    .local p1, "recordingInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvRecordingInfo;>;"
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 486
    const/16 v2, 0x23

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 485
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 487
    return-void
.end method

.method public blacklist setSurface(Landroid/view/Surface;)V
    .registers 5
    .param p1, "surface"    # Landroid/view/Surface;

    .line 640
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 641
    return-void
.end method

.method public blacklist setTeletextAppEnabled(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .line 426
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 427
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 426
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 428
    return-void
.end method

.method public blacklist startInteractiveApp()V
    .registers 4

    .line 399
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 400
    return-void
.end method

.method public blacklist stopInteractiveApp()V
    .registers 4

    .line 404
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 405
    return-void
.end method
