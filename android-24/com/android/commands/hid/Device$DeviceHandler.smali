.class Lcom/android/commands/hid/Device$DeviceHandler;
.super Landroid/os/Handler;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/hid/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceHandler"
.end annotation


# instance fields
.field private mBarrierToken:I

.field private mPtr:J

.field final synthetic this$0:Lcom/android/commands/hid/Device;


# direct methods
.method public constructor <init>(Lcom/android/commands/hid/Device;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/commands/hid/Device;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/commands/hid/Device$DeviceHandler;->this$0:Lcom/android/commands/hid/Device;

    #@2
    .line 105
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 104
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 110
    iget v0, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Unknown device message"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 112
    :pswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@12
    check-cast v7, Lcom/android/internal/os/SomeArgs;

    #@14
    .line 113
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@16
    check-cast v0, Ljava/lang/String;

    #@18
    iget v1, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@1a
    iget v2, v7, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@1c
    iget v3, v7, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@1e
    .line 114
    iget-object v4, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@20
    check-cast v4, [B

    #@22
    invoke-virtual {p0}, Lcom/android/commands/hid/Device$DeviceHandler;->getLooper()Landroid/os/Looper;

    #@25
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    #@28
    move-result-object v5

    #@29
    new-instance v6, Lcom/android/commands/hid/Device$DeviceCallback;

    #@2b
    iget-object v8, p0, Lcom/android/commands/hid/Device$DeviceHandler;->this$0:Lcom/android/commands/hid/Device;

    #@2d
    const/4 v9, 0x0

    #@2e
    invoke-direct {v6, v8, v9}, Lcom/android/commands/hid/Device$DeviceCallback;-><init>(Lcom/android/commands/hid/Device;Lcom/android/commands/hid/Device$DeviceCallback;)V

    #@31
    .line 113
    invoke-static/range {v0 .. v6}, Lcom/android/commands/hid/Device;->-wrap0(Ljava/lang/String;III[BLandroid/os/MessageQueue;Lcom/android/commands/hid/Device$DeviceCallback;)J

    #@34
    move-result-wide v0

    #@35
    iput-wide v0, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mPtr:J

    #@37
    .line 115
    iget-wide v2, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mPtr:J

    #@39
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@3b
    check-cast v0, [B

    #@3d
    invoke-static {v2, v3, v0}, Lcom/android/commands/hid/Device;->-wrap2(J[B)V

    #@40
    .line 116
    invoke-virtual {p0}, Lcom/android/commands/hid/Device$DeviceHandler;->pauseEvents()V

    #@43
    .line 109
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_0
    return-void

    #@44
    .line 119
    :pswitch_1
    iget-wide v0, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mPtr:J

    #@46
    cmp-long v0, v0, v2

    #@48
    if-eqz v0, :cond_0

    #@4a
    .line 120
    iget-wide v2, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mPtr:J

    #@4c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4e
    check-cast v0, [B

    #@50
    invoke-static {v2, v3, v0}, Lcom/android/commands/hid/Device;->-wrap2(J[B)V

    #@53
    goto :goto_0

    #@54
    .line 122
    :cond_0
    const-string/jumbo v0, "HidDevice"

    #@57
    const-string/jumbo v1, "Tried to send report to closed device."

    #@5a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    goto :goto_0

    #@5e
    .line 126
    :pswitch_2
    iget-wide v0, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mPtr:J

    #@60
    cmp-long v0, v0, v2

    #@62
    if-eqz v0, :cond_1

    #@64
    .line 127
    iget-wide v0, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mPtr:J

    #@66
    invoke-static {v0, v1}, Lcom/android/commands/hid/Device;->-wrap1(J)V

    #@69
    .line 128
    invoke-virtual {p0}, Lcom/android/commands/hid/Device$DeviceHandler;->getLooper()Landroid/os/Looper;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    #@70
    .line 129
    iput-wide v2, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mPtr:J

    #@72
    .line 133
    :goto_1
    iget-object v0, p0, Lcom/android/commands/hid/Device$DeviceHandler;->this$0:Lcom/android/commands/hid/Device;

    #@74
    invoke-static {v0}, Lcom/android/commands/hid/Device;->-get0(Lcom/android/commands/hid/Device;)Ljava/lang/Object;

    #@77
    move-result-object v1

    #@78
    monitor-enter v1

    #@79
    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/hid/Device$DeviceHandler;->this$0:Lcom/android/commands/hid/Device;

    #@7b
    invoke-static {v0}, Lcom/android/commands/hid/Device;->-get0(Lcom/android/commands/hid/Device;)Ljava/lang/Object;

    #@7e
    move-result-object v0

    #@7f
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@82
    monitor-exit v1

    #@83
    goto :goto_0

    #@84
    .line 131
    :cond_1
    const-string/jumbo v0, "HidDevice"

    #@87
    const-string/jumbo v1, "Tried to close already closed device."

    #@8a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8d
    goto :goto_1

    #@8e
    .line 133
    :catchall_0
    move-exception v0

    #@8f
    monitor-exit v1

    #@90
    throw v0

    #@91
    .line 110
    nop

    #@92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pauseEvents()V
    .locals 1

    #@0
    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/commands/hid/Device$DeviceHandler;->getLooper()Landroid/os/Looper;

    #@3
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/MessageQueue;->postSyncBarrier()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mBarrierToken:I

    #@d
    .line 142
    return-void
.end method

.method public resumeEvents()V
    .locals 2

    #@0
    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/commands/hid/Device$DeviceHandler;->getLooper()Landroid/os/Looper;

    #@3
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    #@6
    move-result-object v0

    #@7
    iget v1, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mBarrierToken:I

    #@9
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    #@c
    .line 148
    const/4 v0, 0x0

    #@d
    iput v0, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mBarrierToken:I

    #@f
    .line 146
    return-void
.end method
