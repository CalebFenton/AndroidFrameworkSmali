.class public abstract Landroid/content/pm/IShortcutService$Stub;
.super Landroid/os/Binder;
.source "IShortcutService.java"

# interfaces
.implements Landroid/content/pm/IShortcutService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IShortcutService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IShortcutService"

.field static final greylist-max-o TRANSACTION_addDynamicShortcuts:I = 0x2

.field static final greylist-max-o TRANSACTION_applyRestore:I = 0x12

.field static final greylist-max-o TRANSACTION_createShortcutResultIntent:I = 0x7

.field static final greylist-max-o TRANSACTION_disableShortcuts:I = 0x8

.field static final greylist-max-o TRANSACTION_enableShortcuts:I = 0x9

.field static final greylist-max-o TRANSACTION_getBackupPayload:I = 0x11

.field static final greylist-max-o TRANSACTION_getIconMaxDimensions:I = 0xd

.field static final greylist-max-o TRANSACTION_getMaxShortcutCountPerActivity:I = 0xa

.field static final greylist-max-o TRANSACTION_getRateLimitResetTime:I = 0xc

.field static final greylist-max-o TRANSACTION_getRemainingCallCount:I = 0xb

.field static final blacklist TRANSACTION_getShareTargets:I = 0x14

.field static final blacklist TRANSACTION_getShortcuts:I = 0x17

.field static final blacklist TRANSACTION_hasShareTargets:I = 0x15

.field static final greylist-max-o TRANSACTION_isRequestPinItemSupported:I = 0x13

.field static final greylist-max-o TRANSACTION_onApplicationActive:I = 0x10

.field static final blacklist TRANSACTION_pushDynamicShortcut:I = 0x18

.field static final greylist-max-o TRANSACTION_removeAllDynamicShortcuts:I = 0x4

.field static final greylist-max-o TRANSACTION_removeDynamicShortcuts:I = 0x3

.field static final blacklist TRANSACTION_removeLongLivedShortcuts:I = 0x16

.field static final greylist-max-o TRANSACTION_reportShortcutUsed:I = 0xe

.field static final greylist-max-o TRANSACTION_requestPinShortcut:I = 0x6

.field static final greylist-max-o TRANSACTION_resetThrottling:I = 0xf

.field static final greylist-max-o TRANSACTION_setDynamicShortcuts:I = 0x1

