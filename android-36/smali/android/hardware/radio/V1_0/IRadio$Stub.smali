.class public abstract Landroid/hardware/radio/V1_0/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_0/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_0/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4158
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 4161
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

    .line 4174
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 4211
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4212
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 4213
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 4214
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 4215
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

    .line 4186
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

    .line 4166
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.0::IRadio"

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

    .line 4180
    const-string v0, "android.hardware.radio@1.0::IRadio"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 4199
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 4221
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 4223
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

    .line 4251
    move-object v7, p3

    const-string v1, "android.hidl.base@1.0::IBase"

    const/4 v2, 0x0

    const-string v3, "android.hardware.radio@1.0::IRadio"

    sparse-switch p1, :sswitch_data_914

    goto/16 :goto_913

    .line 5665
    :sswitch_b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5667
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->notifySyspropsChanged()V

    .line 5668
    goto/16 :goto_913

    .line 5654
    :sswitch_13
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5656
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 5657
    .local v1, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5658
    invoke-virtual {v1, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5659
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5660
    goto/16 :goto_913

    .line 5644
    .end local v1    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_25
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5646
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->ping()V

    .line 5647
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5648
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5649
    goto/16 :goto_913

    .line 5639
    :sswitch_33
    goto/16 :goto_913

    .line 5631
    :sswitch_35
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5633
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setHALInstrumentation()V

    .line 5634
    goto/16 :goto_913

    .line 5597
    :sswitch_3d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5599
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 5600
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5602
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 5604
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 5605
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 5606
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 5607
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 5608
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_64
    if-ge v5, v4, :cond_85

    .line 5610
    mul-int/lit8 v6, v5, 0x20

    int-to-long v8, v6

    .line 5611
    .local v8, "_hidl_array_offset_1":J
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 5613
    .local v6, "_hidl_array_item_1":[B
    if-eqz v6, :cond_7d

    array-length v10, v6

    const/16 v11, 0x20

    if-ne v10, v11, :cond_7d

    .line 5617
    invoke-virtual {v2, v8, v9, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 5618
    nop

    .line 5608
    .end local v6    # "_hidl_array_item_1":[B
    .end local v8    # "_hidl_array_offset_1":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    .line 5614
    .restart local v6    # "_hidl_array_item_1":[B
    .restart local v8    # "_hidl_array_offset_1":J
    :cond_7d
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Array element is not of the expected length"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 5621
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_item_1":[B
    .end local v8    # "_hidl_array_offset_1":J
    :cond_85
    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 5623
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 5625
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5626
    goto/16 :goto_913

    .line 5586
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_92
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5588
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 5589
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5590
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5591
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5592
    goto/16 :goto_913

    .line 5574
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a4
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5576
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 5577
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v3

    .line 5578
    .local v3, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 5579
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5580
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5581
    goto/16 :goto_913

    .line 5563
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v3    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_ba
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5565
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 5566
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5567
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 5568
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5569
    goto/16 :goto_913

    .line 5555
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cc
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5557
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->responseAcknowledgement()V

    .line 5558
    goto/16 :goto_913

    .line 5545
    :sswitch_d4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5547
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5548
    .local v1, "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5549
    .local v2, "powerUp":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setSimCardPower(IZ)V

    .line 5550
    goto/16 :goto_913

    .line 5535
    .end local v1    # "serial":I
    .end local v2    # "powerUp":Z
    :sswitch_e4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5537
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5538
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5539
    .local v2, "indicationFilter":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setIndicationFilter(II)V

    .line 5540
    goto/16 :goto_913

    .line 5524
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :sswitch_f4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5526
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5527
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5528
    .local v2, "deviceStateType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 5529
    .local v3, "state":Z
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 5530
    goto/16 :goto_913

    .line 5515
    .end local v1    # "serial":I
    .end local v2    # "deviceStateType":I
    .end local v3    # "state":Z
    :sswitch_108
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5517
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5518
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getAllowedCarriers(I)V

    .line 5519
    goto/16 :goto_913

    .line 5503
    .end local v1    # "serial":I
    :sswitch_114
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5505
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5506
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5507
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 5508
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5509
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 5510
    goto/16 :goto_913

    .line 5494
    .end local v1    # "serial":I
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :sswitch_12c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5496
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5497
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getModemActivityInfo(I)V

    .line 5498
    goto/16 :goto_913

    .line 5485
    .end local v1    # "serial":I
    :sswitch_138
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5487
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5488
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->pullLceData(I)V

    .line 5489
    goto/16 :goto_913

    .line 5476
    .end local v1    # "serial":I
    :sswitch_144
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5478
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5479
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->stopLceService(I)V

    .line 5480
    goto/16 :goto_913

    .line 5465
    .end local v1    # "serial":I
    :sswitch_150
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5467
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5468
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5469
    .local v2, "reportInterval":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 5470
    .local v3, "pullMode":Z
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->startLceService(IIZ)V

    .line 5471
    goto/16 :goto_913

    .line 5454
    .end local v1    # "serial":I
    .end local v2    # "reportInterval":I
    .end local v3    # "pullMode":Z
    :sswitch_164
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5456
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5457
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 5458
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5459
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 5460
    goto/16 :goto_913

    .line 5445
    .end local v1    # "serial":I
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_178
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5447
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5448
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getRadioCapability(I)V

    .line 5449
    goto/16 :goto_913

    .line 5436
    .end local v1    # "serial":I
    :sswitch_184
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5438
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5439
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->requestShutdown(I)V

    .line 5440
    goto/16 :goto_913

    .line 5425
    .end local v1    # "serial":I
    :sswitch_190
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5427
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5428
    .restart local v1    # "serial":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5429
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 5430
    .local v3, "isRoaming":Z
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 5431
    goto/16 :goto_913

    .line 5413
    .end local v1    # "serial":I
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v3    # "isRoaming":Z
    :sswitch_1a4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5415
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5416
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5417
    .local v2, "authContext":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5418
    .local v3, "authData":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5419
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_0/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 5420
    goto/16 :goto_913

    .line 5404
    .end local v1    # "serial":I
    .end local v2    # "authContext":I
    .end local v3    # "authData":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :sswitch_1bc
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5406
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5407
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getHardwareConfig(I)V

    .line 5408
    goto/16 :goto_913

    .line 5394
    .end local v1    # "serial":I
    :sswitch_1c8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5396
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5397
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5398
    .local v2, "allow":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setDataAllowed(IZ)V

    .line 5399
    goto/16 :goto_913

    .line 5383
    .end local v1    # "serial":I
    .end local v2    # "allow":Z
    :sswitch_1d8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5385
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5386
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 5387
    .local v2, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5388
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 5389
    goto/16 :goto_913

    .line 5373
    .end local v1    # "serial":I
    .end local v2    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :sswitch_1ec
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5375
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5376
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5377
    .local v2, "resetType":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->nvResetConfig(II)V

    .line 5378
    goto/16 :goto_913

    .line 5363
    .end local v1    # "serial":I
    .end local v2    # "resetType":I
    :sswitch_1fc
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5365
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5366
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 5367
    .local v2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 5368
    goto/16 :goto_913

    .line 5352
    .end local v1    # "serial":I
    .end local v2    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_20c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5354
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5355
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 5356
    .local v2, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5357
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 5358
    goto/16 :goto_913

    .line 5342
    .end local v1    # "serial":I
    .end local v2    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :sswitch_220
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5344
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5345
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5346
    .local v2, "itemId":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->nvReadItem(II)V

    .line 5347
    goto/16 :goto_913

    .line 5331
    .end local v1    # "serial":I
    .end local v2    # "itemId":I
    :sswitch_230
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5333
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5334
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 5335
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5336
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 5337
    goto/16 :goto_913

    .line 5321
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :sswitch_244
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5323
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5324
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5325
    .local v2, "channelId":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 5326
    goto/16 :goto_913

    .line 5310
    .end local v1    # "serial":I
    .end local v2    # "channelId":I
    :sswitch_254
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5312
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5313
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5314
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5315
    .local v3, "p2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 5316
    goto/16 :goto_913

    .line 5299
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    .end local v3    # "p2":I
    :sswitch_268
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5301
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5302
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 5303
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5304
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 5305
    goto/16 :goto_913

    .line 5288
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :sswitch_27c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5290
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5291
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 5292
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5293
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 5294
    goto/16 :goto_913

    .line 5279
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :sswitch_290
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5281
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5282
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getImsRegistrationState(I)V

    .line 5283
    goto/16 :goto_913

    .line 5266
    .end local v1    # "serial":I
    :sswitch_29c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5268
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5269
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 5270
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5271
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 5272
    .local v3, "modemCognitive":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 5273
    .local v4, "isRoaming":Z
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 5274
    goto/16 :goto_913

    .line 5256
    .end local v1    # "serial":I
    .end local v2    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v3    # "modemCognitive":Z
    .end local v4    # "isRoaming":Z
    :sswitch_2b8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5258
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5259
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5260
    .local v2, "rate":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCellInfoListRate(II)V

    .line 5261
    goto/16 :goto_913

    .line 5247
    .end local v1    # "serial":I
    .end local v2    # "rate":I
    :sswitch_2c8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5249
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5250
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCellInfoList(I)V

    .line 5251
    goto/16 :goto_913

    .line 5238
    .end local v1    # "serial":I
    :sswitch_2d4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5240
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5241
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 5242
    goto/16 :goto_913

    .line 5228
    .end local v1    # "serial":I
    :sswitch_2e0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5230
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5231
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5232
    .local v2, "contents":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 5233
    goto/16 :goto_913

    .line 5217
    .end local v1    # "serial":I
    .end local v2    # "contents":Ljava/lang/String;
    :sswitch_2f0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5219
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5220
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5221
    .local v2, "success":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5222
    .local v3, "ackPdu":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 5223
    goto/16 :goto_913

    .line 5207
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "ackPdu":Ljava/lang/String;
    :sswitch_304
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5209
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5210
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5211
    .local v2, "challenge":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 5212
    goto/16 :goto_913

    .line 5198
    .end local v1    # "serial":I
    .end local v2    # "challenge":Ljava/lang/String;
    :sswitch_314
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5200
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5201
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 5202
    goto/16 :goto_913

    .line 5189
    .end local v1    # "serial":I
    :sswitch_320
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5191
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5192
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 5193
    goto/16 :goto_913

    .line 5179
    .end local v1    # "serial":I
    :sswitch_32c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5181
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5182
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5183
    .local v2, "available":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 5184
    goto/16 :goto_913

    .line 5169
    .end local v1    # "serial":I
    .end local v2    # "available":Z
    :sswitch_33c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5171
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5172
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5173
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 5174
    goto/16 :goto_913

    .line 5160
    .end local v1    # "serial":I
    .end local v2    # "smsc":Ljava/lang/String;
    :sswitch_34c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5162
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5163
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getSmscAddress(I)V

    .line 5164
    goto/16 :goto_913

    .line 5151
    .end local v1    # "serial":I
    :sswitch_358
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5153
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5154
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 5155
    goto/16 :goto_913

    .line 5142
    .end local v1    # "serial":I
    :sswitch_364
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5144
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5145
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getDeviceIdentity(I)V

    .line 5146
    goto/16 :goto_913

    .line 5132
    .end local v1    # "serial":I
    :sswitch_370
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5134
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5135
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5136
    .local v2, "index":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 5137
    goto/16 :goto_913

    .line 5121
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :sswitch_380
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5123
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5124
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 5125
    .local v2, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5126
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 5127
    goto/16 :goto_913

    .line 5112
    .end local v1    # "serial":I
    .end local v2    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :sswitch_394
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5114
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5115
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCDMASubscription(I)V

    .line 5116
    goto/16 :goto_913

    .line 5102
    .end local v1    # "serial":I
    :sswitch_3a0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5104
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5105
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5106
    .local v2, "activate":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 5107
    goto/16 :goto_913

    .line 5092
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :sswitch_3b0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5094
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5095
    .restart local v1    # "serial":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5096
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 5097
    goto/16 :goto_913

    .line 5083
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :sswitch_3c0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5085
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5086
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 5087
    goto/16 :goto_913

    .line 5073
    .end local v1    # "serial":I
    :sswitch_3cc
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5075
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5076
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5077
    .local v2, "activate":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 5078
    goto/16 :goto_913

    .line 5063
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :sswitch_3dc
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5065
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5066
    .restart local v1    # "serial":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5067
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 5068
    goto/16 :goto_913

    .line 5054
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :sswitch_3ec
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5056
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5057
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 5058
    goto/16 :goto_913

    .line 5043
    .end local v1    # "serial":I
    :sswitch_3f8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5045
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5046
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 5047
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5048
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 5049
    goto/16 :goto_913

    .line 5032
    .end local v1    # "serial":I
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :sswitch_40c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5034
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5035
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 5036
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5037
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 5038
    goto/16 :goto_913

    .line 5020
    .end local v1    # "serial":I
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_420
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5022
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5023
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5024
    .local v2, "dtmf":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5025
    .local v3, "on":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 5026
    .local v4, "off":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 5027
    goto/16 :goto_913

    .line 5010
    .end local v1    # "serial":I
    .end local v2    # "dtmf":Ljava/lang/String;
    .end local v3    # "on":I
    .end local v4    # "off":I
    :sswitch_438
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5012
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5013
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5014
    .local v2, "featureCode":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 5015
    goto/16 :goto_913

    .line 5001
    .end local v1    # "serial":I
    .end local v2    # "featureCode":Ljava/lang/String;
    :sswitch_448
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5003
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5004
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 5005
    goto/16 :goto_913

    .line 4991
    .end local v1    # "serial":I
    :sswitch_454
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4993
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4994
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4995
    .local v2, "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 4996
    goto/16 :goto_913

    .line 4982
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :sswitch_464
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4984
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4985
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getTTYMode(I)V

    .line 4986
    goto/16 :goto_913

    .line 4972
    .end local v1    # "serial":I
    :sswitch_470
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4974
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4975
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4976
    .local v2, "mode":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setTTYMode(II)V

    .line 4977
    goto/16 :goto_913

    .line 4963
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :sswitch_480
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4965
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4966
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 4967
    goto/16 :goto_913

    .line 4953
    .end local v1    # "serial":I
    :sswitch_48c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4955
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4956
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4957
    .local v2, "type":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 4958
    goto/16 :goto_913

    .line 4943
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :sswitch_49c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4945
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4946
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4947
    .local v2, "cdmaSub":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 4948
    goto/16 :goto_913

    .line 4933
    .end local v1    # "serial":I
    .end local v2    # "cdmaSub":I
    :sswitch_4ac
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4935
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4936
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4937
    .local v2, "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 4938
    goto/16 :goto_913

    .line 4924
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :sswitch_4bc
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4926
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4927
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getNeighboringCids(I)V

    .line 4928
    goto/16 :goto_913

    .line 4915
    .end local v1    # "serial":I
    :sswitch_4c8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4917
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4918
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 4919
    goto/16 :goto_913

    .line 4905
    .end local v1    # "serial":I
    :sswitch_4d4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4907
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4908
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4909
    .local v2, "nwType":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 4910
    goto/16 :goto_913

    .line 4896
    .end local v1    # "serial":I
    .end local v2    # "nwType":I
    :sswitch_4e4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4898
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4899
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->explicitCallTransfer(I)V

    .line 4900
    goto/16 :goto_913

    .line 4886
    .end local v1    # "serial":I
    :sswitch_4f0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4888
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4889
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4890
    .local v2, "accept":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 4891
    goto/16 :goto_913

    .line 4876
    .end local v1    # "serial":I
    .end local v2    # "accept":Z
    :sswitch_500
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4878
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4879
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4880
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 4881
    goto/16 :goto_913

    .line 4866
    .end local v1    # "serial":I
    .end local v2    # "commandResponse":Ljava/lang/String;
    :sswitch_510
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4868
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4869
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4870
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 4871
    goto/16 :goto_913

    .line 4857
    .end local v1    # "serial":I
    .end local v2    # "command":Ljava/lang/String;
    :sswitch_520
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4859
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4860
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getAvailableBandModes(I)V

    .line 4861
    goto/16 :goto_913

    .line 4847
    .end local v1    # "serial":I
    :sswitch_52c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4849
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4850
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4851
    .local v2, "mode":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setBandMode(II)V

    .line 4852
    goto/16 :goto_913

    .line 4837
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :sswitch_53c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4839
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4840
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4841
    .local v2, "index":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 4842
    goto/16 :goto_913

    .line 4826
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :sswitch_54c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4828
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4829
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 4830
    .local v2, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4831
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 4832
    goto/16 :goto_913

    .line 4816
    .end local v1    # "serial":I
    .end local v2    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :sswitch_560
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4818
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4819
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4820
    .local v2, "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 4821
    goto/16 :goto_913

    .line 4807
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :sswitch_570
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4809
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4810
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getDataCallList(I)V

    .line 4811
    goto/16 :goto_913

    .line 4798
    .end local v1    # "serial":I
    :sswitch_57c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4800
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4801
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getClip(I)V

    .line 4802
    goto/16 :goto_913

    .line 4789
    .end local v1    # "serial":I
    :sswitch_588
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4791
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4792
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getMute(I)V

    .line 4793
    goto/16 :goto_913

    .line 4779
    .end local v1    # "serial":I
    :sswitch_594
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4781
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4782
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4783
    .restart local v2    # "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setMute(IZ)V

    .line 4784
    goto/16 :goto_913

    .line 4769
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :sswitch_5a4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4771
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4772
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4773
    .local v2, "gsmIndex":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->separateConnection(II)V

    .line 4774
    goto/16 :goto_913

    .line 4760
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :sswitch_5b4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4762
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4763
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getBasebandVersion(I)V

    .line 4764
    goto/16 :goto_913

    .line 4751
    .end local v1    # "serial":I
    :sswitch_5c0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4753
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4754
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->stopDtmf(I)V

    .line 4755
    goto/16 :goto_913

    .line 4741
    .end local v1    # "serial":I
    :sswitch_5cc
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4743
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4744
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4745
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 4746
    goto/16 :goto_913

    .line 4732
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :sswitch_5dc
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4734
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4735
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getAvailableNetworks(I)V

    .line 4736
    goto/16 :goto_913

    .line 4722
    .end local v1    # "serial":I
    :sswitch_5e8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4724
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4725
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4726
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 4727
    goto/16 :goto_913

    .line 4713
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :sswitch_5f8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4715
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4716
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 4717
    goto/16 :goto_913

    .line 4704
    .end local v1    # "serial":I
    :sswitch_604
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4706
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4707
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 4708
    goto/16 :goto_913

    .line 4692
    .end local v1    # "serial":I
    :sswitch_610
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4694
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4695
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4696
    .local v2, "facility":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4697
    .local v3, "oldPassword":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4698
    .local v4, "newPassword":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4699
    goto/16 :goto_913

    .line 4678
    .end local v1    # "serial":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "oldPassword":Ljava/lang/String;
    .end local v4    # "newPassword":Ljava/lang/String;
    :sswitch_628
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4680
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4681
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4682
    .restart local v2    # "facility":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4683
    .local v3, "lockState":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4684
    .local v4, "password":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4685
    .local v5, "serviceClass":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 4686
    .local v6, "appId":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 4687
    goto/16 :goto_913

    .line 4665
    .end local v1    # "serial":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "lockState":Z
    .end local v4    # "password":Ljava/lang/String;
    .end local v5    # "serviceClass":I
    .end local v6    # "appId":Ljava/lang/String;
    :sswitch_649
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4667
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4668
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4669
    .restart local v2    # "facility":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4670
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 4671
    .local v4, "serviceClass":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4672
    .local v5, "appId":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 4673
    goto/16 :goto_913

    .line 4654
    .end local v1    # "serial":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    .end local v4    # "serviceClass":I
    .end local v5    # "appId":Ljava/lang/String;
    :sswitch_666
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4656
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4657
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4658
    .local v2, "cid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4659
    .local v3, "reasonRadioShutDown":Z
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 4660
    goto/16 :goto_913

    .line 4645
    .end local v1    # "serial":I
    .end local v2    # "cid":I
    .end local v3    # "reasonRadioShutDown":Z
    :sswitch_67a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4647
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4648
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->acceptCall(I)V

    .line 4649
    goto/16 :goto_913

    .line 4634
    .end local v1    # "serial":I
    :sswitch_686
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4636
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4637
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4638
    .local v2, "success":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4639
    .local v3, "cause":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 4640
    goto/16 :goto_913

    .line 4623
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :sswitch_69a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4625
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4626
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4627
    .local v2, "enable":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4628
    .local v3, "serviceClass":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCallWaiting(IZI)V

    .line 4629
    goto/16 :goto_913

    .line 4613
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :sswitch_6ae
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4615
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4616
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4617
    .local v2, "serviceClass":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCallWaiting(II)V

    .line 4618
    goto/16 :goto_913

    .line 4602
    .end local v1    # "serial":I
    .end local v2    # "serviceClass":I
    :sswitch_6be
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4604
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4605
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 4606
    .local v2, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4607
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 4608
    goto/16 :goto_913

    .line 4591
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :sswitch_6d2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4593
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4594
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 4595
    .restart local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4596
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 4597
    goto/16 :goto_913

    .line 4581
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :sswitch_6e6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4583
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4584
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4585
    .local v2, "status":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setClir(II)V

    .line 4586
    goto/16 :goto_913

    .line 4572
    .end local v1    # "serial":I
    .end local v2    # "status":I
    :sswitch_6f6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4574
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4575
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getClir(I)V

    .line 4576
    goto/16 :goto_913

    .line 4563
    .end local v1    # "serial":I
    :sswitch_702
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4565
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4566
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->cancelPendingUssd(I)V

    .line 4567
    goto/16 :goto_913

    .line 4553
    .end local v1    # "serial":I
    :sswitch_70e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4555
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4556
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4557
    .local v2, "ussd":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 4558
    goto/16 :goto_913

    .line 4542
    .end local v1    # "serial":I
    .end local v2    # "ussd":Ljava/lang/String;
    :sswitch_71e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4544
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4545
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 4546
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4547
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 4548
    goto/16 :goto_913

    .line 4527
    .end local v1    # "serial":I
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :sswitch_732
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4529
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4530
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4531
    .local v2, "radioTechnology":I
    new-instance v3, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4532
    .local v3, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4533
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 4534
    .local v4, "modemCognitive":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    .line 4535
    .local v5, "roamingAllowed":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 4536
    .local v6, "isRoaming":Z
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 4537
    goto/16 :goto_913

    .line 4516
    .end local v1    # "serial":I
    .end local v2    # "radioTechnology":I
    .end local v3    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v4    # "modemCognitive":Z
    .end local v5    # "roamingAllowed":Z
    .end local v6    # "isRoaming":Z
    :sswitch_757
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4518
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4519
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 4520
    .local v2, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4521
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 4522
    goto/16 :goto_913

    .line 4505
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_76b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4507
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4508
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 4509
    .restart local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4510
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 4511
    goto/16 :goto_913

    .line 4495
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_77f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4497
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4498
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4499
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 4500
    goto/16 :goto_913

    .line 4485
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :sswitch_78f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4487
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4488
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4489
    .local v2, "on":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setRadioPower(IZ)V

    .line 4490
    goto/16 :goto_913

    .line 4476
    .end local v1    # "serial":I
    .end local v2    # "on":Z
    :sswitch_79f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4478
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4479
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getOperator(I)V

    .line 4480
    goto/16 :goto_913

    .line 4467
    .end local v1    # "serial":I
    :sswitch_7ab
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4469
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4470
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getDataRegistrationState(I)V

    .line 4471
    goto/16 :goto_913

    .line 4458
    .end local v1    # "serial":I
    :sswitch_7b7
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4460
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4461
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 4462
    goto/16 :goto_913

    .line 4449
    .end local v1    # "serial":I
    :sswitch_7c3
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4451
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4452
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getSignalStrength(I)V

    .line 4453
    goto/16 :goto_913

    .line 4440
    .end local v1    # "serial":I
    :sswitch_7cf
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4442
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4443
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getLastCallFailCause(I)V

    .line 4444
    goto/16 :goto_913

    .line 4431
    .end local v1    # "serial":I
    :sswitch_7db
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4433
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4434
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->rejectCall(I)V

    .line 4435
    goto/16 :goto_913

    .line 4422
    .end local v1    # "serial":I
    :sswitch_7e7
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4424
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4425
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->conference(I)V

    .line 4426
    goto/16 :goto_913

    .line 4413
    .end local v1    # "serial":I
    :sswitch_7f3
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4415
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4416
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 4417
    goto/16 :goto_913

    .line 4404
    .end local v1    # "serial":I
    :sswitch_7ff
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4406
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4407
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 4408
    goto/16 :goto_913

    .line 4395
    .end local v1    # "serial":I
    :sswitch_80b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4397
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4398
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 4399
    goto/16 :goto_913

    .line 4385
    .end local v1    # "serial":I
    :sswitch_817
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4387
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4388
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4389
    .local v2, "gsmIndex":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->hangup(II)V

    .line 4390
    goto/16 :goto_913

    .line 4375
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :sswitch_827
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4377
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4378
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4379
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 4380
    goto/16 :goto_913

    .line 4364
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    :sswitch_837
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4366
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4367
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 4368
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4369
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 4370
    goto/16 :goto_913

    .line 4355
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :sswitch_84b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4357
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4358
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getCurrentCalls(I)V

    .line 4359
    goto/16 :goto_913

    .line 4345
    .end local v1    # "serial":I
    :sswitch_857
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4347
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4348
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4349
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 4350
    goto/16 :goto_913

    .line 4333
    .end local v1    # "serial":I
    .end local v2    # "netPin":Ljava/lang/String;
    :sswitch_867
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4335
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4336
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4337
    .local v2, "oldPin2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4338
    .local v3, "newPin2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4339
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_0/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4340
    goto/16 :goto_913

    .line 4321
    .end local v1    # "serial":I
    .end local v2    # "oldPin2":Ljava/lang/String;
    .end local v3    # "newPin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :sswitch_87f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4323
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4324
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4325
    .local v2, "oldPin":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4326
    .local v3, "newPin":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4327
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_0/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4328
    goto/16 :goto_913

    .line 4309
    .end local v1    # "serial":I
    .end local v2    # "oldPin":Ljava/lang/String;
    .end local v3    # "newPin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :sswitch_897
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4311
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4312
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4313
    .local v2, "puk2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4314
    .local v3, "pin2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4315
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4316
    goto :goto_913

    .line 4298
    .end local v1    # "serial":I
    .end local v2    # "puk2":Ljava/lang/String;
    .end local v3    # "pin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :sswitch_8ae
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4300
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4301
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4302
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4303
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 4304
    goto :goto_913

    .line 4286
    .end local v1    # "serial":I
    .end local v2    # "pin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_8c1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4288
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4289
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4290
    .local v2, "puk":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4291
    .local v3, "pin":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4292
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4293
    goto :goto_913

    .line 4275
    .end local v1    # "serial":I
    .end local v2    # "puk":Ljava/lang/String;
    .end local v3    # "pin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :sswitch_8d8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4277
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4278
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4279
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4280
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 4281
    goto :goto_913

    .line 4266
    .end local v1    # "serial":I
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_8eb
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4268
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4269
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->getIccCardStatus(I)V

    .line 4270
    goto :goto_913

    .line 4254
    .end local v1    # "serial":I
    :sswitch_8f6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4256
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v1

    .line 4257
    .local v1, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v3

    .line 4258
    .local v3, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/V1_0/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 4259
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4260
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4261
    nop

    .line 5677
    .end local v1    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    .end local v3    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    :goto_913
    return-void

    :sswitch_data_914
    .sparse-switch
        0x1 -> :sswitch_8f6
        0x2 -> :sswitch_8eb
        0x3 -> :sswitch_8d8
        0x4 -> :sswitch_8c1
        0x5 -> :sswitch_8ae
        0x6 -> :sswitch_897
        0x7 -> :sswitch_87f
        0x8 -> :sswitch_867
        0x9 -> :sswitch_857
        0xa -> :sswitch_84b
        0xb -> :sswitch_837
        0xc -> :sswitch_827
        0xd -> :sswitch_817
        0xe -> :sswitch_80b
        0xf -> :sswitch_7ff
        0x10 -> :sswitch_7f3
        0x11 -> :sswitch_7e7
        0x12 -> :sswitch_7db
        0x13 -> :sswitch_7cf
        0x14 -> :sswitch_7c3
        0x15 -> :sswitch_7b7
        0x16 -> :sswitch_7ab
        0x17 -> :sswitch_79f
        0x18 -> :sswitch_78f
        0x19 -> :sswitch_77f
        0x1a -> :sswitch_76b
        0x1b -> :sswitch_757
        0x1c -> :sswitch_732
        0x1d -> :sswitch_71e
        0x1e -> :sswitch_70e
        0x1f -> :sswitch_702
        0x20 -> :sswitch_6f6
        0x21 -> :sswitch_6e6
        0x22 -> :sswitch_6d2
        0x23 -> :sswitch_6be
        0x24 -> :sswitch_6ae
        0x25 -> :sswitch_69a
        0x26 -> :sswitch_686
        0x27 -> :sswitch_67a
        0x28 -> :sswitch_666
        0x29 -> :sswitch_649
        0x2a -> :sswitch_628
        0x2b -> :sswitch_610
        0x2c -> :sswitch_604
        0x2d -> :sswitch_5f8
        0x2e -> :sswitch_5e8
        0x2f -> :sswitch_5dc
        0x30 -> :sswitch_5cc
        0x31 -> :sswitch_5c0
        0x32 -> :sswitch_5b4
        0x33 -> :sswitch_5a4
        0x34 -> :sswitch_594
        0x35 -> :sswitch_588
        0x36 -> :sswitch_57c
        0x37 -> :sswitch_570
        0x38 -> :sswitch_560
        0x39 -> :sswitch_54c
        0x3a -> :sswitch_53c
        0x3b -> :sswitch_52c
        0x3c -> :sswitch_520
        0x3d -> :sswitch_510
        0x3e -> :sswitch_500
        0x3f -> :sswitch_4f0
        0x40 -> :sswitch_4e4
        0x41 -> :sswitch_4d4
        0x42 -> :sswitch_4c8
        0x43 -> :sswitch_4bc
        0x44 -> :sswitch_4ac
        0x45 -> :sswitch_49c
        0x46 -> :sswitch_48c
        0x47 -> :sswitch_480
        0x48 -> :sswitch_470
        0x49 -> :sswitch_464
        0x4a -> :sswitch_454
        0x4b -> :sswitch_448
        0x4c -> :sswitch_438
        0x4d -> :sswitch_420
        0x4e -> :sswitch_40c
        0x4f -> :sswitch_3f8
        0x50 -> :sswitch_3ec
        0x51 -> :sswitch_3dc
        0x52 -> :sswitch_3cc
        0x53 -> :sswitch_3c0
        0x54 -> :sswitch_3b0
        0x55 -> :sswitch_3a0
        0x56 -> :sswitch_394
        0x57 -> :sswitch_380
        0x58 -> :sswitch_370
        0x59 -> :sswitch_364
        0x5a -> :sswitch_358
        0x5b -> :sswitch_34c
        0x5c -> :sswitch_33c
        0x5d -> :sswitch_32c
        0x5e -> :sswitch_320
        0x5f -> :sswitch_314
        0x60 -> :sswitch_304
        0x61 -> :sswitch_2f0
        0x62 -> :sswitch_2e0
        0x63 -> :sswitch_2d4
        0x64 -> :sswitch_2c8
        0x65 -> :sswitch_2b8
        0x66 -> :sswitch_29c
        0x67 -> :sswitch_290
        0x68 -> :sswitch_27c
        0x69 -> :sswitch_268
        0x6a -> :sswitch_254
        0x6b -> :sswitch_244
        0x6c -> :sswitch_230
        0x6d -> :sswitch_220
        0x6e -> :sswitch_20c
        0x6f -> :sswitch_1fc
        0x70 -> :sswitch_1ec
        0x71 -> :sswitch_1d8
        0x72 -> :sswitch_1c8
        0x73 -> :sswitch_1bc
        0x74 -> :sswitch_1a4
        0x75 -> :sswitch_190
        0x76 -> :sswitch_184
        0x77 -> :sswitch_178
        0x78 -> :sswitch_164
        0x79 -> :sswitch_150
        0x7a -> :sswitch_144
        0x7b -> :sswitch_138
        0x7c -> :sswitch_12c
        0x7d -> :sswitch_114
        0x7e -> :sswitch_108
        0x7f -> :sswitch_f4
        0x80 -> :sswitch_e4
        0x81 -> :sswitch_d4
        0x82 -> :sswitch_cc
        0xf43484e -> :sswitch_ba
        0xf444247 -> :sswitch_a4
        0xf445343 -> :sswitch_92
        0xf485348 -> :sswitch_3d
        0xf494e54 -> :sswitch_35
        0xf4c5444 -> :sswitch_33
        0xf504e47 -> :sswitch_25
        0xf524546 -> :sswitch_13
        0xf535953 -> :sswitch_b
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 4205
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 4233
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4234
    return-object p0

    .line 4236
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

    .line 4240
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 4241
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 4195
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 4245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 4227
    const/4 v0, 0x1

    return v0
.end method
