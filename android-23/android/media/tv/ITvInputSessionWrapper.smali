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

.field private static final DO_TIME_SHIFT_ENABLE_POSITION_TRACKING:I = 0x12

.field private static final DO_TIME_SHIFT_PAUSE:I = 0xe

.field private static final DO_TIME_SHIFT_RESUME:I = 0xf

.field private static final DO_TIME_SHIFT_SEEK_TO:I = 0x10

.field private static final DO_TIME_SHIFT_SET_PLAYBACK_PARAMS:I = 0x11

.field private static final DO_TUNE:I = 0x6

.field private static final DO_UNBLOCK_CONTENT:I = 0xd

.field private static final EXECUTE_MESSAGE_TIMEOUT_LONG_MILLIS:I = 0x1388

.field private static final EXECUTE_MESSAGE_TIMEOUT_SHORT_MILLIS:I = 0x32

.field private static final EXECUTE_MESSAGE_TUNE_TIMEOUT_MILLIS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "TvInputSessionWrapper"


# instance fields
.field private final mCaller:Lcom/android/internal/os/HandlerCaller;

.field private mChannel:Landroid/view/InputChannel;

.field private mReceiver:Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

.field private mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;


# direct methods
.method static synthetic -get0(Landroid/media/tv/ITvInputSessionWrapper;)Landroid/media/tv/TvInputService$Session;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@2
    return-object v0
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
    .line 74
    invoke-direct {p0}, Landroid/media/tv/ITvInputSession$Stub;-><init>()V

    #@4
    .line 76
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    #@6
    const/4 v1, 0x1

    #@7
    invoke-direct {v0, p1, v2, p0, v1}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    #@a
    iput-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@c
    .line 77
    iput-object p2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@e
    .line 78
    iput-object p3, p0, Landroid/media/tv/ITvInputSessionWrapper;->mChannel:Landroid/view/InputChannel;

    #@10
    .line 79
    if-eqz p3, :cond_0

    #@12
    .line 80
    new-instance v0, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

    #@14
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, p0, p3, v1}, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;-><init>(Landroid/media/tv/ITvInputSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V

    #@1b
    iput-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mReceiver:Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

    #@1d
    .line 75
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
    .line 250
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
    .line 249
    return-void
.end method

.method public createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 256
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
    .line 255
    return-void
.end method

.method public dispatchSurfaceChanged(III)V
    .locals 7
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    .line 222
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/4 v1, 0x4

    #@5
    .line 223
    const/4 v5, 0x0

    #@6
    move v2, p1

    #@7
    move v3, p2

    #@8
    move v4, p3

    #@9
    .line 222
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIII(IIIII)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v6, v0}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@10
    .line 221
    return-void
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 86
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 87
    return-void

    #@6
    .line 90
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9
    move-result-wide v4

    #@a
    .line 91
    .local v4, "startTime":J
    iget v1, p1, Landroid/os/Message;->what:I

    #@c
    packed-switch v1, :pswitch_data_0

    #@f
    .line 184
    const-string/jumbo v1, "TvInputSessionWrapper"

    #@12
    new-instance v6, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v7, "Unhandled message code: "

    #@1a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v6

    #@1e
    iget v7, p1, Landroid/os/Message;->what:I

    #@20
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v6

    #@24
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v6

    #@28
    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 188
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2e
    move-result-wide v6

    #@2f
    sub-long v2, v6, v4

    #@31
    .line 189
    .local v2, "duration":J
    const-wide/16 v6, 0x32

    #@33
    cmp-long v1, v2, v6

    #@35
    if-lez v1, :cond_4

    #@37
    .line 190
    const-string/jumbo v1, "TvInputSessionWrapper"

    #@3a
    new-instance v6, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v7, "Handling message ("

    #@42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v6

    #@46
    iget v7, p1, Landroid/os/Message;->what:I

    #@48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    const-string/jumbo v7, ") took too long time (duration="

    #@4f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v6

    #@53
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@56
    move-result-object v6

    #@57
    .line 191
    const-string/jumbo v7, "ms)"

    #@5a
    .line 190
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v6

    #@62
    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 192
    iget v1, p1, Landroid/os/Message;->what:I

    #@67
    const/4 v6, 0x6

    #@68
    if-ne v1, v6, :cond_3

    #@6a
    const-wide/16 v6, 0x7d0

    #@6c
    cmp-long v1, v2, v6

    #@6e
    if-lez v1, :cond_3

    #@70
    .line 193
    new-instance v1, Ljava/lang/RuntimeException;

    #@72
    new-instance v6, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v7, "Too much time to handle tune request. ("

    #@7a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v6

    #@7e
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@81
    move-result-object v6

    #@82
    .line 194
    const-string/jumbo v7, "ms > "

    #@85
    .line 193
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v6

    #@89
    .line 194
    const/16 v7, 0x7d0

    #@8b
    .line 193
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v6

    #@8f
    .line 194
    const-string/jumbo v7, "ms) "

    #@92
    .line 193
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v6

    #@96
    .line 195
    const-string/jumbo v7, "Consider handling the tune request in a separate thread."

    #@99
    .line 193
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v6

    #@9d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v6

    #@a1
    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a4
    throw v1

    #@a5
    .line 93
    .end local v2    # "duration":J
    :pswitch_0
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@a7
    invoke-virtual {v1}, Landroid/media/tv/TvInputService$Session;->release()V

    #@aa
    .line 94
    iput-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@ac
    .line 95
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mReceiver:Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

    #@ae
    if-eqz v1, :cond_2

    #@b0
    .line 96
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mReceiver:Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

    #@b2
    invoke-virtual {v1}, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->dispose()V

    #@b5
    .line 97
    iput-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mReceiver:Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

    #@b7
    .line 99
    :cond_2
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mChannel:Landroid/view/InputChannel;

    #@b9
    if-eqz v1, :cond_1

    #@bb
    .line 100
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mChannel:Landroid/view/InputChannel;

    #@bd
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    #@c0
    .line 101
    iput-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mChannel:Landroid/view/InputChannel;

    #@c2
    goto/16 :goto_0

    #@c4
    .line 106
    :pswitch_1
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@c6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c8
    check-cast v1, Ljava/lang/Boolean;

    #@ca
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@cd
    move-result v1

    #@ce
    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->setMain(Z)V

    #@d1
    goto/16 :goto_0

    #@d3
    .line 110
    :pswitch_2
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@d5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d7
    check-cast v1, Landroid/view/Surface;

    #@d9
    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->setSurface(Landroid/view/Surface;)V

    #@dc
    goto/16 :goto_0

    #@de
    .line 114
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e0
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@e2
    .line 115
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@e4
    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@e6
    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@e8
    iget v8, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@ea
    invoke-virtual {v1, v6, v7, v8}, Landroid/media/tv/TvInputService$Session;->dispatchSurfaceChanged(III)V

    #@ed
    .line 116
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@f0
    goto/16 :goto_0

    #@f2
    .line 120
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@f4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f6
    check-cast v1, Ljava/lang/Float;

    #@f8
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@fb
    move-result v1

    #@fc
    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->setStreamVolume(F)V

    #@ff
    goto/16 :goto_0

    #@101
    .line 124
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@103
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@105
    .line 125
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v7, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@107
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@109
    check-cast v1, Landroid/net/Uri;

    #@10b
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@10d
    check-cast v6, Landroid/os/Bundle;

    #@10f
    invoke-virtual {v7, v1, v6}, Landroid/media/tv/TvInputService$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    #@112
    .line 126
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@115
    goto/16 :goto_0

    #@117
    .line 130
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_6
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@119
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@11b
    check-cast v1, Ljava/lang/Boolean;

    #@11d
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@120
    move-result v1

    #@121
    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->setCaptionEnabled(Z)V

    #@124
    goto/16 :goto_0

    #@126
    .line 134
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@128
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@12a
    .line 135
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@12c
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@12e
    check-cast v1, Ljava/lang/Integer;

    #@130
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@133
    move-result v7

    #@134
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@136
    check-cast v1, Ljava/lang/String;

    #@138
    invoke-virtual {v6, v7, v1}, Landroid/media/tv/TvInputService$Session;->selectTrack(ILjava/lang/String;)V

    #@13b
    .line 136
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@13e
    goto/16 :goto_0

    #@140
    .line 140
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@142
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@144
    .line 141
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v7, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@146
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@148
    check-cast v1, Ljava/lang/String;

    #@14a
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@14c
    check-cast v6, Landroid/os/Bundle;

    #@14e
    invoke-virtual {v7, v1, v6}, Landroid/media/tv/TvInputService$Session;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    #@151
    .line 142
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@154
    goto/16 :goto_0

    #@156
    .line 146
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@158
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@15a
    .line 147
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v7, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@15c
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@15e
    check-cast v1, Landroid/os/IBinder;

    #@160
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@162
    check-cast v6, Landroid/graphics/Rect;

    #@164
    invoke-virtual {v7, v1, v6}, Landroid/media/tv/TvInputService$Session;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    #@167
    .line 148
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@16a
    goto/16 :goto_0

    #@16c
    .line 152
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_a
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@16e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@170
    check-cast v1, Landroid/graphics/Rect;

    #@172
    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->relayoutOverlayView(Landroid/graphics/Rect;)V

    #@175
    goto/16 :goto_0

    #@177
    .line 156
    :pswitch_b
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@179
    const/4 v6, 0x1

    #@17a
    invoke-virtual {v1, v6}, Landroid/media/tv/TvInputService$Session;->removeOverlayView(Z)V

    #@17d
    goto/16 :goto_0

    #@17f
    .line 160
    :pswitch_c
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@181
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@183
    check-cast v1, Ljava/lang/String;

    #@185
    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->unblockContent(Ljava/lang/String;)V

    #@188
    goto/16 :goto_0

    #@18a
    .line 164
    :pswitch_d
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@18c
    invoke-virtual {v1}, Landroid/media/tv/TvInputService$Session;->timeShiftPause()V

    #@18f
    goto/16 :goto_0

    #@191
    .line 168
    :pswitch_e
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@193
    invoke-virtual {v1}, Landroid/media/tv/TvInputService$Session;->timeShiftResume()V

    #@196
    goto/16 :goto_0

    #@198
    .line 172
    :pswitch_f
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@19a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@19c
    check-cast v1, Ljava/lang/Long;

    #@19e
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@1a1
    move-result-wide v8

    #@1a2
    invoke-virtual {v6, v8, v9}, Landroid/media/tv/TvInputService$Session;->timeShiftSeekTo(J)V

    #@1a5
    goto/16 :goto_0

    #@1a7
    .line 176
    :pswitch_10
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@1a9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1ab
    check-cast v1, Landroid/media/PlaybackParams;

    #@1ad
    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    #@1b0
    goto/16 :goto_0

    #@1b2
    .line 180
    :pswitch_11
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@1b4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1b6
    check-cast v1, Ljava/lang/Boolean;

    #@1b8
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@1bb
    move-result v1

    #@1bc
    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->timeShiftEnablePositionTracking(Z)V

    #@1bf
    goto/16 :goto_0

    #@1c1
    .line 197
    .restart local v2    # "duration":J
    :cond_3
    const-wide/16 v6, 0x1388

    #@1c3
    cmp-long v1, v2, v6

    #@1c5
    if-lez v1, :cond_4

    #@1c7
    .line 198
    new-instance v1, Ljava/lang/RuntimeException;

    #@1c9
    new-instance v6, Ljava/lang/StringBuilder;

    #@1cb
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1ce
    const-string/jumbo v7, "Too much time to handle a request. (type="

    #@1d1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d4
    move-result-object v6

    #@1d5
    iget v7, p1, Landroid/os/Message;->what:I

    #@1d7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1da
    move-result-object v6

    #@1db
    .line 199
    const-string/jumbo v7, ", "

    #@1de
    .line 198
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e1
    move-result-object v6

    #@1e2
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1e5
    move-result-object v6

    #@1e6
    .line 199
    const-string/jumbo v7, "ms > "

    #@1e9
    .line 198
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ec
    move-result-object v6

    #@1ed
    .line 199
    const/16 v7, 0x1388

    #@1ef
    .line 198
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f2
    move-result-object v6

    #@1f3
    .line 199
    const-string/jumbo v7, "ms)."

    #@1f6
    .line 198
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f9
    move-result-object v6

    #@1fa
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fd
    move-result-object v6

    #@1fe
    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@201
    throw v1

    #@202
    .line 85
    :cond_4
    return-void

    #@203
    .line 91
    nop

    #@204
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
    .end packed-switch