.field static final greylist-max-o TRANSACTION_updateShortcuts:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 116
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 117
    const-string v0, "android.content.pm.IShortcutService"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IShortcutService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 125
    if-nez p0, :cond_4

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 128
    :cond_4
    const-string v0, "android.content.pm.IShortcutService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 129
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IShortcutService;

    if-eqz v1, :cond_14

    .line 130
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IShortcutService;

    return-object v1

    .line 132
    :cond_14
    new-instance v1, Landroid/content/pm/IShortcutService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IShortcutService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 141
    packed-switch p0, :pswitch_data_5a

    .line 241
    const/4 v0, 0x0

    return-object v0

    .line 237
    :pswitch_5
    const-string/jumbo v0, "pushDynamicShortcut"

    return-object v0

    .line 233
    :pswitch_9
    const-string/jumbo v0, "getShortcuts"

    return-object v0

    .line 229
    :pswitch_d
    const-string/jumbo v0, "removeLongLivedShortcuts"

    return-object v0

    .line 225
    :pswitch_11
    const-string/jumbo v0, "hasShareTargets"

    return-object v0

    .line 221
    :pswitch_15
    const-string v0, "getShareTargets"

    return-object v0

    .line 217
    :pswitch_18
    const-string/jumbo v0, "isRequestPinItemSupported"

    return-object v0

    .line 213
    :pswitch_1c
    const-string v0, "applyRestore"

    return-object v0

    .line 209
    :pswitch_1f
    const-string v0, "getBackupPayload"

    return-object v0

    .line 205
    :pswitch_22
    const-string/jumbo v0, "onApplicationActive"

    return-object v0

    .line 201
    :pswitch_26
    const-string/jumbo v0, "resetThrottling"

    return-object v0

    .line 197
    :pswitch_2a
    const-string/jumbo v0, "reportShortcutUsed"

    return-object v0

    .line 193
    :pswitch_2e
    const-string v0, "getIconMaxDimensions"

    return-object v0

    .line 189
    :pswitch_31
    const-string v0, "getRateLimitResetTime"

    return-object v0

    .line 185
    :pswitch_34
    const-string v0, "getRemainingCallCount"

    return-object v0

    .line 181
    :pswitch_37
    const-string v0, "getMaxShortcutCountPerActivity"

    return-object v0

    .line 177
    :pswitch_3a
    const-string v0, "enableShortcuts"

    return-object v0

    .line 173
    :pswitch_3d
    const-string v0, "disableShortcuts"

    return-object v0

    .line 169
    :pswitch_40
    const-string v0, "createShortcutResultIntent"

    return-object v0

    .line 165
    :pswitch_43
    const-string/jumbo v0, "requestPinShortcut"

    return-object v0

    .line 161
    :pswitch_47
    const-string/jumbo v0, "updateShortcuts"

    return-object v0

    .line 157
    :pswitch_4b
    const-string/jumbo v0, "removeAllDynamicShortcuts"

    return-object v0

    .line 153
    :pswitch_4f
    const-string/jumbo v0, "removeDynamicShortcuts"

    return-object v0

    .line 149
    :pswitch_53
    const-string v0, "addDynamicShortcuts"

    return-object v0

    .line 145
    :pswitch_56
    const-string/jumbo v0, "setDynamicShortcuts"

    return-object v0

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_56
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_18
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 136
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1064
    const/16 v0, 0x17

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 248
    invoke-static {p1}, Landroid/content/pm/IShortcutService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 252
    const-string v0, "android.content.pm.IShortcutService"

    .line 253
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 254
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 257
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    return v1

    .line 260
    :cond_16
    packed-switch p1, :pswitch_data_28a

    .line 568
    move-object v5, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 556
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 560
    .local v3, "_arg1":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 561
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 562
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/IShortcutService$Stub;->pushDynamicShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)V

    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    move-object v5, p0

    goto/16 :goto_289

    .line 542
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/content/pm/ShortcutInfo;
    .end local v4    # "_arg2":I
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 544
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 546
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 547
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/IShortcutService$Stub;->getShortcuts(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    .line 549
    .local v5, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 551
    move-object v5, p0

    goto/16 :goto_289

    .line 529
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 531
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 533
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 534
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 535
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/IShortcutService$Stub;->removeLongLivedShortcuts(Ljava/lang/String;Ljava/util/List;I)V

    .line 536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    move-object v5, p0

    goto/16 :goto_289

    .line 515
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":I
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 517
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 519
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 520
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/IShortcutService$Stub;->hasShareTargets(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 522
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 524
    move-object v5, p0

    goto/16 :goto_289

    .line 501
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 503
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    .line 505
    .local v3, "_arg1":Landroid/content/IntentFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 506
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 507
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/IShortcutService$Stub;->getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    .line 508
    .local v5, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 510
    move-object v5, p0

    goto/16 :goto_289

    .line 489
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/content/IntentFilter;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 491
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 492
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 493
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/IShortcutService$Stub;->isRequestPinItemSupported(II)Z

    move-result v4

    .line 494
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 496
    move-object v5, p0

    goto/16 :goto_289

    .line 478
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 480
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 481
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/IShortcutService$Stub;->applyRestore([BI)V

    .line 483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    move-object v5, p0

    goto/16 :goto_289

    .line 468
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":I
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 469
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {p0, v2}, Landroid/content/pm/IShortcutService$Stub;->getBackupPayload(I)[B

    move-result-object v3

    .line 471
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 473
    move-object v5, p0

    goto/16 :goto_289

    .line 458
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[B
    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 461
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/IShortcutService$Stub;->onApplicationActive(Ljava/lang/String;I)V

    .line 463
    move-object v5, p0

    goto/16 :goto_289

    .line 451
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_fc
    invoke-virtual {p0}, Landroid/content/pm/IShortcutService$Stub;->resetThrottling()V

    .line 452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    move-object v5, p0

    goto/16 :goto_289

    .line 439
    :pswitch_105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 441
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 443
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 444
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/IShortcutService$Stub;->reportShortcutUsed(Ljava/lang/String;Ljava/lang/String;I)V

    .line 446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    move-object v5, p0

    goto/16 :goto_289

    .line 427
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_11d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 429
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 430
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/IShortcutService$Stub;->getIconMaxDimensions(Ljava/lang/String;I)I

    move-result v4

    .line 432
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    move-object v5, p0

    goto/16 :goto_289

    .line 415
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 417
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 418
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/IShortcutService$Stub;->getRateLimitResetTime(Ljava/lang/String;I)J

    move-result-wide v4

    .line 420
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 422
    move-object v5, p0

    goto/16 :goto_289

    .line 403
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":J
    :pswitch_14d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 405
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 406
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/IShortcutService$Stub;->getRemainingCallCount(Ljava/lang/String;I)I

    move-result v4

    .line 408
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    move-object v5, p0

    goto/16 :goto_289

    .line 391
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 393
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 394
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/IShortcutService$Stub;->getMaxShortcutCountPerActivity(Ljava/lang/String;I)I

    move-result v4

    .line 396
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    move-object v5, p0

    goto/16 :goto_289

    .line 378
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_17d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 380
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 382
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 383
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/IShortcutService$Stub;->enableShortcuts(Ljava/lang/String;Ljava/util/List;I)V

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    move-object v5, p0

    goto/16 :goto_289

    .line 361
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":I
    :pswitch_195
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 363
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 365
    .local v7, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/CharSequence;

    .line 367
    .local v8, "_arg2":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 369
    .local v9, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 370
    .local v10, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/content/pm/IShortcutService$Stub;->disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V

    .line 372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    goto/16 :goto_289

    .line 347
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "_arg2":Ljava/lang/CharSequence;
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    :pswitch_1ba
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 349
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 351
    .local v3, "_arg1":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 352
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/IShortcutService$Stub;->createShortcutResultIntent(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Landroid/content/Intent;

    move-result-object v6

    .line 354
    .local v6, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 356
    goto/16 :goto_289

    .line 331
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/content/pm/ShortcutInfo;
    .end local v4    # "_arg2":I
    .end local v6    # "_result":Landroid/content/Intent;
    :pswitch_1da
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 333
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 335
    .restart local v3    # "_arg1":Landroid/content/pm/ShortcutInfo;
    sget-object v4, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentSender;

    .line 337
    .local v4, "_arg2":Landroid/content/IntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 338
    .local v6, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {p0, v2, v3, v4, v6}, Landroid/content/pm/IShortcutService$Stub;->requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Z

    move-result v7

    .line 340
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 342
    goto/16 :goto_289

    .line 317
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/content/pm/ShortcutInfo;
    .end local v4    # "_arg2":Landroid/content/IntentSender;
    .end local v6    # "_arg3":I
    .end local v7    # "_result":Z
    :pswitch_202
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 319
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    .line 321
    .local v3, "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 322
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/IShortcutService$Stub;->updateShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    move-result v6

    .line 324
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 326
    goto :goto_289

    .line 306
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v4    # "_arg2":I
    .end local v6    # "_result":Z
    :pswitch_221
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 308
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 309
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/IShortcutService$Stub;->removeAllDynamicShortcuts(Ljava/lang/String;I)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    goto :goto_289

    .line 293
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_234
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 295
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 297
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 298
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/IShortcutService$Stub;->removeDynamicShortcuts(Ljava/lang/String;Ljava/util/List;I)V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    goto :goto_289

    .line 279
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":I
    :pswitch_24b
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    .line 283
    .local v3, "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 284
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/IShortcutService$Stub;->addDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    move-result v6

    .line 286
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 288
    goto :goto_289

    .line 265
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v4    # "_arg2":I
    .end local v6    # "_result":Z
    :pswitch_26a
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 267
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    .line 269
    .restart local v3    # "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 270
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/IShortcutService$Stub;->setDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    move-result v6

    .line 272
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 274
    nop

    .line 571
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v4    # "_arg2":I
    .end local v6    # "_result":Z
    :goto_289
    return v1

    :pswitch_data_28a
    .packed-switch 0x1
        :pswitch_26a
        :pswitch_24b
        :pswitch_234
        :pswitch_221
        :pswitch_202
        :pswitch_1da
        :pswitch_1ba
        :pswitch_195
        :pswitch_17d
        :pswitch_165
        :pswitch_14d
        :pswitch_135
        :pswitch_11d
        :pswitch_105
        :pswitch_fc
        :pswitch_eb
        :pswitch_d7
        :pswitch_c3
        :pswitch_ab
        :pswitch_8b
        :pswitch_6f
        :pswitch_57
        :pswitch_3b
        :pswitch_1f
    .end packed-switch
.end method
