.class Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICameraDeviceCallbacks.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 118
    iput-object p1, p0, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 116
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 126
    const-string/jumbo v0, "android.hardware.camera2.ICameraDeviceCallbacks"

    #@3
    return-object v0
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V
    .locals 6
    .param p1, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .param p2, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 165
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.hardware.camera2.ICameraDeviceCallbacks"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 166
    if-eqz p1, :cond_0

    #@c
    .line 167
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 168
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 173
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@17
    .line 174
    iget-object v1, p0, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x3

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 161
    return-void

    #@23
    .line 171
    :cond_0
    const/4 v1, 0x0

    #@24
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 176
    :catchall_0
    move-exception v1

    #@29
    .line 177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 176
    throw v1
.end method

.method public onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 135
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.hardware.camera2.ICameraDeviceCallbacks"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 136
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 137
    if-eqz p2, :cond_0

    #@f
    .line 138
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 139
    const/4 v1, 0x0

    #@14
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 144
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x1

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 131
    return-void

    #@23
    .line 142
    :cond_0
    const/4 v1, 0x0

    #@24
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 146
    :catchall_0
    move-exception v1

    #@29
    .line 147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 146
    throw v1
.end method

.method public onDeviceIdle()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 154
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.hardware.camera2.ICameraDeviceCallbacks"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 155
    iget-object v1, p0, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x2

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 150
    return-void

    #@16
    .line 157
    :catchall_0
    move-exception v1

    #@17
    .line 158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 157
    throw v1
.end method

.method public onPrepared(I)V
    .locals 5
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 209
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.hardware.camera2.ICameraDeviceCallbacks"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 210
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 211
    iget-object v1, p0, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x5

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 205
    return-void

    #@19
    .line 213
    :catchall_0
    move-exception v1

    #@1a
    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 213
    throw v1
.end method

.method public onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 5
    .param p1, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 184
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.hardware.camera2.ICameraDeviceCallbacks"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 185
    if-eqz p1, :cond_0

    #@c
    .line 186
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 187
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 192
    :goto_0
    if-eqz p2, :cond_1

    #@16
    .line 193
    const/4 v1, 0x1

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 194
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 199
    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v2, 0x4

    #@21
    const/4 v3, 0x0

    #@22
    const/4 v4, 0x1

    #@23
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 180
    return-void

    #@2a
    .line 190
    :cond_0
    const/4 v1, 0x0

    #@2b
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 201
    :catchall_0
    move-exception v1

    #@30
    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 201
    throw v1

    #@34
    .line 197
    :cond_1
    const/4 v1, 0x0

    #@35
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    goto :goto_1
.end method
