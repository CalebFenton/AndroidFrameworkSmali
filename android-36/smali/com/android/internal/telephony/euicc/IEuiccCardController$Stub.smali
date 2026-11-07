.class public abstract Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;
.super Landroid/os/Binder;
.source "IEuiccCardController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/IEuiccCardController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/IEuiccCardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_authenticateServer:I = 0x10

.field static final blacklist TRANSACTION_cancelSession:I = 0x13

.field static final blacklist TRANSACTION_deleteProfile:I = 0x7

.field static final blacklist TRANSACTION_disableProfile:I = 0x4

.field static final blacklist TRANSACTION_getAllProfiles:I = 0x1

.field static final blacklist TRANSACTION_getDefaultSmdpAddress:I = 0x9

.field static final blacklist TRANSACTION_getEnabledProfile:I = 0x3

.field static final blacklist TRANSACTION_getEuiccChallenge:I = 0xd

.field static final blacklist TRANSACTION_getEuiccInfo1:I = 0xe

.field static final blacklist TRANSACTION_getEuiccInfo2:I = 0xf

.field static final blacklist TRANSACTION_getProfile:I = 0x2

.field static final blacklist TRANSACTION_getRulesAuthTable:I = 0xc

.field static final blacklist TRANSACTION_getSmdsAddress:I = 0xa

.field static final blacklist TRANSACTION_listNotifications:I = 0x14

.field static final blacklist TRANSACTION_loadBoundProfilePackage:I = 0x12

.field static final blacklist TRANSACTION_prepareDownload:I = 0x11

.field static final blacklist TRANSACTION_removeNotificationFromList:I = 0x17

.field static final blacklist TRANSACTION_resetMemory:I = 0x8

.field static final blacklist TRANSACTION_retrieveNotification:I = 0x16

.field static final blacklist TRANSACTION_retrieveNotificationList:I = 0x15

.field static final blacklist TRANSACTION_setDefaultSmdpAddress:I = 0xb

.field static final blacklist TRANSACTION_setNickname:I = 0x6

