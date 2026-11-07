.class public Landroid/media/tv/ad/ITvAdSessionWrapper;
.super Landroid/media/tv/ad/ITvAdSession$Stub;
.source "ITvAdSessionWrapper.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ad/ITvAdSessionWrapper$TvAdEventReceiver;
    }
.end annotation


# static fields
.field private static final blacklist DO_CREATE_MEDIA_VIEW:I = 0x4

.field private static final blacklist DO_DISPATCH_SURFACE_CHANGED:I = 0x3

.field private static final blacklist DO_NOTIFY_ERROR:I = 0xf

.field private static final blacklist DO_NOTIFY_INPUT_SESSION_DATA:I = 0x11

.field private static final blacklist DO_NOTIFY_TV_MESSAGE:I = 0x10

.field private static final blacklist DO_RELAYOUT_MEDIA_VIEW:I = 0x5

.field private static final blacklist DO_RELEASE:I = 0x1

.field private static final blacklist DO_REMOVE_MEDIA_VIEW:I = 0x6

.field private static final blacklist DO_RESET_AD_SERVICE:I = 0x9

.field private static final blacklist DO_SEND_CURRENT_CHANNEL_URI:I = 0xb

.field private static final blacklist DO_SEND_CURRENT_TV_INPUT_ID:I = 0xd

.field private static final blacklist DO_SEND_CURRENT_VIDEO_BOUNDS:I = 0xa

.field private static final blacklist DO_SEND_SIGNING_RESULT:I = 0xe

.field private static final blacklist DO_SEND_TRACK_INFO_LIST:I = 0xc

.field private static final blacklist DO_SET_SURFACE:I = 0x2

.field private static final blacklist DO_START_AD_SERVICE:I = 0x7

.field private static final blacklist DO_STOP_AD_SERVICE:I = 0x8

.field private static final blacklist EXECUTE_MESSAGE_TIMEOUT_LONG_MILLIS:I = 0x1388

.field private static final blacklist EXECUTE_MESSAGE_TIMEOUT_SHORT_MILLIS:I = 0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "ITvAdSessionWrapper"


# instance fields
.field private final blacklist mCaller:Lcom/android/internal/os/HandlerCaller;

.field private blacklist mChannel:Landroid/view/InputChannel;

.field private blacklist mReceiver:Landroid/media/tv/ad/ITvAdSessionWrapper$TvAdEventReceiver;

