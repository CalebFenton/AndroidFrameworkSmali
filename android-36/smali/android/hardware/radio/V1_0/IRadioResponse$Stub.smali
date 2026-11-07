.class public abstract Landroid/hardware/radio/V1_0/IRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IRadioResponse.java"

# interfaces
.implements Landroid/hardware/radio/V1_0/IRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_0/IRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5088
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 5091
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

    .line 5104
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 5141
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 5142
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 5143
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 5144
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 5145
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

    .line 5116
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
        -0x44t
        0x3ct
        -0x74t
        0x23t
        0x30t
        -0x7bt
        -0x4t
        -0x5dt
        -0x79t
        -0x63t
        -0x39t
        0x4bt
        0x49t
        0xbt
        -0x62t
        0x5bt
        -0x3ft
        0x6t
        0x32t
        0x58t
        0x47t
        0xdt
        0x3bt
        0x4ct
        0x12t
        -0x9t
        -0x59t
        0x4bt
        -0xet
        0x15t
        -0x35t
        -0x43t
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

    .line 5096
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

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

    .line 5110
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 5129
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 5151
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 5153
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

    .line 5181
    move-object v7, p3

    const/4 v1, 0x0

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.radio@1.0::IRadioResponse"

    sparse-switch p1, :sswitch_data_a6e

    goto/16 :goto_a6c

    .line 6677
    :sswitch_b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6679
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->notifySyspropsChanged()V

    .line 6680
    goto/16 :goto_a6c

    .line 6666
    :sswitch_13
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6668
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v2

    .line 6669
    .local v2, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6670
    invoke-virtual {v2, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 6671
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 6672
    goto/16 :goto_a6c

    .line 6656
    .end local v2    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_25
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6658
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->ping()V

    .line 6659
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6660
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 6661
    goto/16 :goto_a6c

    .line 6651
    :sswitch_33
    goto/16 :goto_a6c

    .line 6643
    :sswitch_35
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6645
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setHALInstrumentation()V

    .line 6646
    goto/16 :goto_a6c

    .line 6609
    :sswitch_3d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6611
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v2

    .line 6612
    .local v2, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6614
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 6616
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 6617
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 6618
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 6619
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v1, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 6620
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_64
    if-ge v5, v4, :cond_85

    .line 6622
    mul-int/lit8 v6, v5, 0x20

    int-to-long v8, v6

    .line 6623
    .local v8, "_hidl_array_offset_1":J
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 6625
    .local v6, "_hidl_array_item_1":[B
    if-eqz v6, :cond_7d

    array-length v10, v6

    const/16 v11, 0x20

    if-ne v10, v11, :cond_7d

    .line 6629
    invoke-virtual {v1, v8, v9, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 6630
    nop

    .line 6620
    .end local v6    # "_hidl_array_item_1":[B
    .end local v8    # "_hidl_array_offset_1":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    .line 6626
    .restart local v6    # "_hidl_array_item_1":[B
    .restart local v8    # "_hidl_array_offset_1":J
    :cond_7d
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Array element is not of the expected length"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 6633
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_item_1":[B
    .end local v8    # "_hidl_array_offset_1":J
    :cond_85
    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 6635
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 6637
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 6638
    goto/16 :goto_a6c

    .line 6598
    .end local v2    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_92
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6600
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 6601
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6602
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 6603
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 6604
    goto/16 :goto_a6c

    .line 6586
    .end local v2    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6588
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v2

    .line 6589
    .local v2, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v3

    .line 6590
    .local v3, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 6591
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6592
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 6593
    goto/16 :goto_a6c

    .line 6575
    .end local v2    # "fd":Landroid/os/NativeHandle;
    .end local v3    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_ba
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6577
    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v2

    .line 6578
    .local v2, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6579
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 6580
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 6581
    goto/16 :goto_a6c

    .line 6566
    .end local v2    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cc
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6568
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6569
    .local v1, "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->acknowledgeRequest(I)V

    .line 6570
    goto/16 :goto_a6c

    .line 6556
    .end local v1    # "serial":I
    :sswitch_d8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6558
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6559
    .local v1, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6560
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6561
    goto/16 :goto_a6c

    .line 6546
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_e8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6548
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6549
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6550
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6551
    goto/16 :goto_a6c

    .line 6536
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_f8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6538
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6539
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6540
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6541
    goto/16 :goto_a6c

    .line 6523
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_108
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6525
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6526
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6527
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6528
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 6529
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6530
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 6531
    goto/16 :goto_a6c

    .line 6512
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :sswitch_124
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6514
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6515
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6516
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6517
    .local v2, "numAllowed":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6518
    goto/16 :goto_a6c

    .line 6500
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "numAllowed":I
    :sswitch_138
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6502
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6503
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6504
    new-instance v2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;-><init>()V

    .line 6505
    .local v2, "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6506
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    .line 6507
    goto/16 :goto_a6c

    .line 6488
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    :sswitch_150
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6490
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6491
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6492
    new-instance v2, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 6493
    .local v2, "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6494
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 6495
    goto/16 :goto_a6c

    .line 6476
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    :sswitch_168
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6478
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6479
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6480
    new-instance v2, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 6481
    .local v2, "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6482
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 6483
    goto/16 :goto_a6c

    .line 6464
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :sswitch_180
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6466
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6467
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6468
    new-instance v2, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 6469
    .restart local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6470
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 6471
    goto/16 :goto_a6c

    .line 6452
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :sswitch_198
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6454
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6455
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6456
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 6457
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6458
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 6459
    goto/16 :goto_a6c

    .line 6440
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_1b0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6442
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6443
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6444
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 6445
    .restart local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6446
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 6447
    goto/16 :goto_a6c

    .line 6430
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_1c8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6432
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6433
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6434
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6435
    goto/16 :goto_a6c

    .line 6420
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1d8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6422
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6423
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6424
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6425
    goto/16 :goto_a6c

    .line 6408
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1e8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6410
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6411
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6412
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 6413
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6414
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 6415
    goto/16 :goto_a6c

    .line 6397
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_200
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6399
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6400
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6401
    invoke-static {p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6402
    .local v2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6403
    goto/16 :goto_a6c

    .line 6387
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :sswitch_214
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6389
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6390
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6391
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6392
    goto/16 :goto_a6c

    .line 6377
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_224
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6379
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6380
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6381
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6382
    goto/16 :goto_a6c

    .line 6367
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_234
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6369
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6370
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6371
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6372
    goto/16 :goto_a6c

    .line 6357
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_244
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6359
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6360
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6361
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6362
    goto/16 :goto_a6c

    .line 6347
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_254
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6349
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6350
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6351
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6352
    goto/16 :goto_a6c

    .line 6336
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_264
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6338
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6339
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6340
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6341
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 6342
    goto/16 :goto_a6c

    .line 6324
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Ljava/lang/String;
    :sswitch_278
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6326
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6327
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6328
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 6329
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6330
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 6331
    goto/16 :goto_a6c

    .line 6314
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_290
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6316
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6317
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6318
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6319
    goto/16 :goto_a6c

    .line 6302
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2a0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6304
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6305
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6306
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6307
    .local v2, "channelId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 6308
    .local v3, "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V

    .line 6309
    goto/16 :goto_a6c

    .line 6290
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "channelId":I
    .end local v3    # "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_2b8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6292
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6293
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6294
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 6295
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6296
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 6297
    goto/16 :goto_a6c

    .line 6278
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_2d0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6280
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6281
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6282
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 6283
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6284
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 6285
    goto/16 :goto_a6c

    .line 6266
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_2e8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6268
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6269
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6270
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6271
    .local v2, "isRegistered":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6272
    .local v3, "ratFamily":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 6273
    goto/16 :goto_a6c

    .line 6256
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "isRegistered":Z
    .end local v3    # "ratFamily":I
    :sswitch_300
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6258
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6259
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6260
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6261
    goto/16 :goto_a6c

    .line 6246
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_310
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6248
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6249
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6250
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6251
    goto/16 :goto_a6c

    .line 6235
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_320
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6237
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6238
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6239
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6240
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6241
    goto/16 :goto_a6c

    .line 6224
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :sswitch_334
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6226
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6227
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6228
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6229
    .local v2, "rat":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6230
    goto/16 :goto_a6c

    .line 6212
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "rat":I
    :sswitch_348
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6214
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6215
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6216
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 6217
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6218
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 6219
    goto/16 :goto_a6c

    .line 6202
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_360
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6204
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6205
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6206
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6207
    goto/16 :goto_a6c

    .line 6191
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_370
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6193
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6194
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6195
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6196
    .local v2, "response":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 6197
    goto/16 :goto_a6c

    .line 6180
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "response":Ljava/lang/String;
    :sswitch_384
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6182
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6183
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6184
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6185
    .local v2, "source":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6186
    goto/16 :goto_a6c

    .line 6170
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "source":I
    :sswitch_398
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6172
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6173
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6174
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6175
    goto/16 :goto_a6c

    .line 6160
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3a8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6162
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6163
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6164
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6165
    goto/16 :goto_a6c

    .line 6150
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3b8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6152
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6153
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6154
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6155
    goto/16 :goto_a6c

    .line 6139
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3c8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6141
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6142
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6143
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6144
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 6145
    goto/16 :goto_a6c

    .line 6129
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "smsc":Ljava/lang/String;
    :sswitch_3dc
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6131
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6132
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6133
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6134
    goto/16 :goto_a6c

    .line 6115
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3ec
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6117
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6118
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6119
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6120
    .local v2, "imei":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6121
    .local v3, "imeisv":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6122
    .local v4, "esn":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 6123
    .local v5, "meid":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6124
    goto/16 :goto_a6c

    .line 6105
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "imei":Ljava/lang/String;
    .end local v3    # "imeisv":Ljava/lang/String;
    .end local v4    # "esn":Ljava/lang/String;
    .end local v5    # "meid":Ljava/lang/String;
    :sswitch_40d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6107
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6108
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6109
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6110
    goto/16 :goto_a6c

    .line 6094
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_41d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6096
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6097
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6098
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6099
    .local v2, "index":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6100
    goto/16 :goto_a6c

    .line 6079
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "index":I
    :sswitch_431
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6081
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6082
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6083
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6084
    .local v2, "mdn":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6085
    .local v3, "hSid":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6086
    .local v4, "hNid":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 6087
    .local v5, "min":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 6088
    .local v6, "prl":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6089
    goto/16 :goto_a6c

    .line 6069
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "mdn":Ljava/lang/String;
    .end local v3    # "hSid":Ljava/lang/String;
    .end local v4    # "hNid":Ljava/lang/String;
    .end local v5    # "min":Ljava/lang/String;
    .end local v6    # "prl":Ljava/lang/String;
    :sswitch_456
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6071
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6072
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6073
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6074
    goto/16 :goto_a6c

    .line 6059
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_466
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6061
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6062
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6063
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6064
    goto/16 :goto_a6c

    .line 6048
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_476
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6050
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6051
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6052
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6053
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6054
    goto/16 :goto_a6c

    .line 6038
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :sswitch_48a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6040
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6041
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6042
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6043
    goto/16 :goto_a6c

    .line 6028
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_49a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6030
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6031
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6032
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6033
    goto/16 :goto_a6c

    .line 6017
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4aa
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6019
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6020
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6021
    invoke-static {p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6022
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6023
    goto/16 :goto_a6c

    .line 6007
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :sswitch_4be
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6009
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6010
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6011
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6012
    goto/16 :goto_a6c

    .line 5995
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4ce
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5997
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5998
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5999
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 6000
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6001
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 6002
    goto/16 :goto_a6c

    .line 5985
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_4e6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5987
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5988
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5989
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5990
    goto/16 :goto_a6c

    .line 5975
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4f6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5977
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5978
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5979
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5980
    goto/16 :goto_a6c

    .line 5964
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_506
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5966
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5967
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5968
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5969
    .local v2, "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 5970
    goto/16 :goto_a6c

    .line 5954
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "enable":Z
    :sswitch_51a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5956
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5957
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5958
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5959
    goto/16 :goto_a6c

    .line 5943
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_52a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5945
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5946
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5947
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5948
    .local v2, "mode":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5949
    goto/16 :goto_a6c

    .line 5933
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "mode":I
    :sswitch_53e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5935
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5936
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5937
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5938
    goto/16 :goto_a6c

    .line 5922
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_54e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5924
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5925
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5926
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5927
    .local v2, "type":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5928
    goto/16 :goto_a6c

    .line 5912
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "type":I
    :sswitch_562
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5914
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5915
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5916
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5917
    goto/16 :goto_a6c

    .line 5902
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_572
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5904
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5905
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5906
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5907
    goto/16 :goto_a6c

    .line 5892
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_582
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5894
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5895
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5896
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5897
    goto/16 :goto_a6c

    .line 5881
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_592
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5883
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5884
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5885
    invoke-static {p2}, Landroid/hardware/radio/V1_0/NeighboringCell;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5886
    .local v2, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5887
    goto/16 :goto_a6c

    .line 5870
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    :sswitch_5a6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5872
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5873
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5874
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5875
    .local v2, "nwType":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5876
    goto/16 :goto_a6c

    .line 5860
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "nwType":I
    :sswitch_5ba
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5862
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5863
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5864
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5865
    goto/16 :goto_a6c

    .line 5850
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5ca
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5852
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5853
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5854
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5855
    goto/16 :goto_a6c

    .line 5840
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5da
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5842
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5843
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5844
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5845
    goto/16 :goto_a6c

    .line 5830
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5ea
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5832
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5833
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5834
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5835
    goto/16 :goto_a6c

    .line 5819
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5fa
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5821
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5822
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5823
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5824
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5825
    goto/16 :goto_a6c

    .line 5808
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "commandResponse":Ljava/lang/String;
    :sswitch_60e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5810
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5811
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5812
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 5813
    .local v2, "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5814
    goto/16 :goto_a6c

    .line 5798
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_622
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5800
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5801
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5802
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5803
    goto/16 :goto_a6c

    .line 5788
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_632
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5790
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5791
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5792
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5793
    goto/16 :goto_a6c

    .line 5777
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_642
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5779
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5780
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5781
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5782
    .local v2, "index":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5783
    goto/16 :goto_a6c

    .line 5767
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "index":I
    :sswitch_656
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5769
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5770
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5771
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5772
    goto/16 :goto_a6c

    .line 5756
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_666
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5758
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5759
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5760
    invoke-static {p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5761
    .local v2, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5762
    goto/16 :goto_a6c

    .line 5745
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :sswitch_67a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5747
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5748
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5749
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5750
    .local v2, "status":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5751
    goto/16 :goto_a6c

    .line 5734
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "status":I
    :sswitch_68e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5736
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5737
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5738
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5739
    .local v2, "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 5740
    goto/16 :goto_a6c

    .line 5724
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "enable":Z
    :sswitch_6a2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5726
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5727
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5728
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5729
    goto/16 :goto_a6c

    .line 5714
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6b2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5716
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5717
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5718
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5719
    goto/16 :goto_a6c

    .line 5703
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6c2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5705
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5706
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5707
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5708
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5709
    goto/16 :goto_a6c

    .line 5693
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "version":Ljava/lang/String;
    :sswitch_6d6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5695
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5696
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5697
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5698
    goto/16 :goto_a6c

    .line 5683
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6e6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5685
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5686
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5687
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5688
    goto/16 :goto_a6c

    .line 5672
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6f6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5674
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5675
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5676
    invoke-static {p2}, Landroid/hardware/radio/V1_0/OperatorInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5677
    .local v2, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5678
    goto/16 :goto_a6c

    .line 5662
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    :sswitch_70a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5664
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5665
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5666
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5667
    goto/16 :goto_a6c

    .line 5652
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_71a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5654
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5655
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5656
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5657
    goto/16 :goto_a6c

    .line 5641
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_72a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5643
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5644
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5645
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5646
    .local v2, "manual":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 5647
    goto/16 :goto_a6c

    .line 5631
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "manual":Z
    :sswitch_73e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5633
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5634
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5635
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5636
    goto/16 :goto_a6c

    .line 5620
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_74e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5622
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5623
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5624
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5625
    .local v2, "retry":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5626
    goto/16 :goto_a6c

    .line 5609
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "retry":I
    :sswitch_762
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5611
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5612
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5613
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5614
    .local v2, "response":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5615
    goto/16 :goto_a6c

    .line 5599
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "response":I
    :sswitch_776
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5601
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5602
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5603
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5604
    goto/16 :goto_a6c

    .line 5589
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_786
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5591
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5592
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5593
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5594
    goto/16 :goto_a6c

    .line 5579
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_796
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5581
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5582
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5583
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5584
    goto/16 :goto_a6c

    .line 5569
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7a6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5571
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5572
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5573
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5574
    goto/16 :goto_a6c

    .line 5557
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7b6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5559
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5560
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5561
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5562
    .local v2, "enable":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5563
    .local v3, "serviceClass":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 5564
    goto/16 :goto_a6c

    .line 5547
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :sswitch_7ce
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5549
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5550
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5551
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5552
    goto/16 :goto_a6c

    .line 5536
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7de
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5538
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5539
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5540
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5541
    .local v2, "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5542
    goto/16 :goto_a6c

    .line 5526
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    :sswitch_7f2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5528
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5529
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5530
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5531
    goto/16 :goto_a6c

    .line 5514
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_802
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5516
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5517
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5518
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5519
    .local v2, "n":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5520
    .local v3, "m":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 5521
    goto/16 :goto_a6c

    .line 5504
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "n":I
    .end local v3    # "m":I
    :sswitch_81a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5506
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5507
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5508
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5509
    goto/16 :goto_a6c

    .line 5494
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_82a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5496
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5497
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5498
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5499
    goto/16 :goto_a6c

    .line 5482
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_83a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5484
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5485
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5486
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 5487
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5488
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 5489
    goto/16 :goto_a6c

    .line 5470
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_852
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5472
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5473
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5474
    new-instance v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    .line 5475
    .local v2, "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5476
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V

    .line 5477
    goto/16 :goto_a6c

    .line 5458
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    :sswitch_86a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5460
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5461
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5462
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 5463
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5464
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 5465
    goto/16 :goto_a6c

    .line 5446
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_882
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5448
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5449
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5450
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 5451
    .restart local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5452
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 5453
    goto/16 :goto_a6c

    .line 5436
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_89a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5438
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5439
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5440
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5441
    goto/16 :goto_a6c

    .line 5426
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_8aa
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5428
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5429
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5430
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5431
    goto/16 :goto_a6c

    .line 5413
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_8ba
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5415
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5416
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5417
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5418
    .local v2, "longName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5419
    .local v3, "shortName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5420
    .local v4, "numeric":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5421
    goto/16 :goto_a6c

    .line 5401
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "longName":Ljava/lang/String;
    .end local v3    # "shortName":Ljava/lang/String;
    .end local v4    # "numeric":Ljava/lang/String;
    :sswitch_8d6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5403
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5404
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5405
    new-instance v2, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    .line 5406
    .local v2, "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5407
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V

    .line 5408
    goto/16 :goto_a6c

    .line 5389
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    :sswitch_8ee
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5391
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5392
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5393
    new-instance v2, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    .line 5394
    .local v2, "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5395
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V

    .line 5396
    goto/16 :goto_a6c

    .line 5377
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    :sswitch_906
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5379
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5380
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5381
    new-instance v2, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 5382
    .local v2, "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5383
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    .line 5384
    goto/16 :goto_a6c

    .line 5365
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :sswitch_91e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5367
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5368
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5369
    new-instance v2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;-><init>()V

    .line 5370
    .local v2, "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5371
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    .line 5372
    goto/16 :goto_a6c

    .line 5355
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    :sswitch_936
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5357
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5358
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5359
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5360
    goto/16 :goto_a6c

    .line 5345
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_946
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5347
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5348
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5349
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5350
    goto/16 :goto_a6c

    .line 5335
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_956
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5337
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5338
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5339
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5340
    goto/16 :goto_a6c

    .line 5325
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_966
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5327
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5328
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5329
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5330
    goto/16 :goto_a6c

    .line 5315
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_976
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5317
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5318
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5319
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5320
    goto/16 :goto_a6c

    .line 5305
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_986
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5307
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5308
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5309
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5310
    goto/16 :goto_a6c

    .line 5294
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_996
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5296
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5297
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5298
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5299
    .local v2, "imsi":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5300
    goto/16 :goto_a6c

    .line 5284
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "imsi":Ljava/lang/String;
    :sswitch_9aa
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5286
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5287
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5288
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5289
    goto/16 :goto_a6c

    .line 5273
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9ba
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5275
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5276
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5277
    invoke-static {p2}, Landroid/hardware/radio/V1_0/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5278
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5279
    goto/16 :goto_a6c

    .line 5262
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    :sswitch_9ce
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5264
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5265
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5266
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5267
    .local v2, "remainingRetries":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5268
    goto/16 :goto_a6c

    .line 5251
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :sswitch_9e2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5253
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5254
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5255
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5256
    .restart local v2    # "remainingRetries":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5257
    goto/16 :goto_a6c

    .line 5240
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :sswitch_9f6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5242
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5243
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5244
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5245
    .restart local v2    # "remainingRetries":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5246
    goto :goto_a6c

    .line 5229
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :sswitch_a09
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5231
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5232
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5233
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5234
    .restart local v2    # "remainingRetries":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5235
    goto :goto_a6c

    .line 5218
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :sswitch_a1c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5220
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5221
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5222
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5223
    .restart local v2    # "remainingRetries":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5224
    goto :goto_a6c

    .line 5207
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :sswitch_a2f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5209
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5210
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5211
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5212
    .restart local v2    # "remainingRetries":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5213
    goto :goto_a6c

    .line 5196
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :sswitch_a42
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5198
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5199
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5200
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5201
    .restart local v2    # "remainingRetries":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5202
    goto :goto_a6c

    .line 5184
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :sswitch_a55
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5186
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5187
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5188
    new-instance v2, Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CardStatus;-><init>()V

    .line 5189
    .local v2, "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5190
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

    .line 5191
    nop

    .line 6689
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    :goto_a6c
    return-void

    nop

    :sswitch_data_a6e
    .sparse-switch
        0x1 -> :sswitch_a55
        0x2 -> :sswitch_a42
        0x3 -> :sswitch_a2f
        0x4 -> :sswitch_a1c
        0x5 -> :sswitch_a09
        0x6 -> :sswitch_9f6
        0x7 -> :sswitch_9e2
        0x8 -> :sswitch_9ce
        0x9 -> :sswitch_9ba
        0xa -> :sswitch_9aa
        0xb -> :sswitch_996
        0xc -> :sswitch_986
        0xd -> :sswitch_976
        0xe -> :sswitch_966
        0xf -> :sswitch_956
        0x10 -> :sswitch_946
        0x11 -> :sswitch_936
        0x12 -> :sswitch_91e
        0x13 -> :sswitch_906
        0x14 -> :sswitch_8ee
        0x15 -> :sswitch_8d6
        0x16 -> :sswitch_8ba
        0x17 -> :sswitch_8aa
        0x18 -> :sswitch_89a
        0x19 -> :sswitch_882
        0x1a -> :sswitch_86a
        0x1b -> :sswitch_852
        0x1c -> :sswitch_83a
        0x1d -> :sswitch_82a
        0x1e -> :sswitch_81a
        0x1f -> :sswitch_802
        0x20 -> :sswitch_7f2
        0x21 -> :sswitch_7de
        0x22 -> :sswitch_7ce
        0x23 -> :sswitch_7b6
        0x24 -> :sswitch_7a6
        0x25 -> :sswitch_796
        0x26 -> :sswitch_786
        0x27 -> :sswitch_776
        0x28 -> :sswitch_762
        0x29 -> :sswitch_74e
        0x2a -> :sswitch_73e
        0x2b -> :sswitch_72a
        0x2c -> :sswitch_71a
        0x2d -> :sswitch_70a
        0x2e -> :sswitch_6f6
        0x2f -> :sswitch_6e6
        0x30 -> :sswitch_6d6
        0x31 -> :sswitch_6c2
        0x32 -> :sswitch_6b2
        0x33 -> :sswitch_6a2
        0x34 -> :sswitch_68e
        0x35 -> :sswitch_67a
        0x36 -> :sswitch_666
        0x37 -> :sswitch_656
        0x38 -> :sswitch_642
        0x39 -> :sswitch_632
        0x3a -> :sswitch_622
        0x3b -> :sswitch_60e
        0x3c -> :sswitch_5fa
        0x3d -> :sswitch_5ea
        0x3e -> :sswitch_5da
        0x3f -> :sswitch_5ca
        0x40 -> :sswitch_5ba
        0x41 -> :sswitch_5a6
        0x42 -> :sswitch_592
        0x43 -> :sswitch_582
        0x44 -> :sswitch_572
        0x45 -> :sswitch_562
        0x46 -> :sswitch_54e
        0x47 -> :sswitch_53e
        0x48 -> :sswitch_52a
        0x49 -> :sswitch_51a
        0x4a -> :sswitch_506
        0x4b -> :sswitch_4f6
        0x4c -> :sswitch_4e6
        0x4d -> :sswitch_4ce
        0x4e -> :sswitch_4be
        0x4f -> :sswitch_4aa
        0x50 -> :sswitch_49a
        0x51 -> :sswitch_48a
        0x52 -> :sswitch_476
        0x53 -> :sswitch_466
        0x54 -> :sswitch_456
        0x55 -> :sswitch_431
        0x56 -> :sswitch_41d
        0x57 -> :sswitch_40d
        0x58 -> :sswitch_3ec
        0x59 -> :sswitch_3dc
        0x5a -> :sswitch_3c8
        0x5b -> :sswitch_3b8
        0x5c -> :sswitch_3a8
        0x5d -> :sswitch_398
        0x5e -> :sswitch_384
        0x5f -> :sswitch_370
        0x60 -> :sswitch_360
        0x61 -> :sswitch_348
        0x62 -> :sswitch_334
        0x63 -> :sswitch_320
        0x64 -> :sswitch_310
        0x65 -> :sswitch_300
        0x66 -> :sswitch_2e8
        0x67 -> :sswitch_2d0
        0x68 -> :sswitch_2b8
        0x69 -> :sswitch_2a0
        0x6a -> :sswitch_290
        0x6b -> :sswitch_278
        0x6c -> :sswitch_264
        0x6d -> :sswitch_254
        0x6e -> :sswitch_244
        0x6f -> :sswitch_234
        0x70 -> :sswitch_224
        0x71 -> :sswitch_214
        0x72 -> :sswitch_200
        0x73 -> :sswitch_1e8
        0x74 -> :sswitch_1d8
        0x75 -> :sswitch_1c8
        0x76 -> :sswitch_1b0
        0x77 -> :sswitch_198
        0x78 -> :sswitch_180
        0x79 -> :sswitch_168
        0x7a -> :sswitch_150
        0x7b -> :sswitch_138
        0x7c -> :sswitch_124
        0x7d -> :sswitch_108
        0x7e -> :sswitch_f8
        0x7f -> :sswitch_e8
        0x80 -> :sswitch_d8
        0x81 -> :sswitch_cc
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

    .line 5135
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 5163
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5164
    return-object p0

    .line 5166
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

    .line 5170
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 5171
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 5125
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 5175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_0/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 5157
    const/4 v0, 0x1

    return v0
.end method
