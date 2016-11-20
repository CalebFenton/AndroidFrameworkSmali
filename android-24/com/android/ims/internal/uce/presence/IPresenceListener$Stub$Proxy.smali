.class Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPresenceListener.java"

# interfaces
.implements Lcom/android/ims/internal/uce/presence/IPresenceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;
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
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 162
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 160
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public capInfoReceived(Ljava/lang/String;[Lcom/android/ims/internal/uce/presence/PresTupleInfo;)V
    .locals 5
    .param p1, "presentityURI"    # Ljava/lang/String;
    .param p2, "tupleInfo"    # [Lcom/android/ims/internal/uce/presence/PresTupleInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 329
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 331
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.uce.presence.IPresenceListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 332
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 333
    const/4 v2, 0x0

    #@12
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@15
    .line 334
    iget-object v2, p0, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@17
    const/4 v3, 0x7

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 335
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 326
    return-void

    #@26
    .line 337
    :catchall_0
    move-exception v2

    #@27
    .line 338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 337
    throw v2
.end method

.method public cmdStatus(Lcom/android/ims/internal/uce/presence/PresCmdStatus;)V
    .locals 5
    .param p1, "cmdStatus"    # Lcom/android/ims/internal/uce/presence/PresCmdStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 276
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 278
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.uce.presence.IPresenceListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 279
    if-eqz p1, :cond_0

    #@10
    .line 280
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 281
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 286
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x5

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 287
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 290
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 273
    return-void

    #@29
    .line 284
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
    .line 289
    :catchall_0
    move-exception v2

    #@2f
    .line 290
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 289
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 170
    const-string/jumbo v0, "com.android.ims.internal.uce.presence.IPresenceListener"

    #@3
    return-object v0
.end method

.method public getVersionCb(Ljava/lang/String;)V
    .locals 5
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 179
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 181
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.uce.presence.IPresenceListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 182
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 183
    iget-object v2, p0, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x1

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 184
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 176
    return-void

    #@22
    .line 186
    :catchall_0
    move-exception v2

    #@23
    .line 187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 186
    throw v2
.end method

.method public listCapInfoReceived(Lcom/android/ims/internal/uce/presence/PresRlmiInfo;[Lcom/android/ims/internal/uce/presence/PresResInfo;)V
    .locals 5
    .param p1, "rlmiInfo"    # Lcom/android/ims/internal/uce/presence/PresRlmiInfo;
    .param p2, "resInfo"    # [Lcom/android/ims/internal/uce/presence/PresResInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 351
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 353
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.uce.presence.IPresenceListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 354
    if-eqz p1, :cond_0

    #@10
    .line 355
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 356
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 361
    :goto_0
    const/4 v2, 0x0

    #@19
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@1c
    .line 362
    iget-object v2, p0, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1e
    const/16 v3, 0x8

    #@20
    const/4 v4, 0x0

    #@21
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@24
    .line 363
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 366
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 348
    return-void

    #@2e
    .line 359
    :cond_0
    const/4 v2, 0x0

    #@2f
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 365
    :catchall_0
    move-exception v2

    #@34
    .line 366
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 365
    throw v2
.end method

.method public publishTriggering(Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;)V
    .locals 5
    .param p1, "publishTrigger"    # Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 251
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 253
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.uce.presence.IPresenceListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 254
    if-eqz p1, :cond_0

    #@10
    .line 255
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 256
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 261
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x4

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 262
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 265
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 248
    return-void

    #@29
    .line 259
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
    .line 264
    :catchall_0
    move-exception v2

    #@2f
    .line 265
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 264
    throw v2
.end method

.method public serviceAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V
    .locals 5
    .param p1, "statusCode"    # Lcom/android/ims/internal/uce/common/StatusCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 199
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 201
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.uce.presence.IPresenceListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 202
    if-eqz p1, :cond_0

    #@10
    .line 203
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 204
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 209
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x2

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 210
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 196
    return-void

    #@29
    .line 207
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
    .line 212
    :catchall_0
    move-exception v2

    #@2f
    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 212
    throw v2
.end method

.method public serviceUnAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V
    .locals 5
    .param p1, "statusCode"    # Lcom/android/ims/internal/uce/common/StatusCode;
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
    .line 225
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 227
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.uce.presence.IPresenceListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 228
    if-eqz p1, :cond_0

    #@10
    .line 229
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 230
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 235
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x3

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 236
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 239
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 222
    return-void

    #@29
    .line 233
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
    .line 238
    :catchall_0
    move-exception v2

    #@2f
    .line 239
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 238
    throw v2
.end method

.method public sipResponseReceived(Lcom/android/ims/internal/uce/presence/PresSipResponse;)V
    .locals 5
    .param p1, "sipResponse"    # Lcom/android/ims/internal/uce/presence/PresSipResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 302
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 304
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.uce.presence.IPresenceListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 305
    if-eqz p1, :cond_0

    #@10
    .line 306
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 307
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Lcom/android/ims/internal/uce/presence/PresSipResponse;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 312
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x6

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 313
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 316
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 299
    return-void

    #@29
    .line 310
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
    .line 315
    :catchall_0
    move-exception v2

    #@2f
    .line 316
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 315
    throw v2
.end method