.field static final blacklist TRANSACTION_switchToProfile:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 96
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 97
    const-string v0, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IEuiccCardController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 105
    if-nez p0, :cond_4

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 108
    :cond_4
    const-string v0, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 109
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/euicc/IEuiccCardController;

    if-eqz v1, :cond_14

    .line 110
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/euicc/IEuiccCardController;

    return-object v1

    .line 112
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 121
    packed-switch p0, :pswitch_data_52

    .line 217
    const/4 v0, 0x0

    return-object v0

    .line 213
    :pswitch_5
    const-string/jumbo v0, "removeNotificationFromList"

    return-object v0

    .line 209
    :pswitch_9
    const-string/jumbo v0, "retrieveNotification"

    return-object v0

    .line 205
    :pswitch_d
    const-string/jumbo v0, "retrieveNotificationList"

    return-object v0

    .line 201
    :pswitch_11
    const-string v0, "listNotifications"

    return-object v0

    .line 197
    :pswitch_14
    const-string v0, "cancelSession"

    return-object v0

    .line 193
    :pswitch_17
    const-string v0, "loadBoundProfilePackage"

    return-object v0

    .line 189
    :pswitch_1a
    const-string/jumbo v0, "prepareDownload"

    return-object v0

    .line 185
    :pswitch_1e
    const-string v0, "authenticateServer"

    return-object v0

    .line 181
    :pswitch_21
    const-string v0, "getEuiccInfo2"

    return-object v0

    .line 177
    :pswitch_24
    const-string v0, "getEuiccInfo1"

    return-object v0

    .line 173
    :pswitch_27
    const-string v0, "getEuiccChallenge"

    return-object v0

    .line 169
    :pswitch_2a
    const-string v0, "getRulesAuthTable"

    return-object v0

    .line 165
    :pswitch_2d
    const-string/jumbo v0, "setDefaultSmdpAddress"

    return-object v0

    .line 161
    :pswitch_31
    const-string v0, "getSmdsAddress"

    return-object v0

    .line 157
    :pswitch_34
    const-string v0, "getDefaultSmdpAddress"

    return-object v0

    .line 153
    :pswitch_37
    const-string/jumbo v0, "resetMemory"

    return-object v0

    .line 149
    :pswitch_3b
    const-string v0, "deleteProfile"

    return-object v0

    .line 145
    :pswitch_3e
    const-string/jumbo v0, "setNickname"

    return-object v0

    .line 141
    :pswitch_42
    const-string/jumbo v0, "switchToProfile"

    return-object v0

    .line 137
    :pswitch_46
    const-string v0, "disableProfile"

    return-object v0

    .line 133
    :pswitch_49
    const-string v0, "getEnabledProfile"

    return-object v0

    .line 129
    :pswitch_4c
    const-string v0, "getProfile"

    return-object v0

    .line 125
    :pswitch_4f
    const-string v0, "getAllProfiles"

    return-object v0

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_42
        :pswitch_3e
        :pswitch_3b
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 116
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 969
    const/16 v0, 0x16

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 224
    invoke-static {p1}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    const-string v9, "com.android.internal.telephony.euicc.IEuiccCardController"

    .line 229
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt p1, v10, :cond_f

    const v1, 0xffffff

    if-gt p1, v1, :cond_f

    .line 230
    move-object v11, p2

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_10

    .line 229
    :cond_f
    move-object v11, p2

    .line 232
    :goto_10
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_1b

    .line 233
    move-object/from16 v12, p3

    invoke-virtual {v12, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    return v10

    .line 236
    :cond_1b
    move-object/from16 v12, p3

    packed-switch p1, :pswitch_data_2c0

    .line 572
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 559
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 565
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;

    move-result-object v4

    .line 566
    .local v4, "_arg3":Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->removeNotificationFromList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;)V

    .line 568
    goto/16 :goto_2be

    .line 545
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 547
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 549
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 551
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;

    move-result-object v4

    .line 552
    .local v4, "_arg3":Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->retrieveNotification(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;)V

    .line 554
    goto/16 :goto_2be

    .line 531
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 533
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 535
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 537
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;

    move-result-object v4

    .line 538
    .local v4, "_arg3":Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 539
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->retrieveNotificationList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;)V

    .line 540
    goto/16 :goto_2be

    .line 517
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 519
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 521
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 523
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/IListNotificationsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IListNotificationsCallback;

    move-result-object v4

    .line 524
    .local v4, "_arg3":Lcom/android/internal/telephony/euicc/IListNotificationsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->listNotifications(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IListNotificationsCallback;)V

    .line 526
    goto/16 :goto_2be

    .line 501
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Lcom/android/internal/telephony/euicc/IListNotificationsCallback;
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 503
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 505
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 507
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 509
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/euicc/ICancelSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/ICancelSessionCallback;

    move-result-object v5

    .line 510
    .local v5, "_arg4":Lcom/android/internal/telephony/euicc/ICancelSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->cancelSession(Ljava/lang/String;Ljava/lang/String;[BILcom/android/internal/telephony/euicc/ICancelSessionCallback;)V

    .line 512
    goto/16 :goto_2be

    .line 487
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Lcom/android/internal/telephony/euicc/ICancelSessionCallback;
    :pswitch_b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 489
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 491
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 493
    .restart local v3    # "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;

    move-result-object v4

    .line 494
    .local v4, "_arg3":Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->loadBoundProfilePackage(Ljava/lang/String;Ljava/lang/String;[BLcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;)V

    .line 496
    goto/16 :goto_2be

    .line 467
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;
    :pswitch_d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 469
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 471
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 473
    .restart local v3    # "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 475
    .local v4, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 477
    .local v5, "_arg4":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 479
    .local v6, "_arg5":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/euicc/IPrepareDownloadCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IPrepareDownloadCallback;

    move-result-object v7

    .line 480
    .local v7, "_arg6":Lcom/android/internal/telephony/euicc/IPrepareDownloadCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->prepareDownload(Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IPrepareDownloadCallback;)V

    .line 482
    goto/16 :goto_2be

    .line 445
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[B
    .end local v6    # "_arg5":[B
    .end local v7    # "_arg6":Lcom/android/internal/telephony/euicc/IPrepareDownloadCallback;
    :pswitch_fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 447
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 449
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 451
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 453
    .restart local v4    # "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 455
    .restart local v5    # "_arg4":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 457
    .restart local v6    # "_arg5":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 459
    .local v7, "_arg6":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback;

    move-result-object v8

    .line 460
    .local v8, "_arg7":Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->authenticateServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IAuthenticateServerCallback;)V

    .line 462
    goto/16 :goto_2be

    .line 433
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[B
    .end local v6    # "_arg5":[B
    .end local v7    # "_arg6":[B
    .end local v8    # "_arg7":Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback;
    :pswitch_128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 435
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 437
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;

    move-result-object v3

    .line 438
    .local v3, "_arg2":Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 439
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getEuiccInfo2(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;)V

    .line 440
    goto/16 :goto_2be

    .line 421
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;
    :pswitch_140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 423
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 425
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;

    move-result-object v3

    .line 426
    .local v3, "_arg2":Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getEuiccInfo1(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;)V

    .line 428
    goto/16 :goto_2be

    .line 409
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;
    :pswitch_158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 411
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 413
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;

    move-result-object v3

    .line 414
    .local v3, "_arg2":Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getEuiccChallenge(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;)V

    .line 416
    goto/16 :goto_2be

    .line 397
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;
    :pswitch_170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 399
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 401
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;

    move-result-object v3

    .line 402
    .local v3, "_arg2":Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getRulesAuthTable(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;)V

    .line 404
    goto/16 :goto_2be

    .line 383
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;
    :pswitch_188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 385
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 387
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;

    move-result-object v4

    .line 390
    .local v4, "_arg3":Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->setDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;)V

    .line 392
    goto/16 :goto_2be

    .line 371
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;
    :pswitch_1a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 373
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 375
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;

    move-result-object v3

    .line 376
    .local v3, "_arg2":Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getSmdsAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;)V

    .line 378
    goto/16 :goto_2be

    .line 359
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;
    :pswitch_1bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 361
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 363
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;

    move-result-object v3

    .line 364
    .local v3, "_arg2":Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;)V

    .line 366
    goto/16 :goto_2be

    .line 345
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;
    :pswitch_1d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 347
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 349
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 351
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/IResetMemoryCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IResetMemoryCallback;

    move-result-object v4

    .line 352
    .local v4, "_arg3":Lcom/android/internal/telephony/euicc/IResetMemoryCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->resetMemory(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IResetMemoryCallback;)V

    .line 354
    goto/16 :goto_2be

    .line 331
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Lcom/android/internal/telephony/euicc/IResetMemoryCallback;
    :pswitch_1f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 333
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 335
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/IDeleteProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;

    move-result-object v4

    .line 338
    .local v4, "_arg3":Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->deleteProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;)V

    .line 340
    goto/16 :goto_2be

    .line 315
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;
    :pswitch_20c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 317
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 319
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 321
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/euicc/ISetNicknameCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/ISetNicknameCallback;

    move-result-object v5

    .line 324
    .local v5, "_arg4":Lcom/android/internal/telephony/euicc/ISetNicknameCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->setNickname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetNicknameCallback;)V

    .line 326
    goto/16 :goto_2be

    .line 297
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Lcom/android/internal/telephony/euicc/ISetNicknameCallback;
    :pswitch_22d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 299
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 301
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 303
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 305
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 307
    .local v5, "_arg4":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;

    move-result-object v6

    .line 308
    .local v6, "_arg5":Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->switchToProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/ISwitchToProfileCallback;)V

    .line 310
    goto :goto_2be

    .line 281
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;
    :pswitch_251
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 283
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 285
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 287
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 289
    .local v4, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/IDisableProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IDisableProfileCallback;

    move-result-object v5

    .line 290
    .local v5, "_arg4":Lcom/android/internal/telephony/euicc/IDisableProfileCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->disableProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/IDisableProfileCallback;)V

    .line 292
    goto :goto_2be

    .line 267
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Lcom/android/internal/telephony/euicc/IDisableProfileCallback;
    :pswitch_271
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 269
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 271
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 273
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/IGetProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetProfileCallback;

    move-result-object v4

    .line 274
    .local v4, "_arg3":Lcom/android/internal/telephony/euicc/IGetProfileCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getEnabledProfile(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IGetProfileCallback;)V

    .line 276
    goto :goto_2be

    .line 253
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Lcom/android/internal/telephony/euicc/IGetProfileCallback;
    :pswitch_28c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 255
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 257
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/IGetProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetProfileCallback;

    move-result-object v4

    .line 260
    .restart local v4    # "_arg3":Lcom/android/internal/telephony/euicc/IGetProfileCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetProfileCallback;)V

    .line 262
    goto :goto_2be

    .line 241
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Lcom/android/internal/telephony/euicc/IGetProfileCallback;
    :pswitch_2a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 243
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 245
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;

    move-result-object v3

    .line 246
    .local v3, "_arg2":Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getAllProfiles(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;)V

    .line 248
    nop

    .line 575
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;
    :goto_2be
    return v10

    nop

    :pswitch_data_2c0
    .packed-switch 0x1
        :pswitch_2a7
        :pswitch_28c
        :pswitch_271
        :pswitch_251
        :pswitch_22d
        :pswitch_20c
        :pswitch_1f0
        :pswitch_1d4
        :pswitch_1bc
        :pswitch_1a4
        :pswitch_188
        :pswitch_170
        :pswitch_158
        :pswitch_140
        :pswitch_128
        :pswitch_fb
        :pswitch_d2
        :pswitch_b6
        :pswitch_95
        :pswitch_79
        :pswitch_5d
        :pswitch_41
        :pswitch_25
    .end packed-switch
.end method
