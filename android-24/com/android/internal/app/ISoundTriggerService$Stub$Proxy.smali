.class Lcom/android/internal/app/ISoundTriggerService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISoundTriggerService.java"

# interfaces
.implements Lcom/android/internal/app/ISoundTriggerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ISoundTriggerService$Stub;
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
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 147
    iput-object p1, p0, Lcom/android/internal/app/ISoundTriggerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 145
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/internal/app/ISoundTriggerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public deleteSoundModel(Landroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 210
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 212
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.ISoundTriggerService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 213
    if-eqz p1, :cond_0

    #@10
    .line 214
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 215
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 220
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ISoundTriggerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x3

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 221
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 207
    return-void

    #@29
    .line 218
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
    .line 223
    :catchall_0
    move-exception v2

    #@2f
    .line 224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 223
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 155
    const-string/jumbo v0, "com.android.internal.app.ISoundTriggerService"

    #@3
    return-object v0
.end method

.method public getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .locals 6
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 160
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 163
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.ISoundTriggerService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 164
    if-eqz p1, :cond_0

    #@10
    .line 165
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 166
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 171
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ISoundTriggerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x1

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 173
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    .line 174
    sget-object v3, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 181
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 184
    return-object v2

    #@37
    .line 169
    :cond_0
    const/4 v3, 0x0

    #@38
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 180
    :catchall_0
    move-exception v3

    #@3d
    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 180
    throw v3

    #@44
    .line 177
    :cond_1
    const/4 v2, 0x0

    #@45
    .local v2, "_result":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    goto :goto_1
.end method

.method public startRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .locals 6
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p3, "config"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 231
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 234
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.app.ISoundTriggerService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 235
    if-eqz p1, :cond_1

    #@11
    .line 236
    const/4 v4, 0x1

    #@12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 237
    const/4 v4, 0x0

    #@16
    invoke-virtual {p1, v0, v4}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@19
    .line 242
    :goto_0
    if-eqz p2, :cond_0

    #@1b
    invoke-interface {p2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    #@1e
    move-result-object v3

    #@1f
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@22
    .line 243
    if-eqz p3, :cond_2

    #@24
    .line 244
    const/4 v3, 0x1

    #@25
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 245
    const/4 v3, 0x0

    #@29
    invoke-virtual {p3, v0, v3}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->writeToParcel(Landroid/os/Parcel;I)V

    #@2c
    .line 250
    :goto_1
    iget-object v3, p0, Lcom/android/internal/app/ISoundTriggerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2e
    const/4 v4, 0x4

    #@2f
    const/4 v5, 0x0

    #@30
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@33
    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@36
    .line 252
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    move-result v2

    #@3a
    .line 255
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 258
    return v2

    #@41
    .line 240
    .end local v2    # "_result":I
    :cond_1
    const/4 v4, 0x0

    #@42
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    goto :goto_0

    #@46
    .line 254
    :catchall_0
    move-exception v3

    #@47
    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4d
    .line 254
    throw v3

    #@4e
    .line 248
    :cond_2
    const/4 v3, 0x0

    #@4f
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@52
    goto :goto_1
.end method

.method public stopRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 6
    .param p1, "soundModelId"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 263
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 266
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.app.ISoundTriggerService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 267
    if-eqz p1, :cond_1

    #@11
    .line 268
    const/4 v4, 0x1

    #@12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 269
    const/4 v4, 0x0

    #@16
    invoke-virtual {p1, v0, v4}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    #@19
    .line 274
    :goto_0
    if-eqz p2, :cond_0

    #@1b
    invoke-interface {p2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    #@1e
    move-result-object v3

    #@1f
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@22
    .line 275
    iget-object v3, p0, Lcom/android/internal/app/ISoundTriggerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@24
    const/4 v4, 0x5

    #@25
    const/4 v5, 0x0

    #@26
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@29
    .line 276
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2c
    .line 277
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    move-result v2

    #@30
    .line 280
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 283
    return v2

    #@37
    .line 272
    .end local v2    # "_result":I
    :cond_1
    const/4 v4, 0x0

    #@38
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 279
    :catchall_0
    move-exception v3

    #@3d
    .line 280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 279
    throw v3
.end method

.method public updateSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V
    .locals 5
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
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
    .line 191
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.ISoundTriggerService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 192
    if-eqz p1, :cond_0

    #@10
    .line 193
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 194
    const/4 v2, 0x0

    #@15
    invoke-virtual {p1, v0, v2}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 199
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ISoundTriggerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x2

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 200
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 186
    return-void

    #@29
    .line 197
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
    .line 202
    :catchall_0
    move-exception v2

    #@2f
    .line 203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 202
    throw v2
.end method
