.class Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFingerprintDaemonCallback.java"

# interfaces
.implements Landroid/hardware/fingerprint/IFingerprintDaemonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub;
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
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 133
    iput-object p1, p0, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 131
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 141
    const-string/jumbo v0, "android.hardware.fingerprint.IFingerprintDaemonCallback"

    #@3
    return-object v0
.end method

.method public onAcquired(JI)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
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
    .line 164
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 166
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.fingerprint.IFingerprintDaemonCallback"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 167
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 168
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 169
    iget-object v2, p0, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v3, 0x2

    #@17
    const/4 v4, 0x0

    #@18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 173
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 161
    return-void

    #@25
    .line 172
    :catchall_0
    move-exception v2

    #@26
    .line 173
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 172
    throw v2
.end method

.method public onAuthenticated(JII)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 180
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 182
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.fingerprint.IFingerprintDaemonCallback"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 183
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 184
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 185
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 186
    iget-object v2, p0, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v3, 0x3

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 187
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 177
    return-void

    #@28
    .line 189
    :catchall_0
    move-exception v2

    #@29
    .line 190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 189
    throw v2
.end method

.method public onEnrollResult(JIII)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 146
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 148
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.fingerprint.IFingerprintDaemonCallback"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 149
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 150
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 151
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 152
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 153
    iget-object v2, p0, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v3, 0x1

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 157
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 143
    return-void

    #@2b
    .line 156
    :catchall_0
    move-exception v2

    #@2c
    .line 157
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 156
    throw v2
.end method

.method public onEnumerate(J[I[I)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "fingerIds"    # [I
    .param p4, "groupIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 230
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 232
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.fingerprint.IFingerprintDaemonCallback"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 233
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 234
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    #@14
    .line 235
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    #@17
    .line 236
    iget-object v2, p0, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v3, 0x6

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 227
    return-void

    #@28
    .line 239
    :catchall_0
    move-exception v2

    #@29
    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 239
    throw v2
.end method

.method public onError(JI)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 197
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 199
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.fingerprint.IFingerprintDaemonCallback"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 200
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 201
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 202
    iget-object v2, p0, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v3, 0x4

    #@17
    const/4 v4, 0x0

    #@18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 203
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 194
    return-void

    #@25
    .line 205
    :catchall_0
    move-exception v2

    #@26
    .line 206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 205
    throw v2
.end method

.method public onRemoved(JII)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 213
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 215
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.fingerprint.IFingerprintDaemonCallback"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 216
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 217
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 218
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 219
    iget-object v2, p0, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v3, 0x5

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1e
    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 210
    return-void

    #@28
    .line 222
    :catchall_0
    move-exception v2

    #@29
    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 222
    throw v2
.end method
