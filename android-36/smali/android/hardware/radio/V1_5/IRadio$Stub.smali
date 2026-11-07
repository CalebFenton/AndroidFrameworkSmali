.class public abstract Landroid/hardware/radio/V1_5/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_5/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 3659
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 3662
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

    .line 3680
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 3722
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 3723
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 3724
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 3725
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 3726
    return-object v0
.end method

.method public final blacklist getHashChain()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 3692
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_34

    new-array v3, v1, [B

    fill-array-data v3, :array_48

    new-array v4, v1, [B

    fill-array-data v4, :array_5c

    new-array v5, v1, [B

    fill-array-data v5, :array_70

    new-array v6, v1, [B

    fill-array-data v6, :array_84

    new-array v7, v1, [B

    fill-array-data v7, :array_98

    new-array v8, v1, [B

    fill-array-data v8, :array_ac

    filled-new-array/range {v2 .. v8}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_34
    .array-data 1
        -0x4ct
        0x54t
        -0x21t
        -0x7bt
        0x34t
        0x41t
        -0x3ft
        0x2ft
        0x6et
        0x42t
        0x5et
        -0x76t
        0x60t
        -0x23t
        0x29t
        -0x3t
        -0x5et
        0xft
        0x5et
        0x6et
        0x39t
        -0x47t
        0x3dt
        0x11t
        0x3t
        -0x1ct
        -0x4dt
        0x74t
        -0x6bt
        -0x25t
        0x38t
        -0x56t
    .end array-data

    :array_48
    .array-data 1
        -0x11t
        0x4at
        -0x49t
        0x41t
        -0x9t
        -0x19t
        0x76t
        0x2ft
        -0x4ct
        0x5et
        0x2et
        0x24t
        -0x36t
        -0x7dt
        -0x79t
        0x1ft
        0x72t
        0x0t
        0x6ct
        -0x20t
        0x5ft
        0x57t
        -0x56t
        -0x66t
        -0x23t
        -0x3bt
        0x74t
        -0x77t
        0x3dt
        -0x2et
        -0x68t
        0x72t
    .end array-data

    :array_5c
    .array-data 1
        -0x5ft
        -0x3at
        -0x50t
        0x76t
        0x1bt
        -0x35t
        -0x77t
        -0x2at
        -0x41t
        0x15t
        -0x5ft
        0x56t
        -0x7t
        0x30t
        0x6bt
        -0x80t
        -0x70t
        -0x4dt
        -0x57t
        0x16t
        -0x5ft
        0x5ft
        -0x16t
        0x16t
        -0x77t
        -0x4ct
        -0x50t
        -0x3ft
        0x73t
        -0x72t
        0x38t
        0x2ft
    .end array-data

    :array_70
    .array-data 1
        0x2bt
        0x5at
        -0x2t
        -0xat
        -0x72t
        0x3et
        0x2ft
        -0xft
        -0x26t
        -0x4at
        0x3et
        0x4ft
        0x2et
        -0x1bt
        0x73t
        0x37t
        -0x11t
        0x26t
        0x35t
        -0x14t
        -0x7ft
        0x2ft
        0x49t
        0x8t
        0xct
        -0x53t
        -0x4t
        -0x17t
        0x66t
        -0x2dt
        0x3bt
        0x52t
    .end array-data

    :array_84
    .array-data 1
        -0x7at
        -0x5t
        0x7t
        -0x66t
        0x60t
        0xbt
        0x23t
        0x1t
        -0x59t
        0x52t
        0x24t
        -0x63t
        -0x5t
        -0x4t
        0x53t
        -0x68t
        0x3at
        0x79t
        0x5dt
        0x75t
        0x2ft
        0x11t
        -0x56t
        -0x44t
        -0x4at
        -0x7dt
        0x15t
        -0x5ft
        -0x77t
        -0xat
        -0x37t
        -0x5et
    .end array-data

    :array_98
    .array-data 1
        -0x31t
        -0x56t
        -0x50t
        -0x1ct
        0x5ct
        0x5dt
        0x7bt
        0x35t
        -0x6bt
        0x3t
        0x2dt
        0x64t
        -0x63t
        -0x5et
        -0x62t
        -0x29t
        0x12t
        -0x17t
        0x20t
        -0x7t
        0x56t
        -0x3ft
        0x36t
        0x71t
        -0x11t
        -0x2dt
        0x56t
        0x2t
        -0x6t
        -0x7ft
        -0x37t
        0x23t
    .end array-data

    :array_ac
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
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3667
    new-instance v0, Ljava/util/ArrayList;

    const-string v6, "android.hardware.radio@1.0::IRadio"

    const-string v7, "android.hidl.base@1.0::IBase"

    const-string v1, "android.hardware.radio@1.5::IRadio"

    const-string v2, "android.hardware.radio@1.4::IRadio"

    const-string v3, "android.hardware.radio@1.3::IRadio"

    const-string v4, "android.hardware.radio@1.2::IRadio"

    const-string v5, "android.hardware.radio@1.1::IRadio"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 3686
    const-string v0, "android.hardware.radio@1.5::IRadio"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 3710
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 3732
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 3734
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 17
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3762
    move-object v10, p3

    const-string v1, "android.hardware.radio@1.3::IRadio"

    const-string v2, "android.hardware.radio@1.2::IRadio"

    const-string v3, "android.hardware.radio@1.1::IRadio"

    const-string v4, "android.hidl.base@1.0::IBase"

    const/4 v5, 0x0

    const-string v6, "android.hardware.radio@1.4::IRadio"

    const-string v7, "android.hardware.radio@1.5::IRadio"

    const-string v8, "android.hardware.radio@1.0::IRadio"

    sparse-switch p1, :sswitch_data_c8e

    goto/16 :goto_c8c

    .line 5646
    :sswitch_15
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5648
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->notifySyspropsChanged()V

    .line 5649
    goto/16 :goto_c8c

    .line 5635
    :sswitch_1d
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5637
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 5638
    .local v1, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5639
    invoke-virtual {v1, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5640
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5641
    goto/16 :goto_c8c

    .line 5625
    .end local v1    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2f
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5627
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->ping()V

    .line 5628
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5629
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5630
    goto/16 :goto_c8c

    .line 5620
    :sswitch_3d
    goto/16 :goto_c8c

    .line 5612
    :sswitch_3f
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5614
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setHALInstrumentation()V

    .line 5615
    goto/16 :goto_c8c

    .line 5578
    :sswitch_47
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5580
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 5581
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5583
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 5585
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5586
    .local v3, "_hidl_vec_size":I
    const-wide/16 v6, 0x8

    invoke-virtual {v2, v6, v7, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 5587
    const-wide/16 v6, 0xc

    invoke-virtual {v2, v6, v7, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 5588
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 5589
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_6e
    if-ge v5, v3, :cond_8f

    .line 5591
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 5592
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 5594
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_87

    array-length v9, v8

    const/16 v11, 0x20

    if-ne v9, v11, :cond_87

    .line 5598
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 5599
    nop

    .line 5589
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_6e

    .line 5595
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_87
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v11, "Array element is not of the expected length"

    invoke-direct {v9, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 5602
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_8f
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 5604
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 5606
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5607
    goto/16 :goto_c8c

    .line 5567
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_9c
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5569
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 5570
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5571
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5572
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5573
    goto/16 :goto_c8c

    .line 5555
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_ae
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5557
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 5558
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 5559
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 5560
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5561
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5562
    goto/16 :goto_c8c

    .line 5544
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_c4
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5546
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 5547
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5548
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 5549
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5550
    goto/16 :goto_c8c

    .line 5533
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_d6
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5535
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5536
    .local v1, "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5537
    .local v2, "persoType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5538
    .local v3, "controlKey":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->supplySimDepersonalization(IILjava/lang/String;)V

    .line 5539
    goto/16 :goto_c8c

    .line 5522
    .end local v1    # "serial":I
    .end local v2    # "persoType":I
    .end local v3    # "controlKey":Ljava/lang/String;
    :sswitch_ea
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5524
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5525
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 5526
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5527
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendCdmaSmsExpectMore(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 5528
    goto/16 :goto_c8c

    .line 5511
    .end local v1    # "serial":I
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_fe
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5513
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5514
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5515
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5516
    .local v3, "ran":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setNetworkSelectionModeManual_1_5(ILjava/lang/String;I)V

    .line 5517
    goto/16 :goto_c8c

    .line 5502
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "ran":I
    :sswitch_112
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5504
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5505
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getDataRegistrationState_1_5(I)V

    .line 5506
    goto/16 :goto_c8c

    .line 5493
    .end local v1    # "serial":I
    :sswitch_11e
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5495
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5496
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getVoiceRegistrationState_1_5(I)V

    .line 5497
    goto/16 :goto_c8c

    .line 5484
    .end local v1    # "serial":I
    :sswitch_12a
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5486
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5487
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getBarringInfo(I)V

    .line 5488
    goto/16 :goto_c8c

    .line 5474
    .end local v1    # "serial":I
    :sswitch_136
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5476
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5477
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5478
    .local v2, "indicationFilter":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setIndicationFilter_1_5(II)V

    .line 5479
    goto/16 :goto_c8c

    .line 5462
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :sswitch_146
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5464
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5465
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5466
    .local v2, "powerOn":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 5467
    .local v3, "forEmergencyCall":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 5468
    .local v4, "preferredForEmergencyCall":Z
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setRadioPower_1_5(IZZZ)V

    .line 5469
    goto/16 :goto_c8c

    .line 5452
    .end local v1    # "serial":I
    .end local v2    # "powerOn":Z
    .end local v3    # "forEmergencyCall":Z
    .end local v4    # "preferredForEmergencyCall":Z
    :sswitch_15e
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5454
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5455
    .restart local v1    # "serial":I
    invoke-static {p2}, Landroid/hardware/radio/V1_5/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5456
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/DataProfileInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setDataProfile_1_5(ILjava/util/ArrayList;)V

    .line 5457
    goto/16 :goto_c8c

    .line 5441
    .end local v1    # "serial":I
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/DataProfileInfo;>;"
    :sswitch_16e
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5443
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5444
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_5/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_5/DataProfileInfo;-><init>()V

    .line 5445
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_5/DataProfileInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_5/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5446
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setInitialAttachApn_1_5(ILandroid/hardware/radio/V1_5/DataProfileInfo;)V

    .line 5447
    goto/16 :goto_c8c

    .line 5425
    .end local v1    # "serial":I
    .end local v2    # "dataProfileInfo":Landroid/hardware/radio/V1_5/DataProfileInfo;
    :sswitch_182
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5427
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5428
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5429
    .local v2, "accessNetwork":I
    new-instance v3, Landroid/hardware/radio/V1_5/DataProfileInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_5/DataProfileInfo;-><init>()V

    .line 5430
    .local v3, "dataProfileInfo":Landroid/hardware/radio/V1_5/DataProfileInfo;
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_5/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5431
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 5432
    .local v4, "roamingAllowed":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5433
    .local v5, "reason":I
    invoke-static {p2}, Landroid/hardware/radio/V1_5/LinkAddress;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v6

    .line 5434
    .local v6, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/LinkAddress;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v7

    .line 5435
    .local v7, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setupDataCall_1_5(IILandroid/hardware/radio/V1_5/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5436
    goto/16 :goto_c8c

    .line 5414
    .end local v1    # "serial":I
    .end local v2    # "accessNetwork":I
    .end local v3    # "dataProfileInfo":Landroid/hardware/radio/V1_5/DataProfileInfo;
    .end local v4    # "roamingAllowed":Z
    .end local v5    # "reason":I
    .end local v6    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/LinkAddress;>;"
    .end local v7    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_1ab
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5416
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5417
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_5/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_5/NetworkScanRequest;-><init>()V

    .line 5418
    .local v2, "request":Landroid/hardware/radio/V1_5/NetworkScanRequest;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_5/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5419
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->startNetworkScan_1_5(ILandroid/hardware/radio/V1_5/NetworkScanRequest;)V

    .line 5420
    goto/16 :goto_c8c

    .line 5403
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_5/NetworkScanRequest;
    :sswitch_1bf
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5405
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5406
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5407
    .local v2, "specifyChannels":Z
    invoke-static {p2}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 5408
    .local v3, "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/RadioAccessSpecifier;>;"
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setSystemSelectionChannels_1_5(IZLjava/util/ArrayList;)V

    .line 5409
    goto/16 :goto_c8c

    .line 5394
    .end local v1    # "serial":I
    .end local v2    # "specifyChannels":Z
    .end local v3    # "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/RadioAccessSpecifier;>;"
    :sswitch_1d3
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5396
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5397
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->areUiccApplicationsEnabled(I)V

    .line 5398
    goto/16 :goto_c8c

    .line 5384
    .end local v1    # "serial":I
    :sswitch_1df
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5386
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5387
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5388
    .local v2, "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->enableUiccApplications(IZ)V

    .line 5389
    goto/16 :goto_c8c

    .line 5369
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :sswitch_1ef
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5371
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5372
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5373
    .local v2, "hysteresisMs":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5374
    .local v3, "hysteresisDlKbps":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 5375
    .local v4, "hysteresisUlKbps":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v5

    .line 5376
    .local v5, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v6

    .line 5377
    .local v6, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 5378
    .local v7, "accessNetwork":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setLinkCapacityReportingCriteria_1_5(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 5379
    goto/16 :goto_c8c

    .line 5357
    .end local v1    # "serial":I
    .end local v2    # "hysteresisMs":I
    .end local v3    # "hysteresisDlKbps":I
    .end local v4    # "hysteresisUlKbps":I
    .end local v5    # "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "accessNetwork":I
    :sswitch_214
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5359
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5360
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_5/SignalThresholdInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_5/SignalThresholdInfo;-><init>()V

    .line 5361
    .local v2, "signalThresholdInfo":Landroid/hardware/radio/V1_5/SignalThresholdInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5362
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5363
    .local v3, "accessNetwork":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setSignalStrengthReportingCriteria_1_5(ILandroid/hardware/radio/V1_5/SignalThresholdInfo;I)V

    .line 5364
    goto/16 :goto_c8c

    .line 5348
    .end local v1    # "serial":I
    .end local v2    # "signalThresholdInfo":Landroid/hardware/radio/V1_5/SignalThresholdInfo;
    .end local v3    # "accessNetwork":I
    :sswitch_22c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5350
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5351
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getSignalStrength_1_4(I)V

    .line 5352
    goto/16 :goto_c8c

    .line 5339
    .end local v1    # "serial":I
    :sswitch_238
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5341
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5342
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getAllowedCarriers_1_4(I)V

    .line 5343
    goto/16 :goto_c8c

    .line 5327
    .end local v1    # "serial":I
    :sswitch_244
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5329
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5330
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;

    invoke-direct {v2}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;-><init>()V

    .line 5331
    .local v2, "carriers":Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5332
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5333
    .local v3, "multiSimPolicy":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setAllowedCarriers_1_4(ILandroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V

    .line 5334
    goto/16 :goto_c8c

    .line 5317
    .end local v1    # "serial":I
    .end local v2    # "carriers":Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
    .end local v3    # "multiSimPolicy":I
    :sswitch_25c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5319
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5320
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5321
    .local v2, "networkTypeBitmap":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setPreferredNetworkTypeBitmap(II)V

    .line 5322
    goto/16 :goto_c8c

    .line 5308
    .end local v1    # "serial":I
    .end local v2    # "networkTypeBitmap":I
    :sswitch_26c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5310
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5311
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getPreferredNetworkTypeBitmap(I)V

    .line 5312
    goto/16 :goto_c8c

    .line 5297
    .end local v1    # "serial":I
    :sswitch_278
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5299
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5300
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 5301
    .local v2, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5302
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->startNetworkScan_1_4(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 5303
    goto/16 :goto_c8c

    .line 5281
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :sswitch_28c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5283
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5284
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 5285
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5286
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5287
    .local v3, "categories":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v4

    .line 5288
    .local v4, "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5289
    .local v5, "routing":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 5290
    .local v6, "hasKnownUserIntentEmergency":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v7

    .line 5291
    .local v7, "isTesting":Z
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_5/IRadio$Stub;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    .line 5292
    goto/16 :goto_c8c

    .line 5271
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    .end local v3    # "categories":I
    .end local v4    # "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "routing":I
    .end local v6    # "hasKnownUserIntentEmergency":Z
    .end local v7    # "isTesting":Z
    :sswitch_2b5
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5273
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5274
    .restart local v1    # "serial":I
    invoke-static {p2}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5275
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/DataProfileInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setDataProfile_1_4(ILjava/util/ArrayList;)V

    .line 5276
    goto/16 :goto_c8c

    .line 5260
    .end local v1    # "serial":I
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/DataProfileInfo;>;"
    :sswitch_2c5
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5262
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5263
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    .line 5264
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_4/DataProfileInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5265
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setInitialAttachApn_1_4(ILandroid/hardware/radio/V1_4/DataProfileInfo;)V

    .line 5266
    goto/16 :goto_c8c

    .line 5244
    .end local v1    # "serial":I
    .end local v2    # "dataProfileInfo":Landroid/hardware/radio/V1_4/DataProfileInfo;
    :sswitch_2d9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5246
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5247
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5248
    .local v2, "accessNetwork":I
    new-instance v3, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    .line 5249
    .local v3, "dataProfileInfo":Landroid/hardware/radio/V1_4/DataProfileInfo;
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5250
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 5251
    .local v4, "roamingAllowed":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5252
    .local v5, "reason":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v6

    .line 5253
    .local v6, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v7

    .line 5254
    .local v7, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setupDataCall_1_4(IILandroid/hardware/radio/V1_4/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5255
    goto/16 :goto_c8c

    .line 5235
    .end local v1    # "serial":I
    .end local v2    # "accessNetwork":I
    .end local v3    # "dataProfileInfo":Landroid/hardware/radio/V1_4/DataProfileInfo;
    .end local v4    # "roamingAllowed":Z
    .end local v5    # "reason":I
    .end local v6    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_302
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5237
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5238
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getModemStackStatus(I)V

    .line 5239
    goto/16 :goto_c8c

    .line 5225
    .end local v1    # "serial":I
    :sswitch_30e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5227
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5228
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5229
    .local v2, "on":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->enableModem(IZ)V

    .line 5230
    goto/16 :goto_c8c

    .line 5214
    .end local v1    # "serial":I
    .end local v2    # "on":Z
    :sswitch_31e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5216
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5217
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5218
    .local v2, "specifyChannels":Z
    invoke-static {p2}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 5219
    .local v3, "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_1/RadioAccessSpecifier;>;"
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setSystemSelectionChannels(IZLjava/util/ArrayList;)V

    .line 5220
    goto/16 :goto_c8c

    .line 5203
    .end local v1    # "serial":I
    .end local v2    # "specifyChannels":Z
    .end local v3    # "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_1/RadioAccessSpecifier;>;"
    :sswitch_332
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5205
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5206
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5207
    .local v2, "cid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5208
    .local v3, "reason":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 5209
    goto/16 :goto_c8c

    .line 5185
    .end local v1    # "serial":I
    .end local v2    # "cid":I
    .end local v3    # "reason":I
    :sswitch_346
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5187
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5188
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5189
    .local v2, "accessNetwork":I
    new-instance v3, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 5190
    .local v3, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5191
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 5192
    .local v4, "modemCognitive":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    .line 5193
    .local v5, "roamingAllowed":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 5194
    .local v6, "isRoaming":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 5195
    .local v7, "reason":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v8

    .line 5196
    .local v8, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v9

    .line 5197
    .local v9, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5198
    goto/16 :goto_c8c

    .line 5170
    .end local v1    # "serial":I
    .end local v2    # "accessNetwork":I
    .end local v3    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v4    # "modemCognitive":Z
    .end local v5    # "roamingAllowed":Z
    .end local v6    # "isRoaming":Z
    .end local v7    # "reason":I
    .end local v8    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_377
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5172
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5173
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5174
    .local v2, "hysteresisMs":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5175
    .local v3, "hysteresisDlKbps":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 5176
    .local v4, "hysteresisUlKbps":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v5

    .line 5177
    .local v5, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v6

    .line 5178
    .local v6, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 5179
    .local v7, "accessNetwork":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 5180
    goto/16 :goto_c8c

    .line 5157
    .end local v1    # "serial":I
    .end local v2    # "hysteresisMs":I
    .end local v3    # "hysteresisDlKbps":I
    .end local v4    # "hysteresisUlKbps":I
    .end local v5    # "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "accessNetwork":I
    :sswitch_39c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5159
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5160
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5161
    .restart local v2    # "hysteresisMs":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5162
    .local v3, "hysteresisDb":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v4

    .line 5163
    .local v4, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5164
    .local v5, "accessNetwork":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 5165
    goto/16 :goto_c8c

    .line 5147
    .end local v1    # "serial":I
    .end local v2    # "hysteresisMs":I
    .end local v3    # "hysteresisDb":I
    .end local v4    # "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "accessNetwork":I
    :sswitch_3b9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5149
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5150
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5151
    .local v2, "indicationFilter":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 5152
    goto/16 :goto_c8c

    .line 5136
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :sswitch_3c9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5138
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5139
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 5140
    .local v2, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5141
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 5142
    goto/16 :goto_c8c

    .line 5126
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :sswitch_3dd
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5128
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5129
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5130
    .local v2, "sessionHandle":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->stopKeepalive(II)V

    .line 5131
    goto/16 :goto_c8c

    .line 5115
    .end local v1    # "serial":I
    .end local v2    # "sessionHandle":I
    :sswitch_3ed
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5117
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5118
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 5119
    .local v2, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5120
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 5121
    goto/16 :goto_c8c

    .line 5106
    .end local v1    # "serial":I
    .end local v2    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :sswitch_401
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5108
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5109
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->stopNetworkScan(I)V

    .line 5110
    goto/16 :goto_c8c

    .line 5095
    .end local v1    # "serial":I
    :sswitch_40d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5097
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5098
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 5099
    .local v2, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5100
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 5101
    goto/16 :goto_c8c

    .line 5085
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :sswitch_421
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5087
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5088
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5089
    .local v2, "powerUp":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 5090
    goto/16 :goto_c8c

    .line 5074
    .end local v1    # "serial":I
    .end local v2    # "powerUp":I
    :sswitch_431
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5076
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5077
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 5078
    .local v2, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5079
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 5080
    goto/16 :goto_c8c

    .line 5066
    .end local v1    # "serial":I
    .end local v2    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :sswitch_445
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5068
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->responseAcknowledgement()V

    .line 5069
    goto/16 :goto_c8c

    .line 5056
    :sswitch_44d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5058
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5059
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5060
    .local v2, "powerUp":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setSimCardPower(IZ)V

    .line 5061
    goto/16 :goto_c8c

    .line 5046
    .end local v1    # "serial":I
    .end local v2    # "powerUp":Z
    :sswitch_45d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5048
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5049
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5050
    .local v2, "indicationFilter":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setIndicationFilter(II)V

    .line 5051
    goto/16 :goto_c8c

    .line 5035
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :sswitch_46d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5037
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5038
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5039
    .local v2, "deviceStateType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 5040
    .local v3, "state":Z
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 5041
    goto/16 :goto_c8c

    .line 5026
    .end local v1    # "serial":I
    .end local v2    # "deviceStateType":I
    .end local v3    # "state":Z
    :sswitch_481
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5028
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5029
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getAllowedCarriers(I)V

    .line 5030
    goto/16 :goto_c8c

    .line 5014
    .end local v1    # "serial":I
    :sswitch_48d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5016
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5017
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5018
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 5019
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5020
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 5021
    goto/16 :goto_c8c

    .line 5005
    .end local v1    # "serial":I
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :sswitch_4a5
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5007
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5008
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getModemActivityInfo(I)V

    .line 5009
    goto/16 :goto_c8c

    .line 4996
    .end local v1    # "serial":I
    :sswitch_4b1
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4998
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4999
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->pullLceData(I)V

    .line 5000
    goto/16 :goto_c8c

    .line 4987
    .end local v1    # "serial":I
    :sswitch_4bd
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4989
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4990
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->stopLceService(I)V

    .line 4991
    goto/16 :goto_c8c

    .line 4976
    .end local v1    # "serial":I
    :sswitch_4c9
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4978
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4979
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4980
    .local v2, "reportInterval":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4981
    .local v3, "pullMode":Z
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->startLceService(IIZ)V

    .line 4982
    goto/16 :goto_c8c

    .line 4965
    .end local v1    # "serial":I
    .end local v2    # "reportInterval":I
    .end local v3    # "pullMode":Z
    :sswitch_4dd
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4967
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4968
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4969
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4970
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4971
    goto/16 :goto_c8c

    .line 4956
    .end local v1    # "serial":I
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_4f1
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4958
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4959
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getRadioCapability(I)V

    .line 4960
    goto/16 :goto_c8c

    .line 4947
    .end local v1    # "serial":I
    :sswitch_4fd
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4949
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4950
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->requestShutdown(I)V

    .line 4951
    goto/16 :goto_c8c

    .line 4936
    .end local v1    # "serial":I
    :sswitch_509
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4938
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4939
    .restart local v1    # "serial":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4940
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4941
    .local v3, "isRoaming":Z
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 4942
    goto/16 :goto_c8c

    .line 4924
    .end local v1    # "serial":I
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v3    # "isRoaming":Z
    :sswitch_51d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4926
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4927
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4928
    .local v2, "authContext":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4929
    .local v3, "authData":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4930
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_5/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 4931
    goto/16 :goto_c8c

    .line 4915
    .end local v1    # "serial":I
    .end local v2    # "authContext":I
    .end local v3    # "authData":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :sswitch_535
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4917
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4918
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getHardwareConfig(I)V

    .line 4919
    goto/16 :goto_c8c

    .line 4905
    .end local v1    # "serial":I
    :sswitch_541
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4907
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4908
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4909
    .local v2, "allow":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setDataAllowed(IZ)V

    .line 4910
    goto/16 :goto_c8c

    .line 4894
    .end local v1    # "serial":I
    .end local v2    # "allow":Z
    :sswitch_551
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4896
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4897
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 4898
    .local v2, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4899
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 4900
    goto/16 :goto_c8c

    .line 4884
    .end local v1    # "serial":I
    .end local v2    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :sswitch_565
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4886
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4887
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4888
    .local v2, "resetType":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->nvResetConfig(II)V

    .line 4889
    goto/16 :goto_c8c

    .line 4874
    .end local v1    # "serial":I
    .end local v2    # "resetType":I
    :sswitch_575
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4876
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4877
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4878
    .local v2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 4879
    goto/16 :goto_c8c

    .line 4863
    .end local v1    # "serial":I
    .end local v2    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_585
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4865
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4866
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 4867
    .local v2, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4868
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 4869
    goto/16 :goto_c8c

    .line 4853
    .end local v1    # "serial":I
    .end local v2    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :sswitch_599
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4855
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4856
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4857
    .local v2, "itemId":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->nvReadItem(II)V

    .line 4858
    goto/16 :goto_c8c

    .line 4842
    .end local v1    # "serial":I
    .end local v2    # "itemId":I
    :sswitch_5a9
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4844
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4845
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4846
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4847
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4848
    goto/16 :goto_c8c

    .line 4832
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :sswitch_5bd
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4834
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4835
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4836
    .local v2, "channelId":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 4837
    goto/16 :goto_c8c

    .line 4821
    .end local v1    # "serial":I
    .end local v2    # "channelId":I
    :sswitch_5cd
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4823
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4824
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4825
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4826
    .local v3, "p2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 4827
    goto/16 :goto_c8c

    .line 4810
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    .end local v3    # "p2":I
    :sswitch_5e1
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4812
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4813
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4814
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4815
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4816
    goto/16 :goto_c8c

    .line 4799
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :sswitch_5f5
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4801
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4802
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 4803
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4804
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 4805
    goto/16 :goto_c8c

    .line 4790
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :sswitch_609
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4792
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4793
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getImsRegistrationState(I)V

    .line 4794
    goto/16 :goto_c8c

    .line 4777
    .end local v1    # "serial":I
    :sswitch_615
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4779
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4780
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4781
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4782
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4783
    .local v3, "modemCognitive":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 4784
    .local v4, "isRoaming":Z
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 4785
    goto/16 :goto_c8c

    .line 4767
    .end local v1    # "serial":I
    .end local v2    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v3    # "modemCognitive":Z
    .end local v4    # "isRoaming":Z
    :sswitch_631
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4769
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4770
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4771
    .local v2, "rate":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setCellInfoListRate(II)V

    .line 4772
    goto/16 :goto_c8c

    .line 4758
    .end local v1    # "serial":I
    .end local v2    # "rate":I
    :sswitch_641
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4760
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4761
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getCellInfoList(I)V

    .line 4762
    goto/16 :goto_c8c

    .line 4749
    .end local v1    # "serial":I
    :sswitch_64d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4751
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4752
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 4753
    goto/16 :goto_c8c

    .line 4739
    .end local v1    # "serial":I
    :sswitch_659
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4741
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4742
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4743
    .local v2, "contents":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 4744
    goto/16 :goto_c8c

    .line 4728
    .end local v1    # "serial":I
    .end local v2    # "contents":Ljava/lang/String;
    :sswitch_669
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4730
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4731
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4732
    .local v2, "success":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4733
    .local v3, "ackPdu":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 4734
    goto/16 :goto_c8c

    .line 4718
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "ackPdu":Ljava/lang/String;
    :sswitch_67d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4720
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4721
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4722
    .local v2, "challenge":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 4723
    goto/16 :goto_c8c

    .line 4709
    .end local v1    # "serial":I
    .end local v2    # "challenge":Ljava/lang/String;
    :sswitch_68d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4711
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4712
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 4713
    goto/16 :goto_c8c

    .line 4700
    .end local v1    # "serial":I
    :sswitch_699
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4702
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4703
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 4704
    goto/16 :goto_c8c

    .line 4690
    .end local v1    # "serial":I
    :sswitch_6a5
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4692
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4693
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4694
    .local v2, "available":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 4695
    goto/16 :goto_c8c

    .line 4680
    .end local v1    # "serial":I
    .end local v2    # "available":Z
    :sswitch_6b5
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4682
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4683
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4684
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 4685
    goto/16 :goto_c8c

    .line 4671
    .end local v1    # "serial":I
    .end local v2    # "smsc":Ljava/lang/String;
    :sswitch_6c5
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4673
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4674
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getSmscAddress(I)V

    .line 4675
    goto/16 :goto_c8c

    .line 4662
    .end local v1    # "serial":I
    :sswitch_6d1
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4664
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4665
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 4666
    goto/16 :goto_c8c

    .line 4653
    .end local v1    # "serial":I
    :sswitch_6dd
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4655
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4656
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getDeviceIdentity(I)V

    .line 4657
    goto/16 :goto_c8c

    .line 4643
    .end local v1    # "serial":I
    :sswitch_6e9
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4645
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4646
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4647
    .local v2, "index":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 4648
    goto/16 :goto_c8c

    .line 4632
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :sswitch_6f9
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4634
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4635
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 4636
    .local v2, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4637
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 4638
    goto/16 :goto_c8c

    .line 4623
    .end local v1    # "serial":I
    .end local v2    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :sswitch_70d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4625
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4626
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getCDMASubscription(I)V

    .line 4627
    goto/16 :goto_c8c

    .line 4613
    .end local v1    # "serial":I
    :sswitch_719
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4615
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4616
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4617
    .local v2, "activate":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 4618
    goto/16 :goto_c8c

    .line 4603
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :sswitch_729
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4605
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4606
    .restart local v1    # "serial":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4607
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 4608
    goto/16 :goto_c8c

    .line 4594
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :sswitch_739
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4596
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4597
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 4598
    goto/16 :goto_c8c

    .line 4584
    .end local v1    # "serial":I
    :sswitch_745
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4586
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4587
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4588
    .local v2, "activate":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 4589
    goto/16 :goto_c8c

    .line 4574
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :sswitch_755
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4576
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4577
    .restart local v1    # "serial":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4578
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 4579
    goto/16 :goto_c8c

    .line 4565
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :sswitch_765
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4567
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4568
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 4569
    goto/16 :goto_c8c

    .line 4554
    .end local v1    # "serial":I
    :sswitch_771
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4556
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4557
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 4558
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4559
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 4560
    goto/16 :goto_c8c

    .line 4543
    .end local v1    # "serial":I
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :sswitch_785
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4545
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4546
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 4547
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4548
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 4549
    goto/16 :goto_c8c

    .line 4531
    .end local v1    # "serial":I
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_799
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4533
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4534
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4535
    .local v2, "dtmf":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4536
    .local v3, "on":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 4537
    .local v4, "off":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 4538
    goto/16 :goto_c8c

    .line 4521
    .end local v1    # "serial":I
    .end local v2    # "dtmf":Ljava/lang/String;
    .end local v3    # "on":I
    .end local v4    # "off":I
    :sswitch_7b1
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4523
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4524
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4525
    .local v2, "featureCode":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 4526
    goto/16 :goto_c8c

    .line 4512
    .end local v1    # "serial":I
    .end local v2    # "featureCode":Ljava/lang/String;
    :sswitch_7c1
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4514
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4515
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 4516
    goto/16 :goto_c8c

    .line 4502
    .end local v1    # "serial":I
    :sswitch_7cd
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4504
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4505
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4506
    .local v2, "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 4507
    goto/16 :goto_c8c

    .line 4493
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :sswitch_7dd
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4495
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4496
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getTTYMode(I)V

    .line 4497
    goto/16 :goto_c8c

    .line 4483
    .end local v1    # "serial":I
    :sswitch_7e9
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4485
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4486
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4487
    .local v2, "mode":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setTTYMode(II)V

    .line 4488
    goto/16 :goto_c8c

    .line 4474
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :sswitch_7f9
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4476
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4477
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 4478
    goto/16 :goto_c8c

    .line 4464
    .end local v1    # "serial":I
    :sswitch_805
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4466
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4467
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4468
    .local v2, "type":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 4469
    goto/16 :goto_c8c

    .line 4454
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :sswitch_815
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4456
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4457
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4458
    .local v2, "cdmaSub":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 4459
    goto/16 :goto_c8c

    .line 4444
    .end local v1    # "serial":I
    .end local v2    # "cdmaSub":I
    :sswitch_825
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4446
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4447
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4448
    .local v2, "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 4449
    goto/16 :goto_c8c

    .line 4435
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :sswitch_835
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4437
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4438
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getNeighboringCids(I)V

    .line 4439
    goto/16 :goto_c8c

    .line 4426
    .end local v1    # "serial":I
    :sswitch_841
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4428
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4429
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 4430
    goto/16 :goto_c8c

    .line 4416
    .end local v1    # "serial":I
    :sswitch_84d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4418
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4419
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4420
    .local v2, "nwType":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 4421
    goto/16 :goto_c8c

    .line 4407
    .end local v1    # "serial":I
    .end local v2    # "nwType":I
    :sswitch_85d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4409
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4410
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->explicitCallTransfer(I)V

    .line 4411
    goto/16 :goto_c8c

    .line 4397
    .end local v1    # "serial":I
    :sswitch_869
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4399
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4400
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4401
    .local v2, "accept":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 4402
    goto/16 :goto_c8c

    .line 4387
    .end local v1    # "serial":I
    .end local v2    # "accept":Z
    :sswitch_879
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4389
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4390
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4391
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 4392
    goto/16 :goto_c8c

    .line 4377
    .end local v1    # "serial":I
    .end local v2    # "commandResponse":Ljava/lang/String;
    :sswitch_889
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4379
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4380
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4381
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 4382
    goto/16 :goto_c8c

    .line 4368
    .end local v1    # "serial":I
    .end local v2    # "command":Ljava/lang/String;
    :sswitch_899
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4370
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4371
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getAvailableBandModes(I)V

    .line 4372
    goto/16 :goto_c8c

    .line 4358
    .end local v1    # "serial":I
    :sswitch_8a5
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4360
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4361
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4362
    .local v2, "mode":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setBandMode(II)V

    .line 4363
    goto/16 :goto_c8c

    .line 4348
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :sswitch_8b5
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4350
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4351
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4352
    .local v2, "index":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 4353
    goto/16 :goto_c8c

    .line 4337
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :sswitch_8c5
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4339
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4340
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 4341
    .local v2, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4342
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 4343
    goto/16 :goto_c8c

    .line 4327
    .end local v1    # "serial":I
    .end local v2    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :sswitch_8d9
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4329
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4330
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4331
    .local v2, "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 4332
    goto/16 :goto_c8c

    .line 4318
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :sswitch_8e9
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4320
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4321
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getDataCallList(I)V

    .line 4322
    goto/16 :goto_c8c

    .line 4309
    .end local v1    # "serial":I
    :sswitch_8f5
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4311
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4312
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getClip(I)V

    .line 4313
    goto/16 :goto_c8c

    .line 4300
    .end local v1    # "serial":I
    :sswitch_901
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4302
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4303
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getMute(I)V

    .line 4304
    goto/16 :goto_c8c

    .line 4290
    .end local v1    # "serial":I
    :sswitch_90d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4292
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4293
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4294
    .restart local v2    # "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setMute(IZ)V

    .line 4295
    goto/16 :goto_c8c

    .line 4280
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :sswitch_91d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4282
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4283
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4284
    .local v2, "gsmIndex":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->separateConnection(II)V

    .line 4285
    goto/16 :goto_c8c

    .line 4271
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :sswitch_92d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4273
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4274
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getBasebandVersion(I)V

    .line 4275
    goto/16 :goto_c8c

    .line 4262
    .end local v1    # "serial":I
    :sswitch_939
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4264
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4265
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->stopDtmf(I)V

    .line 4266
    goto/16 :goto_c8c

    .line 4252
    .end local v1    # "serial":I
    :sswitch_945
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4254
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4255
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4256
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 4257
    goto/16 :goto_c8c

    .line 4243
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :sswitch_955
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4245
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4246
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getAvailableNetworks(I)V

    .line 4247
    goto/16 :goto_c8c

    .line 4233
    .end local v1    # "serial":I
    :sswitch_961
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4235
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4236
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4237
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 4238
    goto/16 :goto_c8c

    .line 4224
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :sswitch_971
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4226
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4227
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 4228
    goto/16 :goto_c8c

    .line 4215
    .end local v1    # "serial":I
    :sswitch_97d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4217
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4218
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 4219
    goto/16 :goto_c8c

    .line 4203
    .end local v1    # "serial":I
    :sswitch_989
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4205
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4206
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4207
    .local v2, "facility":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4208
    .local v3, "oldPassword":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4209
    .local v4, "newPassword":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4210
    goto/16 :goto_c8c

    .line 4189
    .end local v1    # "serial":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "oldPassword":Ljava/lang/String;
    .end local v4    # "newPassword":Ljava/lang/String;
    :sswitch_9a1
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4191
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4192
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4193
    .restart local v2    # "facility":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4194
    .local v3, "lockState":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4195
    .local v4, "password":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4196
    .local v5, "serviceClass":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 4197
    .local v6, "appId":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 4198
    goto/16 :goto_c8c

    .line 4176
    .end local v1    # "serial":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "lockState":Z
    .end local v4    # "password":Ljava/lang/String;
    .end local v5    # "serviceClass":I
    .end local v6    # "appId":Ljava/lang/String;
    :sswitch_9c2
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4178
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4179
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4180
    .restart local v2    # "facility":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4181
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 4182
    .local v4, "serviceClass":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4183
    .local v5, "appId":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 4184
    goto/16 :goto_c8c

    .line 4165
    .end local v1    # "serial":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    .end local v4    # "serviceClass":I
    .end local v5    # "appId":Ljava/lang/String;
    :sswitch_9df
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4167
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4168
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4169
    .local v2, "cid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4170
    .local v3, "reasonRadioShutDown":Z
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 4171
    goto/16 :goto_c8c

    .line 4156
    .end local v1    # "serial":I
    .end local v2    # "cid":I
    .end local v3    # "reasonRadioShutDown":Z
    :sswitch_9f3
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4158
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4159
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->acceptCall(I)V

    .line 4160
    goto/16 :goto_c8c

    .line 4145
    .end local v1    # "serial":I
    :sswitch_9ff
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4147
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4148
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4149
    .local v2, "success":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4150
    .local v3, "cause":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 4151
    goto/16 :goto_c8c

    .line 4134
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :sswitch_a13
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4136
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4137
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4138
    .local v2, "enable":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4139
    .local v3, "serviceClass":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setCallWaiting(IZI)V

    .line 4140
    goto/16 :goto_c8c

    .line 4124
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :sswitch_a27
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4126
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4127
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4128
    .local v2, "serviceClass":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getCallWaiting(II)V

    .line 4129
    goto/16 :goto_c8c

    .line 4113
    .end local v1    # "serial":I
    .end local v2    # "serviceClass":I
    :sswitch_a37
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4115
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4116
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 4117
    .local v2, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4118
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 4119
    goto/16 :goto_c8c

    .line 4102
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :sswitch_a4b
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4104
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4105
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 4106
    .restart local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4107
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 4108
    goto/16 :goto_c8c

    .line 4092
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :sswitch_a5f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4094
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4095
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4096
    .local v2, "status":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setClir(II)V

    .line 4097
    goto/16 :goto_c8c

    .line 4083
    .end local v1    # "serial":I
    .end local v2    # "status":I
    :sswitch_a6f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4085
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4086
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getClir(I)V

    .line 4087
    goto/16 :goto_c8c

    .line 4074
    .end local v1    # "serial":I
    :sswitch_a7b
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4076
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4077
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->cancelPendingUssd(I)V

    .line 4078
    goto/16 :goto_c8c

    .line 4064
    .end local v1    # "serial":I
    :sswitch_a87
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4066
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4067
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4068
    .local v2, "ussd":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 4069
    goto/16 :goto_c8c

    .line 4053
    .end local v1    # "serial":I
    .end local v2    # "ussd":Ljava/lang/String;
    :sswitch_a97
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4055
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4056
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 4057
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4058
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 4059
    goto/16 :goto_c8c

    .line 4038
    .end local v1    # "serial":I
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :sswitch_aab
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4040
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4041
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4042
    .local v2, "radioTechnology":I
    new-instance v3, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4043
    .local v3, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4044
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 4045
    .local v4, "modemCognitive":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    .line 4046
    .local v5, "roamingAllowed":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 4047
    .local v6, "isRoaming":Z
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 4048
    goto/16 :goto_c8c

    .line 4027
    .end local v1    # "serial":I
    .end local v2    # "radioTechnology":I
    .end local v3    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v4    # "modemCognitive":Z
    .end local v5    # "roamingAllowed":Z
    .end local v6    # "isRoaming":Z
    :sswitch_ad0
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4029
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4030
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 4031
    .local v2, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4032
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 4033
    goto/16 :goto_c8c

    .line 4016
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_ae4
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4018
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4019
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 4020
    .restart local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4021
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 4022
    goto/16 :goto_c8c

    .line 4006
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_af8
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4008
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4009
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4010
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 4011
    goto/16 :goto_c8c

    .line 3996
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :sswitch_b08
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3998
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3999
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4000
    .local v2, "on":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setRadioPower(IZ)V

    .line 4001
    goto/16 :goto_c8c

    .line 3987
    .end local v1    # "serial":I
    .end local v2    # "on":Z
    :sswitch_b18
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3989
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3990
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getOperator(I)V

    .line 3991
    goto/16 :goto_c8c

    .line 3978
    .end local v1    # "serial":I
    :sswitch_b24
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3980
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3981
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getDataRegistrationState(I)V

    .line 3982
    goto/16 :goto_c8c

    .line 3969
    .end local v1    # "serial":I
    :sswitch_b30
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3971
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3972
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 3973
    goto/16 :goto_c8c

    .line 3960
    .end local v1    # "serial":I
    :sswitch_b3c
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3962
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3963
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getSignalStrength(I)V

    .line 3964
    goto/16 :goto_c8c

    .line 3951
    .end local v1    # "serial":I
    :sswitch_b48
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3953
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3954
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getLastCallFailCause(I)V

    .line 3955
    goto/16 :goto_c8c

    .line 3942
    .end local v1    # "serial":I
    :sswitch_b54
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3944
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3945
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->rejectCall(I)V

    .line 3946
    goto/16 :goto_c8c

    .line 3933
    .end local v1    # "serial":I
    :sswitch_b60
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3935
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3936
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->conference(I)V

    .line 3937
    goto/16 :goto_c8c

    .line 3924
    .end local v1    # "serial":I
    :sswitch_b6c
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3926
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3927
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 3928
    goto/16 :goto_c8c

    .line 3915
    .end local v1    # "serial":I
    :sswitch_b78
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3917
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3918
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 3919
    goto/16 :goto_c8c

    .line 3906
    .end local v1    # "serial":I
    :sswitch_b84
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3908
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3909
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 3910
    goto/16 :goto_c8c

    .line 3896
    .end local v1    # "serial":I
    :sswitch_b90
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3898
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3899
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3900
    .local v2, "gsmIndex":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->hangup(II)V

    .line 3901
    goto/16 :goto_c8c

    .line 3886
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :sswitch_ba0
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3888
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3889
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3890
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 3891
    goto/16 :goto_c8c

    .line 3875
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    :sswitch_bb0
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3877
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3878
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 3879
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3880
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 3881
    goto/16 :goto_c8c

    .line 3866
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :sswitch_bc4
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3868
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3869
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getCurrentCalls(I)V

    .line 3870
    goto/16 :goto_c8c

    .line 3856
    .end local v1    # "serial":I
    :sswitch_bd0
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3858
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3859
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3860
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 3861
    goto/16 :goto_c8c

    .line 3844
    .end local v1    # "serial":I
    .end local v2    # "netPin":Ljava/lang/String;
    :sswitch_be0
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3846
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3847
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3848
    .local v2, "oldPin2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3849
    .local v3, "newPin2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3850
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_5/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3851
    goto/16 :goto_c8c

    .line 3832
    .end local v1    # "serial":I
    .end local v2    # "oldPin2":Ljava/lang/String;
    .end local v3    # "newPin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :sswitch_bf8
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3834
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3835
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3836
    .local v2, "oldPin":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3837
    .local v3, "newPin":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3838
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_5/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3839
    goto/16 :goto_c8c

    .line 3820
    .end local v1    # "serial":I
    .end local v2    # "oldPin":Ljava/lang/String;
    .end local v3    # "newPin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :sswitch_c10
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3822
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3823
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3824
    .local v2, "puk2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3825
    .local v3, "pin2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3826
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_5/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3827
    goto :goto_c8c

    .line 3809
    .end local v1    # "serial":I
    .end local v2    # "puk2":Ljava/lang/String;
    .end local v3    # "pin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :sswitch_c27
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3811
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3812
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3813
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3814
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 3815
    goto :goto_c8c

    .line 3797
    .end local v1    # "serial":I
    .end local v2    # "pin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_c3a
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3799
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3800
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3801
    .local v2, "puk":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3802
    .local v3, "pin":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3803
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_5/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3804
    goto :goto_c8c

    .line 3786
    .end local v1    # "serial":I
    .end local v2    # "puk":Ljava/lang/String;
    .end local v3    # "pin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :sswitch_c51
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3788
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3789
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3790
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3791
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 3792
    goto :goto_c8c

    .line 3777
    .end local v1    # "serial":I
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_c64
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3779
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3780
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getIccCardStatus(I)V

    .line 3781
    goto :goto_c8c

    .line 3765
    .end local v1    # "serial":I
    :sswitch_c6f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3767
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v1

    .line 3768
    .local v1, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v2

    .line 3769
    .local v2, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 3770
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3771
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3772
    nop

    .line 5658
    .end local v1    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    .end local v2    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    :goto_c8c
    return-void

    nop

    :sswitch_data_c8e
    .sparse-switch
        0x1 -> :sswitch_c6f
        0x2 -> :sswitch_c64
        0x3 -> :sswitch_c51
        0x4 -> :sswitch_c3a
        0x5 -> :sswitch_c27
        0x6 -> :sswitch_c10
        0x7 -> :sswitch_bf8
        0x8 -> :sswitch_be0
        0x9 -> :sswitch_bd0
        0xa -> :sswitch_bc4
        0xb -> :sswitch_bb0
        0xc -> :sswitch_ba0
        0xd -> :sswitch_b90
        0xe -> :sswitch_b84
        0xf -> :sswitch_b78
        0x10 -> :sswitch_b6c
        0x11 -> :sswitch_b60
        0x12 -> :sswitch_b54
        0x13 -> :sswitch_b48
        0x14 -> :sswitch_b3c
        0x15 -> :sswitch_b30
        0x16 -> :sswitch_b24
        0x17 -> :sswitch_b18
        0x18 -> :sswitch_b08
        0x19 -> :sswitch_af8
        0x1a -> :sswitch_ae4
        0x1b -> :sswitch_ad0
        0x1c -> :sswitch_aab
        0x1d -> :sswitch_a97
        0x1e -> :sswitch_a87
        0x1f -> :sswitch_a7b
        0x20 -> :sswitch_a6f
        0x21 -> :sswitch_a5f
        0x22 -> :sswitch_a4b
        0x23 -> :sswitch_a37
        0x24 -> :sswitch_a27
        0x25 -> :sswitch_a13
        0x26 -> :sswitch_9ff
        0x27 -> :sswitch_9f3
        0x28 -> :sswitch_9df
        0x29 -> :sswitch_9c2
        0x2a -> :sswitch_9a1
        0x2b -> :sswitch_989
        0x2c -> :sswitch_97d
        0x2d -> :sswitch_971
        0x2e -> :sswitch_961
        0x2f -> :sswitch_955
        0x30 -> :sswitch_945
        0x31 -> :sswitch_939
        0x32 -> :sswitch_92d
        0x33 -> :sswitch_91d
        0x34 -> :sswitch_90d
        0x35 -> :sswitch_901
        0x36 -> :sswitch_8f5
        0x37 -> :sswitch_8e9
        0x38 -> :sswitch_8d9
        0x39 -> :sswitch_8c5
        0x3a -> :sswitch_8b5
        0x3b -> :sswitch_8a5
        0x3c -> :sswitch_899
        0x3d -> :sswitch_889
        0x3e -> :sswitch_879
        0x3f -> :sswitch_869
        0x40 -> :sswitch_85d
        0x41 -> :sswitch_84d
        0x42 -> :sswitch_841
        0x43 -> :sswitch_835
        0x44 -> :sswitch_825
        0x45 -> :sswitch_815
        0x46 -> :sswitch_805
        0x47 -> :sswitch_7f9
        0x48 -> :sswitch_7e9
        0x49 -> :sswitch_7dd
        0x4a -> :sswitch_7cd
        0x4b -> :sswitch_7c1
        0x4c -> :sswitch_7b1
        0x4d -> :sswitch_799
        0x4e -> :sswitch_785
        0x4f -> :sswitch_771
        0x50 -> :sswitch_765
        0x51 -> :sswitch_755
        0x52 -> :sswitch_745
        0x53 -> :sswitch_739
        0x54 -> :sswitch_729
        0x55 -> :sswitch_719
        0x56 -> :sswitch_70d
        0x57 -> :sswitch_6f9
        0x58 -> :sswitch_6e9
        0x59 -> :sswitch_6dd
        0x5a -> :sswitch_6d1
        0x5b -> :sswitch_6c5
        0x5c -> :sswitch_6b5
        0x5d -> :sswitch_6a5
        0x5e -> :sswitch_699
        0x5f -> :sswitch_68d
        0x60 -> :sswitch_67d
        0x61 -> :sswitch_669
        0x62 -> :sswitch_659
        0x63 -> :sswitch_64d
        0x64 -> :sswitch_641
        0x65 -> :sswitch_631
        0x66 -> :sswitch_615
        0x67 -> :sswitch_609
        0x68 -> :sswitch_5f5
        0x69 -> :sswitch_5e1
        0x6a -> :sswitch_5cd
        0x6b -> :sswitch_5bd
        0x6c -> :sswitch_5a9
        0x6d -> :sswitch_599
        0x6e -> :sswitch_585
        0x6f -> :sswitch_575
        0x70 -> :sswitch_565
        0x71 -> :sswitch_551
        0x72 -> :sswitch_541
        0x73 -> :sswitch_535
        0x74 -> :sswitch_51d
        0x75 -> :sswitch_509
        0x76 -> :sswitch_4fd
        0x77 -> :sswitch_4f1
        0x78 -> :sswitch_4dd
        0x79 -> :sswitch_4c9
        0x7a -> :sswitch_4bd
        0x7b -> :sswitch_4b1
        0x7c -> :sswitch_4a5
        0x7d -> :sswitch_48d
        0x7e -> :sswitch_481
        0x7f -> :sswitch_46d
        0x80 -> :sswitch_45d
        0x81 -> :sswitch_44d
        0x82 -> :sswitch_445
        0x83 -> :sswitch_431
        0x84 -> :sswitch_421
        0x85 -> :sswitch_40d
        0x86 -> :sswitch_401
        0x87 -> :sswitch_3ed
        0x88 -> :sswitch_3dd
        0x89 -> :sswitch_3c9
        0x8a -> :sswitch_3b9
        0x8b -> :sswitch_39c
        0x8c -> :sswitch_377
        0x8d -> :sswitch_346
        0x8e -> :sswitch_332
        0x8f -> :sswitch_31e
        0x90 -> :sswitch_30e
        0x91 -> :sswitch_302
        0x92 -> :sswitch_2d9
        0x93 -> :sswitch_2c5
        0x94 -> :sswitch_2b5
        0x95 -> :sswitch_28c
        0x96 -> :sswitch_278
        0x97 -> :sswitch_26c
        0x98 -> :sswitch_25c
        0x99 -> :sswitch_244
        0x9a -> :sswitch_238
        0x9b -> :sswitch_22c
        0x9c -> :sswitch_214
        0x9d -> :sswitch_1ef
        0x9e -> :sswitch_1df
        0x9f -> :sswitch_1d3
        0xa0 -> :sswitch_1bf
        0xa1 -> :sswitch_1ab
        0xa2 -> :sswitch_182
        0xa3 -> :sswitch_16e
        0xa4 -> :sswitch_15e
        0xa5 -> :sswitch_146
        0xa6 -> :sswitch_136
        0xa7 -> :sswitch_12a
        0xa8 -> :sswitch_11e
        0xa9 -> :sswitch_112
        0xaa -> :sswitch_fe
        0xab -> :sswitch_ea
        0xac -> :sswitch_d6
        0xf43484e -> :sswitch_c4
        0xf444247 -> :sswitch_ae
        0xf445343 -> :sswitch_9c
        0xf485348 -> :sswitch_47
        0xf494e54 -> :sswitch_3f
        0xf4c5444 -> :sswitch_3d
        0xf504e47 -> :sswitch_2f
        0xf524546 -> :sswitch_1d
        0xf535953 -> :sswitch_15
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 3716
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 3744
    const-string v0, "android.hardware.radio@1.5::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3745
    return-object p0

    .line 3747
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

    .line 3751
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 3752
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 3706
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 3756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 3738
    const/4 v0, 0x1

    return v0
.end method