.end method

.method public relayoutOverlayView(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "frame"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 262
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
    .line 261
    return-void
.end method

.method public release()V
    .locals 3

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    #@2
    invoke-virtual {v0}, Landroid/media/tv/TvInputService$Session;->scheduleOverlayViewCleanup()V

    #@5
    .line 207
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@7
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@9
    const/4 v2, 0x1

    #@a
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@11
    .line 205
    return-void
.end method

.method public removeOverlayView()V
    .locals 3

    #@0
    .prologue
    .line 267
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
    .line 266
    return-void
.end method

.method public selectTrack(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 245
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
    .line 244
    return-void
.end method

.method public setCaptionEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 240
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
    .line 239
    return-void
.end method

.method public setMain(Z)V
    .locals 4
    .param p1, "isMain"    # Z

    #@0
    .prologue
    .line 212
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
    .line 211
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 217
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
    .line 216
    return-void
.end method

.method public final setVolume(F)V
    .locals 4
    .param p1, "volume"    # F

    #@0
    .prologue
    .line 228
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
    .line 227
    return-void
.end method

.method public timeShiftEnablePositionTracking(Z)V
    .locals 4
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 299
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    .line 300
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object v2

    #@8
    const/16 v3, 0x12

    #@a
    .line 299
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@11
    .line 298
    return-void
.end method

.method public timeShiftPause()V
    .locals 3

    #@0
    .prologue
    .line 278
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0xe

    #@6
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 277
    return-void
.end method

.method public timeShiftResume()V
    .locals 3

    #@0
    .prologue
    .line 283
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
    .line 282
    return-void
.end method

.method public timeShiftSeekTo(J)V
    .locals 5
    .param p1, "timeMs"    # J

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7
    move-result-object v2

    #@8
    const/16 v3, 0x10

    #@a
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@11
    .line 287
    return-void
.end method

.method public timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 3
    .param p1, "params"    # Landroid/media/PlaybackParams;

    #@0
    .prologue
    .line 293
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    const/16 v2, 0x11

    #@6
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 292
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
    .line 234
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@3
    invoke-virtual {v0, v2}, Lcom/android/internal/os/HandlerCaller;->removeMessages(I)V

    #@6
    .line 235
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
    .line 232
    return-void
.end method

.method public unblockContent(Ljava/lang/String;)V
    .locals 3
    .param p1, "unblockedRating"    # Ljava/lang/String;

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@4
    .line 273
    const/16 v2, 0xd

    #@6
    .line 272
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    #@d
    .line 271
    return-void
.end method
