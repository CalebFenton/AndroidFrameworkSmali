.class public abstract Landroid/hardware/ISensorPrivacyManager$Stub;
.super Landroid/os/Binder;
.source "ISensorPrivacyManager.java"

# interfaces
.implements Landroid/hardware/ISensorPrivacyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ISensorPrivacyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ISensorPrivacyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addSensorPrivacyListener:I = 0x2

.field static final blacklist TRANSACTION_addToggleSensorPrivacyListener:I = 0x3

.field static final blacklist TRANSACTION_getCameraPrivacyAllowlist:I = 0xc

.field static final blacklist TRANSACTION_getToggleSensorPrivacyState:I = 0xd

.field static final blacklist TRANSACTION_isCameraPrivacyEnabled:I = 0x10

.field static final blacklist TRANSACTION_isCombinedToggleSensorPrivacyEnabled:I = 0x7

.field static final blacklist TRANSACTION_isSensorPrivacyEnabled:I = 0x6

.field static final blacklist TRANSACTION_isToggleSensorPrivacyEnabled:I = 0x8

.field static final blacklist TRANSACTION_removeSensorPrivacyListener:I = 0x4

.field static final blacklist TRANSACTION_removeToggleSensorPrivacyListener:I = 0x5

.field static final blacklist TRANSACTION_requiresAuthentication:I = 0x13

.field static final blacklist TRANSACTION_setCameraPrivacyAllowlist:I = 0x11

.field static final blacklist TRANSACTION_setSensorPrivacy:I = 0x9

.field static final blacklist TRANSACTION_setToggleSensorPrivacy:I = 0xa

.field static final blacklist TRANSACTION_setToggleSensorPrivacyForProfileGroup:I = 0xb

.field static final blacklist TRANSACTION_setToggleSensorPrivacyState:I = 0xe

.field static final blacklist TRANSACTION_setToggleSensorPrivacyStateForProfileGroup:I = 0xf

.field static final blacklist TRANSACTION_showSensorUseDialog:I = 0x14

.field static final blacklist TRANSACTION_supportsSensorToggle:I = 0x1

