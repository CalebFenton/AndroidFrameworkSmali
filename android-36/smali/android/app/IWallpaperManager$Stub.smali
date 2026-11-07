.class public abstract Landroid/app/IWallpaperManager$Stub;
.super Landroid/os/Binder;
.source "IWallpaperManager.java"

# interfaces
.implements Landroid/app/IWallpaperManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWallpaperManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IWallpaperManager"

.field static final blacklist TRANSACTION_addOnLocalColorsChangedListener:I = 0x1c

.field static final greylist-max-o TRANSACTION_clearWallpaper:I = 0xf

.field static final blacklist TRANSACTION_getBitmapCrop:I = 0x9

.field static final blacklist TRANSACTION_getBitmapCrops:I = 0x6

.field static final blacklist TRANSACTION_getCurrentBitmapCrops:I = 0x7

.field static final blacklist TRANSACTION_getFutureBitmapCrops:I = 0x8

.field static final greylist-max-o TRANSACTION_getHeightHint:I = 0x13

.field static final greylist-max-o TRANSACTION_getName:I = 0x15

.field static final greylist-max-o TRANSACTION_getWallpaper:I = 0x4

.field static final greylist-max-o TRANSACTION_getWallpaperColors:I = 0x1a

.field static final blacklist TRANSACTION_getWallpaperDimAmount:I = 0x23

.field static final greylist-max-o TRANSACTION_getWallpaperIdForUser:I = 0xa

.field static final greylist-max-o TRANSACTION_getWallpaperInfo:I = 0xb

.field static final blacklist TRANSACTION_getWallpaperInfoFile:I = 0xe

.field static final blacklist TRANSACTION_getWallpaperInfoWithFlags:I = 0xc

.field static final blacklist TRANSACTION_getWallpaperInstance:I = 0xd

.field static final blacklist TRANSACTION_getWallpaperWithFeature:I = 0x5

.field static final greylist-max-o TRANSACTION_getWidthHint:I = 0x12

.field static final greylist-max-o TRANSACTION_hasNamedWallpaper:I = 0x10

.field static final greylist-max-o TRANSACTION_isSetWallpaperAllowed:I = 0x18

.field static final blacklist TRANSACTION_isStaticWallpaper:I = 0x25

.field static final greylist-max-o TRANSACTION_isWallpaperBackupEligible:I = 0x19

.field static final greylist-max-o TRANSACTION_isWallpaperSupported:I = 0x17

.field static final blacklist TRANSACTION_lockScreenWallpaperExists:I = 0x24

.field static final blacklist TRANSACTION_notifyGoingToSleep:I = 0x21

.field static final blacklist TRANSACTION_notifyWakingUp:I = 0x20

.field static final greylist-max-o TRANSACTION_registerWallpaperColorsCallback:I = 0x1d

.field static final blacklist TRANSACTION_removeOnLocalColorsChangedListener:I = 0x1b

.field static final greylist-max-o TRANSACTION_setDimensionHints:I = 0x11

.field static final greylist-max-o TRANSACTION_setDisplayPadding:I = 0x14

.field static final greylist-max-o TRANSACTION_setInAmbientMode:I = 0x1f

.field static final greylist-max-o TRANSACTION_setWallpaper:I = 0x1

.field static final greylist-max-o TRANSACTION_setWallpaperComponent:I = 0x3

.field static final greylist-max-o TRANSACTION_setWallpaperComponentChecked:I = 0x2

.field static final blacklist TRANSACTION_setWallpaperDimAmount:I = 0x22

.field static final greylist-max-o TRANSACTION_settingsRestored:I = 0x16