.field private blacklist mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSessionImpl(Landroid/media/tv/ad/ITvAdSessionWrapper;)Landroid/media/tv/ad/TvAdService$Session;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/media/tv/ad/TvAdService$Session;Landroid/view/InputChannel;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mSessionImpl"    # Landroid/media/tv/ad/TvAdService$Session;
    .param p3, "channel"    # Landroid/view/InputChannel;

    .line 76
    invoke-direct {p0}, Landroid/media/tv/ad/ITvAdSession$Stub;-><init>()V

    .line 77
    iput-object p2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    .line 78
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 79
    iput-object p3, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mChannel:Landroid/view/InputChannel;

    .line 80
    if-eqz p3, :cond_1d

    .line 81
    new-instance v0, Landroid/media/tv/ad/ITvAdSessionWrapper$TvAdEventReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p3, v1}, Landroid/media/tv/ad/ITvAdSessionWrapper$TvAdEventReceiver;-><init>(Landroid/media/tv/ad/ITvAdSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mReceiver:Landroid/media/tv/ad/ITvAdSessionWrapper$TvAdEventReceiver;

    .line 83
    :cond_1d
    return-void
.end method


# virtual methods
.method public blacklist createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 276
    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 277
    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 276
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 278
    return-void
.end method

.method public blacklist dispatchSurfaceChanged(III)V
    .registers 11
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 228
    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 229
    const/4 v2, 0x3

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

    .line 228
    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 230
    return-void
.end method

.method public blacklist executeMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 94
    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    if-nez v0, :cond_5

    .line 95
    return-void

    .line 98
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 99
    .local v0, "startTime":J
    iget v2, p1, Landroid/os/Message;->what:I

    const-string v3, "ITvAdSessionWrapper"

    packed-switch v2, :pswitch_data_17a

    .line 191
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

    goto/16 :goto_140

    .line 185
    :pswitch_2a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 186
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/ad/TvAdService$Session;->notifyTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 188
    goto/16 :goto_140

    .line 179
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_40
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 180
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/ad/TvAdService$Session;->notifyTvMessage(ILandroid/os/Bundle;)V

    .line 181
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 182
    goto/16 :goto_140

    .line 173
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_5a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 174
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/ad/TvAdService$Session;->notifyError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 176
    goto/16 :goto_140

    .line 167
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_70
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 168
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, [B

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/ad/TvAdService$Session;->sendSigningResult(Ljava/lang/String;[B)V

    .line 169
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 170
    goto/16 :goto_140

    .line 163
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_86
    iget-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/media/tv/ad/TvAdService$Session;->sendCurrentTvInputId(Ljava/lang/String;)V

    .line 164
    goto/16 :goto_140

    .line 159
    :pswitch_91
    iget-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-virtual {v2, v4}, Landroid/media/tv/ad/TvAdService$Session;->sendTrackInfoList(Ljava/util/List;)V

    .line 160
    goto/16 :goto_140

    .line 155
    :pswitch_9c
    iget-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/media/tv/ad/TvAdService$Session;->sendCurrentChannelUri(Landroid/net/Uri;)V

    .line 156
    goto/16 :goto_140

    .line 151
    :pswitch_a7
    iget-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/media/tv/ad/TvAdService$Session;->sendCurrentVideoBounds(Landroid/graphics/Rect;)V

    .line 152
    goto/16 :goto_140

    .line 147
    :pswitch_b2
    iget-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    invoke-virtual {v2}, Landroid/media/tv/ad/TvAdService$Session;->resetAdService()V

    .line 148
    goto/16 :goto_140

    .line 143
    :pswitch_b9
    iget-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    invoke-virtual {v2}, Landroid/media/tv/ad/TvAdService$Session;->stopAdService()V

    .line 144
    goto/16 :goto_140

    .line 139
    :pswitch_c0
    iget-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    invoke-virtual {v2}, Landroid/media/tv/ad/TvAdService$Session;->startAdService()V

    .line 140
    goto/16 :goto_140

    .line 135
    :pswitch_c7
    iget-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/tv/ad/TvAdService$Session;->removeMediaView(Z)V

    .line 136
    goto :goto_140

    .line 131
    :pswitch_ce
    iget-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/media/tv/ad/TvAdService$Session;->relayoutMediaView(Landroid/graphics/Rect;)V

    .line 132
    goto :goto_140

    .line 125
    :pswitch_d8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 126
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/ad/TvAdService$Session;->createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 127
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 128
    goto :goto_140

    .line 118
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_ed
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 119
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    iget v5, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 120
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

    .line 119
    invoke-virtual {v4, v5, v6, v7}, Landroid/media/tv/ad/TvAdService$Session;->dispatchSurfaceChanged(III)V

    .line 121
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 122
    goto :goto_140

    .line 114
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_118
    iget-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/Surface;

    invoke-virtual {v2, v4}, Landroid/media/tv/ad/TvAdService$Session;->setSurface(Landroid/view/Surface;)V

    .line 115
    goto :goto_140

    .line 101
    :pswitch_122
    iget-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    invoke-virtual {v2}, Landroid/media/tv/ad/TvAdService$Session;->release()V

    .line 102
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    .line 103
    iget-object v4, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mReceiver:Landroid/media/tv/ad/ITvAdSessionWrapper$TvAdEventReceiver;

    if-eqz v4, :cond_135

    .line 104
    iget-object v4, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mReceiver:Landroid/media/tv/ad/ITvAdSessionWrapper$TvAdEventReceiver;

    invoke-virtual {v4}, Landroid/media/tv/ad/ITvAdSessionWrapper$TvAdEventReceiver;->dispose()V

    .line 105
    iput-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mReceiver:Landroid/media/tv/ad/ITvAdSessionWrapper$TvAdEventReceiver;

    .line 107
    :cond_135
    iget-object v4, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mChannel:Landroid/view/InputChannel;

    if-eqz v4, :cond_140

    .line 108
    iget-object v4, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mChannel:Landroid/view/InputChannel;

    invoke-virtual {v4}, Landroid/view/InputChannel;->dispose()V

    .line 109
    iput-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mChannel:Landroid/view/InputChannel;

    .line 195
    :cond_140
    :goto_140
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    .line 196
    .local v4, "durationMs":J
    const-wide/16 v6, 0x3e8

    cmp-long v2, v4, v6

    if-lez v2, :cond_178

    .line 197
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

    .line 199
    nop

    .line 204
    :cond_178
    return-void

    nop

    :pswitch_data_17a
    .packed-switch 0x1
        :pswitch_122
        :pswitch_118
        :pswitch_ed
        :pswitch_d8
        :pswitch_ce
        :pswitch_c7
        :pswitch_c0
        :pswitch_b9
        :pswitch_b2
        :pswitch_a7
        :pswitch_9c
        :pswitch_91
        :pswitch_86
        :pswitch_70
        :pswitch_5a
        :pswitch_40
        :pswitch_2a
    .end packed-switch
.end method

.method public blacklist notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "errMsg"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 264
    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 265
    const/16 v2, 0xf

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 264
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 266
    return-void
.end method

.method public blacklist notifyTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 292
    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 293
    const/16 v2, 0x11

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 292
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 294
    return-void
.end method

.method public blacklist notifyTvMessage(ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 270
    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 271
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 270
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 272
    return-void
.end method

.method public blacklist relayoutMediaView(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 282
    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 283
    return-void
.end method

.method public blacklist release()V
    .registers 4

    .line 87
    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    invoke-virtual {v0}, Landroid/media/tv/ad/TvAdService$Session;->scheduleMediaViewCleanup()V

    .line 88
    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 89
    return-void
.end method

.method public blacklist removeMediaView()V
    .registers 4

    .line 287
    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 288
    return-void
.end method

.method public blacklist resetAdService()V
    .registers 4

    .line 218
    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 219
    return-void
.end method

.method public blacklist sendCurrentChannelUri(Landroid/net/Uri;)V
    .registers 5
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 240
    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 241
    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 242
    return-void
.end method

.method public blacklist sendCurrentTvInputId(Ljava/lang/String;)V
    .registers 5
    .param p1, "inputId"    # Ljava/lang/String;

    .line 252
    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 253
    const/16 v2, 0xd

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 254
    return-void
.end method

.method public blacklist sendCurrentVideoBounds(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 234
    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 235
    const/16 v2, 0xa

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 236
    return-void
.end method

.method public blacklist sendSigningResult(Ljava/lang/String;[B)V
    .registers 6
    .param p1, "signingId"    # Ljava/lang/String;
    .param p2, "result"    # [B

    .line 258
    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 259
    const/16 v2, 0xe

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 258
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 260
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

    .line 246
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 247
    const/16 v2, 0xc

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 246
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 248
    return-void
.end method

.method public blacklist setSurface(Landroid/view/Surface;)V
    .registers 5
    .param p1, "surface"    # Landroid/view/Surface;

    .line 223
    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 224
    return-void
.end method

.method public blacklist startAdService()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 209
    return-void
.end method

.method public blacklist stopAdService()V
    .registers 4

    .line 213
    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 214
    return-void
.end method