.field static final blacklist TRANSACTION_suppressToggleSensorPrivacyReminders:I = 0x12


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 101
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 102
    const-string v0, "android.hardware.ISensorPrivacyManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ISensorPrivacyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 110
    if-nez p0, :cond_4

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_4
    const-string v0, "android.hardware.ISensorPrivacyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 114
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/ISensorPrivacyManager;

    if-eqz v1, :cond_14

    .line 115
    move-object v1, v0

    check-cast v1, Landroid/hardware/ISensorPrivacyManager;

    return-object v1

    .line 117
    :cond_14
    new-instance v1, Landroid/hardware/ISensorPrivacyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/ISensorPrivacyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 126
    packed-switch p0, :pswitch_data_52

    .line 210
    const/4 v0, 0x0

    return-object v0

    .line 206
    :pswitch_5
    const-string/jumbo v0, "showSensorUseDialog"

    return-object v0

    .line 202
    :pswitch_9
    const-string/jumbo v0, "requiresAuthentication"

    return-object v0

    .line 198
    :pswitch_d
    const-string/jumbo v0, "suppressToggleSensorPrivacyReminders"

    return-object v0

    .line 194
    :pswitch_11
    const-string/jumbo v0, "setCameraPrivacyAllowlist"

    return-object v0

    .line 190
    :pswitch_15
    const-string/jumbo v0, "isCameraPrivacyEnabled"

    return-object v0

    .line 186
    :pswitch_19
    const-string/jumbo v0, "setToggleSensorPrivacyStateForProfileGroup"

    return-object v0

    .line 182
    :pswitch_1d
    const-string/jumbo v0, "setToggleSensorPrivacyState"

    return-object v0

    .line 178
    :pswitch_21
    const-string/jumbo v0, "getToggleSensorPrivacyState"

    return-object v0

    .line 174
    :pswitch_25
    const-string v0, "getCameraPrivacyAllowlist"

    return-object v0

    .line 170
    :pswitch_28
    const-string/jumbo v0, "setToggleSensorPrivacyForProfileGroup"

    return-object v0

    .line 166
    :pswitch_2c
    const-string/jumbo v0, "setToggleSensorPrivacy"

    return-object v0

    .line 162
    :pswitch_30
    const-string/jumbo v0, "setSensorPrivacy"

    return-object v0

    .line 158
    :pswitch_34
    const-string/jumbo v0, "isToggleSensorPrivacyEnabled"

    return-object v0

    .line 154
    :pswitch_38
    const-string/jumbo v0, "isCombinedToggleSensorPrivacyEnabled"

    return-object v0

    .line 150
    :pswitch_3c
    const-string/jumbo v0, "isSensorPrivacyEnabled"

    return-object v0

    .line 146
    :pswitch_40
    const-string/jumbo v0, "removeToggleSensorPrivacyListener"

    return-object v0

    .line 142
    :pswitch_44
    const-string/jumbo v0, "removeSensorPrivacyListener"

    return-object v0

    .line 138
    :pswitch_48
    const-string v0, "addToggleSensorPrivacyListener"

    return-object v0

    .line 134
    :pswitch_4b
    const-string v0, "addSensorPrivacyListener"

    return-object v0

    .line 130
    :pswitch_4e
    const-string/jumbo v0, "supportsSensorToggle"

    return-object v0

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
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

    .line 121
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 837
    const/16 v0, 0x13

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 217
    invoke-static {p1}, Landroid/hardware/ISensorPrivacyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 221
    const-string v0, "android.hardware.ISensorPrivacyManager"

    .line 222
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 223
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 226
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    return v1

    .line 229
    :cond_16
    packed-switch p1, :pswitch_data_1a8

    .line 448
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 440
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 441
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 442
    invoke-virtual {p0, v2}, Landroid/hardware/ISensorPrivacyManager$Stub;->showSensorUseDialog(I)V

    .line 443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    goto/16 :goto_1a6

    .line 432
    .end local v2    # "_arg0":I
    :pswitch_2d
    invoke-virtual {p0}, Landroid/hardware/ISensorPrivacyManager$Stub;->requiresAuthentication()Z

    move-result v2

    .line 433
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 435
    goto/16 :goto_1a6

    .line 418
    .end local v2    # "_result":Z
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 420
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 422
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 424
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 425
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/ISensorPrivacyManager$Stub;->suppressToggleSensorPrivacyReminders(IILandroid/os/IBinder;Z)V

    .line 427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    goto/16 :goto_1a6

    .line 409
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/IBinder;
    .end local v5    # "_arg3":Z
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 410
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {p0, v2}, Landroid/hardware/ISensorPrivacyManager$Stub;->setCameraPrivacyAllowlist(Ljava/util/List;)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    goto/16 :goto_1a6

    .line 399
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 401
    invoke-virtual {p0, v2}, Landroid/hardware/ISensorPrivacyManager$Stub;->isCameraPrivacyEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 402
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 404
    goto/16 :goto_1a6

    .line 384
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 386
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 388
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 390
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 391
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/ISensorPrivacyManager$Stub;->setToggleSensorPrivacyStateForProfileGroup(IIII)V

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    goto/16 :goto_1a6

    .line 369
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 371
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 373
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 375
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 376
    .restart local v5    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/ISensorPrivacyManager$Stub;->setToggleSensorPrivacyState(IIII)V

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    goto/16 :goto_1a6

    .line 357
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 359
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 360
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, v2, v3}, Landroid/hardware/ISensorPrivacyManager$Stub;->getToggleSensorPrivacyState(II)I

    move-result v4

    .line 362
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    goto/16 :goto_1a6

    .line 349
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_c3
    invoke-virtual {p0}, Landroid/hardware/ISensorPrivacyManager$Stub;->getCameraPrivacyAllowlist()Ljava/util/List;

    move-result-object v2

    .line 350
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 352
    goto/16 :goto_1a6

    .line 335
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 337
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 339
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 341
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 342
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/ISensorPrivacyManager$Stub;->setToggleSensorPrivacyForProfileGroup(IIIZ)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    goto/16 :goto_1a6

    .line 320
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Z
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 322
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 324
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 326
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 327
    .restart local v5    # "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/ISensorPrivacyManager$Stub;->setToggleSensorPrivacy(IIIZ)V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    goto/16 :goto_1a6

    .line 311
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Z
    :pswitch_105
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 312
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, v2}, Landroid/hardware/ISensorPrivacyManager$Stub;->setSensorPrivacy(Z)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    goto/16 :goto_1a6

    .line 299
    .end local v2    # "_arg0":Z
    :pswitch_114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 301
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 302
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v2, v3}, Landroid/hardware/ISensorPrivacyManager$Stub;->isToggleSensorPrivacyEnabled(II)Z

    move-result v4

    .line 304
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 306
    goto/16 :goto_1a6

    .line 289
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_12b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 290
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v2}, Landroid/hardware/ISensorPrivacyManager$Stub;->isCombinedToggleSensorPrivacyEnabled(I)Z

    move-result v3

    .line 292
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 294
    goto :goto_1a6

    .line 281
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_13d
    invoke-virtual {p0}, Landroid/hardware/ISensorPrivacyManager$Stub;->isSensorPrivacyEnabled()Z

    move-result v2

    .line 282
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 284
    goto :goto_1a6

    .line 273
    .end local v2    # "_result":Z
    :pswitch_148
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/ISensorPrivacyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyListener;

    move-result-object v2

    .line 274
    .local v2, "_arg0":Landroid/hardware/ISensorPrivacyListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, v2}, Landroid/hardware/ISensorPrivacyManager$Stub;->removeToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    goto :goto_1a6

    .line 264
    .end local v2    # "_arg0":Landroid/hardware/ISensorPrivacyListener;
    :pswitch_15a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/ISensorPrivacyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyListener;

    move-result-object v2

    .line 265
    .restart local v2    # "_arg0":Landroid/hardware/ISensorPrivacyListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, v2}, Landroid/hardware/ISensorPrivacyManager$Stub;->removeSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    goto :goto_1a6

    .line 255
    .end local v2    # "_arg0":Landroid/hardware/ISensorPrivacyListener;
    :pswitch_16c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/ISensorPrivacyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyListener;

    move-result-object v2

    .line 256
    .restart local v2    # "_arg0":Landroid/hardware/ISensorPrivacyListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, v2}, Landroid/hardware/ISensorPrivacyManager$Stub;->addToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    goto :goto_1a6

    .line 246
    .end local v2    # "_arg0":Landroid/hardware/ISensorPrivacyListener;
    :pswitch_17e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/ISensorPrivacyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyListener;

    move-result-object v2

    .line 247
    .restart local v2    # "_arg0":Landroid/hardware/ISensorPrivacyListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2}, Landroid/hardware/ISensorPrivacyManager$Stub;->addSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    goto :goto_1a6

    .line 234
    .end local v2    # "_arg0":Landroid/hardware/ISensorPrivacyListener;
    :pswitch_190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 236
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 237
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v2, v3}, Landroid/hardware/ISensorPrivacyManager$Stub;->supportsSensorToggle(II)Z

    move-result v4

    .line 239
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 241
    nop

    .line 451
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :goto_1a6
    return v1

    nop

    :pswitch_data_1a8
    .packed-switch 0x1
        :pswitch_190
        :pswitch_17e
        :pswitch_16c
        :pswitch_15a
        :pswitch_148
        :pswitch_13d
        :pswitch_12b
        :pswitch_114
        :pswitch_105
        :pswitch_ea
        :pswitch_cf
        :pswitch_c3
        :pswitch_ac
        :pswitch_91
        :pswitch_76
        :pswitch_63
        :pswitch_54
        :pswitch_39
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
