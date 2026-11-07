.class public abstract Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;
.super Landroid/os/Binder;
.source "IMbmsDownloadService.java"

# interfaces
.implements Landroid/telephony/mbms/vendor/IMbmsDownloadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/IMbmsDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.telephony.mbms.vendor.IMbmsDownloadService"

.field static final greylist-max-o TRANSACTION_addProgressListener:I = 0x8

.field static final blacklist TRANSACTION_addServiceAnnouncement:I = 0x4

.field static final greylist-max-o TRANSACTION_addStatusListener:I = 0x6

.field static final greylist-max-o TRANSACTION_cancelDownload:I = 0xb

.field static final greylist-max-o TRANSACTION_dispose:I = 0xe

.field static final greylist-max-o TRANSACTION_download:I = 0x5

.field static final greylist-max-o TRANSACTION_initialize:I = 0x1

.field static final greylist-max-o TRANSACTION_listPendingDownloads:I = 0xa

.field static final greylist-max-o TRANSACTION_removeProgressListener:I = 0x9

.field static final greylist-max-o TRANSACTION_removeStatusListener:I = 0x7

.field static final greylist-max-o TRANSACTION_requestDownloadState:I = 0xc

.field static final greylist-max-o TRANSACTION_requestUpdateFileServices:I = 0x2

.field static final greylist-max-o TRANSACTION_resetDownloadKnowledge:I = 0xd

