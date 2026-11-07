.class public abstract Landroid/media/quality/IMediaQualityManager$Stub;
.super Landroid/os/Binder;
.source "IMediaQualityManager.java"

# interfaces
.implements Landroid/media/quality/IMediaQualityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/quality/IMediaQualityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/IMediaQualityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createPictureProfile:I = 0x1

.field static final blacklist TRANSACTION_createSoundProfile:I = 0x10

.field static final blacklist TRANSACTION_getAvailablePictureProfiles:I = 0x7

.field static final blacklist TRANSACTION_getAvailableSoundProfiles:I = 0x16

.field static final blacklist TRANSACTION_getDefaultPictureProfileHandleValue:I = 0xd

.field static final blacklist TRANSACTION_getParameterCapabilities:I = 0x1f

.field static final blacklist TRANSACTION_getPictureProfile:I = 0x5

.field static final blacklist TRANSACTION_getPictureProfileAllowList:I = 0x9

.field static final blacklist TRANSACTION_getPictureProfileForTvInput:I = 0xf

.field static final blacklist TRANSACTION_getPictureProfileHandle:I = 0xb

.field static final blacklist TRANSACTION_getPictureProfileHandleValue:I = 0xc

.field static final blacklist TRANSACTION_getPictureProfilePackageNames:I = 0x8

.field static final blacklist TRANSACTION_getPictureProfilesByPackage:I = 0x6

.field static final blacklist TRANSACTION_getSoundProfile:I = 0x14

.field static final blacklist TRANSACTION_getSoundProfileAllowList:I = 0x18

.field static final blacklist TRANSACTION_getSoundProfileHandle:I = 0x1a

.field static final blacklist TRANSACTION_getSoundProfilePackageNames:I = 0x17

.field static final blacklist TRANSACTION_getSoundProfilesByPackage:I = 0x15

.field static final blacklist TRANSACTION_isAmbientBacklightEnabled:I = 0x29

.field static final blacklist TRANSACTION_isAutoPictureQualityEnabled:I = 0x22

.field static final blacklist TRANSACTION_isAutoSoundQualityEnabled:I = 0x26

.field static final blacklist TRANSACTION_isSuperResolutionEnabled:I = 0x24

.field static final blacklist TRANSACTION_isSupported:I = 0x20

.field static final blacklist TRANSACTION_notifyPictureProfileHandleSelection:I = 0xe

.field static final blacklist TRANSACTION_registerActiveProcessingPictureListener:I = 0x1e

.field static final blacklist TRANSACTION_registerAmbientBacklightCallback:I = 0x1d

.field static final blacklist TRANSACTION_registerPictureProfileCallback:I = 0x1b

.field static final blacklist TRANSACTION_registerSoundProfileCallback:I = 0x1c

.field static final blacklist TRANSACTION_removePictureProfile:I = 0x3

.field static final blacklist TRANSACTION_removeSoundProfile:I = 0x12

.field static final blacklist TRANSACTION_setAmbientBacklightEnabled:I = 0x28

.field static final blacklist TRANSACTION_setAmbientBacklightSettings:I = 0x27

.field static final blacklist TRANSACTION_setAutoPictureQualityEnabled:I = 0x21

.field static final blacklist TRANSACTION_setAutoSoundQualityEnabled:I = 0x25

.field static final blacklist TRANSACTION_setDefaultPictureProfile:I = 0x4

.field static final blacklist TRANSACTION_setDefaultSoundProfile:I = 0x13

.field static final blacklist TRANSACTION_setPictureProfileAllowList:I = 0xa

.field static final blacklist TRANSACTION_setSoundProfileAllowList:I = 0x19

.field static final blacklist TRANSACTION_setSuperResolutionEnabled:I = 0x23

.field static final blacklist TRANSACTION_updatePictureProfile:I = 0x2

