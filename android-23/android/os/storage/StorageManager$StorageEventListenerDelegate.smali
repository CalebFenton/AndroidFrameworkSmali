.class Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
.super Landroid/os/storage/IMountServiceListener$Stub;
.source "StorageManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StorageEventListenerDelegate"
.end annotation


# static fields
.field private static final MSG_DISK_DESTROYED:I = 0x6

.field private static final MSG_DISK_SCANNED:I = 0x5

.field private static final MSG_STORAGE_STATE_CHANGED:I = 0x1

.field private static final MSG_VOLUME_FORGOTTEN:I = 0x4

.field private static final MSG_VOLUME_RECORD_CHANGED:I = 0x3

.field private static final MSG_VOLUME_STATE_CHANGED:I = 0x2


# instance fields
.field final mCallback:Landroid/os/storage/StorageEventListener;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageEventListener;Landroid/os/Looper;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/storage/StorageEventListener;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Landroid/os/storage/IMountServiceListener$Stub;-><init>()V

    #@3
    .line 114
    iput-object p1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageEventListener;

    #@5
    .line 115
    new-instance v0, Landroid/os/Handler;

    #@7
    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@a
    iput-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mHandler:Landroid/os/Handler;

    #@c
    .line 113
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 120
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@5
    .line 121
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v1, p1, Landroid/os/Message;->what:I

    #@7
    packed-switch v1, :pswitch_data_0

    #@a
    .line 148
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@d
    .line 149
    const/4 v1, 0x0

    #@e
    return v1

    #@f
    .line 123
    :pswitch_0
    iget-object v4, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageEventListener;

    #@11
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@13
    check-cast v1, Ljava/lang/String;

    #@15
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@17
    check-cast v2, Ljava/lang/String;

    #@19
    .line 124
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@1b
    check-cast v3, Ljava/lang/String;

    #@1d
    .line 123
    invoke-virtual {v4, v1, v2, v3}, Landroid/os/storage/StorageEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@20
    .line 125
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@23
    .line 126
    return v5

    #@24
    .line 128
    :pswitch_1
    iget-object v2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageEventListener;

    #@26
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@28
    check-cast v1, Landroid/os/storage/VolumeInfo;

    #@2a
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@2c
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@2e
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/storage/StorageEventListener;->onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    #@31
    .line 129
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@34
    .line 130
    return v5

    #@35
    .line 132
    :pswitch_2
    iget-object v2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageEventListener;

    #@37
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@39
    check-cast v1, Landroid/os/storage/VolumeRecord;

    #@3b
    invoke-virtual {v2, v1}, Landroid/os/storage/StorageEventListener;->onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    #@3e
    .line 133
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@41
    .line 134
    return v5

    #@42
    .line 136
    :pswitch_3
    iget-object v2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageEventListener;

    #@44
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@46
    check-cast v1, Ljava/lang/String;

    #@48
    invoke-virtual {v2, v1}, Landroid/os/storage/StorageEventListener;->onVolumeForgotten(Ljava/lang/String;)V

    #@4b
    .line 137
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@4e
    .line 138
    return v5

    #@4f
    .line 140
    :pswitch_4
    iget-object v2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageEventListener;

    #@51
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@53
    check-cast v1, Landroid/os/storage/DiskInfo;

    #@55
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@57
    invoke-virtual {v2, v1, v3}, Landroid/os/storage/StorageEventListener;->onDiskScanned(Landroid/os/storage/DiskInfo;I)V

    #@5a
    .line 141
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@5d
    .line 142
    return v5

    #@5e
    .line 144
    :pswitch_5
    iget-object v2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageEventListener;

    #@60
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@62
    check-cast v1, Landroid/os/storage/DiskInfo;

    #@64
    invoke-virtual {v2, v1}, Landroid/os/storage/StorageEventListener;->onDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    #@67
    .line 145
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@6a
    .line 146
    return v5

    #@6b
    .line 121
    nop

    #@6c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .locals 3
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 200
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 201
    iget-object v1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mHandler:Landroid/os/Handler;

    #@8
    const/4 v2, 0x6

    #@9
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@10
    .line 198
    return-void
.end method

.method public onDiskScanned(Landroid/os/storage/DiskInfo;I)V
    .locals 3
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .param p2, "volumeCount"    # I

    #@0
    .prologue
    .line 191
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 192
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 193
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@8
    .line 194
    iget-object v1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mHandler:Landroid/os/Handler;

    #@a
    const/4 v2, 0x5

    #@b
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@12
    .line 190
    return-void
.end method

.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    #@0
    .prologue
    .line 159
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 160
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 161
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 162
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@a
    .line 163
    iget-object v1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mHandler:Landroid/os/Handler;

    #@c
    const/4 v2, 0x1

    #@d
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@14
    .line 158
    return-void
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 0
    .param p1, "connected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    return-void
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .locals 3
    .param p1, "fsUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 184
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 185
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 186
    iget-object v1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mHandler:Landroid/os/Handler;

    #@8
    const/4 v2, 0x4

    #@9
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@10
    .line 183
    return-void
.end method

.method public onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .locals 3
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;

    #@0
    .prologue
    .line 177
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 178
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 179
    iget-object v1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mHandler:Landroid/os/Handler;

    #@8
    const/4 v2, 0x3

    #@9
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@10
    .line 176
    return-void
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 3
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    #@0
    .prologue
    .line 168
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 169
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 170
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@8
    .line 171
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@a
    .line 172
    iget-object v1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mHandler:Landroid/os/Handler;

    #@c
    const/4 v2, 0x2

    #@d
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@14
    .line 167
    return-void
.end method
