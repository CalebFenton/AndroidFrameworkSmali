.class Landroid/nfc/INfcFCardEmulation$Stub$Proxy;
.super Ljava/lang/Object;
.source "INfcFCardEmulation.java"

# interfaces
.implements Landroid/nfc/INfcFCardEmulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcFCardEmulation$Stub;
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
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 186
    iput-object p1, p0, Landroid/nfc/INfcFCardEmulation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 184
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Landroid/nfc/INfcFCardEmulation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public disableNfcFForegroundService()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 349
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 350
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 353
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcFCardEmulation"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 354
    iget-object v3, p0, Landroid/nfc/INfcFCardEmulation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x7

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 355
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 356
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    const/4 v2, 0x1

    #@1f
    .line 359
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 362
    return v2

    #@26
    .line 356
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@27
    .restart local v2    # "_result":Z
    goto :goto_0

    #@28
    .line 358
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@29
    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 358
    throw v3
.end method

.method public enableNfcFForegroundService(Landroid/content/ComponentName;)Z
    .locals 6
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 326
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 329
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcFCardEmulation"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 330
    if-eqz p1, :cond_0

    #@10
    .line 331
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 332
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 337
    :goto_0
    iget-object v3, p0, Landroid/nfc/INfcFCardEmulation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v4, 0x6

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 338
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    const/4 v2, 0x1

    #@29
    .line 342
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 345
    return v2

    #@30
    .line 335
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@31
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 341
    :catchall_0
    move-exception v3

    #@36
    .line 342
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 341
    throw v3

    #@3d
    .line 339
    :cond_1
    const/4 v2, 0x0

    #@3e
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 194
    const-string/jumbo v0, "android.nfc.INfcFCardEmulation"

    #@3
    return-object v0
.end method

.method public getMaxNumOfRegisterableSystemCodes()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 385
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 388
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcFCardEmulation"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 389
    iget-object v3, p0, Landroid/nfc/INfcFCardEmulation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x9

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 390
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 391
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 394
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 397
    return v2

    #@24
    .line 393
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 393
    throw v3
.end method

.method public getNfcFServices(I)Ljava/util/List;
    .locals 6
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 367
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 370
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcFCardEmulation"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 371
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 372
    iget-object v3, p0, Landroid/nfc/INfcFCardEmulation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v4, 0x8

    #@15
    const/4 v5, 0x0

    #@16
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 373
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1c
    .line 374
    sget-object v3, Landroid/nfc/cardemulation/NfcFServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result-object v2

    #@22
    .line 377
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 380
    return-object v2

    #@29
    .line 376
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :catchall_0
    move-exception v3

    #@2a
    .line 377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 376
    throw v3
.end method

.method public getNfcid2ForService(ILandroid/content/ComponentName;)Ljava/lang/String;
    .locals 6
    .param p1, "userHandle"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 275
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 278
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcFCardEmulation"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 279
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 280
    if-eqz p2, :cond_0

    #@13
    .line 281
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 282
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 287
    :goto_0
    iget-object v3, p0, Landroid/nfc/INfcFCardEmulation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x4

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 289
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result-object v2

    #@29
    .line 292
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 295
    return-object v2

    #@30
    .line 285
    .end local v2    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    #@31
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 291
    :catchall_0
    move-exception v3

    #@36
    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 291
    throw v3
.end method

.method public getSystemCodeForService(ILandroid/content/ComponentName;)Ljava/lang/String;
    .locals 6
    .param p1, "userHandle"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
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
    .line 202
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcFCardEmulation"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 203
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 204
    if-eqz p2, :cond_0

    #@13
    .line 205
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 206
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 211
    :goto_0
    iget-object v3, p0, Landroid/nfc/INfcFCardEmulation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x1

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 212
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result-object v2

    #@29
    .line 216
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 219
    return-object v2

    #@30
    .line 209
    .end local v2    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    #@31
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 215
    :catchall_0
    move-exception v3

    #@36
    .line 216
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 215
    throw v3
.end method

.method public registerSystemCodeForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 6
    .param p1, "userHandle"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "systemCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 224
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 227
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcFCardEmulation"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 228
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 229
    if-eqz p2, :cond_0

    #@13
    .line 230
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 231
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 236
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 237
    iget-object v3, p0, Landroid/nfc/INfcFCardEmulation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v4, 0x2

    #@21
    const/4 v5, 0x0

    #@22
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 238
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@28
    .line 239
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_1

    #@2e
    const/4 v2, 0x1

    #@2f
    .line 242
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 245
    return v2

    #@36
    .line 234
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@37
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    goto :goto_0

    #@3b
    .line 241
    :catchall_0
    move-exception v3

    #@3c
    .line 242
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 241
    throw v3

    #@43
    .line 239
    :cond_1
    const/4 v2, 0x0

    #@44
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public removeSystemCodeForService(ILandroid/content/ComponentName;)Z
    .locals 6
    .param p1, "userHandle"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 250
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 253
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcFCardEmulation"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 254
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 255
    if-eqz p2, :cond_0

    #@13
    .line 256
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 257
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 262
    :goto_0
    iget-object v3, p0, Landroid/nfc/INfcFCardEmulation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/4 v4, 0x3

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 263
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 264
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    const/4 v2, 0x1

    #@2c
    .line 267
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 270
    return v2

    #@33
    .line 260
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 266
    :catchall_0
    move-exception v3

    #@39
    .line 267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 266
    throw v3

    #@40
    .line 264
    :cond_1
    const/4 v2, 0x0

    #@41
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public setNfcid2ForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 6
    .param p1, "userHandle"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "nfcid2"    # Ljava/lang/String;
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
    .line 303
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.nfc.INfcFCardEmulation"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 304
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 305
    if-eqz p2, :cond_0

    #@13
    .line 306
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 307
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 312
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 313
    iget-object v3, p0, Landroid/nfc/INfcFCardEmulation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v4, 0x5

    #@21
    const/4 v5, 0x0

    #@22
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 314
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@28
    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_1

    #@2e
    const/4 v2, 0x1

    #@2f
    .line 318
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 321
    return v2

    #@36
    .line 310
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@37
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    goto :goto_0

    #@3b
    .line 317
    :catchall_0
    move-exception v3

    #@3c
    .line 318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 317
    throw v3

    #@43
    .line 315
    :cond_1
    const/4 v2, 0x0

    #@44
    .restart local v2    # "_result":Z
    goto :goto_1
.end method
