.class public abstract Landroid/service/euicc/IEuiccService$Stub;
.super Landroid/os/Binder;
.source "IEuiccService.java"

# interfaces
.implements Landroid/service/euicc/IEuiccService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/euicc/IEuiccService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/IEuiccService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.euicc.IEuiccService"

.field static final greylist-max-o TRANSACTION_deleteSubscription:I = 0x9

.field static final greylist-max-o TRANSACTION_downloadSubscription:I = 0x1

.field static final blacklist TRANSACTION_dump:I = 0xf

.field static final greylist-max-o TRANSACTION_eraseSubscriptions:I = 0xc

.field static final blacklist TRANSACTION_eraseSubscriptionsWithOptions:I = 0xd

.field static final blacklist TRANSACTION_getAvailableMemoryInBytes:I = 0x10

.field static final greylist-max-o TRANSACTION_getDefaultDownloadableSubscriptionList:I = 0x7

.field static final greylist-max-o TRANSACTION_getDownloadableSubscriptionMetadata:I = 0x2

.field static final greylist-max-o TRANSACTION_getEid:I = 0x3

.field static final greylist-max-o TRANSACTION_getEuiccInfo:I = 0x8

.field static final greylist-max-o TRANSACTION_getEuiccProfileInfoList:I = 0x6

.field static final greylist-max-o TRANSACTION_getOtaStatus:I = 0x4

.field static final greylist-max-o TRANSACTION_retainSubscriptionsForFactoryReset:I = 0xe

.field static final greylist-max-o TRANSACTION_startOtaIfNecessary:I = 0x5

.field static final greylist-max-o TRANSACTION_switchToSubscription:I = 0xa

