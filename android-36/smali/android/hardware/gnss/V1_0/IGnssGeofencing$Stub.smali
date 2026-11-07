.class public abstract Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;
.super Landroid/os/HwBinder;
.source "IGnssGeofencing.java"

# interfaces
.implements Landroid/hardware/gnss/V1_0/IGnssGeofencing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssGeofencing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 562
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 565
    return-object p0
.end method

.method public blacklist debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 578
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 615
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 616
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 617
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 618
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 619
    return-object v0
.end method

.method public final blacklist getHashChain()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 590
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_1a

    new-array v1, v1, [B

    fill-array-data v1, :array_2e

    filled-new-array {v2, v1}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_1a
    .array-data 1
        -0x7t
        0xet
        0x4dt
        -0x24t
        0x65t
        0x27t
        0x6t
        0x29t
        -0x63t
        -0x72t
        0x3dt
        -0x75t
        -0x5ft
        -0x72t
        0x7t
        0x45t
        -0x3dt
        -0x46t
        -0x17t
        -0x41t
        0x4dt
        0x1bt
        -0x1at
        -0x43t
        0x6t
        -0x27t
        -0x3ft
        -0xbt
        0xet
        -0x38t
        -0x2et
        -0x76t
    .end array-data

    :array_2e
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final blacklist interfaceChain()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 570
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss@1.0::IGnssGeofencing"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 584
    const-string v0, "android.hardware.gnss@1.0::IGnssGeofencing"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 603
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 625
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 627
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 20
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 655
    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v1, "android.hardware.gnss@1.0::IGnssGeofencing"

    const-string v2, "android.hidl.base@1.0::IBase"

    const/4 v14, 0x0

    sparse-switch p1, :sswitch_data_14a

    goto/16 :goto_149

    .line 823
    :sswitch_e
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->notifySyspropsChanged()V

    .line 826
    goto/16 :goto_149

    .line 812
    :sswitch_16
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 815
    .local v1, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v13, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 816
    invoke-virtual {v1, v13}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 817
    invoke-virtual {v13}, Landroid/os/HwParcel;->send()V

    .line 818
    goto/16 :goto_149

    .line 802
    .end local v1    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_28
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->ping()V

    .line 805
    invoke-virtual {v13, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 806
    invoke-virtual {v13}, Landroid/os/HwParcel;->send()V

    .line 807
    goto/16 :goto_149

    .line 797
    :sswitch_36
    goto/16 :goto_149

    .line 789
    :sswitch_38
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->setHALInstrumentation()V

    .line 792
    goto/16 :goto_149

    .line 755
    :sswitch_40
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 758
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v13, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 760
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 762
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 763
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 764
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v14}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 765
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 766
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_67
    if-ge v5, v3, :cond_88

    .line 768
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 769
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 771
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_80

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_80

    .line 775
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 776
    nop

    .line 766
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_67

    .line 772
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_80
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 779
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_88
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 781
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v13, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 783
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v13}, Landroid/os/HwParcel;->send()V

    .line 784
    goto/16 :goto_149

    .line 744
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_95
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 747
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v13, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 748
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v13}, Landroid/os/HwParcel;->send()V

    .line 750
    goto/16 :goto_149

    .line 732
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a7
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v12}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 735
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual {v12}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 736
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 737
    invoke-virtual {v13, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 738
    invoke-virtual {v13}, Landroid/os/HwParcel;->send()V

    .line 739
    goto/16 :goto_149

    .line 721
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bd
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 724
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 725
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 726
    invoke-virtual {v13}, Landroid/os/HwParcel;->send()V

    .line 727
    goto/16 :goto_149

    .line 710
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cf
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 713
    .local v1, "geofenceId":I
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->removeGeofence(I)V

    .line 714
    invoke-virtual {v13, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 715
    invoke-virtual {v13}, Landroid/os/HwParcel;->send()V

    .line 716
    goto :goto_149

    .line 698
    .end local v1    # "geofenceId":I
    :sswitch_e0
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 701
    .restart local v1    # "geofenceId":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 702
    .local v2, "monitorTransitions":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->resumeGeofence(II)V

    .line 703
    invoke-virtual {v13, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 704
    invoke-virtual {v13}, Landroid/os/HwParcel;->send()V

    .line 705
    goto :goto_149

    .line 687
    .end local v1    # "geofenceId":I
    .end local v2    # "monitorTransitions":I
    :sswitch_f5
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 690
    .restart local v1    # "geofenceId":I
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->pauseGeofence(I)V

    .line 691
    invoke-virtual {v13, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 692
    invoke-virtual {v13}, Landroid/os/HwParcel;->send()V

    .line 693
    goto :goto_149

    .line 669
    .end local v1    # "geofenceId":I
    :sswitch_106
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 672
    .restart local v1    # "geofenceId":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v2

    .line 673
    .local v2, "latitudeDegrees":D
    invoke-virtual {v12}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v4

    .line 674
    .local v4, "longitudeDegrees":D
    invoke-virtual {v12}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v6

    .line 675
    .local v6, "radiusMeters":D
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 676
    .local v8, "lastTransition":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 677
    .local v9, "monitorTransitions":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 678
    .local v10, "notificationResponsivenessMs":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 679
    .local v11, "unknownTimerMs":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->addGeofence(IDDDIIII)V

    .line 680
    invoke-virtual {v13, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 681
    invoke-virtual {v13}, Landroid/os/HwParcel;->send()V

    .line 682
    goto :goto_149

    .line 658
    .end local v1    # "geofenceId":I
    .end local v2    # "latitudeDegrees":D
    .end local v4    # "longitudeDegrees":D
    .end local v6    # "radiusMeters":D
    .end local v8    # "lastTransition":I
    .end local v9    # "monitorTransitions":I
    .end local v10    # "notificationResponsivenessMs":I
    .end local v11    # "unknownTimerMs":I
    :sswitch_134
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v12}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback;

    move-result-object v1

    .line 661
    .local v1, "callback":Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback;
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->setCallback(Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback;)V

    .line 662
    invoke-virtual {v13, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 663
    invoke-virtual {v13}, Landroid/os/HwParcel;->send()V

    .line 664
    nop

    .line 835
    .end local v1    # "callback":Landroid/hardware/gnss/V1_0/IGnssGeofenceCallback;
    :goto_149
    return-void

    :sswitch_data_14a
    .sparse-switch
        0x1 -> :sswitch_134
        0x2 -> :sswitch_106
        0x3 -> :sswitch_f5
        0x4 -> :sswitch_e0
        0x5 -> :sswitch_cf
        0xf43484e -> :sswitch_bd
        0xf444247 -> :sswitch_a7
        0xf445343 -> :sswitch_95
        0xf485348 -> :sswitch_40
        0xf494e54 -> :sswitch_38
        0xf4c5444 -> :sswitch_36
        0xf504e47 -> :sswitch_28
        0xf524546 -> :sswitch_16
        0xf535953 -> :sswitch_e
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 609
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 637
    const-string v0, "android.hardware.gnss@1.0::IGnssGeofencing"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 638
    return-object p0

    .line 640
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerAsService(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 644
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->registerService(Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 599
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssGeofencing$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 631
    const/4 v0, 0x1

    return v0
.end method
