.class Landroid/media/IAudioManagerNative$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAudioManagerNative.java"

# interfaces
.implements Landroid/media/IAudioManagerNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioManagerNative$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Landroid/media/IAudioManagerNative$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 130
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 133
    iget-object v0, p0, Landroid/media/IAudioManagerNative$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 137
    const-string v0, "android.media.IAudioManagerNative"

    return-object v0
.end method

.method public blacklist permissionUpdateBarrier()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Landroid/media/IAudioManagerNative$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 165
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 167
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v2, "android.media.IAudioManagerNative"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Landroid/media/IAudioManagerNative$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 169
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 172
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    nop

    .line 175
    return-void

    .line 172
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    throw v2
.end method

.method public blacklist playbackHardeningEvent(IBZ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "type"    # B
    .param p3, "bypassed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Landroid/media/IAudioManagerNative$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 151
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.IAudioManagerNative"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 154
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 155
    iget-object v1, p0, Landroid/media/IAudioManagerNative$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_22

    .line 158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 159
    nop

    .line 160
    return-void

    .line 158
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 159
    throw v1
.end method

.method public blacklist portMuteEvent(II)V
    .registers 8
    .param p1, "portId"    # I
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Landroid/media/IAudioManagerNative$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 185
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.media.IAudioManagerNative"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-object v1, p0, Landroid/media/IAudioManagerNative$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 192
    nop

    .line 193
    return-void

    .line 191
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 192
    throw v1
.end method
