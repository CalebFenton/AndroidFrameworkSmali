.class Landroid/media/IRingtonePlayer$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRingtonePlayer.java"

# interfaces
.implements Landroid/media/IRingtonePlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IRingtonePlayer$Stub;
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
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 167
    iput-object p1, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 165
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 175
    const-string/jumbo v0, "android.media.IRingtonePlayer"

    #@3
    return-object v0
.end method

.method public getTitle(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 314
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 317
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.media.IRingtonePlayer"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 318
    if-eqz p1, :cond_0

    #@10
    .line 319
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 320
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 325
    :goto_0
    iget-object v3, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x7

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 326
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 327
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result-object v2

    #@26
    .line 330
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 333
    return-object v2

    #@2d
    .line 323
    .end local v2    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    #@2e
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 329
    :catchall_0
    move-exception v3

    #@33
    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 329
    throw v3
.end method

.method public isPlaying(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 227
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 230
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.media.IRingtonePlayer"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 231
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 232
    iget-object v3, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x3

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 233
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 234
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    const/4 v2, 0x1

    #@22
    .line 237
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 240
    return v2

    #@29
    .line 234
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 236
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 236
    throw v3
.end method

.method public play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "aa"    # Landroid/media/AudioAttributes;
    .param p4, "volume"    # F
    .param p5, "looping"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 181
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 183
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.media.IRingtonePlayer"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 184
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@13
    .line 185
    if-eqz p2, :cond_0

    #@15
    .line 186
    const/4 v4, 0x1

    #@16
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 187
    const/4 v4, 0x0

    #@1a
    invoke-virtual {p2, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@1d
    .line 192
    :goto_0
    if-eqz p3, :cond_1

    #@1f
    .line 193
    const/4 v4, 0x1

    #@20
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 194
    const/4 v4, 0x0

    #@24
    invoke-virtual {p3, v0, v4}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    #@27
    .line 199
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloat(F)V

    #@2a
    .line 200
    if-eqz p5, :cond_2

    #@2c
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 201
    iget-object v2, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@31
    const/4 v3, 0x1

    #@32
    const/4 v4, 0x0

    #@33
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@36
    .line 202
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 178
    return-void

    #@40
    .line 190
    :cond_0
    const/4 v4, 0x0

    #@41
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    goto :goto_0

    #@45
    .line 204
    :catchall_0
    move-exception v2

    #@46
    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 204
    throw v2

    #@4d
    .line 197
    :cond_1
    const/4 v4, 0x0

    #@4e
    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    goto :goto_1

    #@52
    :cond_2
    move v2, v3

    #@53
    .line 200
    goto :goto_2
.end method

.method public playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "looping"    # Z
    .param p4, "aa"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 263
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@9
    move-result-object v1

    #@a
    .line 265
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.media.IRingtonePlayer"

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@10
    .line 266
    if-eqz p1, :cond_0

    #@12
    .line 267
    const/4 v4, 0x1

    #@13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 268
    const/4 v4, 0x0

    #@17
    invoke-virtual {p1, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 273
    :goto_0
    if-eqz p2, :cond_1

    #@1c
    .line 274
    const/4 v4, 0x1

    #@1d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 275
    const/4 v4, 0x0

    #@21
    invoke-virtual {p2, v0, v4}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@24
    .line 280
    :goto_1
    if-eqz p3, :cond_2

    #@26
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 281
    if-eqz p4, :cond_3

    #@2b
    .line 282
    const/4 v2, 0x1

    #@2c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 283
    const/4 v2, 0x0

    #@30
    invoke-virtual {p4, v0, v2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    #@33
    .line 288
    :goto_3
    iget-object v2, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@35
    const/4 v3, 0x5

    #@36
    const/4 v4, 0x0

    #@37
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3a
    .line 289
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 260
    return-void

    #@44
    .line 271
    :cond_0
    const/4 v4, 0x0

    #@45
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    goto :goto_0

    #@49
    .line 291
    :catchall_0
    move-exception v2

    #@4a
    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4d
    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@50
    .line 291
    throw v2

    #@51
    .line 278
    :cond_1
    const/4 v4, 0x0

    #@52
    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@55
    goto :goto_1

    #@56
    :cond_2
    move v2, v3

    #@57
    .line 280
    goto :goto_2

    #@58
    .line 286
    :cond_3
    const/4 v2, 0x0

    #@59
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5c
    goto :goto_3
.end method

.method public setPlaybackProperties(Landroid/os/IBinder;FZ)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "volume"    # F
    .param p3, "looping"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 245
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 247
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.media.IRingtonePlayer"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 248
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 249
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    #@15
    .line 250
    if-eqz p3, :cond_0

    #@17
    const/4 v2, 0x1

    #@18
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 251
    iget-object v2, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v3, 0x4

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 252
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 242
    return-void

    #@2c
    .line 254
    :catchall_0
    move-exception v2

    #@2d
    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 254
    throw v2
.end method

.method public stop(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
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
    .line 212
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 214
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.IRingtonePlayer"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 215
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 216
    iget-object v2, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x2

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 217
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 209
    return-void

    #@22
    .line 219
    :catchall_0
    move-exception v2

    #@23
    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 219
    throw v2
.end method

.method public stopAsync()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 299
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 301
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.IRingtonePlayer"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 302
    iget-object v2, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x6

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 303
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 296
    return-void

    #@1f
    .line 305
    :catchall_0
    move-exception v2

    #@20
    .line 306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 305
    throw v2
.end method