.field static final greylist-max-o TRANSACTION_updateSubscriptionNickname:I = 0xb


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 76
    const-string v0, "android.service.euicc.IEuiccService"

    invoke-virtual {p0, p0, v0}, Landroid/service/euicc/IEuiccService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IEuiccService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 84
    if-nez p0, :cond_4

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_4
    const-string v0, "android.service.euicc.IEuiccService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 88
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/euicc/IEuiccService;

    if-eqz v1, :cond_14

    .line 89
    move-object v1, v0

    check-cast v1, Landroid/service/euicc/IEuiccService;

    return-object v1

    .line 91
    :cond_14
    new-instance v1, Landroid/service/euicc/IEuiccService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/euicc/IEuiccService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 100
    packed-switch p0, :pswitch_data_3a

    .line 168
    const/4 v0, 0x0

    return-object v0

    .line 164
    :pswitch_5
    const-string v0, "getAvailableMemoryInBytes"

    return-object v0

    .line 160
    :pswitch_8
    const-string v0, "dump"

    return-object v0

    .line 156
    :pswitch_b
    const-string/jumbo v0, "retainSubscriptionsForFactoryReset"

    return-object v0

    .line 152
    :pswitch_f
    const-string v0, "eraseSubscriptionsWithOptions"

    return-object v0

    .line 148
    :pswitch_12
    const-string v0, "eraseSubscriptions"

    return-object v0

    .line 144
    :pswitch_15
    const-string/jumbo v0, "updateSubscriptionNickname"

    return-object v0

    .line 140
    :pswitch_19
    const-string/jumbo v0, "switchToSubscription"

    return-object v0

    .line 136
    :pswitch_1d
    const-string v0, "deleteSubscription"

    return-object v0

    .line 132
    :pswitch_20
    const-string v0, "getEuiccInfo"

    return-object v0

    .line 128
    :pswitch_23
    const-string v0, "getDefaultDownloadableSubscriptionList"

    return-object v0

    .line 124
    :pswitch_26
    const-string v0, "getEuiccProfileInfoList"

    return-object v0

    .line 120
    :pswitch_29
    const-string/jumbo v0, "startOtaIfNecessary"

    return-object v0

    .line 116
    :pswitch_2d
    const-string v0, "getOtaStatus"

    return-object v0

    .line 112
    :pswitch_30
    const-string v0, "getEid"

    return-object v0

    .line 108
    :pswitch_33
    const-string v0, "getDownloadableSubscriptionMetadata"

    return-object v0

    .line 104
    :pswitch_36
    const-string v0, "downloadSubscription"

    return-object v0

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 95
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 652
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 175
    invoke-static {p1}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    const-string v8, "android.service.euicc.IEuiccService"

    .line 180
    .local v8, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt p1, v9, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 181
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_17

    .line 184
    move-object v10, p3

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    return v9

    .line 187
    :cond_17
    move-object v10, p3

    packed-switch p1, :pswitch_data_1b2

    .line 385
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 376
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 378
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/euicc/IGetAvailableMemoryInBytesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetAvailableMemoryInBytesCallback;

    move-result-object v2

    .line 379
    .local v2, "_arg1":Landroid/service/euicc/IGetAvailableMemoryInBytesCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, v1, v2}, Landroid/service/euicc/IEuiccService$Stub;->getAvailableMemoryInBytes(ILandroid/service/euicc/IGetAvailableMemoryInBytesCallback;)V

    .line 381
    goto/16 :goto_1b1

    .line 368
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/service/euicc/IGetAvailableMemoryInBytesCallback;
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/euicc/IEuiccServiceDumpResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IEuiccServiceDumpResultCallback;

    move-result-object v1

    .line 369
    .local v1, "_arg0":Landroid/service/euicc/IEuiccServiceDumpResultCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {p0, v1}, Landroid/service/euicc/IEuiccService$Stub;->dump(Landroid/service/euicc/IEuiccServiceDumpResultCallback;)V

    .line 371
    goto/16 :goto_1b1

    .line 358
    .end local v1    # "_arg0":Landroid/service/euicc/IEuiccServiceDumpResultCallback;
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 360
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;

    move-result-object v2

    .line 361
    .local v2, "_arg1":Landroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 362
    invoke-virtual {p0, v1, v2}, Landroid/service/euicc/IEuiccService$Stub;->retainSubscriptionsForFactoryReset(ILandroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;)V

    .line 363
    goto/16 :goto_1b1

    .line 346
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 348
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 350
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/euicc/IEraseSubscriptionsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IEraseSubscriptionsCallback;

    move-result-object v3

    .line 351
    .local v3, "_arg2":Landroid/service/euicc/IEraseSubscriptionsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, v1, v2, v3}, Landroid/service/euicc/IEuiccService$Stub;->eraseSubscriptionsWithOptions(IILandroid/service/euicc/IEraseSubscriptionsCallback;)V

    .line 353
    goto/16 :goto_1b1

    .line 336
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/service/euicc/IEraseSubscriptionsCallback;
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 338
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/euicc/IEraseSubscriptionsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IEraseSubscriptionsCallback;

    move-result-object v2

    .line 339
    .local v2, "_arg1":Landroid/service/euicc/IEraseSubscriptionsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 340
    invoke-virtual {p0, v1, v2}, Landroid/service/euicc/IEuiccService$Stub;->eraseSubscriptions(ILandroid/service/euicc/IEraseSubscriptionsCallback;)V

    .line 341
    goto/16 :goto_1b1

    .line 322
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/service/euicc/IEraseSubscriptionsCallback;
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 324
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/euicc/IUpdateSubscriptionNicknameCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;

    move-result-object v4

    .line 329
    .local v4, "_arg3":Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 330
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/service/euicc/IEuiccService$Stub;->updateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;)V

    .line 331
    goto/16 :goto_1b1

    .line 304
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 306
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 308
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 310
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 312
    .local v4, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/service/euicc/ISwitchToSubscriptionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/ISwitchToSubscriptionCallback;

    move-result-object v5

    .line 314
    .local v5, "_arg4":Landroid/service/euicc/ISwitchToSubscriptionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 315
    .local v6, "_arg5":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/service/euicc/IEuiccService$Stub;->switchToSubscription(IILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;Z)V

    .line 317
    goto/16 :goto_1b1

    .line 292
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Landroid/service/euicc/ISwitchToSubscriptionCallback;
    .end local v6    # "_arg5":Z
    :pswitch_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 294
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/euicc/IDeleteSubscriptionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IDeleteSubscriptionCallback;

    move-result-object v3

    .line 297
    .local v3, "_arg2":Landroid/service/euicc/IDeleteSubscriptionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {p0, v1, v2, v3}, Landroid/service/euicc/IEuiccService$Stub;->deleteSubscription(ILjava/lang/String;Landroid/service/euicc/IDeleteSubscriptionCallback;)V

    .line 299
    goto/16 :goto_1b1

    .line 282
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/service/euicc/IDeleteSubscriptionCallback;
    :pswitch_dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 284
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/euicc/IGetEuiccInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetEuiccInfoCallback;

    move-result-object v2

    .line 285
    .local v2, "_arg1":Landroid/service/euicc/IGetEuiccInfoCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v1, v2}, Landroid/service/euicc/IEuiccService$Stub;->getEuiccInfo(ILandroid/service/euicc/IGetEuiccInfoCallback;)V

    .line 287
    goto/16 :goto_1b1

    .line 270
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/service/euicc/IGetEuiccInfoCallback;
    :pswitch_f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 272
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 274
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;

    move-result-object v3

    .line 275
    .local v3, "_arg2":Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v1, v2, v3}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultDownloadableSubscriptionList(IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V

    .line 277
    goto/16 :goto_1b1

    .line 260
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;
    :pswitch_109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 262
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/euicc/IGetEuiccProfileInfoListCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetEuiccProfileInfoListCallback;

    move-result-object v2

    .line 263
    .local v2, "_arg1":Landroid/service/euicc/IGetEuiccProfileInfoListCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v1, v2}, Landroid/service/euicc/IEuiccService$Stub;->getEuiccProfileInfoList(ILandroid/service/euicc/IGetEuiccProfileInfoListCallback;)V

    .line 265
    goto/16 :goto_1b1

    .line 250
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/service/euicc/IGetEuiccProfileInfoListCallback;
    :pswitch_11d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 252
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/euicc/IOtaStatusChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IOtaStatusChangedCallback;

    move-result-object v2

    .line 253
    .local v2, "_arg1":Landroid/service/euicc/IOtaStatusChangedCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v1, v2}, Landroid/service/euicc/IEuiccService$Stub;->startOtaIfNecessary(ILandroid/service/euicc/IOtaStatusChangedCallback;)V

    .line 255
    goto/16 :goto_1b1

    .line 240
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/service/euicc/IOtaStatusChangedCallback;
    :pswitch_131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 242
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/euicc/IGetOtaStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetOtaStatusCallback;

    move-result-object v2

    .line 243
    .local v2, "_arg1":Landroid/service/euicc/IGetOtaStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v1, v2}, Landroid/service/euicc/IEuiccService$Stub;->getOtaStatus(ILandroid/service/euicc/IGetOtaStatusCallback;)V

    .line 245
    goto :goto_1b1

    .line 230
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/service/euicc/IGetOtaStatusCallback;
    :pswitch_144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 232
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/euicc/IGetEidCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetEidCallback;

    move-result-object v2

    .line 233
    .local v2, "_arg1":Landroid/service/euicc/IGetEidCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v1, v2}, Landroid/service/euicc/IEuiccService$Stub;->getEid(ILandroid/service/euicc/IGetEidCallback;)V

    .line 235
    goto :goto_1b1

    .line 212
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/service/euicc/IGetEidCallback;
    :pswitch_157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 214
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 216
    .local v2, "_arg1":I
    sget-object v3, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/euicc/DownloadableSubscription;

    .line 218
    .local v3, "_arg2":Landroid/telephony/euicc/DownloadableSubscription;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 220
    .restart local v4    # "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 222
    .local v5, "_arg4":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;

    move-result-object v6

    .line 223
    .local v6, "_arg5":Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/service/euicc/IEuiccService$Stub;->getDownloadableSubscriptionMetadata(IILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V

    .line 225
    goto :goto_1b1

    .line 192
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/telephony/euicc/DownloadableSubscription;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;
    :pswitch_17f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 194
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 196
    .restart local v2    # "_arg1":I
    sget-object v0, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/euicc/DownloadableSubscription;

    .line 198
    .restart local v3    # "_arg2":Landroid/telephony/euicc/DownloadableSubscription;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 200
    .restart local v4    # "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 202
    .restart local v5    # "_arg4":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/Bundle;

    .line 204
    .local v6, "_arg5":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/euicc/IDownloadSubscriptionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IDownloadSubscriptionCallback;

    move-result-object v7

    .line 205
    .local v7, "_arg6":Landroid/service/euicc/IDownloadSubscriptionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/service/euicc/IEuiccService$Stub;->downloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;Landroid/service/euicc/IDownloadSubscriptionCallback;)V

    .line 207
    nop

    .line 388
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/telephony/euicc/DownloadableSubscription;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Landroid/os/Bundle;
    .end local v7    # "_arg6":Landroid/service/euicc/IDownloadSubscriptionCallback;
    :goto_1b1
    return v9

    :pswitch_data_1b2
    .packed-switch 0x1
        :pswitch_17f
        :pswitch_157
        :pswitch_144
        :pswitch_131
        :pswitch_11d
        :pswitch_109
        :pswitch_f1
        :pswitch_dd
        :pswitch_c5
        :pswitch_a0
        :pswitch_84
        :pswitch_70
        :pswitch_58
        :pswitch_44
        :pswitch_34
        :pswitch_20
    .end packed-switch
.end method
