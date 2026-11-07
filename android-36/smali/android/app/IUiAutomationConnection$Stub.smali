.class public abstract Landroid/app/IUiAutomationConnection$Stub;
.super Landroid/os/Binder;
.source "IUiAutomationConnection.java"

# interfaces
.implements Landroid/app/IUiAutomationConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUiAutomationConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUiAutomationConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IUiAutomationConnection"

.field static final blacklist TRANSACTION_addOverridePermissionState:I = 0x16

.field static final blacklist TRANSACTION_adoptShellPermissionIdentity:I = 0x10

.field static final blacklist TRANSACTION_clearAllOverridePermissionStates:I = 0x19

.field static final blacklist TRANSACTION_clearOverridePermissionStates:I = 0x18

.field static final greylist-max-o TRANSACTION_clearWindowAnimationFrameStats:I = 0xb

.field static final greylist-max-o TRANSACTION_clearWindowContentFrameStats:I = 0x9

.field static final greylist-max-o TRANSACTION_connect:I = 0x1

.field static final greylist-max-o TRANSACTION_disconnect:I = 0x2

.field static final blacklist TRANSACTION_dropShellPermissionIdentity:I = 0x11

.field static final greylist-max-o TRANSACTION_executeShellCommand:I = 0xd

.field static final blacklist TRANSACTION_executeShellCommandArrayWithStderr:I = 0x14

.field static final blacklist TRANSACTION_executeShellCommandWithStderr:I = 0x13

.field static final blacklist TRANSACTION_getAdoptedShellPermissions:I = 0x15

.field static final greylist-max-o TRANSACTION_getWindowAnimationFrameStats:I = 0xc

.field static final greylist-max-o TRANSACTION_getWindowContentFrameStats:I = 0xa

.field static final greylist-max-o TRANSACTION_grantRuntimePermission:I = 0xe

.field static final greylist-max-o TRANSACTION_injectInputEvent:I = 0x3

.field static final blacklist TRANSACTION_injectInputEventToInputFilter:I = 0x4

.field static final blacklist TRANSACTION_removeOverridePermissionState:I = 0x17

.field static final greylist-max-o TRANSACTION_revokeRuntimePermission:I = 0xf

.field static final greylist-max-o TRANSACTION_setRotation:I = 0x6

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x12

.field static final blacklist TRANSACTION_syncInputTransactions:I = 0x5

.field static final greylist-max-o TRANSACTION_takeScreenshot:I = 0x7

