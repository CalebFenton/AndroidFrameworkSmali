.class Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFingerprintServiceReceiver.java"

# interfaces
.implements Landroid/hardware/fingerprint/IFingerprintServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
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
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 128
    iput-object p1, p0, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 126
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 136
    const-string/jumbo v0, "android.hardware.fingerprint.IFingerprintServiceReceiver"

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
    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 157
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 158
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 159
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 160
    iget-object v1, p0, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x2

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 153
    return-void

    #@1c
    .line 162
    :catchall_0
    move-exception v1

    #@1d
    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 162
    throw v1
.end method

.method public onAuthenticationFailed(J)V
    .locals 5
    .param p1, "deviceId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 190
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 191
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 192
    iget-object v1, p0, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/4 v2, 0x4

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x1

    #@12
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 186
    return-void

    #@19
    .line 194
    :catchall_0
    move-exception v1

    #@1a
    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 194
    throw v1
.end method

.method public onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 170
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 171
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 172
    if-eqz p3, :cond_0

    #@f
    .line 173
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 174
    const/4 v1, 0x0

    #@14
    invoke-virtual {p3, v0, v1}, Landroid/hardware/fingerprint/Fingerprint;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 179
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 180
    iget-object v1, p0, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v2, 0x3

    #@1d
    const/4 v3, 0x0

    #@1e
    const/4 v4, 0x1

    #@1f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 166
    return-void

    #@26
    .line 177
    :cond_0
    const/4 v1, 0x0

    #@27
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    goto :goto_0

    #@2b
    .line 182
    :catchall_0
    move-exception v1

    #@2c
    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 182
    throw v1
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
    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 142
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 143
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 144
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 145
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 146
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 147
    iget-object v1, p0, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@18
    const/4 v2, 0x1

    #@19
    const/4 v3, 0x0

    #@1a
    const/4 v4, 0x1

    #@1b
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 138
    return-void

    #@22
    .line 149
    :catchall_0
    move-exception v1

    #@23
    .line 150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 149
    throw v1
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
    .line 200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 202
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 203
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 204
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 205
    iget-object v1, p0, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x5

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 198
    return-void

    #@1c
    .line 207
    :catchall_0
    move-exception v1

    #@1d
    .line 208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 207
    throw v1
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
    .line 213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 215
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 216
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 217
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 218
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 219
    iget-object v1, p0, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@15
    const/4 v2, 0x6

    #@16
    const/4 v3, 0x0

    #@17
    const/4 v4, 0x1

    #@18
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 211
    return-void

    #@1f
    .line 221
    :catchall_0
    move-exception v1

    #@20
    .line 222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 221
    throw v1
.end method
