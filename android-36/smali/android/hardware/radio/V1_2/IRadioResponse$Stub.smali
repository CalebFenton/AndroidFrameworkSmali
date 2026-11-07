.class public abstract Landroid/hardware/radio/V1_2/IRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IRadioResponse.java"

# interfaces
.implements Landroid/hardware/radio/V1_2/IRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_2/IRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2885
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 2888
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

    .line 2903
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 2942
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2943
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2944
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2945
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2946
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

    .line 2915
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
        -0x26t
        -0x74t
        0x6at
        -0x17t
        -0x6ft
        -0x3at
        -0x5ct
        -0x4et
        -0x7ct
        -0x34t
        0x6et
        0x44t
        0x53t
        0x32t
        -0x20t
        0x64t
        -0x1et
        -0x72t
        -0x18t
        -0x60t
        -0x6ct
        -0x7et
        -0x13t
        0x5at
        -0x1t
        -0x7t
        -0x2ft
        0x59t
        -0x14t
        0x66t
        -0x6ct
        -0x49t
    .end array-data

    :array_38
    .array-data 1
        0x0t
        0x36t
        0x6bt
        0x2ft
        -0x78t
        -0x7t
        -0x14t
        0x24t
        0x58t
        0x1t
        0x49t
        0x72t
        -0x6dt
        -0x7et
        0x70t
        -0x38t
        0x41t
        0x3dt
        0x4at
        -0x4dt
        0x3t
        0x21t
        -0x72t
        0x37t
        -0x41t
        0x3at
        -0x23t
        0x2bt
        -0x72t
        0x6bt
        -0x7et
        -0x66t
    .end array-data

    :array_4c
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

    .line 2893
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.radio@1.2::IRadioResponse"

    const-string v4, "android.hardware.radio@1.1::IRadioResponse"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 2909
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 2930
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 2952
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2954
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

    .line 2982
    move-object v7, p3

    const-string v1, "android.hardware.radio@1.1::IRadioResponse"

    const/4 v2, 0x0

    const-string v3, "android.hidl.base@1.0::IBase"

    const-string v4, "android.hardware.radio@1.2::IRadioResponse"

    const-string v5, "android.hardware.radio@1.0::IRadioResponse"

    sparse-switch p1, :sswitch_data_b82

    goto/16 :goto_b80

    .line 4630
    :sswitch_f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4632
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->notifySyspropsChanged()V

    .line 4633
    goto/16 :goto_b80

    .line 4619
    :sswitch_17
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4621
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 4622
    .local v1, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4623
    invoke-virtual {v1, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4624
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4625
    goto/16 :goto_b80

    .line 4609
    .end local v1    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_29
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4611
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->ping()V

    .line 4612
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4613
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4614
    goto/16 :goto_b80

    .line 4604
    :sswitch_37
    goto/16 :goto_b80

    .line 4596
    :sswitch_39
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4598
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setHALInstrumentation()V

    .line 4599
    goto/16 :goto_b80

    .line 4562
    :sswitch_41
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4564
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 4565
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4567
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 4569
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4570
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4571
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4572
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 4573
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_68
    if-ge v5, v4, :cond_89

    .line 4575
    mul-int/lit8 v6, v5, 0x20

    int-to-long v8, v6

    .line 4576
    .local v8, "_hidl_array_offset_1":J
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 4578
    .local v6, "_hidl_array_item_1":[B
    if-eqz v6, :cond_81

    array-length v10, v6

    const/16 v11, 0x20

    if-ne v10, v11, :cond_81

    .line 4582
    invoke-virtual {v2, v8, v9, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 4583
    nop

    .line 4573
    .end local v6    # "_hidl_array_item_1":[B
    .end local v8    # "_hidl_array_offset_1":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_68

    .line 4579
    .restart local v6    # "_hidl_array_item_1":[B
    .restart local v8    # "_hidl_array_offset_1":J
    :cond_81
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Array element is not of the expected length"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 4586
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_item_1":[B
    .end local v8    # "_hidl_array_offset_1":J
    :cond_89
    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 4588
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 4590
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4591
    goto/16 :goto_b80

    .line 4551
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_96
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4553
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 4554
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4555
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4556
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4557
    goto/16 :goto_b80

    .line 4539
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4541
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 4542
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v3

    .line 4543
    .local v3, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 4544
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4545
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4546
    goto/16 :goto_b80

    .line 4528
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v3    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_be
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4530
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 4531
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4532
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4533
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4534
    goto/16 :goto_b80

    .line 4516
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_d0
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4518
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4519
    .local v1, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4520
    new-instance v2, Landroid/hardware/radio/V1_2/DataRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/DataRegStateResult;-><init>()V

    .line 4521
    .local v2, "dataRegResponse":Landroid/hardware/radio/V1_2/DataRegStateResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4522
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/DataRegStateResult;)V

    .line 4523
    goto/16 :goto_b80

    .line 4504
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dataRegResponse":Landroid/hardware/radio/V1_2/DataRegStateResult;
    :sswitch_e8
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4506
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4507
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4508
    new-instance v2, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;-><init>()V

    .line 4509
    .local v2, "voiceRegResponse":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4510
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getVoiceRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/VoiceRegStateResult;)V

    .line 4511
    goto/16 :goto_b80

    .line 4492
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "voiceRegResponse":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    :sswitch_100
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4494
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4495
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4496
    new-instance v2, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 4497
    .local v2, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4498
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getSignalStrengthResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V

    .line 4499
    goto/16 :goto_b80

    .line 4481
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :sswitch_118
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4483
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4484
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4485
    invoke-static {p2}, Landroid/hardware/radio/V1_2/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4486
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getCurrentCallsResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4487
    goto/16 :goto_b80

    .line 4471
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    :sswitch_12c
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4473
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4474
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4475
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4476
    goto/16 :goto_b80

    .line 4461
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_13c
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4463
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4464
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4465
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4466
    goto/16 :goto_b80

    .line 4449
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_14c
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4451
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4452
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4453
    new-instance v2, Landroid/hardware/radio/V1_2/CardStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/CardStatus;-><init>()V

    .line 4454
    .local v2, "cardStatus":Landroid/hardware/radio/V1_2/CardStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4455
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getIccCardStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V

    .line 4456
    goto/16 :goto_b80

    .line 4438
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cardStatus":Landroid/hardware/radio/V1_2/CardStatus;
    :sswitch_164
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4440
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4441
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4442
    invoke-static {p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4443
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getCellInfoListResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4444
    goto/16 :goto_b80

    .line 4428
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :sswitch_178
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4430
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4431
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4432
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->stopKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4433
    goto/16 :goto_b80

    .line 4416
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_188
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4418
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4419
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4420
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 4421
    .local v2, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4422
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->startKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 4423
    goto/16 :goto_b80

    .line 4406
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :sswitch_1a0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4408
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4409
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4410
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->stopNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4411
    goto/16 :goto_b80

    .line 4396
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1b0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4398
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4399
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4400
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->startNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4401
    goto/16 :goto_b80

    .line 4386
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1c0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4388
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4389
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4390
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setSimCardPowerResponse_1_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4391
    goto/16 :goto_b80

    .line 4376
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1d0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4378
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4379
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4380
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4381
    goto/16 :goto_b80

    .line 4367
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1e0
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4369
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4370
    .local v1, "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->acknowledgeRequest(I)V

    .line 4371
    goto/16 :goto_b80

    .line 4357
    .end local v1    # "serial":I
    :sswitch_1ec
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4359
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4360
    .local v1, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4361
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4362
    goto/16 :goto_b80

    .line 4347
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1fc
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4349
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4350
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4351
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4352
    goto/16 :goto_b80

    .line 4337
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_20c
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4339
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4340
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4341
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4342
    goto/16 :goto_b80

    .line 4324
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_21c
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4326
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4327
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4328
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4329
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 4330
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4331
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 4332
    goto/16 :goto_b80

    .line 4313
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :sswitch_238
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4315
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4316
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4317
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4318
    .local v2, "numAllowed":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4319
    goto/16 :goto_b80

    .line 4301
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "numAllowed":I
    :sswitch_24c
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4303
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4304
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4305
    new-instance v2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;-><init>()V

    .line 4306
    .local v2, "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4307
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    .line 4308
    goto/16 :goto_b80

    .line 4289
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    :sswitch_264
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4291
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4292
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4293
    new-instance v2, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 4294
    .local v2, "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4295
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 4296
    goto/16 :goto_b80

    .line 4277
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    :sswitch_27c
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4279
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4280
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4281
    new-instance v2, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 4282
    .local v2, "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4283
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 4284
    goto/16 :goto_b80

    .line 4265
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :sswitch_294
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4267
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4268
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4269
    new-instance v2, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 4270
    .restart local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4271
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 4272
    goto/16 :goto_b80

    .line 4253
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :sswitch_2ac
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4255
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4256
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4257
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4258
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4259
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4260
    goto/16 :goto_b80

    .line 4241
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_2c4
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4243
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4244
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4245
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4246
    .restart local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4247
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4248
    goto/16 :goto_b80

    .line 4231
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_2dc
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4233
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4234
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4235
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4236
    goto/16 :goto_b80

    .line 4221
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2ec
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4223
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4224
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4225
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4226
    goto/16 :goto_b80

    .line 4209
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2fc
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4211
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4212
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4213
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4214
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4215
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4216
    goto/16 :goto_b80

    .line 4198
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_314
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4200
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4201
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4202
    invoke-static {p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4203
    .local v2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4204
    goto/16 :goto_b80

    .line 4188
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :sswitch_328
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4190
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4191
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4192
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4193
    goto/16 :goto_b80

    .line 4178
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_338
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4180
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4181
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4182
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4183
    goto/16 :goto_b80

    .line 4168
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_348
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4170
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4171
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4172
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4173
    goto/16 :goto_b80

    .line 4158
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_358
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4160
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4161
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4162
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4163
    goto/16 :goto_b80

    .line 4148
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_368
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4150
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4151
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4152
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4153
    goto/16 :goto_b80

    .line 4137
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_378
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4139
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4140
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4141
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4142
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4143
    goto/16 :goto_b80

    .line 4125
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Ljava/lang/String;
    :sswitch_38c
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4127
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4128
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4129
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4130
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4131
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4132
    goto/16 :goto_b80

    .line 4115
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_3a4
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4117
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4118
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4119
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4120
    goto/16 :goto_b80

    .line 4103
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3b4
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4105
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4106
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4107
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4108
    .local v2, "channelId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 4109
    .local v3, "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V

    .line 4110
    goto/16 :goto_b80

    .line 4091
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "channelId":I
    .end local v3    # "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_3cc
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4093
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4094
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4095
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4096
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4097
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4098
    goto/16 :goto_b80

    .line 4079
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_3e4
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4081
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4082
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4083
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 4084
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4085
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 4086
    goto/16 :goto_b80

    .line 4067
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_3fc
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4069
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4070
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4071
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4072
    .local v2, "isRegistered":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4073
    .local v3, "ratFamily":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 4074
    goto/16 :goto_b80

    .line 4057
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "isRegistered":Z
    .end local v3    # "ratFamily":I
    :sswitch_414
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4059
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4060
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4061
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4062
    goto/16 :goto_b80

    .line 4047
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_424
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4049
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4050
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4051
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4052
    goto/16 :goto_b80

    .line 4036
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_434
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4038
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4039
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4040
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4041
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4042
    goto/16 :goto_b80

    .line 4025
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :sswitch_448
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4027
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4028
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4029
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4030
    .local v2, "rat":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4031
    goto/16 :goto_b80

    .line 4013
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "rat":I
    :sswitch_45c
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4015
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4016
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4017
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4018
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4019
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4020
    goto/16 :goto_b80

    .line 4003
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_474
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4005
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4006
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4007
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4008
    goto/16 :goto_b80

    .line 3992
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_484
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3994
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3995
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3996
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3997
    .local v2, "response":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3998
    goto/16 :goto_b80

    .line 3981
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "response":Ljava/lang/String;
    :sswitch_498
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3983
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3984
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3985
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3986
    .local v2, "source":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3987
    goto/16 :goto_b80

    .line 3971
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "source":I
    :sswitch_4ac
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3973
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3974
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3975
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3976
    goto/16 :goto_b80

    .line 3961
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4bc
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3963
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3964
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3965
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3966
    goto/16 :goto_b80

    .line 3951
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4cc
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3953
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3954
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3955
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3956
    goto/16 :goto_b80

    .line 3940
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4dc
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3942
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3943
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3944
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3945
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3946
    goto/16 :goto_b80

    .line 3930
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "smsc":Ljava/lang/String;
    :sswitch_4f0
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3932
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3933
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3934
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3935
    goto/16 :goto_b80

    .line 3916
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_500
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3918
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3919
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3920
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3921
    .local v2, "imei":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3922
    .local v3, "imeisv":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3923
    .local v4, "esn":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3924
    .local v5, "meid":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3925
    goto/16 :goto_b80

    .line 3906
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "imei":Ljava/lang/String;
    .end local v3    # "imeisv":Ljava/lang/String;
    .end local v4    # "esn":Ljava/lang/String;
    .end local v5    # "meid":Ljava/lang/String;
    :sswitch_521
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3908
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3909
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3910
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3911
    goto/16 :goto_b80

    .line 3895
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_531
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3897
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3898
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3899
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3900
    .local v2, "index":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3901
    goto/16 :goto_b80

    .line 3880
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "index":I
    :sswitch_545
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3882
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3883
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3884
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3885
    .local v2, "mdn":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3886
    .local v3, "hSid":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3887
    .local v4, "hNid":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3888
    .local v5, "min":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3889
    .local v6, "prl":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3890
    goto/16 :goto_b80

    .line 3870
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "mdn":Ljava/lang/String;
    .end local v3    # "hSid":Ljava/lang/String;
    .end local v4    # "hNid":Ljava/lang/String;
    .end local v5    # "min":Ljava/lang/String;
    .end local v6    # "prl":Ljava/lang/String;
    :sswitch_56a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3872
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3873
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3874
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3875
    goto/16 :goto_b80

    .line 3860
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_57a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3862
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3863
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3864
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3865
    goto/16 :goto_b80

    .line 3849
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_58a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3851
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3852
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3853
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3854
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3855
    goto/16 :goto_b80

    .line 3839
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :sswitch_59e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3841
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3842
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3843
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3844
    goto/16 :goto_b80

    .line 3829
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5ae
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3831
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3832
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3833
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3834
    goto/16 :goto_b80

    .line 3818
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5be
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3820
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3821
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3822
    invoke-static {p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3823
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3824
    goto/16 :goto_b80

    .line 3808
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :sswitch_5d2
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3810
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3811
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3812
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3813
    goto/16 :goto_b80

    .line 3796
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5e2
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3798
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3799
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3800
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 3801
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3802
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 3803
    goto/16 :goto_b80

    .line 3786
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_5fa
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3788
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3789
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3790
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3791
    goto/16 :goto_b80

    .line 3776
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_60a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3778
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3779
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3780
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3781
    goto/16 :goto_b80

    .line 3765
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_61a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3767
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3768
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3769
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3770
    .local v2, "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 3771
    goto/16 :goto_b80

    .line 3755
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "enable":Z
    :sswitch_62e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3757
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3758
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3759
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3760
    goto/16 :goto_b80

    .line 3744
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_63e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3746
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3747
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3748
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3749
    .local v2, "mode":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3750
    goto/16 :goto_b80

    .line 3734
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "mode":I
    :sswitch_652
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3736
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3737
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3738
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3739
    goto/16 :goto_b80

    .line 3723
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_662
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3725
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3726
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3727
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3728
    .local v2, "type":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3729
    goto/16 :goto_b80

    .line 3713
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "type":I
    :sswitch_676
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3715
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3716
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3717
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3718
    goto/16 :goto_b80

    .line 3703
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_686
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3705
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3706
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3707
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3708
    goto/16 :goto_b80

    .line 3693
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_696
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3695
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3696
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3697
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3698
    goto/16 :goto_b80

    .line 3682
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6a6
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3684
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3685
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3686
    invoke-static {p2}, Landroid/hardware/radio/V1_0/NeighboringCell;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3687
    .local v2, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3688
    goto/16 :goto_b80

    .line 3671
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    :sswitch_6ba
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3673
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3674
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3675
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3676
    .local v2, "nwType":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3677
    goto/16 :goto_b80

    .line 3661
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "nwType":I
    :sswitch_6ce
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3663
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3664
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3665
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3666
    goto/16 :goto_b80

    .line 3651
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6de
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3653
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3654
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3655
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3656
    goto/16 :goto_b80

    .line 3641
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6ee
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3643
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3644
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3645
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3646
    goto/16 :goto_b80

    .line 3631
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6fe
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3633
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3634
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3635
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3636
    goto/16 :goto_b80

    .line 3620
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_70e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3622
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3623
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3624
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3625
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3626
    goto/16 :goto_b80

    .line 3609
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "commandResponse":Ljava/lang/String;
    :sswitch_722
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3611
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3612
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3613
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3614
    .local v2, "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3615
    goto/16 :goto_b80

    .line 3599
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_736
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3601
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3602
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3603
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3604
    goto/16 :goto_b80

    .line 3589
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_746
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3591
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3592
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3593
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3594
    goto/16 :goto_b80

    .line 3578
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_756
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3580
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3581
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3582
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3583
    .local v2, "index":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3584
    goto/16 :goto_b80

    .line 3568
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "index":I
    :sswitch_76a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3570
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3571
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3572
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3573
    goto/16 :goto_b80

    .line 3557
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_77a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3559
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3560
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3561
    invoke-static {p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3562
    .local v2, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3563
    goto/16 :goto_b80

    .line 3546
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :sswitch_78e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3548
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3549
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3550
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3551
    .local v2, "status":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3552
    goto/16 :goto_b80

    .line 3535
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "status":I
    :sswitch_7a2
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3537
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3538
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3539
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3540
    .local v2, "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 3541
    goto/16 :goto_b80

    .line 3525
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "enable":Z
    :sswitch_7b6
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3527
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3528
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3529
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3530
    goto/16 :goto_b80

    .line 3515
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7c6
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3517
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3518
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3519
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3520
    goto/16 :goto_b80

    .line 3504
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7d6
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3506
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3507
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3508
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3509
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3510
    goto/16 :goto_b80

    .line 3494
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "version":Ljava/lang/String;
    :sswitch_7ea
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3496
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3497
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3498
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3499
    goto/16 :goto_b80

    .line 3484
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7fa
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3486
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3487
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3488
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3489
    goto/16 :goto_b80

    .line 3473
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_80a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3475
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3476
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3477
    invoke-static {p2}, Landroid/hardware/radio/V1_0/OperatorInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3478
    .local v2, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3479
    goto/16 :goto_b80

    .line 3463
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    :sswitch_81e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3465
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3466
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3467
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3468
    goto/16 :goto_b80

    .line 3453
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_82e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3455
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3456
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3457
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3458
    goto/16 :goto_b80

    .line 3442
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_83e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3444
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3445
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3446
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3447
    .local v2, "manual":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 3448
    goto/16 :goto_b80

    .line 3432
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "manual":Z
    :sswitch_852
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3434
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3435
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3436
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3437
    goto/16 :goto_b80

    .line 3421
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_862
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3423
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3424
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3425
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3426
    .local v2, "retry":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3427
    goto/16 :goto_b80

    .line 3410
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "retry":I
    :sswitch_876
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3412
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3413
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3414
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3415
    .local v2, "response":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3416
    goto/16 :goto_b80

    .line 3400
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "response":I
    :sswitch_88a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3402
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3403
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3404
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3405
    goto/16 :goto_b80

    .line 3390
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_89a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3392
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3393
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3394
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3395
    goto/16 :goto_b80

    .line 3380
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_8aa
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3382
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3383
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3384
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3385
    goto/16 :goto_b80

    .line 3370
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_8ba
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3372
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3373
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3374
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3375
    goto/16 :goto_b80

    .line 3358
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_8ca
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3360
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3361
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3362
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3363
    .local v2, "enable":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3364
    .local v3, "serviceClass":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 3365
    goto/16 :goto_b80

    .line 3348
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :sswitch_8e2
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3350
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3351
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3352
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3353
    goto/16 :goto_b80

    .line 3337
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_8f2
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3339
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3340
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3341
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3342
    .local v2, "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3343
    goto/16 :goto_b80

    .line 3327
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    :sswitch_906
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3329
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3330
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3331
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3332
    goto/16 :goto_b80

    .line 3315
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_916
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3317
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3318
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3319
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3320
    .local v2, "n":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3321
    .local v3, "m":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 3322
    goto/16 :goto_b80

    .line 3305
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "n":I
    .end local v3    # "m":I
    :sswitch_92e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3307
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3308
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3309
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3310
    goto/16 :goto_b80

    .line 3295
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_93e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3297
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3298
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3299
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3300
    goto/16 :goto_b80

    .line 3283
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_94e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3285
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3286
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3287
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 3288
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3289
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 3290
    goto/16 :goto_b80

    .line 3271
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_966
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3273
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3274
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3275
    new-instance v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    .line 3276
    .local v2, "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3277
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V

    .line 3278
    goto/16 :goto_b80

    .line 3259
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    :sswitch_97e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3261
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3262
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3263
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 3264
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3265
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 3266
    goto/16 :goto_b80

    .line 3247
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_996
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3249
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3250
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3251
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 3252
    .restart local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3253
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 3254
    goto/16 :goto_b80

    .line 3237
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_9ae
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3239
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3240
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3241
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3242
    goto/16 :goto_b80

    .line 3227
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9be
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3229
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3230
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3231
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3232
    goto/16 :goto_b80

    .line 3214
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9ce
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3216
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3217
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3218
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3219
    .local v2, "longName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3220
    .local v3, "shortName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3221
    .local v4, "numeric":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3222
    goto/16 :goto_b80

    .line 3202
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "longName":Ljava/lang/String;
    .end local v3    # "shortName":Ljava/lang/String;
    .end local v4    # "numeric":Ljava/lang/String;
    :sswitch_9ea
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3204
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3205
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3206
    new-instance v2, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    .line 3207
    .local v2, "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3208
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V

    .line 3209
    goto/16 :goto_b80

    .line 3190
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    :sswitch_a02
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3192
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3193
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3194
    new-instance v2, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    .line 3195
    .local v2, "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3196
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V

    .line 3197
    goto/16 :goto_b80

    .line 3178
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    :sswitch_a1a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3180
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3181
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3182
    new-instance v2, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 3183
    .local v2, "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3184
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    .line 3185
    goto/16 :goto_b80

    .line 3166
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :sswitch_a32
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3168
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3169
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3170
    new-instance v2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;-><init>()V

    .line 3171
    .local v2, "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3172
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    .line 3173
    goto/16 :goto_b80

    .line 3156
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    :sswitch_a4a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3158
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3159
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3160
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3161
    goto/16 :goto_b80

    .line 3146
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a5a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3148
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3149
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3150
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3151
    goto/16 :goto_b80

    .line 3136
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a6a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3138
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3139
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3140
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3141
    goto/16 :goto_b80

    .line 3126
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a7a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3128
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3129
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3130
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3131
    goto/16 :goto_b80

    .line 3116
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a8a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3118
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3119
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3120
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3121
    goto/16 :goto_b80

    .line 3106
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a9a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3108
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3109
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3110
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3111
    goto/16 :goto_b80

    .line 3095
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_aaa
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3097
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3098
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3099
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3100
    .local v2, "imsi":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3101
    goto/16 :goto_b80

    .line 3085
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "imsi":Ljava/lang/String;
    :sswitch_abe
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3087
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3088
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3089
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3090
    goto/16 :goto_b80

    .line 3074
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_ace
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3076
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3077
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3078
    invoke-static {p2}, Landroid/hardware/radio/V1_0/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3079
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3080
    goto/16 :goto_b80

    .line 3063
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    :sswitch_ae2
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3065
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3066
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3067
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3068
    .local v2, "remainingRetries":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3069
    goto/16 :goto_b80

    .line 3052
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :sswitch_af6
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3054
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3055
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3056
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3057
    .restart local v2    # "remainingRetries":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3058
    goto/16 :goto_b80

    .line 3041
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :sswitch_b0a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3043
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3044
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3045
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3046
    .restart local v2    # "remainingRetries":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3047
    goto :goto_b80

    .line 3030
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :sswitch_b1d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3032
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3033
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3034
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3035
    .restart local v2    # "remainingRetries":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3036
    goto :goto_b80

    .line 3019
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :sswitch_b30
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3021
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3022
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3023
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3024
    .restart local v2    # "remainingRetries":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3025
    goto :goto_b80

    .line 3008
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :sswitch_b43
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3010
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3011
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3012
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3013
    .restart local v2    # "remainingRetries":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3014
    goto :goto_b80

    .line 2997
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :sswitch_b56
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2999
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3000
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3001
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3002
    .restart local v2    # "remainingRetries":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3003
    goto :goto_b80

    .line 2985
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :sswitch_b69
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2987
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2988
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2989
    new-instance v2, Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CardStatus;-><init>()V

    .line 2990
    .local v2, "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2991
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

    .line 2992
    nop

    .line 4642
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    :goto_b80
    return-void

    nop

    :sswitch_data_b82
    .sparse-switch
        0x1 -> :sswitch_b69
        0x2 -> :sswitch_b56
        0x3 -> :sswitch_b43
        0x4 -> :sswitch_b30
        0x5 -> :sswitch_b1d
        0x6 -> :sswitch_b0a
        0x7 -> :sswitch_af6
        0x8 -> :sswitch_ae2
        0x9 -> :sswitch_ace
        0xa -> :sswitch_abe
        0xb -> :sswitch_aaa
        0xc -> :sswitch_a9a
        0xd -> :sswitch_a8a
        0xe -> :sswitch_a7a
        0xf -> :sswitch_a6a
        0x10 -> :sswitch_a5a
        0x11 -> :sswitch_a4a
        0x12 -> :sswitch_a32
        0x13 -> :sswitch_a1a
        0x14 -> :sswitch_a02
        0x15 -> :sswitch_9ea
        0x16 -> :sswitch_9ce
        0x17 -> :sswitch_9be
        0x18 -> :sswitch_9ae
        0x19 -> :sswitch_996
        0x1a -> :sswitch_97e
        0x1b -> :sswitch_966
        0x1c -> :sswitch_94e
        0x1d -> :sswitch_93e
        0x1e -> :sswitch_92e
        0x1f -> :sswitch_916
        0x20 -> :sswitch_906
        0x21 -> :sswitch_8f2
        0x22 -> :sswitch_8e2
        0x23 -> :sswitch_8ca
        0x24 -> :sswitch_8ba
        0x25 -> :sswitch_8aa
        0x26 -> :sswitch_89a
        0x27 -> :sswitch_88a
        0x28 -> :sswitch_876
        0x29 -> :sswitch_862
        0x2a -> :sswitch_852
        0x2b -> :sswitch_83e
        0x2c -> :sswitch_82e
        0x2d -> :sswitch_81e
        0x2e -> :sswitch_80a
        0x2f -> :sswitch_7fa
        0x30 -> :sswitch_7ea
        0x31 -> :sswitch_7d6
        0x32 -> :sswitch_7c6
        0x33 -> :sswitch_7b6
        0x34 -> :sswitch_7a2
        0x35 -> :sswitch_78e
        0x36 -> :sswitch_77a
        0x37 -> :sswitch_76a
        0x38 -> :sswitch_756
        0x39 -> :sswitch_746
        0x3a -> :sswitch_736
        0x3b -> :sswitch_722
        0x3c -> :sswitch_70e
        0x3d -> :sswitch_6fe
        0x3e -> :sswitch_6ee
        0x3f -> :sswitch_6de
        0x40 -> :sswitch_6ce
        0x41 -> :sswitch_6ba
        0x42 -> :sswitch_6a6
        0x43 -> :sswitch_696
        0x44 -> :sswitch_686
        0x45 -> :sswitch_676
        0x46 -> :sswitch_662
        0x47 -> :sswitch_652
        0x48 -> :sswitch_63e
        0x49 -> :sswitch_62e
        0x4a -> :sswitch_61a
        0x4b -> :sswitch_60a
        0x4c -> :sswitch_5fa
        0x4d -> :sswitch_5e2
        0x4e -> :sswitch_5d2
        0x4f -> :sswitch_5be
        0x50 -> :sswitch_5ae
        0x51 -> :sswitch_59e
        0x52 -> :sswitch_58a
        0x53 -> :sswitch_57a
        0x54 -> :sswitch_56a
        0x55 -> :sswitch_545
        0x56 -> :sswitch_531
        0x57 -> :sswitch_521
        0x58 -> :sswitch_500
        0x59 -> :sswitch_4f0
        0x5a -> :sswitch_4dc
        0x5b -> :sswitch_4cc
        0x5c -> :sswitch_4bc
        0x5d -> :sswitch_4ac
        0x5e -> :sswitch_498
        0x5f -> :sswitch_484
        0x60 -> :sswitch_474
        0x61 -> :sswitch_45c
        0x62 -> :sswitch_448
        0x63 -> :sswitch_434
        0x64 -> :sswitch_424
        0x65 -> :sswitch_414
        0x66 -> :sswitch_3fc
        0x67 -> :sswitch_3e4
        0x68 -> :sswitch_3cc
        0x69 -> :sswitch_3b4
        0x6a -> :sswitch_3a4
        0x6b -> :sswitch_38c
        0x6c -> :sswitch_378
        0x6d -> :sswitch_368
        0x6e -> :sswitch_358
        0x6f -> :sswitch_348
        0x70 -> :sswitch_338
        0x71 -> :sswitch_328
        0x72 -> :sswitch_314
        0x73 -> :sswitch_2fc
        0x74 -> :sswitch_2ec
        0x75 -> :sswitch_2dc
        0x76 -> :sswitch_2c4
        0x77 -> :sswitch_2ac
        0x78 -> :sswitch_294
        0x79 -> :sswitch_27c
        0x7a -> :sswitch_264
        0x7b -> :sswitch_24c
        0x7c -> :sswitch_238
        0x7d -> :sswitch_21c
        0x7e -> :sswitch_20c
        0x7f -> :sswitch_1fc
        0x80 -> :sswitch_1ec
        0x81 -> :sswitch_1e0
        0x82 -> :sswitch_1d0
        0x83 -> :sswitch_1c0
        0x84 -> :sswitch_1b0
        0x85 -> :sswitch_1a0
        0x86 -> :sswitch_188
        0x87 -> :sswitch_178
        0x88 -> :sswitch_164
        0x89 -> :sswitch_14c
        0x8a -> :sswitch_13c
        0x8b -> :sswitch_12c
        0x8c -> :sswitch_118
        0x8d -> :sswitch_100
        0x8e -> :sswitch_e8
        0x8f -> :sswitch_d0
        0xf43484e -> :sswitch_be
        0xf444247 -> :sswitch_a8
        0xf445343 -> :sswitch_96
        0xf485348 -> :sswitch_41
        0xf494e54 -> :sswitch_39
        0xf4c5444 -> :sswitch_37
        0xf504e47 -> :sswitch_29
        0xf524546 -> :sswitch_17
        0xf535953 -> :sswitch_f
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 2936
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 2964
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2965
    return-object p0

    .line 2967
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

    .line 2971
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 2972
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 2926
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 2958
    const/4 v0, 0x1

    return v0
.end method
