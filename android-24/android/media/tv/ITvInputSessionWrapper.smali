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
.field private static final DO_APP_PRIVATE_COMMAND:I = 0x9

.field private static final DO_CREATE_OVERLAY_VIEW:I = 0xa

.field private static final DO_DISPATCH_SURFACE_CHANGED:I = 0x4

.field private static final DO_RELAYOUT_OVERLAY_VIEW:I = 0xb

.field private static final DO_RELEASE:I = 0x1

.field private static final DO_REMOVE_OVERLAY_VIEW:I = 0xc

.field private static final DO_SELECT_TRACK:I = 0x8

.field private static final DO_SET_CAPTION_ENABLED:I = 0x7

.field private static final DO_SET_MAIN:I = 0x2

.field private static final DO_SET_STREAM_VOLUME:I = 0x5

.field private static final DO_SET_SURFACE:I = 0x3

.field private static final DO_START_RECORDING:I = 0x14

.field private static final DO_STOP_RECORDING:I = 0x15

.field private static final DO_TIME_SHIFT_ENABLE_POSITION_TRACKING:I = 0x13

.field private static final DO_TIME_SHIFT_PAUSE:I = 0xf

.field private static final DO_TIME_SHIFT_PLAY:I = 0xe

.field private static final DO_TIME_SHIFT_RESUME:I = 0x10

.field private static final DO_TIME_SHIFT_SEEK_TO:I = 0x11

.field private static final DO_TIME_SHIFT_SET_PLAYBACK_PARAMS:I = 0x12

.field private static final DO_TUNE:I = 0x6

.field private static final DO_UNBLOCK_CONTENT:I = 0xd

.field private static final EXECUTE_MESSAGE_TIMEOUT_LONG_MILLIS:I = 0x1388

.field private static final EXECUTE_MESSAGE_TIMEOUT_SHORT_MILLIS:I = 0x32

.field private static final EXECUTE_MESSAGE_TUNE_TIMEOUT_MILLIS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "TvInputSessionWrapper"


# instance fields
.field private final mCaller:Lcom/android/internal/os/HandlerCaller;

.field private mChannel:Landroid/view/InputChannel;

.field private final mIsRecordingSession:Z

.field private mReceiver:Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

.field private mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

.field private mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;


