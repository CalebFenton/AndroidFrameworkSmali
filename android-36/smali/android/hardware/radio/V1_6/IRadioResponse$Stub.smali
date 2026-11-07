.class public abstract Landroid/hardware/radio/V1_6/IRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IRadioResponse.java"

# interfaces
.implements Landroid/hardware/radio/V1_6/IRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_6/IRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4276
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 4279
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

    .line 4298
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 4341
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4342
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 4343
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 4344
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 4345
    return-object v0
.end method

.method public final blacklist getHashChain()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 4310
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_38

    new-array v3, v1, [B

    fill-array-data v3, :array_4c

    new-array v4, v1, [B

    fill-array-data v4, :array_60

    new-array v5, v1, [B

    fill-array-data v5, :array_74

    new-array v6, v1, [B

    fill-array-data v6, :array_88

    new-array v7, v1, [B

    fill-array-data v7, :array_9c

    new-array v8, v1, [B

    fill-array-data v8, :array_b0

    new-array v9, v1, [B

    fill-array-data v9, :array_c4

    filled-new-array/range {v2 .. v9}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_38
    .array-data 1
        0x44t
        0x43t
        -0xbt
        -0x3bt
        -0x9t
        -0x77t
        -0x29t
        0x7at
        -0x4ct
        -0x6ft
        -0x56t
        -0x2ct
        -0x31t
        0x46t
        0x73t
        -0x2ft
        0x31t
        -0x45t
        -0x5ct
        0x50t
        0x14t
        -0x2at
        -0x45t
        0x48t
        0x16t
        -0x78t
        -0x74t
        -0x46t
        -0x3dt
        0x7at
        -0x58t
        -0x3ft
    .end array-data

    :array_4c
    .array-data 1
        -0x48t
        0x9t
        0x19t
        0x39t
        0x70t
        -0x57t
        0x1ct
        -0x5at
        0x37t
        -0x5ct
        -0x50t
        0x18t
        0x47t
        0x67t
        0x31t
        0x56t
        0x1t
        -0x2dt
        0x2et
        0x3et
        -0xdt
        -0x2bt
        -0x67t
        0x2ft
        -0x5t
        -0x39t
        -0x58t
        -0x2ft
        0x4at
        0x14t
        -0x10t
        0x15t
    .end array-data

    :array_60
    .array-data 1
        0xct
        -0x40t
        -0x23t
        -0x79t
        -0x3at
        0x34t
        -0x56t
        -0x2dt
        0x6dt
        0x7dt
        -0xet
        0x2bt
        0x28t
        0x32t
        -0x7dt
        -0x62t
        -0x9t
        -0x22t
        -0x29t
        0x19t
        0x9t
        -0x25t
        -0x33t
        -0x1ft
        0x1ct
        -0x3t
        -0x2at
        -0x63t
        -0x40t
        -0x24t
        0x52t
        -0x48t
    .end array-data

    :array_74
    .array-data 1
        -0xbt
        -0x5t
        -0x1ct
        -0xet
        -0x76t
        -0x62t
        0x34t
        0x6bt
        -0x1dt
        0x60t
        0x63t
        -0x14t
        -0x5ct
        -0x1at
        -0x38t
        0x64t
        0x11t
        0x4at
        0x1at
        0x6ft
        -0x4at
        0x48t
        -0x7ct
        -0x25t
        0x3t
        -0x3t
        -0x28t
        0x25t
        0x79t
        0x1at
        -0x27t
        -0x48t
    .end array-data

    :array_88
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

    :array_9c
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

    :array_b0
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

    :array_c4
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
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4284
    new-instance v0, Ljava/util/ArrayList;

    const-string v7, "android.hardware.radio@1.0::IRadioResponse"

    const-string v8, "android.hidl.base@1.0::IBase"

    const-string v1, "android.hardware.radio@1.6::IRadioResponse"

    const-string v2, "android.hardware.radio@1.5::IRadioResponse"

    const-string v3, "android.hardware.radio@1.4::IRadioResponse"

    const-string v4, "android.hardware.radio@1.3::IRadioResponse"

    const-string v5, "android.hardware.radio@1.2::IRadioResponse"

    const-string v6, "android.hardware.radio@1.1::IRadioResponse"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 4304
    const-string v0, "android.hardware.radio@1.6::IRadioResponse"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 4329
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 4351
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 4353
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

    .line 4381
    move-object v7, p3

    const-string v1, "android.hardware.radio@1.3::IRadioResponse"

    const-string v2, "android.hardware.radio@1.1::IRadioResponse"

    const/4 v3, 0x0

    const-string v4, "android.hidl.base@1.0::IBase"

    const-string v5, "android.hardware.radio@1.2::IRadioResponse"

    const-string v6, "android.hardware.radio@1.4::IRadioResponse"

    const-string v8, "android.hardware.radio@1.5::IRadioResponse"

    const-string v9, "android.hardware.radio@1.6::IRadioResponse"

    const-string v10, "android.hardware.radio@1.0::IRadioResponse"

    sparse-switch p1, :sswitch_data_105e

    goto/16 :goto_105c

    .line 6710
    :sswitch_17
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6712
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->notifySyspropsChanged()V

    .line 6713
    goto/16 :goto_105c

    .line 6699
    :sswitch_1f
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6701
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 6702
    .local v1, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6703
    invoke-virtual {v1, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 6704
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 6705
    goto/16 :goto_105c

    .line 6689
    .end local v1    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_31
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6691
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->ping()V

    .line 6692
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6693
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 6694
    goto/16 :goto_105c

    .line 6684
    :sswitch_3f
    goto/16 :goto_105c

    .line 6676
    :sswitch_41
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6678
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setHALInstrumentation()V

    .line 6679
    goto/16 :goto_105c

    .line 6642
    :sswitch_49
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6644
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 6645
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6647
    new-instance v2, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 6649
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 6650
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 6651
    const-wide/16 v5, 0xc

    invoke-virtual {v2, v5, v6, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 6652
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v3, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 6653
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_70
    if-ge v5, v4, :cond_91

    .line 6655
    mul-int/lit8 v6, v5, 0x20

    int-to-long v8, v6

    .line 6656
    .local v8, "_hidl_array_offset_1":J
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 6658
    .local v6, "_hidl_array_item_1":[B
    if-eqz v6, :cond_89

    array-length v10, v6

    const/16 v11, 0x20

    if-ne v10, v11, :cond_89

    .line 6662
    invoke-virtual {v3, v8, v9, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 6663
    nop

    .line 6653
    .end local v6    # "_hidl_array_item_1":[B
    .end local v8    # "_hidl_array_offset_1":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    .line 6659
    .restart local v6    # "_hidl_array_item_1":[B
    .restart local v8    # "_hidl_array_offset_1":J
    :cond_89
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Array element is not of the expected length"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 6666
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_item_1":[B
    .end local v8    # "_hidl_array_offset_1":J
    :cond_91
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 6668
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 6670
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 6671
    goto/16 :goto_105c

    .line 6631
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_9e
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6633
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 6634
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6635
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 6636
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 6637
    goto/16 :goto_105c

    .line 6619
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_b0
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6621
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 6622
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 6623
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 6624
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6625
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 6626
    goto/16 :goto_105c

    .line 6608
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_c6
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6610
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 6611
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6612
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 6613
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 6614
    goto/16 :goto_105c

    .line 6597
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_d8
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6599
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6600
    .local v1, "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6601
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6602
    .local v2, "updatedRecordIndex":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->updateSimPhonebookRecordsResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;I)V

    .line 6603
    goto/16 :goto_105c

    .line 6585
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v2    # "updatedRecordIndex":I
    :sswitch_ec
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6587
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6588
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6589
    new-instance v2, Landroid/hardware/radio/V1_6/PhonebookCapacity;

    invoke-direct {v2}, Landroid/hardware/radio/V1_6/PhonebookCapacity;-><init>()V

    .line 6590
    .local v2, "capacity":Landroid/hardware/radio/V1_6/PhonebookCapacity;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_6/PhonebookCapacity;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6591
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getSimPhonebookCapacityResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/PhonebookCapacity;)V

    .line 6592
    goto/16 :goto_105c

    .line 6575
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v2    # "capacity":Landroid/hardware/radio/V1_6/PhonebookCapacity;
    :sswitch_104
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6577
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6578
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6579
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getSimPhonebookRecordsResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    .line 6580
    goto/16 :goto_105c

    .line 6563
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    :sswitch_114
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6565
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6566
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6567
    new-instance v2, Landroid/hardware/radio/V1_6/SlicingConfig;

    invoke-direct {v2}, Landroid/hardware/radio/V1_6/SlicingConfig;-><init>()V

    .line 6568
    .local v2, "slicingConfig":Landroid/hardware/radio/V1_6/SlicingConfig;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_6/SlicingConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6569
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getSlicingConfigResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/SlicingConfig;)V

    .line 6570
    goto/16 :goto_105c

    .line 6552
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v2    # "slicingConfig":Landroid/hardware/radio/V1_6/SlicingConfig;
    :sswitch_12c
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6554
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6555
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6556
    invoke-static {p2}, Landroid/hardware/radio/V1_6/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6557
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/Call;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCurrentCallsResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6558
    goto/16 :goto_105c

    .line 6540
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/Call;>;"
    :sswitch_140
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6542
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6543
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6544
    new-instance v2, Landroid/hardware/radio/V1_6/RegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_6/RegStateResult;-><init>()V

    .line 6545
    .local v2, "dataRegResponse":Landroid/hardware/radio/V1_6/RegStateResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_6/RegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6546
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/RegStateResult;)V

    .line 6547
    goto/16 :goto_105c

    .line 6528
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v2    # "dataRegResponse":Landroid/hardware/radio/V1_6/RegStateResult;
    :sswitch_158
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6530
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6531
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6532
    new-instance v2, Landroid/hardware/radio/V1_6/RegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_6/RegStateResult;-><init>()V

    .line 6533
    .local v2, "voiceRegResponse":Landroid/hardware/radio/V1_6/RegStateResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_6/RegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6534
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getVoiceRegistrationStateResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/RegStateResult;)V

    .line 6535
    goto/16 :goto_105c

    .line 6516
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v2    # "voiceRegResponse":Landroid/hardware/radio/V1_6/RegStateResult;
    :sswitch_170
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6518
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6519
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6520
    new-instance v2, Landroid/hardware/radio/V1_6/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_6/SignalStrength;-><init>()V

    .line 6521
    .local v2, "signalStrength":Landroid/hardware/radio/V1_6/SignalStrength;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_6/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6522
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getSignalStrengthResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/SignalStrength;)V

    .line 6523
    goto/16 :goto_105c

    .line 6505
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_6/SignalStrength;
    :sswitch_188
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6507
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6508
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6509
    invoke-static {p2}, Landroid/hardware/radio/V1_6/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6510
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/CellInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCellInfoListResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6511
    goto/16 :goto_105c

    .line 6494
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/CellInfo;>;"
    :sswitch_19c
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6496
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6497
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6498
    invoke-static {p2}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6499
    .local v2, "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/RadioAccessSpecifier;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getSystemSelectionChannelsResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6500
    goto/16 :goto_105c

    .line 6484
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v2    # "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/RadioAccessSpecifier;>;"
    :sswitch_1b0
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6486
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6487
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6488
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setDataThrottlingResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    .line 6489
    goto/16 :goto_105c

    .line 6473
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    :sswitch_1c0
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6475
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6476
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6477
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6478
    .local v2, "networkTypeBitmap":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getAllowedNetworkTypesBitmapResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;I)V

    .line 6479
    goto/16 :goto_105c

    .line 6463
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v2    # "networkTypeBitmap":I
    :sswitch_1d4
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6465
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6466
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6467
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setAllowedNetworkTypesBitmapResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    .line 6468
    goto/16 :goto_105c

    .line 6453
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    :sswitch_1e4
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6455
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6456
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6457
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->cancelHandoverResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    .line 6458
    goto/16 :goto_105c

    .line 6443
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    :sswitch_1f4
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6445
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6446
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6447
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->startHandoverResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    .line 6448
    goto/16 :goto_105c

    .line 6433
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    :sswitch_204
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6435
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6436
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6437
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->releasePduSessionIdResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    .line 6438
    goto/16 :goto_105c

    .line 6422
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    :sswitch_214
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6424
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6425
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6426
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6427
    .local v2, "id":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->allocatePduSessionIdResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;I)V

    .line 6428
    goto/16 :goto_105c

    .line 6411
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v2    # "id":I
    :sswitch_228
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6413
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6414
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6415
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6416
    .local v2, "isEnabled":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->isNrDualConnectivityEnabledResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;Z)V

    .line 6417
    goto/16 :goto_105c

    .line 6401
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v2    # "isEnabled":Z
    :sswitch_23c
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6403
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6404
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6405
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setNrDualConnectivityStateResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    .line 6406
    goto/16 :goto_105c

    .line 6391
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    :sswitch_24c
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6393
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6394
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6395
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setSimCardPowerResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    .line 6396
    goto/16 :goto_105c

    .line 6379
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    :sswitch_25c
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6381
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6382
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6383
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 6384
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6385
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendCdmaSmsExpectMoreResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 6386
    goto/16 :goto_105c

    .line 6367
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_274
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6369
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6370
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6371
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 6372
    .restart local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6373
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendCdmaSmsResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 6374
    goto/16 :goto_105c

    .line 6355
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_28c
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6357
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6358
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6359
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 6360
    .restart local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6361
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendSmsExpectMoreResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 6362
    goto/16 :goto_105c

    .line 6343
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_2a4
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6345
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6346
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6347
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 6348
    .restart local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6349
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendSmsResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 6350
    goto/16 :goto_105c

    .line 6332
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_2bc
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6334
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6335
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6336
    invoke-static {p2}, Landroid/hardware/radio/V1_6/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6337
    .local v2, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/SetupDataCallResult;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getDataCallListResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6338
    goto/16 :goto_105c

    .line 6320
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v2    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/SetupDataCallResult;>;"
    :sswitch_2d0
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6322
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6323
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6324
    new-instance v2, Landroid/hardware/radio/V1_6/SetupDataCallResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_6/SetupDataCallResult;-><init>()V

    .line 6325
    .local v2, "dcResponse":Landroid/hardware/radio/V1_6/SetupDataCallResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_6/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6326
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setupDataCallResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/SetupDataCallResult;)V

    .line 6327
    goto/16 :goto_105c

    .line 6310
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    .end local v2    # "dcResponse":Landroid/hardware/radio/V1_6/SetupDataCallResult;
    :sswitch_2e8
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6312
    new-instance v1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 6313
    .restart local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6314
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setRadioPowerResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    .line 6315
    goto/16 :goto_105c

    .line 6298
    .end local v1    # "info":Landroid/hardware/radio/V1_6/RadioResponseInfo;
    :sswitch_2f8
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6300
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6301
    .local v1, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6302
    new-instance v2, Landroid/hardware/radio/V1_5/CardStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_5/CardStatus;-><init>()V

    .line 6303
    .local v2, "cardStatus":Landroid/hardware/radio/V1_5/CardStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_5/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6304
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getIccCardStatusResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/CardStatus;)V

    .line 6305
    goto/16 :goto_105c

    .line 6286
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cardStatus":Landroid/hardware/radio/V1_5/CardStatus;
    :sswitch_310
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6288
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6289
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6290
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6291
    .local v2, "persoType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6292
    .local v3, "remainingRetries":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->supplySimDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 6293
    goto/16 :goto_105c

    .line 6274
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "persoType":I
    .end local v3    # "remainingRetries":I
    :sswitch_328
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6276
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6277
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6278
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 6279
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6280
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendCdmaSmsExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 6281
    goto/16 :goto_105c

    .line 6264
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_340
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6266
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6267
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6268
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setNetworkSelectionModeManualResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6269
    goto/16 :goto_105c

    .line 6253
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_350
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6255
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6256
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6257
    invoke-static {p2}, Landroid/hardware/radio/V1_5/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6258
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/CellInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCellInfoListResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6259
    goto/16 :goto_105c

    .line 6241
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/CellInfo;>;"
    :sswitch_364
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6243
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6244
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6245
    new-instance v2, Landroid/hardware/radio/V1_5/RegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_5/RegStateResult;-><init>()V

    .line 6246
    .local v2, "dataRegResponse":Landroid/hardware/radio/V1_5/RegStateResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_5/RegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6247
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/RegStateResult;)V

    .line 6248
    goto/16 :goto_105c

    .line 6229
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dataRegResponse":Landroid/hardware/radio/V1_5/RegStateResult;
    :sswitch_37c
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6231
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6232
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6233
    new-instance v2, Landroid/hardware/radio/V1_5/RegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_5/RegStateResult;-><init>()V

    .line 6234
    .local v2, "voiceRegResponse":Landroid/hardware/radio/V1_5/RegStateResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_5/RegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6235
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getVoiceRegistrationStateResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/RegStateResult;)V

    .line 6236
    goto/16 :goto_105c

    .line 6216
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "voiceRegResponse":Landroid/hardware/radio/V1_5/RegStateResult;
    :sswitch_394
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6218
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6219
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6220
    new-instance v2, Landroid/hardware/radio/V1_5/CellIdentity;

    invoke-direct {v2}, Landroid/hardware/radio/V1_5/CellIdentity;-><init>()V

    .line 6221
    .local v2, "cellIdentity":Landroid/hardware/radio/V1_5/CellIdentity;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_5/CellIdentity;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6222
    invoke-static {p2}, Landroid/hardware/radio/V1_5/BarringInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 6223
    .local v3, "barringInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/BarringInfo;>;"
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getBarringInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/CellIdentity;Ljava/util/ArrayList;)V

    .line 6224
    goto/16 :goto_105c

    .line 6206
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cellIdentity":Landroid/hardware/radio/V1_5/CellIdentity;
    .end local v3    # "barringInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/BarringInfo;>;"
    :sswitch_3b0
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6208
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6209
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6210
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setIndicationFilterResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6211
    goto/16 :goto_105c

    .line 6196
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3c0
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6198
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6199
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6200
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setRadioPowerResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6201
    goto/16 :goto_105c

    .line 6186
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3d0
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6188
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6189
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6190
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setDataProfileResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6191
    goto/16 :goto_105c

    .line 6176
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3e0
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6178
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6179
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6180
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setInitialAttachApnResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6181
    goto/16 :goto_105c

    .line 6165
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3f0
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6167
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6168
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6169
    invoke-static {p2}, Landroid/hardware/radio/V1_5/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6170
    .local v2, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/SetupDataCallResult;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getDataCallListResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6171
    goto/16 :goto_105c

    .line 6153
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/SetupDataCallResult;>;"
    :sswitch_404
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6155
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6156
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6157
    new-instance v2, Landroid/hardware/radio/V1_5/SetupDataCallResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_5/SetupDataCallResult;-><init>()V

    .line 6158
    .local v2, "dcResponse":Landroid/hardware/radio/V1_5/SetupDataCallResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_5/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6159
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setupDataCallResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/SetupDataCallResult;)V

    .line 6160
    goto/16 :goto_105c

    .line 6143
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dcResponse":Landroid/hardware/radio/V1_5/SetupDataCallResult;
    :sswitch_41c
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6145
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6146
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6147
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->startNetworkScanResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6148
    goto/16 :goto_105c

    .line 6133
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_42c
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6135
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6136
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6137
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setSystemSelectionChannelsResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6138
    goto/16 :goto_105c

    .line 6122
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_43c
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6124
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6125
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6126
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6127
    .local v2, "enabled":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->areUiccApplicationsEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 6128
    goto/16 :goto_105c

    .line 6112
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "enabled":Z
    :sswitch_450
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6114
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6115
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6116
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->enableUiccApplicationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6117
    goto/16 :goto_105c

    .line 6102
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_460
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6104
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6105
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6106
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setLinkCapacityReportingCriteriaResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6107
    goto/16 :goto_105c

    .line 6092
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_470
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6094
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6095
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6096
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setSignalStrengthReportingCriteriaResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6097
    goto/16 :goto_105c

    .line 6080
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_480
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6082
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6083
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6084
    new-instance v2, Landroid/hardware/radio/V1_4/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_4/SignalStrength;-><init>()V

    .line 6085
    .local v2, "signalStrength":Landroid/hardware/radio/V1_4/SignalStrength;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_4/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6086
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getSignalStrengthResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SignalStrength;)V

    .line 6087
    goto/16 :goto_105c

    .line 6067
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_4/SignalStrength;
    :sswitch_498
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6069
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6070
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6071
    new-instance v2, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;

    invoke-direct {v2}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;-><init>()V

    .line 6072
    .local v2, "carriers":Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6073
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6074
    .local v3, "multiSimPolicy":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getAllowedCarriersResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V

    .line 6075
    goto/16 :goto_105c

    .line 6057
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "carriers":Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
    .end local v3    # "multiSimPolicy":I
    :sswitch_4b4
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6059
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6060
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6061
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setAllowedCarriersResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6062
    goto/16 :goto_105c

    .line 6045
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4c4
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6047
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6048
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6049
    new-instance v2, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_4/SetupDataCallResult;-><init>()V

    .line 6050
    .local v2, "dcResponse":Landroid/hardware/radio/V1_4/SetupDataCallResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6051
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setupDataCallResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SetupDataCallResult;)V

    .line 6052
    goto/16 :goto_105c

    .line 6034
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dcResponse":Landroid/hardware/radio/V1_4/SetupDataCallResult;
    :sswitch_4dc
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6036
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6037
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6038
    invoke-static {p2}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6039
    .local v2, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getDataCallListResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6040
    goto/16 :goto_105c

    .line 6024
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    :sswitch_4f0
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6026
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6027
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6028
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6029
    goto/16 :goto_105c

    .line 6013
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_500
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6015
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6016
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6017
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6018
    .local v2, "networkTypeBitmap":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6019
    goto/16 :goto_105c

    .line 6001
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "networkTypeBitmap":I
    :sswitch_514
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6003
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6004
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6005
    new-instance v2, Landroid/hardware/radio/V1_4/CardStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_4/CardStatus;-><init>()V

    .line 6006
    .local v2, "cardStatus":Landroid/hardware/radio/V1_4/CardStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_4/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6007
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getIccCardStatusResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CardStatus;)V

    .line 6008
    goto/16 :goto_105c

    .line 5989
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cardStatus":Landroid/hardware/radio/V1_4/CardStatus;
    :sswitch_52c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5991
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5992
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5993
    new-instance v2, Landroid/hardware/radio/V1_4/DataRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_4/DataRegStateResult;-><init>()V

    .line 5994
    .local v2, "dataRegResponse":Landroid/hardware/radio/V1_4/DataRegStateResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_4/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5995
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/DataRegStateResult;)V

    .line 5996
    goto/16 :goto_105c

    .line 5978
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dataRegResponse":Landroid/hardware/radio/V1_4/DataRegStateResult;
    :sswitch_544
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5980
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5981
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5982
    invoke-static {p2}, Landroid/hardware/radio/V1_4/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5983
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/CellInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCellInfoListResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5984
    goto/16 :goto_105c

    .line 5968
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/CellInfo;>;"
    :sswitch_558
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5970
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5971
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5972
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->startNetworkScanResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5973
    goto/16 :goto_105c

    .line 5958
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_568
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5960
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5961
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5962
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->emergencyDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5963
    goto/16 :goto_105c

    .line 5947
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_578
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5949
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5950
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5951
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5952
    .local v2, "isEnabled":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getModemStackStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 5953
    goto/16 :goto_105c

    .line 5937
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "isEnabled":Z
    :sswitch_58c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5939
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5940
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5941
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->enableModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5942
    goto/16 :goto_105c

    .line 5927
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_59c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5929
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5930
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5931
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setSystemSelectionChannelsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5932
    goto/16 :goto_105c

    .line 5915
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5ac
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5917
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5918
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5919
    new-instance v2, Landroid/hardware/radio/V1_2/DataRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/DataRegStateResult;-><init>()V

    .line 5920
    .local v2, "dataRegResponse":Landroid/hardware/radio/V1_2/DataRegStateResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5921
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/DataRegStateResult;)V

    .line 5922
    goto/16 :goto_105c

    .line 5903
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dataRegResponse":Landroid/hardware/radio/V1_2/DataRegStateResult;
    :sswitch_5c4
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5905
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5906
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5907
    new-instance v2, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;-><init>()V

    .line 5908
    .local v2, "voiceRegResponse":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5909
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getVoiceRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/VoiceRegStateResult;)V

    .line 5910
    goto/16 :goto_105c

    .line 5891
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "voiceRegResponse":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    :sswitch_5dc
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5893
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5894
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5895
    new-instance v2, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 5896
    .local v2, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5897
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getSignalStrengthResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V

    .line 5898
    goto/16 :goto_105c

    .line 5880
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :sswitch_5f4
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5882
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5883
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5884
    invoke-static {p2}, Landroid/hardware/radio/V1_2/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5885
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCurrentCallsResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5886
    goto/16 :goto_105c

    .line 5870
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    :sswitch_608
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5872
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5873
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5874
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5875
    goto/16 :goto_105c

    .line 5860
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_618
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5862
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5863
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5864
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5865
    goto/16 :goto_105c

    .line 5848
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_628
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5850
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5851
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5852
    new-instance v2, Landroid/hardware/radio/V1_2/CardStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/CardStatus;-><init>()V

    .line 5853
    .local v2, "cardStatus":Landroid/hardware/radio/V1_2/CardStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5854
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getIccCardStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V

    .line 5855
    goto/16 :goto_105c

    .line 5837
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cardStatus":Landroid/hardware/radio/V1_2/CardStatus;
    :sswitch_640
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5839
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5840
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5841
    invoke-static {p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5842
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCellInfoListResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5843
    goto/16 :goto_105c

    .line 5827
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :sswitch_654
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5829
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5830
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5831
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->stopKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5832
    goto/16 :goto_105c

    .line 5815
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_664
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5817
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5818
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5819
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 5820
    .local v2, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5821
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->startKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 5822
    goto/16 :goto_105c

    .line 5805
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :sswitch_67c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5807
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5808
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5809
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->stopNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5810
    goto/16 :goto_105c

    .line 5795
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_68c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5797
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5798
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5799
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->startNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5800
    goto/16 :goto_105c

    .line 5785
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_69c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5787
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5788
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5789
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setSimCardPowerResponse_1_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5790
    goto/16 :goto_105c

    .line 5775
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6ac
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5777
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5778
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5779
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5780
    goto/16 :goto_105c

    .line 5766
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6bc
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5768
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5769
    .local v1, "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->acknowledgeRequest(I)V

    .line 5770
    goto/16 :goto_105c

    .line 5756
    .end local v1    # "serial":I
    :sswitch_6c8
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5758
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5759
    .local v1, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5760
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5761
    goto/16 :goto_105c

    .line 5746
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6d8
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5748
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5749
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5750
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5751
    goto/16 :goto_105c

    .line 5736
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6e8
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5738
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5739
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5740
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5741
    goto/16 :goto_105c

    .line 5723
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6f8
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5725
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5726
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5727
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5728
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 5729
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5730
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 5731
    goto/16 :goto_105c

    .line 5712
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :sswitch_714
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5714
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5715
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5716
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5717
    .local v2, "numAllowed":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5718
    goto/16 :goto_105c

    .line 5700
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "numAllowed":I
    :sswitch_728
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5702
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5703
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5704
    new-instance v2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;-><init>()V

    .line 5705
    .local v2, "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5706
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    .line 5707
    goto/16 :goto_105c

    .line 5688
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    :sswitch_740
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5690
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5691
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5692
    new-instance v2, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 5693
    .local v2, "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5694
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 5695
    goto/16 :goto_105c

    .line 5676
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    :sswitch_758
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5678
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5679
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5680
    new-instance v2, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 5681
    .local v2, "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5682
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 5683
    goto/16 :goto_105c

    .line 5664
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :sswitch_770
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5666
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5667
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5668
    new-instance v2, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 5669
    .restart local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5670
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 5671
    goto/16 :goto_105c

    .line 5652
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :sswitch_788
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5654
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5655
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5656
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 5657
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5658
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 5659
    goto/16 :goto_105c

    .line 5640
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_7a0
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5642
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5643
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5644
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 5645
    .restart local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5646
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 5647
    goto/16 :goto_105c

    .line 5630
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_7b8
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5632
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5633
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5634
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5635
    goto/16 :goto_105c

    .line 5620
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7c8
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5622
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5623
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5624
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5625
    goto/16 :goto_105c

    .line 5608
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7d8
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5610
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5611
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5612
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 5613
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5614
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 5615
    goto/16 :goto_105c

    .line 5597
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_7f0
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5599
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5600
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5601
    invoke-static {p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5602
    .local v2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5603
    goto/16 :goto_105c

    .line 5587
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :sswitch_804
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5589
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5590
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5591
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5592
    goto/16 :goto_105c

    .line 5577
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_814
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5579
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5580
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5581
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5582
    goto/16 :goto_105c

    .line 5567
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_824
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5569
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5570
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5571
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5572
    goto/16 :goto_105c

    .line 5557
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_834
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5559
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5560
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5561
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5562
    goto/16 :goto_105c

    .line 5547
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_844
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5549
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5550
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5551
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5552
    goto/16 :goto_105c

    .line 5536
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_854
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5538
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5539
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5540
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5541
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5542
    goto/16 :goto_105c

    .line 5524
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Ljava/lang/String;
    :sswitch_868
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5526
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5527
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5528
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 5529
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5530
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 5531
    goto/16 :goto_105c

    .line 5514
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_880
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5516
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5517
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5518
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5519
    goto/16 :goto_105c

    .line 5502
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_890
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5504
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5505
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5506
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5507
    .local v2, "channelId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 5508
    .local v3, "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V

    .line 5509
    goto/16 :goto_105c

    .line 5490
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "channelId":I
    .end local v3    # "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_8a8
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5492
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5493
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5494
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 5495
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5496
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 5497
    goto/16 :goto_105c

    .line 5478
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_8c0
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5480
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5481
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5482
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 5483
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5484
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 5485
    goto/16 :goto_105c

    .line 5466
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_8d8
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5468
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5469
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5470
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5471
    .local v2, "isRegistered":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5472
    .local v3, "ratFamily":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 5473
    goto/16 :goto_105c

    .line 5456
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "isRegistered":Z
    .end local v3    # "ratFamily":I
    :sswitch_8f0
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5458
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5459
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5460
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5461
    goto/16 :goto_105c

    .line 5446
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_900
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5448
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5449
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5450
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5451
    goto/16 :goto_105c

    .line 5435
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_910
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5437
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5438
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5439
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5440
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5441
    goto/16 :goto_105c

    .line 5424
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :sswitch_924
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5426
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5427
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5428
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5429
    .local v2, "rat":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5430
    goto/16 :goto_105c

    .line 5412
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "rat":I
    :sswitch_938
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5414
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5415
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5416
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 5417
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5418
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 5419
    goto/16 :goto_105c

    .line 5402
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_950
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5404
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5405
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5406
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5407
    goto/16 :goto_105c

    .line 5391
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_960
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5393
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5394
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5395
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5396
    .local v2, "response":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5397
    goto/16 :goto_105c

    .line 5380
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "response":Ljava/lang/String;
    :sswitch_974
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5382
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5383
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5384
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5385
    .local v2, "source":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5386
    goto/16 :goto_105c

    .line 5370
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "source":I
    :sswitch_988
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5372
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5373
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5374
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5375
    goto/16 :goto_105c

    .line 5360
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_998
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5362
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5363
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5364
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5365
    goto/16 :goto_105c

    .line 5350
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9a8
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5352
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5353
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5354
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5355
    goto/16 :goto_105c

    .line 5339
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9b8
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5341
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5342
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5343
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5344
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5345
    goto/16 :goto_105c

    .line 5329
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "smsc":Ljava/lang/String;
    :sswitch_9cc
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5331
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5332
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5333
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5334
    goto/16 :goto_105c

    .line 5315
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9dc
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5317
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5318
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5319
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5320
    .local v2, "imei":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5321
    .local v3, "imeisv":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5322
    .local v4, "esn":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 5323
    .local v5, "meid":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5324
    goto/16 :goto_105c

    .line 5305
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "imei":Ljava/lang/String;
    .end local v3    # "imeisv":Ljava/lang/String;
    .end local v4    # "esn":Ljava/lang/String;
    .end local v5    # "meid":Ljava/lang/String;
    :sswitch_9fd
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5307
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5308
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5309
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5310
    goto/16 :goto_105c

    .line 5294
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a0d
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5296
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5297
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5298
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5299
    .local v2, "index":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5300
    goto/16 :goto_105c

    .line 5279
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "index":I
    :sswitch_a21
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5281
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5282
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5283
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5284
    .local v2, "mdn":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5285
    .local v3, "hSid":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5286
    .local v4, "hNid":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 5287
    .local v5, "min":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 5288
    .local v6, "prl":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5289
    goto/16 :goto_105c

    .line 5269
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "mdn":Ljava/lang/String;
    .end local v3    # "hSid":Ljava/lang/String;
    .end local v4    # "hNid":Ljava/lang/String;
    .end local v5    # "min":Ljava/lang/String;
    .end local v6    # "prl":Ljava/lang/String;
    :sswitch_a46
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5271
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5272
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5273
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5274
    goto/16 :goto_105c

    .line 5259
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a56
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5261
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5262
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5263
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5264
    goto/16 :goto_105c

    .line 5248
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a66
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5250
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5251
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5252
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5253
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5254
    goto/16 :goto_105c

    .line 5238
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :sswitch_a7a
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5240
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5241
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5242
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5243
    goto/16 :goto_105c

    .line 5228
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a8a
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5230
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5231
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5232
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5233
    goto/16 :goto_105c

    .line 5217
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a9a
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5219
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5220
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5221
    invoke-static {p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5222
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5223
    goto/16 :goto_105c

    .line 5207
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :sswitch_aae
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5209
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5210
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5211
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5212
    goto/16 :goto_105c

    .line 5195
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_abe
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5197
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5198
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5199
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 5200
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5201
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 5202
    goto/16 :goto_105c

    .line 5185
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_ad6
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5187
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5188
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5189
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5190
    goto/16 :goto_105c

    .line 5175
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_ae6
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5177
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5178
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5179
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5180
    goto/16 :goto_105c

    .line 5164
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_af6
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5166
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5167
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5168
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5169
    .local v2, "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 5170
    goto/16 :goto_105c

    .line 5154
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "enable":Z
    :sswitch_b0a
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5156
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5157
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5158
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5159
    goto/16 :goto_105c

    .line 5143
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b1a
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5145
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5146
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5147
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5148
    .local v2, "mode":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5149
    goto/16 :goto_105c

    .line 5133
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "mode":I
    :sswitch_b2e
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5135
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5136
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5137
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5138
    goto/16 :goto_105c

    .line 5122
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b3e
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5124
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5125
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5126
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5127
    .local v2, "type":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5128
    goto/16 :goto_105c

    .line 5112
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "type":I
    :sswitch_b52
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5114
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5115
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5116
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5117
    goto/16 :goto_105c

    .line 5102
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b62
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5104
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5105
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5106
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5107
    goto/16 :goto_105c

    .line 5092
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b72
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5094
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5095
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5096
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5097
    goto/16 :goto_105c

    .line 5081
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b82
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5083
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5084
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5085
    invoke-static {p2}, Landroid/hardware/radio/V1_0/NeighboringCell;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5086
    .local v2, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5087
    goto/16 :goto_105c

    .line 5070
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    :sswitch_b96
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5072
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5073
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5074
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5075
    .local v2, "nwType":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5076
    goto/16 :goto_105c

    .line 5060
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "nwType":I
    :sswitch_baa
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5062
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5063
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5064
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5065
    goto/16 :goto_105c

    .line 5050
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_bba
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5052
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5053
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5054
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5055
    goto/16 :goto_105c

    .line 5040
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_bca
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5042
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5043
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5044
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5045
    goto/16 :goto_105c

    .line 5030
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_bda
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5032
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5033
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5034
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5035
    goto/16 :goto_105c

    .line 5019
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_bea
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5021
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5022
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5023
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5024
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5025
    goto/16 :goto_105c

    .line 5008
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "commandResponse":Ljava/lang/String;
    :sswitch_bfe
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5010
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5011
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5012
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 5013
    .local v2, "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5014
    goto/16 :goto_105c

    .line 4998
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_c12
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5000
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5001
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5002
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5003
    goto/16 :goto_105c

    .line 4988
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_c22
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4990
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4991
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4992
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4993
    goto/16 :goto_105c

    .line 4977
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_c32
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4979
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4980
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4981
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4982
    .local v2, "index":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4983
    goto/16 :goto_105c

    .line 4967
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "index":I
    :sswitch_c46
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4969
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4970
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4971
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4972
    goto/16 :goto_105c

    .line 4956
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_c56
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4958
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4959
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4960
    invoke-static {p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4961
    .local v2, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4962
    goto/16 :goto_105c

    .line 4945
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :sswitch_c6a
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4947
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4948
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4949
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4950
    .local v2, "status":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4951
    goto/16 :goto_105c

    .line 4934
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "status":I
    :sswitch_c7e
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4936
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4937
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4938
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4939
    .local v2, "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 4940
    goto/16 :goto_105c

    .line 4924
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "enable":Z
    :sswitch_c92
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4926
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4927
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4928
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4929
    goto/16 :goto_105c

    .line 4914
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_ca2
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4916
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4917
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4918
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4919
    goto/16 :goto_105c

    .line 4903
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_cb2
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4905
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4906
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4907
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4908
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4909
    goto/16 :goto_105c

    .line 4893
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "version":Ljava/lang/String;
    :sswitch_cc6
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4895
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4896
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4897
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4898
    goto/16 :goto_105c

    .line 4883
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_cd6
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4885
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4886
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4887
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4888
    goto/16 :goto_105c

    .line 4872
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_ce6
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4874
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4875
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4876
    invoke-static {p2}, Landroid/hardware/radio/V1_0/OperatorInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4877
    .local v2, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4878
    goto/16 :goto_105c

    .line 4862
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    :sswitch_cfa
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4864
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4865
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4866
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4867
    goto/16 :goto_105c

    .line 4852
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_d0a
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4854
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4855
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4856
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4857
    goto/16 :goto_105c

    .line 4841
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_d1a
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4843
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4844
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4845
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4846
    .local v2, "manual":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 4847
    goto/16 :goto_105c

    .line 4831
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "manual":Z
    :sswitch_d2e
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4833
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4834
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4835
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4836
    goto/16 :goto_105c

    .line 4820
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_d3e
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4822
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4823
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4824
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4825
    .local v2, "retry":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4826
    goto/16 :goto_105c

    .line 4809
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "retry":I
    :sswitch_d52
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4811
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4812
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4813
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4814
    .local v2, "response":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4815
    goto/16 :goto_105c

    .line 4799
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "response":I
    :sswitch_d66
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4801
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4802
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4803
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4804
    goto/16 :goto_105c

    .line 4789
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_d76
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4791
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4792
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4793
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4794
    goto/16 :goto_105c

    .line 4779
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_d86
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4781
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4782
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4783
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4784
    goto/16 :goto_105c

    .line 4769
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_d96
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4771
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4772
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4773
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4774
    goto/16 :goto_105c

    .line 4757
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_da6
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4759
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4760
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4761
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4762
    .local v2, "enable":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4763
    .local v3, "serviceClass":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 4764
    goto/16 :goto_105c

    .line 4747
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :sswitch_dbe
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4749
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4750
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4751
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4752
    goto/16 :goto_105c

    .line 4736
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_dce
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4738
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4739
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4740
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4741
    .local v2, "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4742
    goto/16 :goto_105c

    .line 4726
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    :sswitch_de2
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4728
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4729
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4730
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4731
    goto/16 :goto_105c

    .line 4714
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_df2
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4716
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4717
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4718
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4719
    .local v2, "n":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4720
    .local v3, "m":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 4721
    goto/16 :goto_105c

    .line 4704
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "n":I
    .end local v3    # "m":I
    :sswitch_e0a
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4706
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4707
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4708
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4709
    goto/16 :goto_105c

    .line 4694
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_e1a
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4696
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4697
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4698
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4699
    goto/16 :goto_105c

    .line 4682
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_e2a
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4684
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4685
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4686
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4687
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4688
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4689
    goto/16 :goto_105c

    .line 4670
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :sswitch_e42
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4672
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4673
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4674
    new-instance v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    .line 4675
    .local v2, "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4676
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V

    .line 4677
    goto/16 :goto_105c

    .line 4658
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    :sswitch_e5a
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4660
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4661
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4662
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 4663
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4664
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 4665
    goto/16 :goto_105c

    .line 4646
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_e72
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4648
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4649
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4650
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 4651
    .restart local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4652
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 4653
    goto/16 :goto_105c

    .line 4636
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :sswitch_e8a
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4638
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4639
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4640
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4641
    goto/16 :goto_105c

    .line 4626
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_e9a
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4628
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4629
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4630
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4631
    goto/16 :goto_105c

    .line 4613
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_eaa
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4615
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4616
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4617
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4618
    .local v2, "longName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4619
    .local v3, "shortName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4620
    .local v4, "numeric":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4621
    goto/16 :goto_105c

    .line 4601
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "longName":Ljava/lang/String;
    .end local v3    # "shortName":Ljava/lang/String;
    .end local v4    # "numeric":Ljava/lang/String;
    :sswitch_ec6
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4603
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4604
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4605
    new-instance v2, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    .line 4606
    .local v2, "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4607
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V

    .line 4608
    goto/16 :goto_105c

    .line 4589
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    :sswitch_ede
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4591
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4592
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4593
    new-instance v2, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    .line 4594
    .local v2, "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4595
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V

    .line 4596
    goto/16 :goto_105c

    .line 4577
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    :sswitch_ef6
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4579
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4580
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4581
    new-instance v2, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 4582
    .local v2, "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4583
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    .line 4584
    goto/16 :goto_105c

    .line 4565
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :sswitch_f0e
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4567
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4568
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4569
    new-instance v2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;-><init>()V

    .line 4570
    .local v2, "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4571
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    .line 4572
    goto/16 :goto_105c

    .line 4555
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    :sswitch_f26
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4557
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4558
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4559
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4560
    goto/16 :goto_105c

    .line 4545
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_f36
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4547
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4548
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4549
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4550
    goto/16 :goto_105c

    .line 4535
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_f46
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4537
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4538
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4539
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4540
    goto/16 :goto_105c

    .line 4525
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_f56
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4527
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4528
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4529
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4530
    goto/16 :goto_105c

    .line 4515
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_f66
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4517
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4518
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4519
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4520
    goto/16 :goto_105c

    .line 4505
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_f76
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4507
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4508
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4509
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4510
    goto/16 :goto_105c

    .line 4494
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_f86
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4496
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4497
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4498
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4499
    .local v2, "imsi":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4500
    goto/16 :goto_105c

    .line 4484
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "imsi":Ljava/lang/String;
    :sswitch_f9a
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4486
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4487
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4488
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4489
    goto/16 :goto_105c

    .line 4473
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_faa
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4475
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4476
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4477
    invoke-static {p2}, Landroid/hardware/radio/V1_0/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4478
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4479
    goto/16 :goto_105c

    .line 4462
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    :sswitch_fbe
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4464
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4465
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4466
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4467
    .local v2, "remainingRetries":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4468
    goto/16 :goto_105c

    .line 4451
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :sswitch_fd2
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4453
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4454
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4455
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4456
    .restart local v2    # "remainingRetries":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4457
    goto/16 :goto_105c

    .line 4440
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :sswitch_fe6
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4442
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4443
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4444
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4445
    .restart local v2    # "remainingRetries":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4446
    goto :goto_105c

    .line 4429
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :sswitch_ff9
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4431
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4432
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4433
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4434
    .restart local v2    # "remainingRetries":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4435
    goto :goto_105c

    .line 4418
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :sswitch_100c
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4420
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4421
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4422
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4423
    .restart local v2    # "remainingRetries":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4424
    goto :goto_105c

    .line 4407
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :sswitch_101f
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4409
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4410
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4411
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4412
    .restart local v2    # "remainingRetries":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4413
    goto :goto_105c

    .line 4396
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :sswitch_1032
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4398
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4399
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4400
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4401
    .restart local v2    # "remainingRetries":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4402
    goto :goto_105c

    .line 4384
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :sswitch_1045
    invoke-virtual {p2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4386
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4387
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4388
    new-instance v2, Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CardStatus;-><init>()V

    .line 4389
    .local v2, "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4390
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

    .line 4391
    nop

    .line 6722
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    :goto_105c
    return-void

    nop

    :sswitch_data_105e
    .sparse-switch
        0x1 -> :sswitch_1045
        0x2 -> :sswitch_1032
        0x3 -> :sswitch_101f
        0x4 -> :sswitch_100c
        0x5 -> :sswitch_ff9
        0x6 -> :sswitch_fe6
        0x7 -> :sswitch_fd2
        0x8 -> :sswitch_fbe
        0x9 -> :sswitch_faa
        0xa -> :sswitch_f9a
        0xb -> :sswitch_f86
        0xc -> :sswitch_f76
        0xd -> :sswitch_f66
        0xe -> :sswitch_f56
        0xf -> :sswitch_f46
        0x10 -> :sswitch_f36
        0x11 -> :sswitch_f26
        0x12 -> :sswitch_f0e
        0x13 -> :sswitch_ef6
        0x14 -> :sswitch_ede
        0x15 -> :sswitch_ec6
        0x16 -> :sswitch_eaa
        0x17 -> :sswitch_e9a
        0x18 -> :sswitch_e8a
        0x19 -> :sswitch_e72
        0x1a -> :sswitch_e5a
        0x1b -> :sswitch_e42
        0x1c -> :sswitch_e2a
        0x1d -> :sswitch_e1a
        0x1e -> :sswitch_e0a
        0x1f -> :sswitch_df2
        0x20 -> :sswitch_de2
        0x21 -> :sswitch_dce
        0x22 -> :sswitch_dbe
        0x23 -> :sswitch_da6
        0x24 -> :sswitch_d96
        0x25 -> :sswitch_d86
        0x26 -> :sswitch_d76
        0x27 -> :sswitch_d66
        0x28 -> :sswitch_d52
        0x29 -> :sswitch_d3e
        0x2a -> :sswitch_d2e
        0x2b -> :sswitch_d1a
        0x2c -> :sswitch_d0a
        0x2d -> :sswitch_cfa
        0x2e -> :sswitch_ce6
        0x2f -> :sswitch_cd6
        0x30 -> :sswitch_cc6
        0x31 -> :sswitch_cb2
        0x32 -> :sswitch_ca2
        0x33 -> :sswitch_c92
        0x34 -> :sswitch_c7e
        0x35 -> :sswitch_c6a
        0x36 -> :sswitch_c56
        0x37 -> :sswitch_c46
        0x38 -> :sswitch_c32
        0x39 -> :sswitch_c22
        0x3a -> :sswitch_c12
        0x3b -> :sswitch_bfe
        0x3c -> :sswitch_bea
        0x3d -> :sswitch_bda
        0x3e -> :sswitch_bca
        0x3f -> :sswitch_bba
        0x40 -> :sswitch_baa
        0x41 -> :sswitch_b96
        0x42 -> :sswitch_b82
        0x43 -> :sswitch_b72
        0x44 -> :sswitch_b62
        0x45 -> :sswitch_b52
        0x46 -> :sswitch_b3e
        0x47 -> :sswitch_b2e
        0x48 -> :sswitch_b1a
        0x49 -> :sswitch_b0a
        0x4a -> :sswitch_af6
        0x4b -> :sswitch_ae6
        0x4c -> :sswitch_ad6
        0x4d -> :sswitch_abe
        0x4e -> :sswitch_aae
        0x4f -> :sswitch_a9a
        0x50 -> :sswitch_a8a
        0x51 -> :sswitch_a7a
        0x52 -> :sswitch_a66
        0x53 -> :sswitch_a56
        0x54 -> :sswitch_a46
        0x55 -> :sswitch_a21
        0x56 -> :sswitch_a0d
        0x57 -> :sswitch_9fd
        0x58 -> :sswitch_9dc
        0x59 -> :sswitch_9cc
        0x5a -> :sswitch_9b8
        0x5b -> :sswitch_9a8
        0x5c -> :sswitch_998
        0x5d -> :sswitch_988
        0x5e -> :sswitch_974
        0x5f -> :sswitch_960
        0x60 -> :sswitch_950
        0x61 -> :sswitch_938
        0x62 -> :sswitch_924
        0x63 -> :sswitch_910
        0x64 -> :sswitch_900
        0x65 -> :sswitch_8f0
        0x66 -> :sswitch_8d8
        0x67 -> :sswitch_8c0
        0x68 -> :sswitch_8a8
        0x69 -> :sswitch_890
        0x6a -> :sswitch_880
        0x6b -> :sswitch_868
        0x6c -> :sswitch_854
        0x6d -> :sswitch_844
        0x6e -> :sswitch_834
        0x6f -> :sswitch_824
        0x70 -> :sswitch_814
        0x71 -> :sswitch_804
        0x72 -> :sswitch_7f0
        0x73 -> :sswitch_7d8
        0x74 -> :sswitch_7c8
        0x75 -> :sswitch_7b8
        0x76 -> :sswitch_7a0
        0x77 -> :sswitch_788
        0x78 -> :sswitch_770
        0x79 -> :sswitch_758
        0x7a -> :sswitch_740
        0x7b -> :sswitch_728
        0x7c -> :sswitch_714
        0x7d -> :sswitch_6f8
        0x7e -> :sswitch_6e8
        0x7f -> :sswitch_6d8
        0x80 -> :sswitch_6c8
        0x81 -> :sswitch_6bc
        0x82 -> :sswitch_6ac
        0x83 -> :sswitch_69c
        0x84 -> :sswitch_68c
        0x85 -> :sswitch_67c
        0x86 -> :sswitch_664
        0x87 -> :sswitch_654
        0x88 -> :sswitch_640
        0x89 -> :sswitch_628
        0x8a -> :sswitch_618
        0x8b -> :sswitch_608
        0x8c -> :sswitch_5f4
        0x8d -> :sswitch_5dc
        0x8e -> :sswitch_5c4
        0x8f -> :sswitch_5ac
        0x90 -> :sswitch_59c
        0x91 -> :sswitch_58c
        0x92 -> :sswitch_578
        0x93 -> :sswitch_568
        0x94 -> :sswitch_558
        0x95 -> :sswitch_544
        0x96 -> :sswitch_52c
        0x97 -> :sswitch_514
        0x98 -> :sswitch_500
        0x99 -> :sswitch_4f0
        0x9a -> :sswitch_4dc
        0x9b -> :sswitch_4c4
        0x9c -> :sswitch_4b4
        0x9d -> :sswitch_498
        0x9e -> :sswitch_480
        0x9f -> :sswitch_470
        0xa0 -> :sswitch_460
        0xa1 -> :sswitch_450
        0xa2 -> :sswitch_43c
        0xa3 -> :sswitch_42c
        0xa4 -> :sswitch_41c
        0xa5 -> :sswitch_404
        0xa6 -> :sswitch_3f0
        0xa7 -> :sswitch_3e0
        0xa8 -> :sswitch_3d0
        0xa9 -> :sswitch_3c0
        0xaa -> :sswitch_3b0
        0xab -> :sswitch_394
        0xac -> :sswitch_37c
        0xad -> :sswitch_364
        0xae -> :sswitch_350
        0xaf -> :sswitch_340
        0xb0 -> :sswitch_328
        0xb1 -> :sswitch_310
        0xb2 -> :sswitch_2f8
        0xb3 -> :sswitch_2e8
        0xb4 -> :sswitch_2d0
        0xb5 -> :sswitch_2bc
        0xb6 -> :sswitch_2a4
        0xb7 -> :sswitch_28c
        0xb8 -> :sswitch_274
        0xb9 -> :sswitch_25c
        0xba -> :sswitch_24c
        0xbb -> :sswitch_23c
        0xbc -> :sswitch_228
        0xbd -> :sswitch_214
        0xbe -> :sswitch_204
        0xbf -> :sswitch_1f4
        0xc0 -> :sswitch_1e4
        0xc1 -> :sswitch_1d4
        0xc2 -> :sswitch_1c0
        0xc3 -> :sswitch_1b0
        0xc4 -> :sswitch_19c
        0xc5 -> :sswitch_188
        0xc6 -> :sswitch_170
        0xc7 -> :sswitch_158
        0xc8 -> :sswitch_140
        0xc9 -> :sswitch_12c
        0xca -> :sswitch_114
        0xcb -> :sswitch_104
        0xcc -> :sswitch_ec
        0xcd -> :sswitch_d8
        0xf43484e -> :sswitch_c6
        0xf444247 -> :sswitch_b0
        0xf445343 -> :sswitch_9e
        0xf485348 -> :sswitch_49
        0xf494e54 -> :sswitch_41
        0xf4c5444 -> :sswitch_3f
        0xf504e47 -> :sswitch_31
        0xf524546 -> :sswitch_1f
        0xf535953 -> :sswitch_17
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 4335
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 4363
    const-string v0, "android.hardware.radio@1.6::IRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4364
    return-object p0

    .line 4366
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

    .line 4370
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 4371
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 4325
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 4375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 4357
    const/4 v0, 0x1

    return v0
.end method
