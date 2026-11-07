.class public abstract Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections$Stub;
.super Landroid/os/HwBinder;
.source "IMeasurementCorrections.java"

# interfaces
.implements Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 485
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 488
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

    .line 502
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 540
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 541
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 542
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 543
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 544
    return-object v0
.end method

.method public final blacklist getHashChain()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 514
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_20

    new-array v3, v1, [B

    fill-array-data v3, :array_34

    new-array v1, v1, [B

    fill-array-data v1, :array_48

    filled-new-array {v2, v3, v1}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_20
    .array-data 1
        0x66t
        0x70t
        -0x19t
        0x78t
        0x8t
        0x3t
        -0x58t
        -0x3at
        -0x6at
        -0x3at
        0x39t
        0x1ft
        -0x26t
        0x55t
        -0x77t
        -0x5dt
        0x34t
        -0x4ft
        -0x4dt
        0x7dt
        -0x39t
        -0x42t
        -0x6dt
        -0x6dt
        0x79t
        0x2et
        -0x2dt
        0x50t
        0x35t
        0x41t
        0x36t
        0x33t
    .end array-data

    :array_34
    .array-data 1
        -0x2ct
        -0x34t
        -0x73t
        -0x6ft
        -0x6dt
        0xdt
        0x5at
        0x1at
        0x62t
        -0x22t
        -0x50t
        -0x27t
        0x7dt
        0x39t
        -0x7bt
        0x10t
        -0x5ft
        0x15t
        -0x32t
        0x3et
        -0x22t
        0x2dt
        0x29t
        0x78t
        0x73t
        -0x7at
        0x51t
        -0x47t
        -0x30t
        0x1bt
        0x11t
        -0x3dt
    .end array-data

    :array_48
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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss.measurement_corrections@1.0::IMeasurementCorrections"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.gnss.measurement_corrections@1.1::IMeasurementCorrections"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 508
    const-string v0, "android.hardware.gnss.measurement_corrections@1.1::IMeasurementCorrections"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 528
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 550
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 552
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 15
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 580
    const-string v0, "android.hardware.gnss.measurement_corrections@1.0::IMeasurementCorrections"

    const-string v1, "android.hidl.base@1.0::IBase"

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_116

    goto/16 :goto_115

    .line 723
    :sswitch_a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p0}, Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections$Stub;->notifySyspropsChanged()V

    .line 726
    goto/16 :goto_115

    .line 712
    :sswitch_12
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p0}, Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 715
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 716
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 717
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 718
    goto/16 :goto_115

    .line 702
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_24
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p0}, Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections$Stub;->ping()V

    .line 705
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 706
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 707
    goto/16 :goto_115

    .line 697
    :sswitch_32
    goto/16 :goto_115

    .line 689
    :sswitch_34
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p0}, Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections$Stub;->setHALInstrumentation()V

    .line 692
    goto/16 :goto_115

    .line 655
    :sswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p0}, Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 658
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 660
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 662
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 663
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 664
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 665
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 666
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_63
    if-ge v4, v3, :cond_84

    .line 668
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 669
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 671
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7c

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7c

    .line 675
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 676
    nop

    .line 666
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 672
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 679
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_84
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 681
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 683
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 684
    goto/16 :goto_115

    .line 644
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_91
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 648
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 650
    goto :goto_115

    .line 632
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 635
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 636
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 637
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 638
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 639
    goto :goto_115

    .line 621
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0}, Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 624
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 625
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 626
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 627
    goto :goto_115

    .line 608
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_c8
    const-string v0, "android.hardware.gnss.measurement_corrections@1.1::IMeasurementCorrections"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    new-instance v0, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;

    invoke-direct {v0}, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;-><init>()V

    .line 611
    .local v0, "corrections":Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;->readFromParcel(Landroid/os/HwParcel;)V

    .line 612
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections$Stub;->setCorrections_1_1(Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;)Z

    move-result v1

    .line 613
    .local v1, "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 614
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 615
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 616
    goto :goto_115

    .line 596
    .end local v0    # "corrections":Landroid/hardware/gnss/measurement_corrections/V1_1/MeasurementCorrections;
    .end local v1    # "_hidl_out_success":Z
    :sswitch_e3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/measurement_corrections/V1_0/IMeasurementCorrectionsCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/measurement_corrections/V1_0/IMeasurementCorrectionsCallback;

    move-result-object v0

    .line 599
    .local v0, "callback":Landroid/hardware/gnss/measurement_corrections/V1_0/IMeasurementCorrectionsCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections$Stub;->setCallback(Landroid/hardware/gnss/measurement_corrections/V1_0/IMeasurementCorrectionsCallback;)Z

    move-result v1

    .line 600
    .restart local v1    # "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 601
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 602
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 603
    goto :goto_115

    .line 583
    .end local v0    # "callback":Landroid/hardware/gnss/measurement_corrections/V1_0/IMeasurementCorrectionsCallback;
    .end local v1    # "_hidl_out_success":Z
    :sswitch_fc
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    new-instance v0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    invoke-direct {v0}, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;-><init>()V

    .line 586
    .local v0, "corrections":Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->readFromParcel(Landroid/os/HwParcel;)V

    .line 587
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections$Stub;->setCorrections(Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;)Z

    move-result v1

    .line 588
    .restart local v1    # "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 589
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 590
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 591
    nop

    .line 735
    .end local v0    # "corrections":Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;
    .end local v1    # "_hidl_out_success":Z
    :goto_115
    return-void

    :sswitch_data_116
    .sparse-switch
        0x1 -> :sswitch_fc
        0x2 -> :sswitch_e3
        0x3 -> :sswitch_c8
        0xf43484e -> :sswitch_b7
        0xf444247 -> :sswitch_a2
        0xf445343 -> :sswitch_91
        0xf485348 -> :sswitch_3c
        0xf494e54 -> :sswitch_34
        0xf4c5444 -> :sswitch_32
        0xf504e47 -> :sswitch_24
        0xf524546 -> :sswitch_12
        0xf535953 -> :sswitch_a
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 534
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 562
    const-string v0, "android.hardware.gnss.measurement_corrections@1.1::IMeasurementCorrections"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 563
    return-object p0

    .line 565
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

    .line 569
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections$Stub;->registerService(Ljava/lang/String;)V

    .line 570
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 524
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 556
    const/4 v0, 0x1

    return v0
.end method
