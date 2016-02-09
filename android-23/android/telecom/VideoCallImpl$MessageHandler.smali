.class final Landroid/telecom/VideoCallImpl$MessageHandler;
.super Landroid/os/Handler;
.source "VideoCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageHandler"
.end annotation


# static fields
.field private static final MSG_CHANGE_CALL_DATA_USAGE:I = 0x5

.field private static final MSG_CHANGE_CAMERA_CAPABILITIES:I = 0x6

.field private static final MSG_CHANGE_PEER_DIMENSIONS:I = 0x4

.field private static final MSG_CHANGE_VIDEO_QUALITY:I = 0x7

.field private static final MSG_HANDLE_CALL_SESSION_EVENT:I = 0x3

.field private static final MSG_RECEIVE_SESSION_MODIFY_REQUEST:I = 0x1

.field private static final MSG_RECEIVE_SESSION_MODIFY_RESPONSE:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/telecom/VideoCallImpl;


# direct methods
.method public constructor <init>(Landroid/telecom/VideoCallImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/VideoCallImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 118
    iput-object p1, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    #@2
    .line 119
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 118
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 124
    iget-object v6, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    #@2
    invoke-static {v6}, Landroid/telecom/VideoCallImpl;->-get0(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    #@5
    move-result-object v6

    #@6
    if-nez v6, :cond_0

    #@8
    .line 125
    return-void

    #@9
    .line 129
    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    #@b
    packed-switch v6, :pswitch_data_0

    #@e
    .line 123
    :goto_0
    return-void

    #@f
    .line 131
    :pswitch_0
    iget-object v6, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    #@11
    invoke-static {v6}, Landroid/telecom/VideoCallImpl;->-get0(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    #@14
    move-result-object v7

    #@15
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@17
    check-cast v6, Landroid/telecom/VideoProfile;

    #@19
    invoke-virtual {v7, v6}, Landroid/telecom/InCallService$VideoCall$Callback;->onSessionModifyRequestReceived(Landroid/telecom/VideoProfile;)V

    #@1c
    goto :goto_0

    #@1d
    .line 134
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1f
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@21
    .line 136
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@23
    check-cast v6, Ljava/lang/Integer;

    #@25
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@28
    move-result v4

    #@29
    .line 137
    .local v4, "status":I
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@2b
    check-cast v2, Landroid/telecom/VideoProfile;

    #@2d
    .line 138
    .local v2, "requestProfile":Landroid/telecom/VideoProfile;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@2f
    check-cast v3, Landroid/telecom/VideoProfile;

    #@31
    .line 140
    .local v3, "responseProfile":Landroid/telecom/VideoProfile;
    iget-object v6, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    #@33
    invoke-static {v6}, Landroid/telecom/VideoCallImpl;->-get0(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {v6, v4, v2, v3}, Landroid/telecom/InCallService$VideoCall$Callback;->onSessionModifyResponseReceived(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    .line 143
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@3d
    goto :goto_0

    #@3e
    .line 142
    .end local v2    # "requestProfile":Landroid/telecom/VideoProfile;
    .end local v3    # "responseProfile":Landroid/telecom/VideoProfile;
    .end local v4    # "status":I
    :catchall_0
    move-exception v6

    #@3f
    .line 143
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@42
    .line 142
    throw v6

    #@43
    .line 147
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2
    iget-object v6, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    #@45
    invoke-static {v6}, Landroid/telecom/VideoCallImpl;->-get0(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    #@48
    move-result-object v7

    #@49
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4b
    check-cast v6, Ljava/lang/Integer;

    #@4d
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@50
    move-result v6

    #@51
    invoke-virtual {v7, v6}, Landroid/telecom/InCallService$VideoCall$Callback;->onCallSessionEvent(I)V

    #@54
    goto :goto_0

    #@55
    .line 150
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@57
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@59
    .line 152
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@5b
    check-cast v6, Ljava/lang/Integer;

    #@5d
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@60
    move-result v5

    #@61
    .line 153
    .local v5, "width":I
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@63
    check-cast v6, Ljava/lang/Integer;

    #@65
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@68
    move-result v1

    #@69
    .line 154
    .local v1, "height":I
    iget-object v6, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    #@6b
    invoke-static {v6}, Landroid/telecom/VideoCallImpl;->-get0(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    #@6e
    move-result-object v6

    #@6f
    invoke-virtual {v6, v5, v1}, Landroid/telecom/InCallService$VideoCall$Callback;->onPeerDimensionsChanged(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@72
    .line 156
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@75
    goto :goto_0

    #@76
    .line 155
    .end local v1    # "height":I
    .end local v5    # "width":I
    :catchall_1
    move-exception v6

    #@77
    .line 156
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@7a
    .line 155
    throw v6

    #@7b
    .line 160
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    iget-object v6, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    #@7d
    invoke-static {v6}, Landroid/telecom/VideoCallImpl;->-get0(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    #@80
    move-result-object v7

    #@81
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@83
    check-cast v6, Ljava/lang/Long;

    #@85
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    #@88
    move-result-wide v8

    #@89
    invoke-virtual {v7, v8, v9}, Landroid/telecom/InCallService$VideoCall$Callback;->onCallDataUsageChanged(J)V

    #@8c
    goto :goto_0

    #@8d
    .line 163
    :pswitch_5
    iget-object v6, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    #@8f
    invoke-static {v6}, Landroid/telecom/VideoCallImpl;->-get0(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    #@92
    move-result-object v7

    #@93
    .line 164
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@95
    check-cast v6, Landroid/telecom/VideoProfile$CameraCapabilities;

    #@97
    .line 163
    invoke-virtual {v7, v6}, Landroid/telecom/InCallService$VideoCall$Callback;->onCameraCapabilitiesChanged(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    #@9a
    goto/16 :goto_0

    #@9c
    .line 167
    :pswitch_6
    iget-object v6, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    #@9e
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@a0
    invoke-static {v6, v7}, Landroid/telecom/VideoCallImpl;->-set0(Landroid/telecom/VideoCallImpl;I)I

    #@a3
    .line 168
    iget-object v6, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    #@a5
    invoke-static {v6}, Landroid/telecom/VideoCallImpl;->-get0(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    #@a8
    move-result-object v6

    #@a9
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@ab
    invoke-virtual {v6, v7}, Landroid/telecom/InCallService$VideoCall$Callback;->onVideoQualityChanged(I)V

    #@ae
    goto/16 :goto_0

    #@b0
    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
