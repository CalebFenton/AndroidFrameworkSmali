.class Lcom/android/internal/app/IVoiceInteractor$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVoiceInteractor.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractor$Stub;
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
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 195
    iput-object p1, p0, Lcom/android/internal/app/IVoiceInteractor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 193
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 203
    const-string/jumbo v0, "com.android.internal.app.IVoiceInteractor"

    #@3
    return-object v0
.end method

.method public startAbortVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p3, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 308
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 311
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.app.IVoiceInteractor"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 312
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 313
    if-eqz p2, :cond_0

    #@14
    invoke-interface {p2}, Lcom/android/internal/app/IVoiceInteractorCallback;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v3

    #@18
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 314
    if-eqz p3, :cond_1

    #@1d
    .line 315
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 316
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/app/VoiceInteractor$Prompt;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 321
    :goto_0
    if-eqz p4, :cond_2

    #@27
    .line 322
    const/4 v3, 0x1

    #@28
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 323
    const/4 v3, 0x0

    #@2c
    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@2f
    .line 328
    :goto_1
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@31
    const/4 v4, 0x4

    #@32
    const/4 v5, 0x0

    #@33
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@36
    .line 329
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@39
    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3c
    move-result-object v3

    #@3d
    invoke-static {v3}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    move-result-object v2

    #@41
    .line 333
    .local v2, "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 336
    return-object v2

    #@48
    .line 319
    .end local v2    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :cond_1
    const/4 v3, 0x0

    #@49
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    goto :goto_0

    #@4d
    .line 332
    :catchall_0
    move-exception v3

    #@4e
    .line 333
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@51
    .line 334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@54
    .line 332
    throw v3

    #@55
    .line 326
    :cond_2
    const/4 v3, 0x0

    #@56
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@59
    goto :goto_1
.end method