.field static final greylist-max-o TRANSACTION_setTempFileRootDirectory:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 83
    const-string v0, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 91
    if-nez p0, :cond_4

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_4
    const-string v0, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 95
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-eqz v1, :cond_14

    .line 96
    move-object v1, v0

    check-cast v1, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    return-object v1

    .line 98
    :cond_14
    new-instance v1, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 107
    packed-switch p0, :pswitch_data_36

    .line 167
    const/4 v0, 0x0

    return-object v0

    .line 163
    :pswitch_5
    const-string v0, "dispose"

    return-object v0

    .line 159
    :pswitch_8
    const-string/jumbo v0, "resetDownloadKnowledge"

    return-object v0

    .line 155
    :pswitch_c
    const-string/jumbo v0, "requestDownloadState"

    return-object v0

    .line 151
    :pswitch_10
    const-string v0, "cancelDownload"

    return-object v0

    .line 147
    :pswitch_13
    const-string v0, "listPendingDownloads"

    return-object v0

    .line 143
    :pswitch_16
    const-string/jumbo v0, "removeProgressListener"

    return-object v0

    .line 139
    :pswitch_1a
    const-string v0, "addProgressListener"

    return-object v0

    .line 135
    :pswitch_1d
    const-string/jumbo v0, "removeStatusListener"

    return-object v0

    .line 131
    :pswitch_21
    const-string v0, "addStatusListener"

    return-object v0

    .line 127
    :pswitch_24
    const-string v0, "download"

    return-object v0

    .line 123
    :pswitch_27
    const-string v0, "addServiceAnnouncement"

    return-object v0

    .line 119
    :pswitch_2a
    const-string/jumbo v0, "setTempFileRootDirectory"

    return-object v0

    .line 115
    :pswitch_2e
    const-string/jumbo v0, "requestUpdateFileServices"

    return-object v0

    .line 111
    :pswitch_32
    const-string v0, "initialize"

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1d
        :pswitch_1a
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 102
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 645
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 174
    invoke-static {p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    const-string v0, "android.telephony.mbms.vendor.IMbmsDownloadService"

    .line 179
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 180
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 183
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    return v1

    .line 186
    :cond_16
    packed-switch p1, :pswitch_data_17c

    .line 347
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 339
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 340
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {p0, v2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->dispose(I)V

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    goto/16 :goto_17a

    .line 329
    .end local v2    # "_arg0":I
    :pswitch_2d
    sget-object v2, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/DownloadRequest;

    .line 330
    .local v2, "_arg0":Landroid/telephony/mbms/DownloadRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {p0, v2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v3

    .line 332
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    goto/16 :goto_17a

    .line 317
    .end local v2    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    .end local v3    # "_result":I
    :pswitch_44
    sget-object v2, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/DownloadRequest;

    .line 319
    .restart local v2    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    sget-object v3, Landroid/telephony/mbms/FileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/mbms/FileInfo;

    .line 320
    .local v3, "_arg1":Landroid/telephony/mbms/FileInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->requestDownloadState(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)I

    move-result v4

    .line 322
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    goto/16 :goto_17a

    .line 307
    .end local v2    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    .end local v3    # "_arg1":Landroid/telephony/mbms/FileInfo;
    .end local v4    # "_result":I
    :pswitch_63
    sget-object v2, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/DownloadRequest;

    .line 308
    .restart local v2    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {p0, v2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->cancelDownload(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v3

    .line 310
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    goto/16 :goto_17a

    .line 297
    .end local v2    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    .end local v3    # "_result":I
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 298
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {p0, v2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->listPendingDownloads(I)Ljava/util/List;

    move-result-object v3

    .line 300
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/mbms/DownloadRequest;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 302
    goto/16 :goto_17a

    .line 285
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/mbms/DownloadRequest;>;"
    :pswitch_8d
    sget-object v2, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/DownloadRequest;

    .line 287
    .local v2, "_arg0":Landroid/telephony/mbms/DownloadRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/mbms/IDownloadProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IDownloadProgressListener;

    move-result-object v3

    .line 288
    .local v3, "_arg1":Landroid/telephony/mbms/IDownloadProgressListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {p0, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->removeProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)I

    move-result v4

    .line 290
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    goto/16 :goto_17a

    .line 273
    .end local v2    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    .end local v3    # "_arg1":Landroid/telephony/mbms/IDownloadProgressListener;
    .end local v4    # "_result":I
    :pswitch_ac
    sget-object v2, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/DownloadRequest;

    .line 275
    .restart local v2    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/mbms/IDownloadProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IDownloadProgressListener;

    move-result-object v3

    .line 276
    .restart local v3    # "_arg1":Landroid/telephony/mbms/IDownloadProgressListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {p0, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->addProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)I

    move-result v4

    .line 278
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    goto/16 :goto_17a

    .line 261
    .end local v2    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    .end local v3    # "_arg1":Landroid/telephony/mbms/IDownloadProgressListener;
    .end local v4    # "_result":I
    :pswitch_cb
    sget-object v2, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/DownloadRequest;

    .line 263
    .restart local v2    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/mbms/IDownloadStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IDownloadStatusListener;

    move-result-object v3

    .line 264
    .local v3, "_arg1":Landroid/telephony/mbms/IDownloadStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {p0, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->removeStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)I

    move-result v4

    .line 266
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    goto/16 :goto_17a

    .line 249
    .end local v2    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    .end local v3    # "_arg1":Landroid/telephony/mbms/IDownloadStatusListener;
    .end local v4    # "_result":I
    :pswitch_ea
    sget-object v2, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/DownloadRequest;

    .line 251
    .restart local v2    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/mbms/IDownloadStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IDownloadStatusListener;

    move-result-object v3

    .line 252
    .restart local v3    # "_arg1":Landroid/telephony/mbms/IDownloadStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->addStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)I

    move-result v4

    .line 254
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    goto :goto_17a

    .line 239
    .end local v2    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    .end local v3    # "_arg1":Landroid/telephony/mbms/IDownloadStatusListener;
    .end local v4    # "_result":I
    :pswitch_108
    sget-object v2, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/DownloadRequest;

    .line 240
    .restart local v2    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->download(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v3

    .line 242
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    goto :goto_17a

    .line 227
    .end local v2    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    .end local v3    # "_result":I
    :pswitch_11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 229
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 230
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->addServiceAnnouncement(I[B)I

    move-result v4

    .line 232
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    goto :goto_17a

    .line 215
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":I
    :pswitch_134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 217
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->setTempFileRootDirectory(ILjava/lang/String;)I

    move-result v4

    .line 220
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    goto :goto_17a

    .line 203
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_14a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 205
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 206
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->requestUpdateFileServices(ILjava/util/List;)I

    move-result v4

    .line 208
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    goto :goto_17a

    .line 191
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":I
    :pswitch_160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 193
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    move-result-object v3

    .line 194
    .local v3, "_arg1":Landroid/telephony/mbms/IMbmsDownloadSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->initialize(ILandroid/telephony/mbms/IMbmsDownloadSessionCallback;)I

    move-result v4

    .line 196
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    nop

    .line 350
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/mbms/IMbmsDownloadSessionCallback;
    .end local v4    # "_result":I
    :goto_17a
    return v1

    nop

    :pswitch_data_17c
    .packed-switch 0x1
        :pswitch_160
        :pswitch_14a
        :pswitch_134
        :pswitch_11e
        :pswitch_108
        :pswitch_ea
        :pswitch_cb
        :pswitch_ac
        :pswitch_8d
        :pswitch_7a
        :pswitch_63
        :pswitch_44
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