.field static final blacklist TRANSACTION_takeSurfaceControlScreenshot:I = 0x8


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 119
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 120
    const-string v0, "android.app.IUiAutomationConnection"

    invoke-virtual {p0, p0, v0}, Landroid/app/IUiAutomationConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 128
    if-nez p0, :cond_4

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 131
    :cond_4
    const-string v0, "android.app.IUiAutomationConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 132
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IUiAutomationConnection;

    if-eqz v1, :cond_14

    .line 133
    move-object v1, v0

    check-cast v1, Landroid/app/IUiAutomationConnection;

    return-object v1

    .line 135
    :cond_14
    new-instance v1, Landroid/app/IUiAutomationConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IUiAutomationConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 144
    packed-switch p0, :pswitch_data_5c

    .line 248
    const/4 v0, 0x0

    return-object v0

    .line 244
    :pswitch_5
    const-string v0, "clearAllOverridePermissionStates"

    return-object v0

    .line 240
    :pswitch_8
    const-string v0, "clearOverridePermissionStates"

    return-object v0

    .line 236
    :pswitch_b
    const-string/jumbo v0, "removeOverridePermissionState"

    return-object v0

    .line 232
    :pswitch_f
    const-string v0, "addOverridePermissionState"

    return-object v0

    .line 228
    :pswitch_12
    const-string v0, "getAdoptedShellPermissions"

    return-object v0

    .line 224
    :pswitch_15
    const-string v0, "executeShellCommandArrayWithStderr"

    return-object v0

    .line 220
    :pswitch_18
    const-string v0, "executeShellCommandWithStderr"

    return-object v0

    .line 216
    :pswitch_1b
    const-string/jumbo v0, "shutdown"

    return-object v0

    .line 212
    :pswitch_1f
    const-string v0, "dropShellPermissionIdentity"

    return-object v0

    .line 208
    :pswitch_22
    const-string v0, "adoptShellPermissionIdentity"

    return-object v0

    .line 204
    :pswitch_25
    const-string/jumbo v0, "revokeRuntimePermission"

    return-object v0

    .line 200
    :pswitch_29
    const-string/jumbo v0, "grantRuntimePermission"

    return-object v0

    .line 196
    :pswitch_2d
    const-string v0, "executeShellCommand"

    return-object v0

    .line 192
    :pswitch_30
    const-string/jumbo v0, "getWindowAnimationFrameStats"

    return-object v0

    .line 188
    :pswitch_34
    const-string v0, "clearWindowAnimationFrameStats"

    return-object v0

    .line 184
    :pswitch_37
    const-string/jumbo v0, "getWindowContentFrameStats"

    return-object v0

    .line 180
    :pswitch_3b
    const-string v0, "clearWindowContentFrameStats"

    return-object v0

    .line 176
    :pswitch_3e
    const-string/jumbo v0, "takeSurfaceControlScreenshot"

    return-object v0

    .line 172
    :pswitch_42
    const-string/jumbo v0, "takeScreenshot"

    return-object v0

    .line 168
    :pswitch_46
    const-string/jumbo v0, "setRotation"

    return-object v0

    .line 164
    :pswitch_4a
    const-string/jumbo v0, "syncInputTransactions"

    return-object v0

    .line 160
    :pswitch_4e
    const-string/jumbo v0, "injectInputEventToInputFilter"

    return-object v0

    .line 156
    :pswitch_52
    const-string/jumbo v0, "injectInputEvent"

    return-object v0

    .line 152
    :pswitch_56
    const-string v0, "disconnect"

    return-object v0

    .line 148
    :pswitch_59
    const-string v0, "connect"

    return-object v0

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_59
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
        :pswitch_42
        :pswitch_3e
        :pswitch_3b
        :pswitch_37
        :pswitch_34
        :pswitch_30
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1b
        :pswitch_18
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

    .line 139
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 989
    const/16 v0, 0x18

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 255
    invoke-static {p1}, Landroid/app/IUiAutomationConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    const-string v0, "android.app.IUiAutomationConnection"

    .line 260
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 261
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 264
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    return v1

    .line 267
    :cond_16
    packed-switch p1, :pswitch_data_210

    .line 526
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 520
    :pswitch_1e
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->clearAllOverridePermissionStates()V

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    goto/16 :goto_20e

    .line 512
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 513
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, v2}, Landroid/app/IUiAutomationConnection$Stub;->clearOverridePermissionStates(I)V

    .line 515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    goto/16 :goto_20e

    .line 501
    .end local v2    # "_arg0":I
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 503
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 504
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 505
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiAutomationConnection$Stub;->removeOverridePermissionState(ILjava/lang/String;)V

    .line 506
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    goto/16 :goto_20e

    .line 488
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 490
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 492
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 493
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 494
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IUiAutomationConnection$Stub;->addOverridePermissionState(ILjava/lang/String;I)V

    .line 495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    goto/16 :goto_20e

    .line 480
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_5f
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->getAdoptedShellPermissions()Ljava/util/List;

    move-result-object v2

    .line 481
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 483
    goto/16 :goto_20e

    .line 466
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, "_arg0":[Ljava/lang/String;
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 470
    .local v3, "_arg1":Landroid/os/ParcelFileDescriptor;
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 472
    .local v4, "_arg2":Landroid/os/ParcelFileDescriptor;
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 473
    .local v5, "_arg3":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/IUiAutomationConnection$Stub;->executeShellCommandArrayWithStderr([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    goto/16 :goto_20e

    .line 451
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_arg2":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "_arg3":Landroid/os/ParcelFileDescriptor;
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 455
    .restart local v3    # "_arg1":Landroid/os/ParcelFileDescriptor;
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 457
    .restart local v4    # "_arg2":Landroid/os/ParcelFileDescriptor;
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 458
    .restart local v5    # "_arg3":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 459
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/IUiAutomationConnection$Stub;->executeShellCommandWithStderr(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    .line 460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    goto/16 :goto_20e

    .line 445
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_arg2":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "_arg3":Landroid/os/ParcelFileDescriptor;
    :pswitch_b9
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->shutdown()V

    .line 446
    goto/16 :goto_20e

    .line 439
    :pswitch_be
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->dropShellPermissionIdentity()V

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    goto/16 :goto_20e

    .line 429
    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 431
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 432
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiAutomationConnection$Stub;->adoptShellPermissionIdentity(I[Ljava/lang/String;)V

    .line 434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    goto/16 :goto_20e

    .line 416
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Ljava/lang/String;
    :pswitch_d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 421
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IUiAutomationConnection$Stub;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    goto/16 :goto_20e

    .line 403
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 405
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 407
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 408
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IUiAutomationConnection$Stub;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    goto/16 :goto_20e

    .line 390
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 392
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 394
    .local v3, "_arg1":Landroid/os/ParcelFileDescriptor;
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 395
    .local v4, "_arg2":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IUiAutomationConnection$Stub;->executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    .line 397
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    goto/16 :goto_20e

    .line 382
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :pswitch_126
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;

    move-result-object v2

    .line 383
    .local v2, "_result":Landroid/view/WindowAnimationFrameStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 385
    goto/16 :goto_20e

    .line 376
    .end local v2    # "_result":Landroid/view/WindowAnimationFrameStats;
    :pswitch_132
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->clearWindowAnimationFrameStats()V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    goto/16 :goto_20e

    .line 367
    :pswitch_13a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 368
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, v2}, Landroid/app/IUiAutomationConnection$Stub;->getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;

    move-result-object v3

    .line 370
    .local v3, "_result":Landroid/view/WindowContentFrameStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 372
    goto/16 :goto_20e

    .line 357
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/view/WindowContentFrameStats;
    :pswitch_14d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 358
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    invoke-virtual {p0, v2}, Landroid/app/IUiAutomationConnection$Stub;->clearWindowContentFrameStats(I)Z

    move-result v3

    .line 360
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 362
    goto/16 :goto_20e

    .line 345
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_160
    sget-object v2, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    .line 347
    .local v2, "_arg0":Landroid/view/SurfaceControl;
    sget-object v3, Landroid/window/ScreenCapture$ScreenCaptureListener;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/ScreenCapture$ScreenCaptureListener;

    .line 348
    .local v3, "_arg1":Landroid/window/ScreenCapture$ScreenCaptureListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiAutomationConnection$Stub;->takeSurfaceControlScreenshot(Landroid/view/SurfaceControl;Landroid/window/ScreenCapture$ScreenCaptureListener;)Z

    move-result v4

    .line 350
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 352
    goto/16 :goto_20e

    .line 331
    .end local v2    # "_arg0":Landroid/view/SurfaceControl;
    .end local v3    # "_arg1":Landroid/window/ScreenCapture$ScreenCaptureListener;
    .end local v4    # "_result":Z
    :pswitch_17f
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 333
    .local v2, "_arg0":Landroid/graphics/Rect;
    sget-object v3, Landroid/window/ScreenCapture$ScreenCaptureListener;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/ScreenCapture$ScreenCaptureListener;

    .line 335
    .restart local v3    # "_arg1":Landroid/window/ScreenCapture$ScreenCaptureListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 336
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IUiAutomationConnection$Stub;->takeScreenshot(Landroid/graphics/Rect;Landroid/window/ScreenCapture$ScreenCaptureListener;I)Z

    move-result v5

    .line 338
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 340
    goto :goto_20e

    .line 321
    .end local v2    # "_arg0":Landroid/graphics/Rect;
    .end local v3    # "_arg1":Landroid/window/ScreenCapture$ScreenCaptureListener;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_1a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 322
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, v2}, Landroid/app/IUiAutomationConnection$Stub;->setRotation(I)Z

    move-result v3

    .line 324
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 326
    goto :goto_20e

    .line 312
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 313
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, v2}, Landroid/app/IUiAutomationConnection$Stub;->syncInputTransactions(Z)V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    goto :goto_20e

    .line 303
    .end local v2    # "_arg0":Z
    :pswitch_1c1
    sget-object v2, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputEvent;

    .line 304
    .local v2, "_arg0":Landroid/view/InputEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, v2}, Landroid/app/IUiAutomationConnection$Stub;->injectInputEventToInputFilter(Landroid/view/InputEvent;)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    goto :goto_20e

    .line 289
    .end local v2    # "_arg0":Landroid/view/InputEvent;
    :pswitch_1d3
    sget-object v2, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputEvent;

    .line 291
    .restart local v2    # "_arg0":Landroid/view/InputEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 293
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 294
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IUiAutomationConnection$Stub;->injectInputEvent(Landroid/view/InputEvent;ZZ)Z

    move-result v5

    .line 296
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 298
    goto :goto_20e

    .line 282
    .end local v2    # "_arg0":Landroid/view/InputEvent;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":Z
    :pswitch_1f1
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->disconnect()V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    goto :goto_20e

    .line 272
    :pswitch_1f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v2

    .line 274
    .local v2, "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 275
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiAutomationConnection$Stub;->connect(Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    nop

    .line 529
    .end local v2    # "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .end local v3    # "_arg1":I
    :goto_20e
    return v1

    nop

    :pswitch_data_210
    .packed-switch 0x1
        :pswitch_1f8
        :pswitch_1f1
        :pswitch_1d3
        :pswitch_1c1
        :pswitch_1b3
        :pswitch_1a1
        :pswitch_17f
        :pswitch_160
        :pswitch_14d
        :pswitch_13a
        :pswitch_132
        :pswitch_126
        :pswitch_107
        :pswitch_f0
        :pswitch_d9
        :pswitch_c6
        :pswitch_be
        :pswitch_b9
        :pswitch_92
        :pswitch_6b
        :pswitch_5f
        :pswitch_48
        :pswitch_35
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method