.field static final greylist-max-o TRANSACTION_unregisterWallpaperColorsCallback:I = 0x1e


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 286
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 287
    const-string v0, "android.app.IWallpaperManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IWallpaperManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 295
    if-nez p0, :cond_4

    .line 296
    const/4 v0, 0x0

    return-object v0

    .line 298
    :cond_4
    const-string v0, "android.app.IWallpaperManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 299
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IWallpaperManager;

    if-eqz v1, :cond_14

    .line 300
    move-object v1, v0

    check-cast v1, Landroid/app/IWallpaperManager;

    return-object v1

    .line 302
    :cond_14
    new-instance v1, Landroid/app/IWallpaperManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IWallpaperManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 311
    packed-switch p0, :pswitch_data_92

    .line 463
    const/4 v0, 0x0

    return-object v0

    .line 459
    :pswitch_5
    const-string/jumbo v0, "isStaticWallpaper"

    return-object v0

    .line 455
    :pswitch_9
    const-string/jumbo v0, "lockScreenWallpaperExists"

    return-object v0

    .line 451
    :pswitch_d
    const-string/jumbo v0, "getWallpaperDimAmount"

    return-object v0

    .line 447
    :pswitch_11
    const-string/jumbo v0, "setWallpaperDimAmount"

    return-object v0

    .line 443
    :pswitch_15
    const-string/jumbo v0, "notifyGoingToSleep"

    return-object v0

    .line 439
    :pswitch_19
    const-string/jumbo v0, "notifyWakingUp"

    return-object v0

    .line 435
    :pswitch_1d
    const-string/jumbo v0, "setInAmbientMode"

    return-object v0

    .line 431
    :pswitch_21
    const-string/jumbo v0, "unregisterWallpaperColorsCallback"

    return-object v0

    .line 427
    :pswitch_25
    const-string/jumbo v0, "registerWallpaperColorsCallback"

    return-object v0

    .line 423
    :pswitch_29
    const-string v0, "addOnLocalColorsChangedListener"

    return-object v0

    .line 419
    :pswitch_2c
    const-string/jumbo v0, "removeOnLocalColorsChangedListener"

    return-object v0

    .line 415
    :pswitch_30
    const-string/jumbo v0, "getWallpaperColors"

    return-object v0

    .line 411
    :pswitch_34
    const-string/jumbo v0, "isWallpaperBackupEligible"

    return-object v0

    .line 407
    :pswitch_38
    const-string/jumbo v0, "isSetWallpaperAllowed"

    return-object v0

    .line 403
    :pswitch_3c
    const-string/jumbo v0, "isWallpaperSupported"

    return-object v0

    .line 399
    :pswitch_40
    const-string/jumbo v0, "settingsRestored"

    return-object v0

    .line 395
    :pswitch_44
    const-string v0, "getName"

    return-object v0

    .line 391
    :pswitch_47
    const-string/jumbo v0, "setDisplayPadding"

    return-object v0

    .line 387
    :pswitch_4b
    const-string v0, "getHeightHint"

    return-object v0

    .line 383
    :pswitch_4e
    const-string/jumbo v0, "getWidthHint"

    return-object v0

    .line 379
    :pswitch_52
    const-string/jumbo v0, "setDimensionHints"

    return-object v0

    .line 375
    :pswitch_56
    const-string/jumbo v0, "hasNamedWallpaper"

    return-object v0

    .line 371
    :pswitch_5a
    const-string v0, "clearWallpaper"

    return-object v0

    .line 367
    :pswitch_5d
    const-string/jumbo v0, "getWallpaperInfoFile"

    return-object v0

    .line 363
    :pswitch_61
    const-string/jumbo v0, "getWallpaperInstance"

    return-object v0

    .line 359
    :pswitch_65
    const-string/jumbo v0, "getWallpaperInfoWithFlags"

    return-object v0

    .line 355
    :pswitch_69
    const-string/jumbo v0, "getWallpaperInfo"

    return-object v0

    .line 351
    :pswitch_6d
    const-string/jumbo v0, "getWallpaperIdForUser"

    return-object v0

    .line 347
    :pswitch_71
    const-string v0, "getBitmapCrop"

    return-object v0

    .line 343
    :pswitch_74
    const-string v0, "getFutureBitmapCrops"

    return-object v0

    .line 339
    :pswitch_77
    const-string v0, "getCurrentBitmapCrops"

    return-object v0

    .line 335
    :pswitch_7a
    const-string v0, "getBitmapCrops"

    return-object v0

    .line 331
    :pswitch_7d
    const-string/jumbo v0, "getWallpaperWithFeature"

    return-object v0

    .line 327
    :pswitch_81
    const-string/jumbo v0, "getWallpaper"

    return-object v0

    .line 323
    :pswitch_85
    const-string/jumbo v0, "setWallpaperComponent"

    return-object v0

    .line 319
    :pswitch_89
    const-string/jumbo v0, "setWallpaperComponentChecked"

    return-object v0

    .line 315
    :pswitch_8d
    const-string/jumbo v0, "setWallpaper"

    return-object v0

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_89
        :pswitch_85
        :pswitch_81
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6d
        :pswitch_69
        :pswitch_65
        :pswitch_61
        :pswitch_5d
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4b
        :pswitch_47
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_29
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

    .line 306
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1817
    const/16 v0, 0x24

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 470
    invoke-static {p1}, Landroid/app/IWallpaperManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 474
    move-object/from16 v0, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.app.IWallpaperManager"

    .line 475
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_15

    const v1, 0xffffff

    if-gt v10, v1, :cond_15

    .line 476
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    :cond_15
    const v1, 0x5f4e5446

    if-ne v10, v1, :cond_1e

    .line 479
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 480
    return v14

    .line 482
    :cond_1e
    packed-switch v10, :pswitch_data_3cc

    .line 950
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 941
    :pswitch_26
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 942
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 943
    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->isStaticWallpaper(I)Z

    move-result v2

    .line 944
    .local v2, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 946
    goto/16 :goto_3ca

    .line 933
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_39
    invoke-virtual {v0}, Landroid/app/IWallpaperManager$Stub;->lockScreenWallpaperExists()Z

    move-result v1

    .line 934
    .local v1, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 936
    goto/16 :goto_3ca

    .line 926
    .end local v1    # "_result":Z
    :pswitch_45
    invoke-virtual {v0}, Landroid/app/IWallpaperManager$Stub;->getWallpaperDimAmount()F

    move-result v1

    .line 927
    .local v1, "_result":F
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 929
    goto/16 :goto_3ca

    .line 919
    .end local v1    # "_result":F
    :pswitch_51
    invoke-virtual {v11}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 920
    .local v1, "_arg0":F
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 921
    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->setWallpaperDimAmount(F)V

    .line 922
    goto/16 :goto_3ca

    .line 906
    .end local v1    # "_arg0":F
    :pswitch_5d
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 908
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 910
    .local v2, "_arg1":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 911
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 912
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->notifyGoingToSleep(IILandroid/os/Bundle;)V

    .line 913
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    goto/16 :goto_3ca

    .line 894
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :pswitch_78
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 896
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 898
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 899
    .restart local v3    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 900
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->notifyWakingUp(IILandroid/os/Bundle;)V

    .line 901
    goto/16 :goto_3ca

    .line 884
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :pswitch_90
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 886
    .local v1, "_arg0":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 887
    .local v2, "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 888
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->setInAmbientMode(ZJ)V

    .line 889
    goto/16 :goto_3ca

    .line 871
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":J
    :pswitch_a0
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v1

    .line 873
    .local v1, "_arg0":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 875
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 876
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 877
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V

    .line 878
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    goto/16 :goto_3ca

    .line 858
    .end local v1    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_bb
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v1

    .line 860
    .restart local v1    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 862
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 863
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 864
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V

    .line 865
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    goto/16 :goto_3ca

    .line 841
    .end local v1    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_d6
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ILocalWallpaperColorConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ILocalWallpaperColorConsumer;

    move-result-object v1

    .line 843
    .local v1, "_arg0":Landroid/app/ILocalWallpaperColorConsumer;
    sget-object v2, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 845
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 847
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 849
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 850
    .local v5, "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 851
    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->addOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V

    .line 852
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    goto/16 :goto_3ca

    .line 824
    .end local v1    # "_arg0":Landroid/app/ILocalWallpaperColorConsumer;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_fb
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ILocalWallpaperColorConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ILocalWallpaperColorConsumer;

    move-result-object v1

    .line 826
    .restart local v1    # "_arg0":Landroid/app/ILocalWallpaperColorConsumer;
    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 828
    .restart local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 830
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 832
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 833
    .restart local v5    # "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 834
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->removeOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V

    .line 835
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    goto/16 :goto_3ca

    .line 810
    .end local v1    # "_arg0":Landroid/app/ILocalWallpaperColorConsumer;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_122
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 812
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 814
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 815
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 816
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->getWallpaperColors(III)Landroid/app/WallpaperColors;

    move-result-object v4

    .line 817
    .local v4, "_result":Landroid/app/WallpaperColors;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 819
    goto/16 :goto_3ca

    .line 798
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/app/WallpaperColors;
    :pswitch_13d
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 800
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 801
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->isWallpaperBackupEligible(II)Z

    move-result v3

    .line 803
    .local v3, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 805
    goto/16 :goto_3ca

    .line 788
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_154
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 789
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 790
    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v2

    .line 791
    .local v2, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 793
    goto/16 :goto_3ca

    .line 778
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_167
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 779
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 780
    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v2

    .line 781
    .restart local v2    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 783
    goto/16 :goto_3ca

    .line 771
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_17a
    invoke-virtual {v0}, Landroid/app/IWallpaperManager$Stub;->settingsRestored()V

    .line 772
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    goto/16 :goto_3ca

    .line 764
    :pswitch_182
    invoke-virtual {v0}, Landroid/app/IWallpaperManager$Stub;->getName()Ljava/lang/String;

    move-result-object v1

    .line 765
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 767
    goto/16 :goto_3ca

    .line 752
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_18e
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 754
    .local v1, "_arg0":Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 756
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 757
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 758
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;I)V

    .line 759
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    goto/16 :goto_3ca

    .line 742
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_1a9
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 743
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 744
    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->getHeightHint(I)I

    move-result v2

    .line 745
    .local v2, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 747
    goto/16 :goto_3ca

    .line 732
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_1bc
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 733
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->getWidthHint(I)I

    move-result v2

    .line 735
    .restart local v2    # "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    goto/16 :goto_3ca

    .line 717
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_1cf
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 719
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 721
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 723
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 724
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IWallpaperManager$Stub;->setDimensionHints(IILjava/lang/String;I)V

    .line 726
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    goto/16 :goto_3ca

    .line 707
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_1ea
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 708
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 709
    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->hasNamedWallpaper(Ljava/lang/String;)Z

    move-result v2

    .line 710
    .local v2, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 712
    goto/16 :goto_3ca

    .line 694
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_1fd
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 696
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 698
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 699
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 700
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->clearWallpaper(Ljava/lang/String;II)V

    .line 701
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    goto/16 :goto_3ca

    .line 684
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_214
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 685
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 686
    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInfoFile(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 687
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 689
    goto/16 :goto_3ca

    .line 672
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_227
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 674
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 675
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 676
    invoke-virtual {v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInstance(II)Landroid/app/wallpaper/WallpaperInstance;

    move-result-object v3

    .line 677
    .local v3, "_result":Landroid/app/wallpaper/WallpaperInstance;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 679
    goto/16 :goto_3ca

    .line 660
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/app/wallpaper/WallpaperInstance;
    :pswitch_23e
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 662
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 663
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 664
    invoke-virtual {v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInfoWithFlags(II)Landroid/app/WallpaperInfo;

    move-result-object v3

    .line 665
    .local v3, "_result":Landroid/app/WallpaperInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 667
    goto/16 :goto_3ca

    .line 650
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/app/WallpaperInfo;
    :pswitch_255
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 651
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object v2

    .line 653
    .local v2, "_result":Landroid/app/WallpaperInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 655
    goto/16 :goto_3ca

    .line 638
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/app/WallpaperInfo;
    :pswitch_268
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 640
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 641
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->getWallpaperIdForUser(II)I

    move-result v3

    .line 643
    .local v3, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    goto/16 :goto_3ca

    .line 624
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_27f
    sget-object v1, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 626
    .local v1, "_arg0":Landroid/graphics/Point;
    invoke-virtual {v11}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 628
    .local v2, "_arg1":[I
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 629
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->getBitmapCrop(Landroid/graphics/Point;[ILjava/util/List;)Landroid/graphics/Rect;

    move-result-object v4

    .line 631
    .local v4, "_result":Landroid/graphics/Rect;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 633
    goto/16 :goto_3ca

    .line 608
    .end local v1    # "_arg0":Landroid/graphics/Point;
    .end local v2    # "_arg1":[I
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v4    # "_result":Landroid/graphics/Rect;
    :pswitch_2a0
    sget-object v1, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 610
    .restart local v1    # "_arg0":Landroid/graphics/Point;
    sget-object v2, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 612
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 614
    .local v3, "_arg2":[I
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 615
    .local v4, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IWallpaperManager$Stub;->getFutureBitmapCrops(Landroid/graphics/Point;Ljava/util/List;[ILjava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 617
    .local v5, "_result":Ljava/util/List;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    invoke-virtual {v12, v5}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 619
    goto/16 :goto_3ca

    .line 596
    .end local v1    # "_arg0":Landroid/graphics/Point;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v5    # "_result":Ljava/util/List;
    :pswitch_2c7
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 598
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 599
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->getCurrentBitmapCrops(II)Landroid/os/Bundle;

    move-result-object v3

    .line 601
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 603
    goto/16 :goto_3ca

    .line 580
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_2de
    sget-object v1, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 582
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 584
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 586
    .local v3, "_arg2":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 587
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IWallpaperManager$Stub;->getBitmapCrops(Ljava/util/List;IZI)Ljava/util/List;

    move-result-object v5

    .line 589
    .restart local v5    # "_result":Ljava/util/List;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    invoke-virtual {v12, v5}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 591
    goto/16 :goto_3ca

    .line 557
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Ljava/util/List;
    :pswitch_2ff
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 561
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v3

    .line 563
    .local v3, "_arg2":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 565
    .restart local v4    # "_arg3":I
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 567
    .local v5, "_arg4":Landroid/os/Bundle;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 569
    .local v6, "_arg5":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 570
    .local v7, "_arg6":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 571
    invoke-virtual/range {v0 .. v7}, Landroid/app/IWallpaperManager$Stub;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IZ)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 572
    .local v8, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    invoke-virtual {v12, v8, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 574
    invoke-virtual {v12, v5, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 575
    goto/16 :goto_3ca

    .line 538
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/app/IWallpaperManagerCallback;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Z
    .end local v8    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_332
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 540
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v2

    .line 542
    .local v2, "_arg1":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 544
    .local v3, "_arg2":I
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 546
    .local v4, "_arg3":Landroid/os/Bundle;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 547
    .local v5, "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 549
    .local v6, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    invoke-virtual {v12, v6, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 551
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 552
    goto :goto_3ca

    .line 529
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/app/IWallpaperManagerCallback;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_35e
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 530
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 531
    invoke-virtual {v0, v1}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 532
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    goto :goto_3ca

    .line 514
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_370
    sget-object v1, Landroid/app/wallpaper/WallpaperDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/wallpaper/WallpaperDescription;

    .line 516
    .local v1, "_arg0":Landroid/app/wallpaper/WallpaperDescription;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 518
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 520
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 521
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponentChecked(Landroid/app/wallpaper/WallpaperDescription;Ljava/lang/String;II)V

    .line 523
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    goto :goto_3ca

    .line 487
    .end local v1    # "_arg0":Landroid/app/wallpaper/WallpaperDescription;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_38e
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 491
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 493
    .local v3, "_arg2":[I
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 495
    .local v4, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 497
    .local v5, "_arg4":Z
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 499
    .local v6, "_arg5":Landroid/os/Bundle;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 501
    .local v7, "_arg6":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v8

    .line 503
    .local v8, "_arg7":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 504
    .local v9, "_arg8":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 505
    invoke-virtual/range {v0 .. v9}, Landroid/app/IWallpaperManager$Stub;->setWallpaper(Ljava/lang/String;Ljava/lang/String;[ILjava/util/List;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    .line 506
    .local v15, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {v12, v15, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 508
    invoke-virtual {v12, v6, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 509
    nop

    .line 953
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Landroid/os/Bundle;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":Landroid/app/IWallpaperManagerCallback;
    .end local v9    # "_arg8":I
    .end local v15    # "_result":Landroid/os/ParcelFileDescriptor;
    :goto_3ca
    return v14

    nop

    :pswitch_data_3cc
    .packed-switch 0x1
        :pswitch_38e
        :pswitch_370
        :pswitch_35e
        :pswitch_332
        :pswitch_2ff
        :pswitch_2de
        :pswitch_2c7
        :pswitch_2a0
        :pswitch_27f
        :pswitch_268
        :pswitch_255
        :pswitch_23e
        :pswitch_227
        :pswitch_214
        :pswitch_1fd
        :pswitch_1ea
        :pswitch_1cf
        :pswitch_1bc
        :pswitch_1a9
        :pswitch_18e
        :pswitch_182
        :pswitch_17a
        :pswitch_167
        :pswitch_154
        :pswitch_13d
        :pswitch_122
        :pswitch_fb
        :pswitch_d6
        :pswitch_bb
        :pswitch_a0
        :pswitch_90
        :pswitch_78
        :pswitch_5d
        :pswitch_51
        :pswitch_45
        :pswitch_39
        :pswitch_26
    .end packed-switch
.end method
