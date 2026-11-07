.class public abstract Landroid/hardware/gnss/V2_0/IGnssMeasurement$Stub;
.super Landroid/os/HwBinder;
.source "IGnssMeasurement.java"

# interfaces
.implements Landroid/hardware/gnss/V2_0/IGnssMeasurement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_0/IGnssMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 510
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 513
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

    .line 528
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 567
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 568
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 569
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 570
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 571
    return-object v0
.end method

.method public final blacklist getHashChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_24

    new-array v3, v1, [B

    fill-array-data v3, :array_38

    new-array v4, v1, [B

    fill-array-data v4, :array_4c

    new-array v1, v1, [B

    fill-array-data v1, :array_60

    filled-new-array {v2, v3, v4, v1}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_24
    .array-data 1
        -0x3at
        0x77t
        0x59t
        -0xbt
        -0x2at
        0x38t
        0x7dt
        0x27t
        0x3bt
        0x66t
        0x72t
        -0x6ft
        -0x80t
        -0x30t
        0x36t
        -0x70t
        -0x18t
        0x27t
        -0x10t
        -0x4at
        -0x48t
        -0x2ct
        -0x1ft
        0x3ct
        -0x1et
        -0x1t
        0x42t
        -0x2dt
        0x1bt
        0x22t
        0x40t
        0x65t
    .end array-data

    :array_38
    .array-data 1
        0x1at
        0x7t
        -0x2ft
        0x38t
        0x3et
        -0x7ct
        0x7ct
        0x3dt
        -0x15t
        0x69t
        0x6et
        -0x39t
        -0x5et
        -0x37t
        -0x1dt
        0x3bt
        -0x6at
        -0x7dt
        0x77t
        0x29t
        0x45t
        0x66t
        0x4t
        0x48t
        -0x60t
        0x10t
        -0x4ft
        -0x80t
        0x63t
        -0x26t
        0x67t
        -0x5ct
    .end array-data

    :array_4c
    .array-data 1
        -0x62t
        -0x58t
        -0x68t
        0x7bt
        -0x4ft
        0x8t
        -0x64t
        -0x74t
        0x5dt
        0x7bt
        0x67t
        -0x7at
        0x65t
        0x75t
        -0x48t
        0x66t
        -0x11t
        0x51t
        0x60t
        0x45t
        0x2t
        0x1dt
        -0x62t
        -0x4t
        -0x3dt
        0x7ct
        0x63t
        0x52t
        -0x44t
        -0x20t
        0x72t
        -0x5dt
    .end array-data

    :array_60
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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 518
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss@1.0::IGnssMeasurement"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.gnss@2.0::IGnssMeasurement"

    const-string v4, "android.hardware.gnss@1.1::IGnssMeasurement"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 534
    const-string v0, "android.hardware.gnss@2.0::IGnssMeasurement"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 555
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 577
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 579
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

    .line 607
    const-string v0, "android.hardware.gnss@1.0::IGnssMeasurement"

    const-string v1, "android.hidl.base@1.0::IBase"

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_130

    goto/16 :goto_12e

    .line 760
    :sswitch_a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssMeasurement$Stub;->notifySyspropsChanged()V

    .line 763
    goto/16 :goto_12e

    .line 749
    :sswitch_12
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssMeasurement$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 752
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 753
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 754
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 755
    goto/16 :goto_12e

    .line 739
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_24
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssMeasurement$Stub;->ping()V

    .line 742
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 743
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 744
    goto/16 :goto_12e

    .line 734
    :sswitch_32
    goto/16 :goto_12e

    .line 726
    :sswitch_34
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssMeasurement$Stub;->setHALInstrumentation()V

    .line 729
    goto/16 :goto_12e

    .line 692
    :sswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssMeasurement$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 695
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 697
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 699
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 700
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 701
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 702
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 703
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_63
    if-ge v4, v3, :cond_84

    .line 705
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 706
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 708
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7c

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7c

    .line 712
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 713
    nop

    .line 703
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 709
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 716
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_84
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 718
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 720
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 721
    goto/16 :goto_12e

    .line 681
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_91
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssMeasurement$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 685
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 687
    goto/16 :goto_12e

    .line 669
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 672
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 673
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/V2_0/IGnssMeasurement$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 674
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 675
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 676
    goto/16 :goto_12e

    .line 658
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssMeasurement$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 661
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 662
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 663
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 664
    goto :goto_12e

    .line 645
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_ca
    const-string v0, "android.hardware.gnss@2.0::IGnssMeasurement"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback;

    move-result-object v0

    .line 648
    .local v0, "callback":Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 649
    .local v1, "enableFullTracking":Z
    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/V2_0/IGnssMeasurement$Stub;->setCallback_2_0(Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback;Z)I

    move-result v3

    .line 650
    .local v3, "_hidl_out_initRet":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 651
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 652
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 653
    goto :goto_12e

    .line 632
    .end local v0    # "callback":Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback;
    .end local v1    # "enableFullTracking":Z
    .end local v3    # "_hidl_out_initRet":I
    :sswitch_e9
    const-string v0, "android.hardware.gnss@1.1::IGnssMeasurement"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback;

    move-result-object v0

    .line 635
    .local v0, "callback":Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 636
    .restart local v1    # "enableFullTracking":Z
    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/V2_0/IGnssMeasurement$Stub;->setCallback_1_1(Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback;Z)I

    move-result v3

    .line 637
    .restart local v3    # "_hidl_out_initRet":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 638
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 639
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 640
    goto :goto_12e

    .line 622
    .end local v0    # "callback":Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback;
    .end local v1    # "enableFullTracking":Z
    .end local v3    # "_hidl_out_initRet":I
    :sswitch_108
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssMeasurement$Stub;->close()V

    .line 625
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 626
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 627
    goto :goto_12e

    .line 610
    :sswitch_115
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback;

    move-result-object v0

    .line 613
    .local v0, "callback":Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IGnssMeasurement$Stub;->setCallback(Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback;)I

    move-result v1

    .line 614
    .local v1, "_hidl_out_initRet":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 615
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 616
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 617
    nop

    .line 772
    .end local v0    # "callback":Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback;
    .end local v1    # "_hidl_out_initRet":I
    :goto_12e
    return-void

    nop

    :sswitch_data_130
    .sparse-switch
        0x1 -> :sswitch_115
        0x2 -> :sswitch_108
        0x3 -> :sswitch_e9
        0x4 -> :sswitch_ca
        0xf43484e -> :sswitch_b9
        0xf444247 -> :sswitch_a3
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

    .line 561
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 589
    const-string v0, "android.hardware.gnss@2.0::IGnssMeasurement"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 590
    return-object p0

    .line 592
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

    .line 596
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V2_0/IGnssMeasurement$Stub;->registerService(Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 551
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssMeasurement$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 583
    const/4 v0, 0x1

    return v0
.end method