# direct methods
.method static synthetic -get0(Landroid/media/tv/ITvInputSessionWrapper;)Landroid/media/tv/TvInputService$Session;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/tv/TvInputService$RecordingSession;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recordingSessionImpl"    # Landroid/media/tv/TvInputService$RecordingSession;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 93
    invoke-direct {p0}, Landroid/media/tv/ITvInputSession$Stub;-><init>()V

    #@4
    .line 95
    iput-boolean v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    #@6
    .line 96
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-direct {v0, p1, v1, p0, v2}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    #@c
    iput-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@e
    .line 97
    iput-object p2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    #@10
    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/tv/TvInputService$Session;Landroid/view/InputChannel;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionImpl"    # Landroid/media/tv/TvInputService$Session;
    .param p3, "channel"    # Landroid/view/InputChannel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 81
    invoke-direct {p0}, Landroid/media/tv/ITvInputSession$Stub;-><init>()V

    #@4
    .line 83
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    #@7
    .line 84
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    #@9
    const/4 v1, 0x1

    #@a
    invoke-direct {v0, p1, v2, p0, v1}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    #@d
    iput-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@f
    .line 85
    iput-object p2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@11
    .line 86
    iput-object p3, p0, Landroid/media/tv/ITvInputSessionWrapper;->mChannel:Landroid/view/InputChannel;

    #@13
    .line 87
    if-eqz p3, :cond_0

    #@15
    .line 88
    new-instance v0, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

    #@17
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, p0, p3, v1}, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;-><init>(Landroid/media/tv/ITvInputSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V

    #@1e
    iput-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mReceiver:Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

    #@20
    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 295
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0x9

    #@6
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 294
    return-void
.end method

.method public createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 301
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0xa

    #@6
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 300
    return-void
.end method

.method public dispatchSurfaceChanged(III)V
    .locals 7
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    .line 267
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/4 v1, 0x4

    #@5
    .line 268
    const/4 v5, 0x0

    #@6
    move v2, p1

    #@7
    move v3, p2

    #@8
    move v4, p3

    #@9
    .line 267
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIII(IIIII)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v6, v0}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@10
    .line 266
    return-void
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 102
    iget-boolean v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 104
    :cond_0
    return-void

    #@a
    .line 103
    :cond_1
    iget-boolean v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    #@c
    if-nez v1, :cond_2

    #@e
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 107
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@15
    move-result-wide v4

    #@16
    .line 108
    .local v4, "startTime":J
    iget v1, p1, Landroid/os/Message;->what:I

    #@18
    packed-switch v1, :pswitch_data_0

    #@1b
    .line 227
    const-string/jumbo v1, "TvInputSessionWrapper"

    #@1e
    new-instance v6, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v7, "Unhandled message code: "

    #@26
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v6

    #@2a
    iget v7, p1, Landroid/os/Message;->what:I

    #@2c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 231
    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@3a
    move-result-wide v6

    #@3b
    sub-long/2addr v6, v4

    #@3c
    const-wide/32 v8, 0xf4240

    #@3f
    div-long v2, v6, v8

    #@41
    .line 232
    .local v2, "durationMs":J
    const-wide/16 v6, 0x32

    #@43
    cmp-long v1, v2, v6

    #@45
    if-lez v1, :cond_9

    #@47
    .line 233
    const-string/jumbo v1, "TvInputSessionWrapper"

    #@4a
    new-instance v6, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v7, "Handling message ("

    #@52
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v6

    #@56
    iget v7, p1, Landroid/os/Message;->what:I

    #@58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    const-string/jumbo v7, ") took too long time (duration="

    #@5f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v6

    #@63
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    .line 234
    const-string/jumbo v7, "ms)"

    #@6a
    .line 233
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v6

    #@72
    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    .line 235
    iget v1, p1, Landroid/os/Message;->what:I

    #@77
    const/4 v6, 0x6

    #@78
    if-ne v1, v6, :cond_8

    #@7a
    const-wide/16 v6, 0x7d0

    #@7c
    cmp-long v1, v2, v6

    #@7e
    if-lez v1, :cond_8

    #@80
    .line 236
    new-instance v1, Ljava/lang/RuntimeException;

    #@82
    new-instance v6, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v7, "Too much time to handle tune request. ("

    #@8a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v6

    #@8e
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@91
    move-result-object v6

    #@92
    .line 237
    const-string/jumbo v7, "ms > "

    #@95
    .line 236
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v6

    #@99
    .line 237
    const/16 v7, 0x7d0

    #@9b
    .line 236
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v6

    #@9f
    .line 237
    const-string/jumbo v7, "ms) "

    #@a2
    .line 236
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v6

    #@a6
    .line 238
    const-string/jumbo v7, "Consider handling the tune request in a separate thread."

    #@a9
    .line 236
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v6

    #@ad
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v6

    #@b1
    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b4
    throw v1

    #@b5
    .line 110
    .end local v2    # "durationMs":J
    :pswitch_0
    iget-boolean v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    #@b7
    if-eqz v1, :cond_4

    #@b9
    .line 111
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    #@bb
    invoke-virtual {v1}, Landroid/media/tv/TvInputService$RecordingSession;->release()V

    #@be
    .line 112
    iput-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    #@c0
    goto/16 :goto_0

    #@c2
    .line 114
    :cond_4
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@c4
    invoke-virtual {v1}, Landroid/media/tv/TvInputService$Session;->release()V

    #@c7
    .line 115
    iput-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@c9
    .line 116
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mReceiver:Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

    #@cb
    if-eqz v1, :cond_5

    #@cd
    .line 117
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mReceiver:Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

    #@cf
    invoke-virtual {v1}, Landroid/view/InputEventReceiver;->dispose()V

    #@d2
    .line 118
    iput-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mReceiver:Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

    #@d4
    .line 120
    :cond_5
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mChannel:Landroid/view/InputChannel;

    #@d6
    if-eqz v1, :cond_3

    #@d8
    .line 121
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mChannel:Landroid/view/InputChannel;

    #@da
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    #@dd
    .line 122
    iput-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mChannel:Landroid/view/InputChannel;

    #@df
    goto/16 :goto_0

    #@e1
    .line 128
    :pswitch_1
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@e3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e5
    check-cast v1, Ljava/lang/Boolean;

    #@e7
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@ea
    move-result v1

    #@eb
    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->setMain(Z)V

    #@ee
    goto/16 :goto_0

    #@f0
    .line 132
    :pswitch_2
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@f2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f4
    check-cast v1, Landroid/view/Surface;

    #@f6
    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->setSurface(Landroid/view/Surface;)V

    #@f9
    goto/16 :goto_0

    #@fb
    .line 136
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@fd
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@ff
    .line 137
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@101
    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@103
    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@105
    iget v8, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@107
    invoke-virtual {v1, v6, v7, v8}, Landroid/media/tv/TvInputService$Session;->dispatchSurfaceChanged(III)V

    #@10a
    .line 138
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@10d
    goto/16 :goto_0

    #@10f
    .line 142
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@111
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@113
    check-cast v1, Ljava/lang/Float;

    #@115
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@118
    move-result v1

    #@119
    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->setStreamVolume(F)V

    #@11c
    goto/16 :goto_0

    #@11e
    .line 146
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@120
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@122
    .line 147
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-boolean v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    #@124
    if-eqz v1, :cond_6

    #@126
    .line 148
    iget-object v7, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    #@128
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@12a
    check-cast v1, Landroid/net/Uri;

    #@12c
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@12e
    check-cast v6, Landroid/os/Bundle;

    #@130
    invoke-virtual {v7, v1, v6}, Landroid/media/tv/TvInputService$RecordingSession;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    #@133
    .line 152
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@136
    goto/16 :goto_0

    #@138
    .line 150
    :cond_6
    iget-object v7, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@13a
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@13c
    check-cast v1, Landroid/net/Uri;

    #@13e
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@140
    check-cast v6, Landroid/os/Bundle;

    #@142
    invoke-virtual {v7, v1, v6}, Landroid/media/tv/TvInputService$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    #@145
    goto :goto_1

    #@146
    .line 156
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_6
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@148
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14a
    check-cast v1, Ljava/lang/Boolean;

    #@14c
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@14f
    move-result v1

    #@150
    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->setCaptionEnabled(Z)V

    #@153
    goto/16 :goto_0

    #@155
    .line 160
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@157
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@159
    .line 161
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@15b
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@15d
    check-cast v1, Ljava/lang/Integer;

    #@15f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@162
    move-result v7

    #@163
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@165
    check-cast v1, Ljava/lang/String;

    #@167
    invoke-virtual {v6, v7, v1}, Landroid/media/tv/TvInputService$Session;->selectTrack(ILjava/lang/String;)V

    #@16a
    .line 162
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@16d
    goto/16 :goto_0

    #@16f
    .line 166
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@171
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@173
    .line 167
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-boolean v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    #@175
    if-eqz v1, :cond_7

    #@177
    .line 168
    iget-object v7, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    #@179
    .line 169
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@17b
    check-cast v1, Ljava/lang/String;

    #@17d
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@17f
    check-cast v6, Landroid/os/Bundle;

    #@181
    .line 168
    invoke-virtual {v7, v1, v6}, Landroid/media/tv/TvInputService$RecordingSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    #@184
    .line 173
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@187
    goto/16 :goto_0

    #@189
    .line 171
    :cond_7
    iget-object v7, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@18b
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@18d
    check-cast v1, Ljava/lang/String;

    #@18f
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@191
    check-cast v6, Landroid/os/Bundle;

    #@193
    invoke-virtual {v7, v1, v6}, Landroid/media/tv/TvInputService$Session;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    #@196
    goto :goto_2

    #@197
    .line 177
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@199
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@19b
    .line 178
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v7, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@19d
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@19f
    check-cast v1, Landroid/os/IBinder;

    #@1a1
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@1a3
    check-cast v6, Landroid/graphics/Rect;

    #@1a5
    invoke-virtual {v7, v1, v6}, Landroid/media/tv/TvInputService$Session;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    #@1a8
    .line 179
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1ab
    goto/16 :goto_0

    #@1ad
    .line 183
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_a
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@1af
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1b1
    check-cast v1, Landroid/graphics/Rect;

    #@1b3
    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->relayoutOverlayView(Landroid/graphics/Rect;)V

    #@1b6
    goto/16 :goto_0

    #@1b8
    .line 187
    :pswitch_b
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@1ba
    const/4 v6, 0x1

    #@1bb
    invoke-virtual {v1, v6}, Landroid/media/tv/TvInputService$Session;->removeOverlayView(Z)V

    #@1be
    goto/16 :goto_0

    #@1c0
    .line 191
    :pswitch_c
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@1c2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1c4
    check-cast v1, Ljava/lang/String;

    #@1c6
    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->unblockContent(Ljava/lang/String;)V

    #@1c9
    goto/16 :goto_0

    #@1cb
    .line 195
    :pswitch_d
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@1cd
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1cf
    check-cast v1, Landroid/net/Uri;

    #@1d1
    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->timeShiftPlay(Landroid/net/Uri;)V

    #@1d4
    goto/16 :goto_0

    #@1d6
    .line 199
    :pswitch_e
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@1d8
    invoke-virtual {v1}, Landroid/media/tv/TvInputService$Session;->timeShiftPause()V

    #@1db
    goto/16 :goto_0

    #@1dd
    .line 203
    :pswitch_f
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@1df
    invoke-virtual {v1}, Landroid/media/tv/TvInputService$Session;->timeShiftResume()V

    #@1e2
    goto/16 :goto_0

    #@1e4
    .line 207
    :pswitch_10
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@1e6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1e8
    check-cast v1, Ljava/lang/Long;

    #@1ea
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@1ed
    move-result-wide v8

    #@1ee
    invoke-virtual {v6, v8, v9}, Landroid/media/tv/TvInputService$Session;->timeShiftSeekTo(J)V

    #@1f1
    goto/16 :goto_0

    #@1f3
    .line 211
    :pswitch_11
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@1f5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1f7
    check-cast v1, Landroid/media/PlaybackParams;

    #@1f9
    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    #@1fc
    goto/16 :goto_0

    #@1fe
    .line 215
    :pswitch_12
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@200
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@202
    check-cast v1, Ljava/lang/Boolean;

    #@204
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@207
    move-result v1

    #@208
    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->timeShiftEnablePositionTracking(Z)V

    #@20b
    goto/16 :goto_0

    #@20d
    .line 219
    :pswitch_13
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    #@20f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@211
    check-cast v1, Landroid/net/Uri;

    #@213
    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$RecordingSession;->startRecording(Landroid/net/Uri;)V

    #@216
    goto/16 :goto_0

    #@218
    .line 223
    :pswitch_14
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    #@21a
    invoke-virtual {v1}, Landroid/media/tv/TvInputService$RecordingSession;->stopRecording()V

    #@21d
    goto/16 :goto_0

    #@21f
    .line 240
    .restart local v2    # "durationMs":J
    :cond_8
    const-wide/16 v6, 0x1388

    #@221
    cmp-long v1, v2, v6

    #@223
    if-lez v1, :cond_9

    #@225
    .line 241
    new-instance v1, Ljava/lang/RuntimeException;

    #@227
    new-instance v6, Ljava/lang/StringBuilder;

    #@229
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@22c
    const-string/jumbo v7, "Too much time to handle a request. (type="

    #@22f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@232
    move-result-object v6

    #@233
    iget v7, p1, Landroid/os/Message;->what:I

    #@235
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@238
    move-result-object v6

    #@239
    .line 242
    const-string/jumbo v7, ", "

    #@23c
    .line 241
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23f
    move-result-object v6

    #@240
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@243
    move-result-object v6

    #@244
    .line 242
    const-string/jumbo v7, "ms > "

    #@247
    .line 241
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24a
    move-result-object v6

    #@24b
    .line 242
    const/16 v7, 0x1388

    #@24d
    .line 241
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@250
    move-result-object v6

    #@251
    .line 242
    const-string/jumbo v7, "ms)."

    #@254
    .line 241
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@257
    move-result-object v6

    #@258
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25b
    move-result-object v6

    #@25c
    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@25f
    throw v1

    #@260
    .line 101
    :cond_9
    return-void

    #@261
    .line 108
    nop

    #@262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public relayoutOverlayView(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "frame"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0xb

    #@6
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 306
    return-void