.field static final blacklist TRANSACTION_updateSoundProfile:I = 0x11


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 178
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 179
    const-string v0, "android.media.quality.IMediaQualityManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/quality/IMediaQualityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/quality/IMediaQualityManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 187
    if-nez p0, :cond_4

    .line 188
    const/4 v0, 0x0

    return-object v0

    .line 190
    :cond_4
    const-string v0, "android.media.quality.IMediaQualityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 191
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/quality/IMediaQualityManager;

    if-eqz v1, :cond_14

    .line 192
    move-object v1, v0

    check-cast v1, Landroid/media/quality/IMediaQualityManager;

    return-object v1

    .line 194
    :cond_14
    new-instance v1, Landroid/media/quality/IMediaQualityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/quality/IMediaQualityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 198
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    const-string v0, "android.media.quality.IMediaQualityManager"

    .line 203
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 204
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 207
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    return v1

    .line 210
    :cond_16
    packed-switch p1, :pswitch_data_38e

    .line 676
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 667
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 668
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->isAmbientBacklightEnabled(I)Z

    move-result v3

    .line 670
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 672
    goto/16 :goto_38c

    .line 656
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 658
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 659
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 660
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->setAmbientBacklightEnabled(ZI)V

    .line 661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    goto/16 :goto_38c

    .line 645
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_44
    sget-object v2, Landroid/media/quality/AmbientBacklightSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/AmbientBacklightSettings;

    .line 647
    .local v2, "_arg0":Landroid/media/quality/AmbientBacklightSettings;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 648
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 649
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->setAmbientBacklightSettings(Landroid/media/quality/AmbientBacklightSettings;I)V

    .line 650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    goto/16 :goto_38c

    .line 635
    .end local v2    # "_arg0":Landroid/media/quality/AmbientBacklightSettings;
    .end local v3    # "_arg1":I
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 636
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 637
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->isAutoSoundQualityEnabled(I)Z

    move-result v3

    .line 638
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 640
    goto/16 :goto_38c

    .line 624
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 626
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 627
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 628
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->setAutoSoundQualityEnabled(ZI)V

    .line 629
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    goto/16 :goto_38c

    .line 614
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 615
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->isSuperResolutionEnabled(I)Z

    move-result v3

    .line 617
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 619
    goto/16 :goto_38c

    .line 603
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 605
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 606
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 607
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->setSuperResolutionEnabled(ZI)V

    .line 608
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    goto/16 :goto_38c

    .line 593
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 594
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 595
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->isAutoPictureQualityEnabled(I)Z

    move-result v3

    .line 596
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 598
    goto/16 :goto_38c

    .line 582
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 584
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 585
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->setAutoPictureQualityEnabled(ZI)V

    .line 587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    goto/16 :goto_38c

    .line 572
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 573
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->isSupported(I)Z

    move-result v3

    .line 575
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 577
    goto/16 :goto_38c

    .line 560
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_e0
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 562
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 563
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->getParameterCapabilities(Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    .line 565
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/ParameterCapability;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 567
    goto/16 :goto_38c

    .line 551
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/ParameterCapability;>;"
    :pswitch_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/quality/IActiveProcessingPictureListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/quality/IActiveProcessingPictureListener;

    move-result-object v2

    .line 552
    .local v2, "_arg0":Landroid/media/quality/IActiveProcessingPictureListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->registerActiveProcessingPictureListener(Landroid/media/quality/IActiveProcessingPictureListener;)V

    .line 554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    goto/16 :goto_38c

    .line 542
    .end local v2    # "_arg0":Landroid/media/quality/IActiveProcessingPictureListener;
    :pswitch_10a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/quality/IAmbientBacklightCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/quality/IAmbientBacklightCallback;

    move-result-object v2

    .line 543
    .local v2, "_arg0":Landroid/media/quality/IAmbientBacklightCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 544
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->registerAmbientBacklightCallback(Landroid/media/quality/IAmbientBacklightCallback;)V

    .line 545
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    goto/16 :goto_38c

    .line 533
    .end local v2    # "_arg0":Landroid/media/quality/IAmbientBacklightCallback;
    :pswitch_11d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/quality/ISoundProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/quality/ISoundProfileCallback;

    move-result-object v2

    .line 534
    .local v2, "_arg0":Landroid/media/quality/ISoundProfileCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 535
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->registerSoundProfileCallback(Landroid/media/quality/ISoundProfileCallback;)V

    .line 536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    goto/16 :goto_38c

    .line 524
    .end local v2    # "_arg0":Landroid/media/quality/ISoundProfileCallback;
    :pswitch_130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/quality/IPictureProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/quality/IPictureProfileCallback;

    move-result-object v2

    .line 525
    .local v2, "_arg0":Landroid/media/quality/IPictureProfileCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 526
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->registerPictureProfileCallback(Landroid/media/quality/IPictureProfileCallback;)V

    .line 527
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    goto/16 :goto_38c

    .line 512
    .end local v2    # "_arg0":Landroid/media/quality/IPictureProfileCallback;
    :pswitch_143
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 515
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 516
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->getSoundProfileHandle([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 517
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/SoundProfileHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 519
    goto/16 :goto_38c

    .line 501
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/SoundProfileHandle;>;"
    :pswitch_15a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 503
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 504
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 505
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->setSoundProfileAllowList(Ljava/util/List;I)V

    .line 506
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    goto/16 :goto_38c

    .line 491
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    :pswitch_16d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 492
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 493
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->getSoundProfileAllowList(I)Ljava/util/List;

    move-result-object v3

    .line 494
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 496
    goto/16 :goto_38c

    .line 481
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 482
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 483
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->getSoundProfilePackageNames(I)Ljava/util/List;

    move-result-object v3

    .line 484
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 486
    goto/16 :goto_38c

    .line 469
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_193
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 471
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 472
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->getAvailableSoundProfiles(ZI)Ljava/util/List;

    move-result-object v4

    .line 474
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/SoundProfile;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 476
    goto/16 :goto_38c

    .line 455
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/SoundProfile;>;"
    :pswitch_1aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 459
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 460
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/quality/IMediaQualityManager$Stub;->getSoundProfilesByPackage(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v5

    .line 462
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/SoundProfile;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 464
    goto/16 :goto_38c

    .line 439
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/SoundProfile;>;"
    :pswitch_1c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 441
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 443
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 445
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 446
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 447
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/quality/IMediaQualityManager$Stub;->getSoundProfile(ILjava/lang/String;ZI)Landroid/media/quality/SoundProfile;

    move-result-object v6

    .line 448
    .local v6, "_result":Landroid/media/quality/SoundProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 450
    goto/16 :goto_38c

    .line 427
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Landroid/media/quality/SoundProfile;
    :pswitch_1e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 430
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->setDefaultSoundProfile(Ljava/lang/String;I)Z

    move-result v4

    .line 432
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 434
    goto/16 :goto_38c

    .line 416
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_1fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 418
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 419
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->removeSoundProfile(Ljava/lang/String;I)V

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    goto/16 :goto_38c

    .line 403
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_20e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 405
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/quality/SoundProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/quality/SoundProfile;

    .line 407
    .local v3, "_arg1":Landroid/media/quality/SoundProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 408
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/quality/IMediaQualityManager$Stub;->updateSoundProfile(Ljava/lang/String;Landroid/media/quality/SoundProfile;I)V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    goto/16 :goto_38c

    .line 392
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/quality/SoundProfile;
    .end local v4    # "_arg2":I
    :pswitch_229
    sget-object v2, Landroid/media/quality/SoundProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/SoundProfile;

    .line 394
    .local v2, "_arg0":Landroid/media/quality/SoundProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 395
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->createSoundProfile(Landroid/media/quality/SoundProfile;I)V

    .line 397
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    goto/16 :goto_38c

    .line 380
    .end local v2    # "_arg0":Landroid/media/quality/SoundProfile;
    .end local v3    # "_arg1":I
    :pswitch_240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 383
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->getPictureProfileForTvInput(Ljava/lang/String;I)J

    move-result-wide v4

    .line 385
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 387
    goto/16 :goto_38c

    .line 369
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":J
    :pswitch_257
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 371
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 372
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/quality/IMediaQualityManager$Stub;->notifyPictureProfileHandleSelection(JI)V

    .line 374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    goto/16 :goto_38c

    .line 359
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_26a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 360
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->getDefaultPictureProfileHandleValue(I)J

    move-result-wide v3

    .line 362
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 364
    goto/16 :goto_38c

    .line 347
    .end local v2    # "_arg0":I
    .end local v3    # "_result":J
    :pswitch_27d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 350
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->getPictureProfileHandleValue(Ljava/lang/String;I)J

    move-result-wide v4

    .line 352
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 354
    goto/16 :goto_38c

    .line 335
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":J
    :pswitch_294
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 338
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->getPictureProfileHandle([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 340
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/PictureProfileHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 342
    goto/16 :goto_38c

    .line 324
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/PictureProfileHandle;>;"
    :pswitch_2ab
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 326
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 327
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->setPictureProfileAllowList(Ljava/util/List;I)V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    goto/16 :goto_38c

    .line 314
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    :pswitch_2be
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 315
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->getPictureProfileAllowList(I)Ljava/util/List;

    move-result-object v3

    .line 317
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 319
    goto/16 :goto_38c

    .line 304
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 305
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v2}, Landroid/media/quality/IMediaQualityManager$Stub;->getPictureProfilePackageNames(I)Ljava/util/List;

    move-result-object v3

    .line 307
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 309
    goto/16 :goto_38c

    .line 292
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 294
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 295
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->getAvailablePictureProfiles(ZI)Ljava/util/List;

    move-result-object v4

    .line 297
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/PictureProfile;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 299
    goto/16 :goto_38c

    .line 278
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/PictureProfile;>;"
    :pswitch_2fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 282
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 283
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/quality/IMediaQualityManager$Stub;->getPictureProfilesByPackage(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v5

    .line 285
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/PictureProfile;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 287
    goto/16 :goto_38c

    .line 262
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/PictureProfile;>;"
    :pswitch_316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 264
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 268
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 269
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/quality/IMediaQualityManager$Stub;->getPictureProfile(ILjava/lang/String;ZI)Landroid/media/quality/PictureProfile;

    move-result-object v6

    .line 271
    .local v6, "_result":Landroid/media/quality/PictureProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 273
    goto :goto_38c

    .line 250
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Landroid/media/quality/PictureProfile;
    :pswitch_334
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 253
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->setDefaultPictureProfile(Ljava/lang/String;I)Z

    move-result v4

    .line 255
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 257
    goto :goto_38c

    .line 239
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_34a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 241
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 242
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->removePictureProfile(Ljava/lang/String;I)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    goto :goto_38c

    .line 226
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_35c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 228
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/quality/PictureProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/quality/PictureProfile;

    .line 230
    .local v3, "_arg1":Landroid/media/quality/PictureProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 231
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/quality/IMediaQualityManager$Stub;->updatePictureProfile(Ljava/lang/String;Landroid/media/quality/PictureProfile;I)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    goto :goto_38c

    .line 215
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/quality/PictureProfile;
    .end local v4    # "_arg2":I
    :pswitch_376
    sget-object v2, Landroid/media/quality/PictureProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/PictureProfile;

    .line 217
    .local v2, "_arg0":Landroid/media/quality/PictureProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 218
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/IMediaQualityManager$Stub;->createPictureProfile(Landroid/media/quality/PictureProfile;I)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    nop

    .line 679
    .end local v2    # "_arg0":Landroid/media/quality/PictureProfile;
    .end local v3    # "_arg1":I
    :goto_38c
    return v1

    nop

    :pswitch_data_38e
    .packed-switch 0x1
        :pswitch_376
        :pswitch_35c
        :pswitch_34a
        :pswitch_334
        :pswitch_316
        :pswitch_2fb
        :pswitch_2e4
        :pswitch_2d1
        :pswitch_2be
        :pswitch_2ab
        :pswitch_294
        :pswitch_27d
        :pswitch_26a
        :pswitch_257
        :pswitch_240
        :pswitch_229
        :pswitch_20e
        :pswitch_1fb
        :pswitch_1e4
        :pswitch_1c5
        :pswitch_1aa
        :pswitch_193
        :pswitch_180
        :pswitch_16d
        :pswitch_15a
        :pswitch_143
        :pswitch_130
        :pswitch_11d
        :pswitch_10a
        :pswitch_f7
        :pswitch_e0
        :pswitch_cd
        :pswitch_ba
        :pswitch_a7
        :pswitch_94
        :pswitch_81
        :pswitch_6e
        :pswitch_5b
        :pswitch_44
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
