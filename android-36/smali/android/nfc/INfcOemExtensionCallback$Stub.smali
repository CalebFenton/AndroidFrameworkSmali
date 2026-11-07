.class public abstract Landroid/nfc/INfcOemExtensionCallback$Stub;
.super Landroid/os/Binder;
.source "INfcOemExtensionCallback.java"

# interfaces
.implements Landroid/nfc/INfcOemExtensionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcOemExtensionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcOemExtensionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onApplyRouting:I = 0x3

.field static final blacklist TRANSACTION_onBootFinished:I = 0xa

.field static final blacklist TRANSACTION_onBootStarted:I = 0x7

.field static final blacklist TRANSACTION_onCardEmulationActivated:I = 0x11

.field static final blacklist TRANSACTION_onDisable:I = 0x6

.field static final blacklist TRANSACTION_onDisableFinished:I = 0xc

.field static final blacklist TRANSACTION_onDisableStarted:I = 0x9

.field static final blacklist TRANSACTION_onEeListenActivated:I = 0x14

.field static final blacklist TRANSACTION_onEeUpdated:I = 0x15

.field static final blacklist TRANSACTION_onEnable:I = 0x5

.field static final blacklist TRANSACTION_onEnableFinished:I = 0xb

.field static final blacklist TRANSACTION_onEnableStarted:I = 0x8

.field static final blacklist TRANSACTION_onExtractOemPackages:I = 0x1c

.field static final blacklist TRANSACTION_onGetOemAppSearchIntent:I = 0x16

.field static final blacklist TRANSACTION_onHceEventReceived:I = 0xf

.field static final blacklist TRANSACTION_onLaunchHceAppChooserActivity:I = 0x18

.field static final blacklist TRANSACTION_onLaunchHceTapAgainActivity:I = 0x19

.field static final blacklist TRANSACTION_onLogEventNotified:I = 0x1b

.field static final blacklist TRANSACTION_onNdefMessage:I = 0x17

.field static final blacklist TRANSACTION_onNdefRead:I = 0x4

.field static final blacklist TRANSACTION_onReaderOptionChanged:I = 0x10

.field static final blacklist TRANSACTION_onRfDiscoveryStarted:I = 0x13

.field static final blacklist TRANSACTION_onRfFieldDetected:I = 0x12

.field static final blacklist TRANSACTION_onRoutingChanged:I = 0xe

.field static final blacklist TRANSACTION_onRoutingTableFull:I = 0x1a

.field static final blacklist TRANSACTION_onStateUpdated:I = 0x2

.field static final blacklist TRANSACTION_onTagConnected:I = 0x1

