.class Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImsRegistrationListener.java"

# interfaces
.implements Lcom/android/ims/internal/IImsRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsRegistrationListener$Stub;
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
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 161
    iput-object p1, p0, Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 159
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 169
    const-string/jumbo v0, "com.android.ims.internal.IImsRegistrationListener"

    #@3
    return-object v0
.end method

.method public registrationAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 5
    .param p1, "uris"    # [Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 386
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 388
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.IImsRegistrationListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 389
    const/4 v2, 0x0

    #@f
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@12
    .line 390
    iget-object v2, p0, Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@14
    const/16 v3, 0xb

    #@16
    const/4 v4, 0x0

    #@17
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1a
    .line 391
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 383
    return-void

    #@24
    .line 393
    :catchall_0
    move-exception v2

    #@25
    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 393
    throw v2
.end method

.method public registrationConnected()V
    .locals 5
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
    const-string/jumbo v2, "com.android.ims.internal.IImsRegistrationListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 182
    iget-object v2, p0, Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x1

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 183
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 176
    return-void

    #@1f
    .line 185
    :catchall_0
    move-exception v2

    #@20
    .line 186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 185
    throw v2
.end method

.method public registrationConnectedWithRadioTech(I)V
    .locals 5
    .param p1, "imsRadioTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 218
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 220
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.IImsRegistrationListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 221
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 222
    iget-object v2, p0, Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x3

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 215
    return-void

    #@22
    .line 225
    :catchall_0
    move-exception v2

    #@23
    .line 226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 225
    throw v2
.end method

.method public registrationDisconnected(Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "imsReasonInfo"    # Lcom/android/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 257
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 259
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.IImsRegistrationListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 260
    if-eqz p1, :cond_0

    #@10
    .line 261
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 262
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Lcom/android/ims/ImsReasonInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 267
    :goto_0
    iget-object v2, p0, Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x5

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 254
    return-void

    #@29
    .line 265
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
    .line 270
    :catchall_0
    move-exception v2

    #@2f
    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 270
    throw v2
.end method

.method public registrationFeatureCapabilityChanged(I[I[I)V
    .locals 5
    .param p1, "serviceClass"    # I
    .param p2, "enabledFeatures"    # [I
    .param p3, "disabledFeatures"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 347
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 349
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.IImsRegistrationListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 350
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 351
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    #@14
    .line 352
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    #@17
    .line 353
    iget-object v2, p0, Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v3, 0x9

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 354
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 344
    return-void

    #@29
    .line 356
    :catchall_0
    move-exception v2

    #@2a
    .line 357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 356
    throw v2
.end method

.method public registrationProgressing()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 198
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 200
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.IImsRegistrationListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 201
    iget-object v2, p0, Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x2

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 202
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 195
    return-void

    #@1f
    .line 204
    :catchall_0
    move-exception v2

    #@20
    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 204
    throw v2
.end method

.method public registrationProgressingWithRadioTech(I)V
    .locals 5
    .param p1, "imsRadioTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 239
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 241
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.IImsRegistrationListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 242
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 243
    iget-object v2, p0, Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x4

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 236
    return-void

    #@22
    .line 246
    :catchall_0
    move-exception v2

    #@23
    .line 247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 246
    throw v2
.end method

.method public registrationResumed()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 282
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 284
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.IImsRegistrationListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 285
    iget-object v2, p0, Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x6

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 286
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 289
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 279
    return-void

    #@1f
    .line 288
    :catchall_0
    move-exception v2

    #@20
    .line 289
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 288
    throw v2
.end method

.method public registrationServiceCapabilityChanged(II)V
    .locals 5
    .param p1, "serviceClass"    # I
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 323
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 325
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.IImsRegistrationListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 326
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 327
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 328
    iget-object v2, p0, Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v3, 0x8

    #@18
    const/4 v4, 0x0

    #@19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 329
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 320
    return-void

    #@26
    .line 331
    :catchall_0
    move-exception v2

    #@27
    .line 332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 331
    throw v2
.end method

.method public registrationSuspended()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 300
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 302
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.IImsRegistrationListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 303
    iget-object v2, p0, Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v3, 0x7

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 297
    return-void

    #@1f
    .line 306
    :catchall_0
    move-exception v2

    #@20
    .line 307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 306
    throw v2
.end method

.method public voiceMessageCountUpdate(I)V
    .locals 5
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 367
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 368
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 370
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.ims.internal.IImsRegistrationListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 371
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 372
    iget-object v2, p0, Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0xa

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 373
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 376
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 365
    return-void

    #@23
    .line 375
    :catchall_0
    move-exception v2

    #@24
    .line 376
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 375
    throw v2
.end method