.method public startCommand(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 341
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 344
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.app.IVoiceInteractor"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 345
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 346
    if-eqz p2, :cond_0

    #@14
    invoke-interface {p2}, Lcom/android/internal/app/IVoiceInteractorCallback;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v3

    #@18
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 347
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 348
    if-eqz p4, :cond_1

    #@20
    .line 349
    const/4 v3, 0x1

    #@21
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 350
    const/4 v3, 0x0

    #@25
    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@28
    .line 355
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2a
    const/4 v4, 0x5

    #@2b
    const/4 v5, 0x0

    #@2c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2f
    .line 356
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@32
    .line 357
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@35
    move-result-object v3

    #@36
    invoke-static {v3}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    move-result-object v2

    #@3a
    .line 360
    .local v2, "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 363
    return-object v2

    #@41
    .line 353
    .end local v2    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :cond_1
    const/4 v3, 0x0

    #@42
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    goto :goto_0

    #@46
    .line 359
    :catchall_0
    move-exception v3

    #@47
    .line 360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4d
    .line 359
    throw v3
.end method

.method public startCompleteVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p3, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 275
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 278
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.app.IVoiceInteractor"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 279
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 280
    if-eqz p2, :cond_0

    #@14
    invoke-interface {p2}, Lcom/android/internal/app/IVoiceInteractorCallback;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v3

    #@18
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 281
    if-eqz p3, :cond_1

    #@1d
    .line 282
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 283
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/app/VoiceInteractor$Prompt;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 288
    :goto_0
    if-eqz p4, :cond_2

    #@27
    .line 289
    const/4 v3, 0x1

    #@28
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 290
    const/4 v3, 0x0

    #@2c
    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@2f
    .line 295
    :goto_1
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@31
    const/4 v4, 0x3

    #@32
    const/4 v5, 0x0

    #@33
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@36
    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@39
    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3c
    move-result-object v3

    #@3d
    invoke-static {v3}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    move-result-object v2

    #@41
    .line 300
    .local v2, "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 303
    return-object v2

    #@48
    .line 286
    .end local v2    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :cond_1
    const/4 v3, 0x0

    #@49
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    goto :goto_0

    #@4d
    .line 299
    :catchall_0
    move-exception v3

    #@4e
    .line 300
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@51
    .line 301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@54
    .line 299
    throw v3

    #@55
    .line 293
    :cond_2
    const/4 v3, 0x0

    #@56
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@59
    goto :goto_1
.end method

.method public startConfirmation(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p3, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 208
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 211
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.app.IVoiceInteractor"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 212
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 213
    if-eqz p2, :cond_0

    #@14
    invoke-interface {p2}, Lcom/android/internal/app/IVoiceInteractorCallback;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v3

    #@18
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 214
    if-eqz p3, :cond_1

    #@1d
    .line 215
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 216
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/app/VoiceInteractor$Prompt;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 221
    :goto_0
    if-eqz p4, :cond_2

    #@27
    .line 222
    const/4 v3, 0x1

    #@28
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 223
    const/4 v3, 0x0

    #@2c
    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@2f
    .line 228
    :goto_1
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@31
    const/4 v4, 0x1

    #@32
    const/4 v5, 0x0

    #@33
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@36
    .line 229
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@39
    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3c
    move-result-object v3

    #@3d
    invoke-static {v3}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    move-result-object v2

    #@41
    .line 233
    .local v2, "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 236
    return-object v2

    #@48
    .line 219
    .end local v2    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :cond_1
    const/4 v3, 0x0

    #@49
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    goto :goto_0

    #@4d
    .line 232
    :catchall_0
    move-exception v3

    #@4e
    .line 233
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@51
    .line 234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@54
    .line 232
    throw v3

    #@55
    .line 226
    :cond_2
    const/4 v3, 0x0

    #@56
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@59
    goto :goto_1
.end method

.method public startPickOption(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p3, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p4, "options"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 241
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 244
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.app.IVoiceInteractor"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 245
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 246
    if-eqz p2, :cond_0

    #@14
    invoke-interface {p2}, Lcom/android/internal/app/IVoiceInteractorCallback;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v3

    #@18
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 247
    if-eqz p3, :cond_1

    #@1d
    .line 248
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 249
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/app/VoiceInteractor$Prompt;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 254
    :goto_0
    const/4 v3, 0x0

    #@26
    invoke-virtual {v0, p4, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@29
    .line 255
    if-eqz p5, :cond_2

    #@2b
    .line 256
    const/4 v3, 0x1

    #@2c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 257
    const/4 v3, 0x0

    #@30
    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@33
    .line 262
    :goto_1
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@35
    const/4 v4, 0x2

    #@36
    const/4 v5, 0x0

    #@37
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@3a
    .line 263
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@3d
    .line 264
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@40
    move-result-object v3

    #@41
    invoke-static {v3}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    move-result-object v2

    #@45
    .line 267
    .local v2, "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@48
    .line 268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4b
    .line 270
    return-object v2

    #@4c
    .line 252
    .end local v2    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :cond_1
    const/4 v3, 0x0

    #@4d
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    goto :goto_0

    #@51
    .line 266
    :catchall_0
    move-exception v3

    #@52
    .line 267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@55
    .line 268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@58
    .line 266
    throw v3

    #@59
    .line 260
    :cond_2
    const/4 v3, 0x0

    #@5a
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5d
    goto :goto_1
.end method

.method public supportsCommands(Ljava/lang/String;[Ljava/lang/String;)[Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "commands"    # [Ljava/lang/String;
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
    .line 371
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractor"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 372
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 373
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@14
    .line 374
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x6

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 375
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 376
    invoke-virtual {v1}, Landroid/os/Parcel;->createBooleanArray()[Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result-object v2

    #@22
    .line 379
    .local v2, "_result":[Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 382
    return-object v2

    #@29
    .line 378
    .end local v2    # "_result":[Z
    :catchall_0
    move-exception v3

    #@2a
    .line 379
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 378
    throw v3
.end method
