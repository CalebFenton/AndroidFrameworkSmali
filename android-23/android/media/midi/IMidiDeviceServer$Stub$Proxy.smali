.class Landroid/media/midi/IMidiDeviceServer$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMidiDeviceServer.java"

# interfaces
.implements Landroid/media/midi/IMidiDeviceServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/IMidiDeviceServer$Stub;
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
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 152
    iput-object p1, p0, Landroid/media/midi/IMidiDeviceServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 150
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Landroid/media/midi/IMidiDeviceServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public closeDevice()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 228
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 230
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.midi.IMidiDeviceServer"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 231
    iget-object v2, p0, Landroid/media/midi/IMidiDeviceServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x4

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 232
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 225
    return-void

    #@1f
    .line 234
    :catchall_0
    move-exception v2

    #@20
    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 234
    throw v2
.end method

.method public closePort(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
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
    const-string/jumbo v2, "android.media.midi.IMidiDeviceServer"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 216
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 217
    iget-object v2, p0, Landroid/media/midi/IMidiDeviceServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x3

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 218
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 210
    return-void

    #@22
    .line 220
    :catchall_0
    move-exception v2

    #@23
    .line 221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 220
    throw v2
.end method

.method public connectPorts(Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "outputPortNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 244
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 246
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.midi.IMidiDeviceServer"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 247
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 248
    if-eqz p2, :cond_0

    #@13
    .line 249
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 250
    const/4 v2, 0x0

    #@18
    invoke-virtual {p2, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 255
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 256
    iget-object v2, p0, Landroid/media/midi/IMidiDeviceServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v3, 0x5

    #@21
    const/4 v4, 0x0

    #@22
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 257
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 241
    return-void

    #@2f
    .line 253
    :cond_0
    const/4 v2, 0x0

    #@30
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    goto :goto_0

    #@34
    .line 259
    :catchall_0
    move-exception v2

    #@35
    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 259
    throw v2
.end method

.method public getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 267
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 270
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.media.midi.IMidiDeviceServer"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 271
    iget-object v3, p0, Landroid/media/midi/IMidiDeviceServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x6

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 272
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 273
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 274
    sget-object v3, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/media/midi/MidiDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 281
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 284
    return-object v2

    #@2d
    .line 277
    :cond_0
    const/4 v2, 0x0

    #@2e
    .local v2, "_result":Landroid/media/midi/MidiDeviceInfo;
    goto :goto_0

    #@2f
    .line 280
    .end local v2    # "_result":Landroid/media/midi/MidiDeviceInfo;
    :catchall_0
    move-exception v3

    #@30
    .line 281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 280
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 160
    const-string/jumbo v0, "android.media.midi.IMidiDeviceServer"

    #@3
    return-object v0
.end method

.method public openInputPort(Landroid/os/IBinder;I)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "portNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 165
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 168
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.media.midi.IMidiDeviceServer"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 169
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 170
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 171
    iget-object v3, p0, Landroid/media/midi/IMidiDeviceServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x1

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 173
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 174
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 181
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 184
    return-object v2

    #@33
    .line 177
    :cond_0
    const/4 v2, 0x0

    #@34
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    #@35
    .line 180
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v3

    #@36
    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 180
    throw v3
.end method

.method public openOutputPort(Landroid/os/IBinder;I)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "portNumber"    # I
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
    .line 189
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 192
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.media.midi.IMidiDeviceServer"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 193
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 194
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 195
    iget-object v3, p0, Landroid/media/midi/IMidiDeviceServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x2

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 196
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 197
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 198
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 205
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 208
    return-object v2

    #@33
    .line 201
    :cond_0
    const/4 v2, 0x0

    #@34
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    #@35
    .line 204
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v3

    #@36
    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 204
    throw v3
.end method

.method public setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 5
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 289
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 291
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.midi.IMidiDeviceServer"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 292
    if-eqz p1, :cond_0

    #@10
    .line 293
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 294
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/media/midi/MidiDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 299
    :goto_0
    iget-object v2, p0, Landroid/media/midi/IMidiDeviceServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x7

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 300
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 286
    return-void

    #@29
    .line 297
    :cond_0
    const/4 v2, 0x0

    #@2a
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 302
    :catchall_0
    move-exception v2

    #@2f
    .line 303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 302
    throw v2
.end method
