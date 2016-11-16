.class Lcom/android/internal/telecom/IVideoCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVideoCallback.java"

# interfaces
.implements Lcom/android/internal/telecom/IVideoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IVideoCallback$Stub;
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
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 143
    iput-object p1, p0, Lcom/android/internal/telecom/IVideoCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 141
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/telecom/IVideoCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public changeCallDataUsage(J)V
    .locals 5
    .param p1, "dataUsage"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 226
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IVideoCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 227
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 228
    iget-object v1, p0, Lcom/android/internal/telecom/IVideoCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 222
    return-void

    #@19
    .line 230
    :catchall_0
    move-exception v1

    #@1a
    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 230
    throw v1
.end method

.method public changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 5
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 238
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IVideoCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 239
    if-eqz p1, :cond_0

    #@c
    .line 240
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 241
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/telecom/VideoProfile$CameraCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 246
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telecom/IVideoCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x6

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 234
    return-void

    #@20
    .line 244
    :cond_0
    const/4 v1, 0x0

    #@21
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 248
    :catchall_0
    move-exception v1

    #@26
    .line 249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 248
    throw v1
.end method

.method public changePeerDimensions(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 213
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IVideoCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 214
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 215
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 216
    iget-object v1, p0, Lcom/android/internal/telecom/IVideoCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x4

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 209
    return-void

    #@1c
    .line 218
    :catchall_0
    move-exception v1

    #@1d
    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 218
    throw v1
.end method

.method public changeVideoQuality(I)V
    .locals 5
    .param p1, "videoQuality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 256
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IVideoCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 257
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 258
    iget-object v1, p0, Lcom/android/internal/telecom/IVideoCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x7

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 252
    return-void

    #@19
    .line 260
    :catchall_0
    move-exception v1

    #@1a
    .line 261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 260
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 151
    const-string/jumbo v0, "com.android.internal.telecom.IVideoCallback"

    #@3
    return-object v0
.end method

.method public handleCallSessionEvent(I)V
    .locals 5
    .param p1, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 201
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IVideoCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 202
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 203
    iget-object v1, p0, Lcom/android/internal/telecom/IVideoCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x3

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 197
    return-void

    #@19
    .line 205
    :catchall_0
    move-exception v1

    #@1a
    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 205
    throw v1
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 5
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 157
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IVideoCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 158
    if-eqz p1, :cond_0

    #@c
    .line 159
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 160
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/telecom/VideoProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 165
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telecom/IVideoCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x1

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 153
    return-void

    #@20
    .line 163
    :cond_0
    const/4 v1, 0x0

    #@21
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 167
    :catchall_0
    move-exception v1

    #@26
    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 167
    throw v1
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 175
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IVideoCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 176
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 177
    if-eqz p2, :cond_0

    #@f
    .line 178
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 179
    const/4 v1, 0x0

    #@14
    invoke-virtual {p2, v0, v1}, Landroid/telecom/VideoProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 184
    :goto_0
    if-eqz p3, :cond_1

    #@19
    .line 185
    const/4 v1, 0x1

    #@1a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 186
    const/4 v1, 0x0

    #@1e
    invoke-virtual {p3, v0, v1}, Landroid/telecom/VideoProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    .line 191
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telecom/IVideoCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@23
    const/4 v2, 0x2

    #@24
    const/4 v3, 0x0

    #@25
    const/4 v4, 0x1

    #@26
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 171
    return-void

    #@2d
    .line 182
    :cond_0
    const/4 v1, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 193
    :catchall_0
    move-exception v1

    #@33
    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 193
    throw v1

    #@37
    .line 189
    :cond_1
    const/4 v1, 0x0

    #@38
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    goto :goto_1
.end method
