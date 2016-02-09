.class Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIccPhoneBook.java"

# interfaces
.implements Lcom/android/internal/telephony/IIccPhoneBook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IIccPhoneBook$Stub;
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
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 190
    iput-object p1, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 188
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 6
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
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
    .line 213
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 214
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 215
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x1

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 216
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 217
    sget-object v3, Lcom/android/internal/telephony/uicc/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result-object v2

    #@21
    .line 220
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 223
    return-object v2

    #@28
    .line 219
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :catchall_0
    move-exception v3

    #@29
    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 219
    throw v3
.end method

.method public getAdnRecordsInEfForSubscriber(II)Ljava/util/List;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
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
    .line 235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 236
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 239
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 240
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 241
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 242
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v4, 0x2

    #@17
    const/4 v5, 0x0

    #@18
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 243
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1e
    .line 244
    sget-object v3, Lcom/android/internal/telephony/uicc/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result-object v2

    #@24
    .line 247
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 250
    return-object v2

    #@2b
    .line 246
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :catchall_0
    move-exception v3

    #@2c
    .line 247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 246
    throw v3
.end method

.method public getAdnRecordsSize(I)[I
    .locals 6
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 424
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 427
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 428
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 429
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x7

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 430
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 431
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v2

    #@1f
    .line 434
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 437
    return-object v2

    #@26
    .line 433
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    #@27
    .line 434
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 433
    throw v3
.end method

.method public getAdnRecordsSizeForSubscriber(II)[I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 452
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 455
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 456
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 457
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 458
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0x8

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 459
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 460
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result-object v2

    #@23
    .line 463
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 466
    return-object v2

    #@2a
    .line 462
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    #@2b
    .line 463
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 462
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 198
    const-string/jumbo v0, "com.android.internal.telephony.IIccPhoneBook"

    #@3
    return-object v0
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 354
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 357
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 358
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 359
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 360
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 361
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 362
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    .line 363
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1f
    const/4 v4, 0x5

    #@20
    const/4 v5, 0x0

    #@21
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@24
    .line 364
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@27
    .line 365
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_0

    #@2d
    const/4 v2, 0x1

    #@2e
    .line 368
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 371
    return v2

    #@35
    .line 365
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@36
    .restart local v2    # "_result":Z
    goto :goto_0

    #@37
    .line 367
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@38
    .line 368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 367
    throw v3
.end method

.method public updateAdnRecordsInEfByIndexForSubscriber(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "newTag"    # Ljava/lang/String;
    .param p4, "newPhoneNumber"    # Ljava/lang/String;
    .param p5, "index"    # I
    .param p6, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 392
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 395
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 396
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 397
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 398
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 399
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 400
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 401
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@20
    .line 402
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@22
    const/4 v4, 0x6

    #@23
    const/4 v5, 0x0

    #@24
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    .line 403
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2a
    .line 404
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_0

    #@30
    const/4 v2, 0x1

    #@31
    .line 407
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 410
    return v2

    #@38
    .line 404
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@39
    .restart local v2    # "_result":Z
    goto :goto_0

    #@3a
    .line 406
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@3b
    .line 407
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 406
    throw v3
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "newTag"    # Ljava/lang/String;
    .param p5, "newPhoneNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 272
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 273
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 276
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 277
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 278
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 279
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 280
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 281
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    .line 282
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@20
    .line 283
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@22
    const/4 v4, 0x3

    #@23
    const/4 v5, 0x0

    #@24
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@27
    .line 284
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2a
    .line 285
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_0

    #@30
    const/4 v2, 0x1

    #@31
    .line 288
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 291
    return v2

    #@38
    .line 285
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@39
    .restart local v2    # "_result":Z
    goto :goto_0

    #@3a
    .line 287
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@3b
    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 287
    throw v3
.end method

.method public updateAdnRecordsInEfBySearchForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "oldTag"    # Ljava/lang/String;
    .param p4, "oldPhoneNumber"    # Ljava/lang/String;
    .param p5, "newTag"    # Ljava/lang/String;
    .param p6, "newPhoneNumber"    # Ljava/lang/String;
    .param p7, "pin2"    # Ljava/lang/String;
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
    .line 315
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 318
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 319
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 320
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 321
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 322
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 323
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    .line 324
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@20
    .line 325
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    .line 326
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@25
    const/4 v4, 0x4

    #@26
    const/4 v5, 0x0

    #@27
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2a
    .line 327
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2d
    .line 328
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_0

    #@33
    const/4 v2, 0x1

    #@34
    .line 331
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 334
    return v2

    #@3b
    .line 328
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@3c
    .restart local v2    # "_result":Z
    goto :goto_0

    #@3d
    .line 330
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@3e
    .line 331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 330
    throw v3
.end method
