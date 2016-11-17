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
.field private mAudioEffect:Landroid/media/audiofx/AudioEffect;

.field final synthetic this$0:Landroid/media/audiofx/AudioEffect;


# direct methods
.method public constructor <init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/audiofx/AudioEffect;
    .param p2, "ae"    # Landroid/media/audiofx/AudioEffect;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1133
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    #@2
    .line 1134
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 1135
    iput-object p2, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    #@7
    .line 1133
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 1140
    iget-object v12, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    #@4
    if-nez v12, :cond_0

    #@6
    .line 1141
    return-void

    #@7
    .line 1143
    :cond_0
    iget v12, p1, Landroid/os/Message;->what:I

    #@9
    packed-switch v12, :pswitch_data_0

    #@c
    .line 1190
    const-string/jumbo v10, "AudioEffect-JAVA"

    #@f
    new-instance v11, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v12, "handleMessage() Unknown event type: "

    #@17
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v11

    #@1b
    iget v12, p1, Landroid/os/Message;->what:I

    #@1d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v11

    #@21
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v11

    #@25
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 1139
    :cond_1
    :goto_0
    return-void

    #@29
    .line 1145
    :pswitch_0
    const/4 v1, 0x0

    #@2a
    .line 1146
    .local v1, "enableStatusChangeListener":Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    iget-object v12, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    #@2c
    iget-object v12, v12, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    #@2e
    monitor-enter v12

    #@2f
    .line 1147
    :try_start_0
    iget-object v13, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    #@31
    invoke-static {v13}, Landroid/media/audiofx/AudioEffect;->-get1(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result-object v1

    #@35
    .local v1, "enableStatusChangeListener":Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    monitor-exit v12

    #@36
    .line 1149
    if-eqz v1, :cond_1

    #@38
    .line 1151
    iget-object v12, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    #@3a
    iget v13, p1, Landroid/os/Message;->arg1:I

    #@3c
    if-eqz v13, :cond_2

    #@3e
    .line 1150
    :goto_1
    invoke-interface {v1, v12, v10}, Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;->onEnableStatusChange(Landroid/media/audiofx/AudioEffect;Z)V

    #@41
    goto :goto_0

    #@42
    .line 1146
    .local v1, "enableStatusChangeListener":Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    :catchall_0
    move-exception v10

    #@43
    monitor-exit v12

    #@44
    throw v10

    #@45
    .local v1, "enableStatusChangeListener":Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    :cond_2
    move v10, v11

    #@46
    .line 1151
    goto :goto_1

    #@47
    .line 1155
    .end local v1    # "enableStatusChangeListener":Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    :pswitch_1
    const/4 v0, 0x0

    #@48
    .line 1156
    .local v0, "controlStatusChangeListener":Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    iget-object v12, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    #@4a
    iget-object v12, v12, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    #@4c
    monitor-enter v12

    #@4d
    .line 1157
    :try_start_1
    iget-object v13, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    #@4f
    invoke-static {v13}, Landroid/media/audiofx/AudioEffect;->-get0(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@52
    move-result-object v0

    #@53
    .local v0, "controlStatusChangeListener":Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    monitor-exit v12

    #@54
    .line 1159
    if-eqz v0, :cond_1

    #@56
    .line 1161
    iget-object v12, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    #@58
    iget v13, p1, Landroid/os/Message;->arg1:I

    #@5a
    if-eqz v13, :cond_3

    #@5c
    .line 1160
    :goto_2
    invoke-interface {v0, v12, v10}, Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;->onControlStatusChange(Landroid/media/audiofx/AudioEffect;Z)V

    #@5f
    goto :goto_0

    #@60
    .line 1156
    .local v0, "controlStatusChangeListener":Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    :catchall_1
    move-exception v10

    #@61
    monitor-exit v12

    #@62
    throw v10

    #@63
    .local v0, "controlStatusChangeListener":Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    :cond_3
    move v10, v11

    #@64
    .line 1161
    goto :goto_2

    #@65
    .line 1165
    .end local v0    # "controlStatusChangeListener":Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    :pswitch_2
    const/4 v4, 0x0

    #@66
    .line 1166
    .local v4, "parameterChangeListener":Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    iget-object v10, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    #@68
    iget-object v12, v10, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    #@6a
    monitor-enter v12

    #@6b
    .line 1167
    :try_start_2
    iget-object v10, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    #@6d
    invoke-static {v10}, Landroid/media/audiofx/AudioEffect;->-get2(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@70
    move-result-object v4

    #@71
    .local v4, "parameterChangeListener":Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    monitor-exit v12

    #@72
    .line 1169
    if-eqz v4, :cond_1

    #@74
    .line 1172
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@76
    .line 1173
    .local v7, "vOffset":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@78
    check-cast v2, [B

    #@7a
    .line 1176
    .local v2, "p":[B
    invoke-static {v2, v11}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    #@7d
    move-result v6

    #@7e
    .line 1177
    .local v6, "status":I
    const/4 v10, 0x4

    #@7f
    invoke-static {v2, v10}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    #@82
    move-result v5

    #@83
    .line 1178
    .local v5, "psize":I
    const/16 v10, 0x8

    #@85
    invoke-static {v2, v10}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    #@88
    move-result v9

    #@89
    .line 1179
    .local v9, "vsize":I
    new-array v3, v5, [B

    #@8b
    .line 1180
    .local v3, "param":[B
    new-array v8, v9, [B

    #@8d
    .line 1181
    .local v8, "value":[B
    const/16 v10, 0xc

    #@8f
    invoke-static {v2, v10, v3, v11, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@92
    .line 1182
    invoke-static {v2, v7, v8, v11, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@95
    .line 1184
    iget-object v10, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    #@97
    invoke-interface {v4, v10, v6, v3, v8}, Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V

    #@9a
    goto :goto_0

    #@9b
    .line 1166
    .end local v2    # "p":[B
    .end local v3    # "param":[B
    .end local v5    # "psize":I
    .end local v6    # "status":I
    .end local v7    # "vOffset":I
    .end local v8    # "value":[B
    .end local v9    # "vsize":I
    .local v4, "parameterChangeListener":Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    :catchall_2
    move-exception v10

    #@9c
    monitor-exit v12

    #@9d
    throw v10

    #@9e
    .line 1143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