.end method

.method public release()V
    .locals 3

    #@0
    .prologue
    .line 249
    iget-boolean v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 250
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@6
    invoke-virtual {v0}, Landroid/media/tv/TvInputService$Session;->scheduleOverlayViewCleanup()V

    #@9
    .line 252
    :cond_0
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@b
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@d
    const/4 v2, 0x1

    #@e
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@15
    .line 248
    return-void
.end method

.method public removeOverlayView()V
    .locals 3

    #@0
    .prologue
    .line 312
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0xc

    #@6
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 311
    return-void
.end method

.method public selectTrack(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v2

    #@8
    const/16 v3, 0x8

    #@a
    invoke-virtual {v1, v3, v2, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@11
    .line 289
    return-void
.end method

.method public setCaptionEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 285
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object v2

    #@8
    const/4 v3, 0x7

    #@9
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@10
    .line 284
    return-void
.end method

.method public setMain(Z)V
    .locals 4
    .param p1, "isMain"    # Z

    #@0
    .prologue
    .line 257
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object v2

    #@8
    const/4 v3, 0x2

    #@9
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@10
    .line 256
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/4 v2, 0x3

    #@5
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@c
    .line 261
    return-void
.end method

.method public final setVolume(F)V
    .locals 4
    .param p1, "volume"    # F

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@7
    move-result-object v2

    #@8
    const/4 v3, 0x5

    #@9
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@10
    .line 272
    return-void
.end method

.method public startRecording(Landroid/net/Uri;)V
    .locals 3
    .param p1, "programUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 356
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0x14

    #@6
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 355
    return-void
.end method

.method public stopRecording()V
    .locals 3

    #@0
    .prologue
    .line 361
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0x15

    #@6
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 360
    return-void
.end method

.method public timeShiftEnablePositionTracking(Z)V
    .locals 4
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 350
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    .line 351
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object v2

    #@8
    const/16 v3, 0x13

    #@a
    .line 350
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@11
    .line 349
    return-void
.end method

.method public timeShiftPause()V
    .locals 3

    #@0
    .prologue
    .line 329
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0xf

    #@6
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 328
    return-void
.end method

.method public timeShiftPlay(Landroid/net/Uri;)V
    .locals 3
    .param p1, "recordedProgramUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 323
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    .line 324
    const/16 v2, 0xe

    #@6
    .line 323
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 322
    return-void
.end method

.method public timeShiftResume()V
    .locals 3

    #@0
    .prologue
    .line 334
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0x10

    #@6
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 333
    return-void
.end method

.method public timeShiftSeekTo(J)V
    .locals 5
    .param p1, "timeMs"    # J

    #@0
    .prologue
    .line 339
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7
    move-result-object v2

    #@8
    const/16 v3, 0x11

    #@a
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@11
    .line 338
    return-void
.end method

.method public timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 3
    .param p1, "params"    # Landroid/media/PlaybackParams;

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0x12

    #@6
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 343
    return-void
.end method

.method public tune(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x6

    #@1
    .line 279
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@3
    invoke-virtual {v0, v2}, Lcom/android/internal/os/HandlerCaller;->removeMessages(I)V

    #@6
    .line 280
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@8
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@a
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@11
    .line 277
    return-void
.end method

.method public unblockContent(Ljava/lang/String;)V
    .locals 3
    .param p1, "unblockedRating"    # Ljava/lang/String;

    #@0
    .prologue
    .line 317
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    .line 318
    const/16 v2, 0xd

    #@6
    .line 317
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 316
    return-void
.end method
