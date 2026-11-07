.class Landroid/media/audiofx/AudioEffect$NativeEventHandler;
.super Landroid/os/Handler;
.source "AudioEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/AudioEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandler"
.end annotation


# instance fields
.field private greylist-max-o mAudioEffect:Landroid/media/audiofx/AudioEffect;

.field final synthetic blacklist this$0:Landroid/media/audiofx/AudioEffect;


# direct methods
.method public constructor blacklist <init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V
    .registers 4
    .param p2, "ae"    # Landroid/media/audiofx/AudioEffect;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1320
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    .line 1321
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1322
    iput-object p2, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    .line 1323
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 1327
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    if-nez v0, :cond_5

    .line 1328
    return-void

    .line 1330
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_a2

    .line 1377
    const-string v0, "AudioEffect-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() Unknown event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a0

    .line 1352
    :pswitch_28
    const/4 v0, 0x0

    .line 1353
    .local v0, "parameterChangeListener":Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    iget-object v1, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    iget-object v3, v1, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1354
    :try_start_2e
    iget-object v1, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->-$$Nest$fgetmParameterChangeListener(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    move-result-object v1

    move-object v0, v1

    .line 1355
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_5f

    .line 1356
    if-eqz v0, :cond_a0

    .line 1359
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1360
    .local v1, "vOffset":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    .line 1363
    .local v3, "p":[B
    invoke-static {v3, v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v4

    .line 1364
    .local v4, "status":I
    const/4 v5, 0x4

    invoke-static {v3, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v5

    .line 1365
    .local v5, "psize":I
    const/16 v6, 0x8

    invoke-static {v3, v6}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v6

    .line 1366
    .local v6, "vsize":I
    new-array v7, v5, [B

    .line 1367
    .local v7, "param":[B
    new-array v8, v6, [B

    .line 1368
    .local v8, "value":[B
    const/16 v9, 0xc

    invoke-static {v3, v9, v7, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1369
    invoke-static {v3, v1, v8, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1371
    iget-object v2, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-interface {v0, v2, v4, v7, v8}, Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V

    .line 1373
    .end local v1    # "vOffset":I
    .end local v3    # "p":[B
    .end local v4    # "status":I
    .end local v5    # "psize":I
    .end local v6    # "vsize":I
    .end local v7    # "param":[B
    .end local v8    # "value":[B
    goto :goto_a0

    .line 1355
    :catchall_5f
    move-exception v1

    :try_start_60
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v1

    .line 1332
    .end local v0    # "parameterChangeListener":Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    :pswitch_62
    const/4 v0, 0x0

    .line 1333
    .local v0, "enableStatusChangeListener":Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    iget-object v3, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    iget-object v3, v3, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1334
    :try_start_68
    iget-object v4, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->-$$Nest$fgetmEnableStatusChangeListener(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    move-result-object v4

    move-object v0, v4

    .line 1335
    monitor-exit v3
    :try_end_70
    .catchall {:try_start_68 .. :try_end_70} :catchall_7e

    .line 1336
    if-eqz v0, :cond_a0

    .line 1337
    iget-object v3, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_79

    goto :goto_7a

    :cond_79
    move v1, v2

    :goto_7a
    invoke-interface {v0, v3, v1}, Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;->onEnableStatusChange(Landroid/media/audiofx/AudioEffect;Z)V

    goto :goto_a0

    .line 1335
    :catchall_7e
    move-exception v1

    :try_start_7f
    monitor-exit v3
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v1

    .line 1342
    .end local v0    # "enableStatusChangeListener":Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    :pswitch_81
    const/4 v0, 0x0

    .line 1343
    .local v0, "controlStatusChangeListener":Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    iget-object v3, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    iget-object v3, v3, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1344
    :try_start_87
    iget-object v4, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->-$$Nest$fgetmControlChangeStatusListener(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    move-result-object v4

    move-object v0, v4

    .line 1345
    monitor-exit v3
    :try_end_8f
    .catchall {:try_start_87 .. :try_end_8f} :catchall_9d

    .line 1346
    if-eqz v0, :cond_a0

    .line 1347
    iget-object v3, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_98

    goto :goto_99

    :cond_98
    move v1, v2

    :goto_99
    invoke-interface {v0, v3, v1}, Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;->onControlStatusChange(Landroid/media/audiofx/AudioEffect;Z)V

    goto :goto_a0

    .line 1345
    :catchall_9d
    move-exception v1

    :try_start_9e
    monitor-exit v3
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw v1

    .line 1380
    .end local v0    # "controlStatusChangeListener":Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    :cond_a0
    :goto_a0
    return-void

    nop

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_81
        :pswitch_62
        :pswitch_28
    .end packed-switch
.end method
