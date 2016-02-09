.class Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarrierMessagingService.java"

# interfaces
.implements Landroid/service/carrier/ICarrierMessagingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/ICarrierMessagingService$Stub;
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
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 177
    iput-object p1, p0, Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 175
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 181
    iget-object v0, p0, Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public downloadMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/ICarrierMessagingCallback;)V
    .locals 5
    .param p1, "pduUri"    # Landroid/net/Uri;
    .param p2, "subId"    # I
    .param p3, "location"    # Landroid/net/Uri;
    .param p4, "callback"    # Landroid/service/carrier/ICarrierMessagingCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 354
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.carrier.ICarrierMessagingService"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 355
    if-eqz p1, :cond_1

    #@d
    .line 356
    const/4 v2, 0x1

    #@e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 357
    const/4 v2, 0x0

    #@12
    invoke-virtual {p1, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 362
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 363
    if-eqz p3, :cond_2

    #@1a
    .line 364
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 365
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p3, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 370
    :goto_1
    if-eqz p4, :cond_0

    #@24
    invoke-interface {p4}, Landroid/service/carrier/ICarrierMessagingCallback;->asBinder()Landroid/os/IBinder;

    #@27
    move-result-object v1

    #@28
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@2b
    .line 371
    iget-object v1, p0, Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2d
    const/4 v2, 0x6

    #@2e
    const/4 v3, 0x0

    #@2f
    const/4 v4, 0x1

    #@30
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 350
    return-void

    #@37
    .line 360
    :cond_1
    const/4 v2, 0x0

    #@38
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 373
    :catchall_0
    move-exception v1

    #@3d
    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 373
    throw v1

    #@41
    .line 368
    :cond_2
    const/4 v2, 0x0

    #@42
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    goto :goto_1
.end method

.method public filterSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V
    .locals 5
    .param p1, "pdu"    # Landroid/service/carrier/MessagePdu;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "subId"    # I
    .param p5, "callback"    # Landroid/service/carrier/ICarrierMessagingCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 201
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.carrier.ICarrierMessagingService"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 202
    if-eqz p1, :cond_1

    #@d
    .line 203
    const/4 v2, 0x1

    #@e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 204
    const/4 v2, 0x0

    #@12
    invoke-virtual {p1, v0, v2}, Landroid/service/carrier/MessagePdu;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 209
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@18
    .line 210
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 211
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 212
    if-eqz p5, :cond_0

    #@20
    invoke-interface {p5}, Landroid/service/carrier/ICarrierMessagingCallback;->asBinder()Landroid/os/IBinder;

    #@23
    move-result-object v1

    #@24
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@27
    .line 213
    iget-object v1, p0, Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@29
    const/4 v2, 0x1

    #@2a
    const/4 v3, 0x0

    #@2b
    const/4 v4, 0x1

    #@2c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 197
    return-void

    #@33
    .line 207
    :cond_1
    const/4 v2, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 215
    :catchall_0
    move-exception v1

    #@39
    .line 216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 215
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 185
    const-string/jumbo v0, "android.service.carrier.ICarrierMessagingService"

    #@3
    return-object v0
.end method

.method public sendDataSms([BILjava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "subId"    # I
    .param p3, "destAddress"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "sendSmsFlag"    # I
    .param p6, "callback"    # Landroid/service/carrier/ICarrierMessagingCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 262
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.carrier.ICarrierMessagingService"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 263
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@e
    .line 264
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 265
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 266
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 267
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 268
    if-eqz p6, :cond_0

    #@1c
    invoke-interface {p6}, Landroid/service/carrier/ICarrierMessagingCallback;->asBinder()Landroid/os/IBinder;

    #@1f
    move-result-object v1

    #@20
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@23
    .line 269
    iget-object v1, p0, Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@25
    const/4 v2, 0x3

    #@26
    const/4 v3, 0x0

    #@27
    const/4 v4, 0x1

    #@28
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 258
    return-void

    #@2f
    .line 271
    :catchall_0
    move-exception v1

    #@30
    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 271
    throw v1
.end method

.method public sendMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/ICarrierMessagingCallback;)V
    .locals 5
    .param p1, "pduUri"    # Landroid/net/Uri;
    .param p2, "subId"    # I
    .param p3, "location"    # Landroid/net/Uri;
    .param p4, "callback"    # Landroid/service/carrier/ICarrierMessagingCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 317
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.carrier.ICarrierMessagingService"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 318
    if-eqz p1, :cond_1

    #@d
    .line 319
    const/4 v2, 0x1

    #@e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 320
    const/4 v2, 0x0

    #@12
    invoke-virtual {p1, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 325
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 326
    if-eqz p3, :cond_2

    #@1a
    .line 327
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 328
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p3, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 333
    :goto_1
    if-eqz p4, :cond_0

    #@24
    invoke-interface {p4}, Landroid/service/carrier/ICarrierMessagingCallback;->asBinder()Landroid/os/IBinder;

    #@27
    move-result-object v1

    #@28
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@2b
    .line 334
    iget-object v1, p0, Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2d
    const/4 v2, 0x5

    #@2e
    const/4 v3, 0x0

    #@2f
    const/4 v4, 0x1

    #@30
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 313
    return-void

    #@37
    .line 323
    :cond_1
    const/4 v2, 0x0

    #@38
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 336
    :catchall_0
    move-exception v1

    #@3d
    .line 337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 336
    throw v1

    #@41
    .line 331
    :cond_2
    const/4 v2, 0x0

    #@42
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    goto :goto_1
.end method

.method public sendMultipartTextSms(Ljava/util/List;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V
    .locals 5
    .param p2, "subId"    # I
    .param p3, "destAddress"    # Ljava/lang/String;
    .param p4, "sendSmsFlag"    # I
    .param p5, "callback"    # Landroid/service/carrier/ICarrierMessagingCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Landroid/service/carrier/ICarrierMessagingCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@1
    .line 288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 290
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.carrier.ICarrierMessagingService"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 291
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@e
    .line 292
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 293
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 294
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 295
    if-eqz p5, :cond_0

    #@19
    invoke-interface {p5}, Landroid/service/carrier/ICarrierMessagingCallback;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v1

    #@1d
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    .line 296
    iget-object v1, p0, Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@22
    const/4 v2, 0x4

    #@23
    const/4 v3, 0x0

    #@24
    const/4 v4, 0x1

    #@25
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 286
    return-void

    #@2c
    .line 298
    :catchall_0
    move-exception v1

    #@2d
    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 298
    throw v1
.end method

.method public sendTextSms(Ljava/lang/String;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "destAddress"    # Ljava/lang/String;
    .param p4, "sendSmsFlag"    # I
    .param p5, "callback"    # Landroid/service/carrier/ICarrierMessagingCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 234
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.service.carrier.ICarrierMessagingService"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 235
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 236
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 237
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 238
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 239
    if-eqz p5, :cond_0

    #@19
    invoke-interface {p5}, Landroid/service/carrier/ICarrierMessagingCallback;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v1

    #@1d
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    .line 240
    iget-object v1, p0, Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@22
    const/4 v2, 0x2

    #@23
    const/4 v3, 0x0

    #@24
    const/4 v4, 0x1

    #@25
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 230
    return-void

    #@2c
    .line 242
    :catchall_0
    move-exception v1

    #@2d
    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 242
    throw v1
.end method
