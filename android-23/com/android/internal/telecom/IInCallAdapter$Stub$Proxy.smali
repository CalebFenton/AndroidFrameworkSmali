.class Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInCallAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IInCallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IInCallAdapter$Stub;
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
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 215
    iput-object p1, p0, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 213
    return-void
.end method


# virtual methods
.method public answerCall(Ljava/lang/String;I)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I
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
    .line 229
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IInCallAdapter"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 230
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 231
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 232
    iget-object v1, p0, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x1

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 225
    return-void

    #@1c
    .line 234
    :catchall_0
    move-exception v1

    #@1d
    .line 235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 234
    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public conference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "otherCallId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 374
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IInCallAdapter"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 375
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 376
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 377
    iget-object v1, p0, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0xc

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 370
    return-void

    #@1d
    .line 379
    :catchall_0
    move-exception v1

    #@1e
    .line 380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 379
    throw v1
.end method

.method public disconnectCall(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
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
    const-string/jumbo v1, "com.android.internal.telecom.IInCallAdapter"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 257
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 258
    iget-object v1, p0, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 223
    const-string/jumbo v0, "com.android.internal.telecom.IInCallAdapter"

    #@3
    return-object v0
.end method

.method public holdCall(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
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
    .line 268
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IInCallAdapter"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 269
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 270
    iget-object v1, p0, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 264
    return-void

    #@19
    .line 272
    :catchall_0
    move-exception v1

    #@1a
    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 272
    throw v1
.end method

.method public mergeConference(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 399
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IInCallAdapter"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 400
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 401
    iget-object v1, p0, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0xe

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 395
    return-void

    #@1a
    .line 403
    :catchall_0
    move-exception v1

    #@1b
    .line 404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 403
    throw v1
.end method

.method public mute(Z)V
    .locals 5
    .param p1, "shouldMute"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 292
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telecom.IInCallAdapter"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 293
    if-eqz p1, :cond_0

    #@d
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 294
    iget-object v1, p0, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x6

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 288
    return-void

    #@1c
    .line 293
    :cond_0
    const/4 v1, 0x0

    #@1d
    goto :goto_0

    #@1e
    .line 296
    :catchall_0
    move-exception v1

    #@1f
    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 296
    throw v1
.end method

.method public phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "setDefault"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 354
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telecom.IInCallAdapter"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 355
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 356
    if-eqz p2, :cond_0

    #@11
    .line 357
    const/4 v3, 0x1

    #@12
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 358
    const/4 v3, 0x0

    #@16
    invoke-virtual {p2, v0, v3}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@19
    .line 363
    :goto_0
    if-eqz p3, :cond_1

    #@1b
    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 364
    iget-object v1, p0, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v2, 0xb

    #@22
    const/4 v3, 0x0

    #@23
    const/4 v4, 0x1

    #@24
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 350
    return-void

    #@2b
    .line 361
    :cond_0
    const/4 v3, 0x0

    #@2c
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    goto :goto_0

    #@30
    .line 366
    :catchall_0
    move-exception v1

    #@31
    .line 367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 366
    throw v1

    #@35
    :cond_1
    move v1, v2

    #@36
    .line 363
    goto :goto_1
.end method

.method public playDtmfTone(Ljava/lang/String;C)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 316
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IInCallAdapter"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 317
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 318
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 319
    iget-object v1, p0, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0x8

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 312
    return-void

    #@1d
    .line 321
    :catchall_0
    move-exception v1

    #@1e
    .line 322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 321
    throw v1
.end method

.method public postDialContinue(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 341
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telecom.IInCallAdapter"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 342
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 343
    if-eqz p2, :cond_0

    #@10
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 344
    iget-object v1, p0, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@15
    const/16 v2, 0xa

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 337
    return-void

    #@20
    .line 343
    :cond_0
    const/4 v1, 0x0

    #@21
    goto :goto_0

    #@22
    .line 346
    :catchall_0
    move-exception v1

    #@23
    .line 347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 346
    throw v1
.end method

.method public rejectCall(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rejectWithMessage"    # Z
    .param p3, "textMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 242
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telecom.IInCallAdapter"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 243
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 244
    if-eqz p2, :cond_0

    #@10
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 245
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 246
    iget-object v1, p0, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@18
    const/4 v2, 0x2

    #@19
    const/4 v3, 0x0

    #@1a
    const/4 v4, 0x1

    #@1b
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 238
    return-void

    #@22
    .line 244
    :cond_0
    const/4 v1, 0x0

    #@23
    goto :goto_0

    #@24
    .line 248
    :catchall_0
    move-exception v1

    #@25
    .line 249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 248
    throw v1
.end method

.method public setAudioRoute(I)V
    .locals 5
    .param p1, "route"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 304
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IInCallAdapter"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 305
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 306
    iget-object v1, p0, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 300
    return-void

    #@19
    .line 308
    :catchall_0
    move-exception v1

    #@1a
    .line 309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 308
    throw v1
.end method

.method public splitFromConference(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
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
    .line 387
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IInCallAdapter"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 388
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 389
    iget-object v1, p0, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0xd

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 383
    return-void

    #@1a
    .line 391
    :catchall_0
    move-exception v1

    #@1b
    .line 392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 391
    throw v1
.end method

.method public stopDtmfTone(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 329
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IInCallAdapter"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 330
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 331
    iget-object v1, p0, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0x9

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 325
    return-void

    #@1a
    .line 333
    :catchall_0
    move-exception v1

    #@1b
    .line 334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 333
    throw v1
.end method

.method public swapConference(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 411
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IInCallAdapter"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 412
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 413
    iget-object v1, p0, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@f
    const/16 v2, 0xf

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x1

    #@13
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 407
    return-void

    #@1a
    .line 415
    :catchall_0
    move-exception v1

    #@1b
    .line 416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 415
    throw v1
.end method

.method public turnOffProximitySensor(Z)V
    .locals 5
    .param p1, "screenOnImmediately"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 432
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 434
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telecom.IInCallAdapter"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 435
    if-eqz p1, :cond_0

    #@d
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 436
    iget-object v1, p0, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/16 v2, 0x11

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 430
    return-void

    #@1d
    .line 435
    :cond_0
    const/4 v1, 0x0

    #@1e
    goto :goto_0

    #@1f
    .line 438
    :catchall_0
    move-exception v1

    #@20
    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 438
    throw v1
.end method

.method public turnOnProximitySensor()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 423
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IInCallAdapter"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 424
    iget-object v1, p0, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/16 v2, 0x10

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x1

    #@10
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@16
    .line 419
    return-void

    #@17
    .line 426
    :catchall_0
    move-exception v1

    #@18
    .line 427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 426
    throw v1
.end method

.method public unholdCall(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 280
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IInCallAdapter"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 281
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 282
    iget-object v1, p0, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 276
    return-void

    #@19
    .line 284
    :catchall_0
    move-exception v1

    #@1a
    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1d
    .line 284
    throw v1
.end method