.field static final blacklist TRANSACTION_onTagDispatch:I = 0xd


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 111
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 112
    const-string v0, "android.nfc.INfcOemExtensionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcOemExtensionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcOemExtensionCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 120
    if-nez p0, :cond_4

    .line 121
    const/4 v0, 0x0

    return-object v0

    .line 123
    :cond_4
    const-string v0, "android.nfc.INfcOemExtensionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 124
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/nfc/INfcOemExtensionCallback;

    if-eqz v1, :cond_14

    .line 125
    move-object v1, v0

    check-cast v1, Landroid/nfc/INfcOemExtensionCallback;

    return-object v1

    .line 127
    :cond_14
    new-instance v1, Landroid/nfc/INfcOemExtensionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcOemExtensionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 136
    packed-switch p0, :pswitch_data_5a

    .line 252
    const/4 v0, 0x0

    return-object v0

    .line 248
    :pswitch_5
    const-string v0, "onExtractOemPackages"

    return-object v0

    .line 244
    :pswitch_8
    const-string v0, "onLogEventNotified"

    return-object v0

    .line 240
    :pswitch_b
    const-string v0, "onRoutingTableFull"

    return-object v0

    .line 236
    :pswitch_e
    const-string v0, "onLaunchHceTapAgainActivity"

    return-object v0

    .line 232
    :pswitch_11
    const-string v0, "onLaunchHceAppChooserActivity"

    return-object v0

    .line 228
    :pswitch_14
    const-string v0, "onNdefMessage"

    return-object v0

    .line 224
    :pswitch_17
    const-string v0, "onGetOemAppSearchIntent"

    return-object v0

    .line 220
    :pswitch_1a
    const-string v0, "onEeUpdated"

    return-object v0

    .line 216
    :pswitch_1d
    const-string v0, "onEeListenActivated"

    return-object v0

    .line 212
    :pswitch_20
    const-string v0, "onRfDiscoveryStarted"

    return-object v0

    .line 208
    :pswitch_23
    const-string v0, "onRfFieldDetected"

    return-object v0

    .line 204
    :pswitch_26
    const-string v0, "onCardEmulationActivated"

    return-object v0

    .line 200
    :pswitch_29
    const-string v0, "onReaderOptionChanged"

    return-object v0

    .line 196
    :pswitch_2c
    const-string v0, "onHceEventReceived"

    return-object v0

    .line 192
    :pswitch_2f
    const-string v0, "onRoutingChanged"

    return-object v0

    .line 188
    :pswitch_32
    const-string v0, "onTagDispatch"

    return-object v0

    .line 184
    :pswitch_35
    const-string v0, "onDisableFinished"

    return-object v0

    .line 180
    :pswitch_38
    const-string v0, "onEnableFinished"

    return-object v0

    .line 176
    :pswitch_3b
    const-string v0, "onBootFinished"

    return-object v0

    .line 172
    :pswitch_3e
    const-string v0, "onDisableStarted"

    return-object v0

    .line 168
    :pswitch_41
    const-string v0, "onEnableStarted"

    return-object v0

    .line 164
    :pswitch_44
    const-string v0, "onBootStarted"

    return-object v0

    .line 160
    :pswitch_47
    const-string v0, "onDisable"

    return-object v0

    .line 156
    :pswitch_4a
    const-string v0, "onEnable"

    return-object v0

    .line 152
    :pswitch_4d
    const-string v0, "onNdefRead"

    return-object v0

    .line 148
    :pswitch_50
    const-string v0, "onApplyRouting"

    return-object v0

    .line 144
    :pswitch_53
    const-string v0, "onStateUpdated"

    return-object v0

    .line 140
    :pswitch_56
    const-string v0, "onTagConnected"

    return-object v0

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 131
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1003
    const/16 v0, 0x1b

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 259
    invoke-static {p1}, Landroid/nfc/INfcOemExtensionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 263
    const-string v0, "android.nfc.INfcOemExtensionCallback"

    .line 264
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 265
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 268
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    return v1

    .line 271
    :cond_16
    packed-switch p1, :pswitch_data_1f6

    .line 528
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 518
    :pswitch_1e
    sget-object v2, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/NdefMessage;

    .line 520
    .local v2, "_arg0":Landroid/nfc/NdefMessage;
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 521
    .local v3, "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onExtractOemPackages(Landroid/nfc/NdefMessage;Landroid/os/ResultReceiver;)V

    .line 523
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    goto/16 :goto_1f5

    .line 509
    .end local v2    # "_arg0":Landroid/nfc/NdefMessage;
    .end local v3    # "_arg1":Landroid/os/ResultReceiver;
    :pswitch_39
    sget-object v2, Landroid/nfc/OemLogItems;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/OemLogItems;

    .line 510
    .local v2, "_arg0":Landroid/nfc/OemLogItems;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onLogEventNotified(Landroid/nfc/OemLogItems;)V

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    goto/16 :goto_1f5

    .line 502
    .end local v2    # "_arg0":Landroid/nfc/OemLogItems;
    :pswitch_4c
    invoke-virtual {p0}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onRoutingTableFull()V

    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    goto/16 :goto_1f5

    .line 492
    :pswitch_54
    sget-object v2, Landroid/nfc/cardemulation/ApduServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 494
    .local v2, "_arg0":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 495
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onLaunchHceTapAgainActivity(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    goto/16 :goto_1f5

    .line 477
    .end local v2    # "_arg0":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/nfc/cardemulation/ApduServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 481
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 483
    .local v4, "_arg2":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 484
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 485
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onLaunchHceAppChooserActivity(Ljava/lang/String;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    goto/16 :goto_1f5

    .line 464
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .end local v4    # "_arg2":Landroid/content/ComponentName;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_8c
    sget-object v2, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/Tag;

    .line 466
    .local v2, "_arg0":Landroid/nfc/Tag;
    sget-object v3, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/NdefMessage;

    .line 468
    .local v3, "_arg1":Landroid/nfc/NdefMessage;
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    .line 469
    .local v4, "_arg2":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onNdefMessage(Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/os/ResultReceiver;)V

    .line 471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    goto/16 :goto_1f5

    .line 453
    .end local v2    # "_arg0":Landroid/nfc/Tag;
    .end local v3    # "_arg1":Landroid/nfc/NdefMessage;
    .end local v4    # "_arg2":Landroid/os/ResultReceiver;
    :pswitch_af
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 455
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 456
    .local v3, "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onGetOemAppSearchIntent(Ljava/util/List;Landroid/os/ResultReceiver;)V

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    goto/16 :goto_1f5

    .line 446
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":Landroid/os/ResultReceiver;
    :pswitch_c6
    invoke-virtual {p0}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onEeUpdated()V

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    goto/16 :goto_1f5

    .line 438
    :pswitch_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 439
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onEeListenActivated(Z)V

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    goto/16 :goto_1f5

    .line 429
    .end local v2    # "_arg0":Z
    :pswitch_dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 430
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onRfDiscoveryStarted(Z)V

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    goto/16 :goto_1f5

    .line 420
    .end local v2    # "_arg0":Z
    :pswitch_ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 421
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onRfFieldDetected(Z)V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    goto/16 :goto_1f5

    .line 411
    .end local v2    # "_arg0":Z
    :pswitch_fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 412
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 413
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onCardEmulationActivated(Z)V

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    goto/16 :goto_1f5

    .line 402
    .end local v2    # "_arg0":Z
    :pswitch_10a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 403
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onReaderOptionChanged(Z)V

    .line 405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    goto/16 :goto_1f5

    .line 393
    .end local v2    # "_arg0":Z
    :pswitch_119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 394
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onHceEventReceived(I)V

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    goto/16 :goto_1f5

    .line 384
    .end local v2    # "_arg0":I
    :pswitch_128
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 385
    .local v2, "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onRoutingChanged(Landroid/os/ResultReceiver;)V

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    goto/16 :goto_1f5

    .line 375
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_13b
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 376
    .restart local v2    # "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onTagDispatch(Landroid/os/ResultReceiver;)V

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    goto/16 :goto_1f5

    .line 366
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_14e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 367
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onDisableFinished(I)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    goto/16 :goto_1f5

    .line 357
    .end local v2    # "_arg0":I
    :pswitch_15d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 358
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onEnableFinished(I)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    goto/16 :goto_1f5

    .line 348
    .end local v2    # "_arg0":I
    :pswitch_16c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 349
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onBootFinished(I)V

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    goto/16 :goto_1f5

    .line 341
    .end local v2    # "_arg0":I
    :pswitch_17b
    invoke-virtual {p0}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onDisableStarted()V

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    goto/16 :goto_1f5

    .line 335
    :pswitch_183
    invoke-virtual {p0}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onEnableStarted()V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    goto :goto_1f5

    .line 329
    :pswitch_18a
    invoke-virtual {p0}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onBootStarted()V

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    goto :goto_1f5

    .line 321
    :pswitch_191
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 322
    .local v2, "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onDisable(Landroid/os/ResultReceiver;)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    goto :goto_1f5

    .line 312
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_1a3
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 313
    .restart local v2    # "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onEnable(Landroid/os/ResultReceiver;)V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    goto :goto_1f5

    .line 303
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_1b5
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 304
    .restart local v2    # "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onNdefRead(Landroid/os/ResultReceiver;)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    goto :goto_1f5

    .line 294
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_1c7
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 295
    .restart local v2    # "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onApplyRouting(Landroid/os/ResultReceiver;)V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    goto :goto_1f5

    .line 285
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_1d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 286
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onStateUpdated(I)V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    goto :goto_1f5

    .line 276
    .end local v2    # "_arg0":I
    :pswitch_1e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 277
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onTagConnected(Z)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    nop

    .line 531
    .end local v2    # "_arg0":Z
    :goto_1f5
    return v1

    :pswitch_data_1f6
    .packed-switch 0x1
        :pswitch_1e7
        :pswitch_1d9
        :pswitch_1c7
        :pswitch_1b5
        :pswitch_1a3
        :pswitch_191
        :pswitch_18a
        :pswitch_183
        :pswitch_17b
        :pswitch_16c
        :pswitch_15d
        :pswitch_14e
        :pswitch_13b
        :pswitch_128
        :pswitch_119
        :pswitch_10a
        :pswitch_fb
        :pswitch_ec
        :pswitch_dd
        :pswitch_ce
        :pswitch_c6
        :pswitch_af
        :pswitch_8c
        :pswitch_6b
        :pswitch_54
        :pswitch_4c
        :pswitch_39
        :pswitch_1e
    .end packed-switch
.end method
