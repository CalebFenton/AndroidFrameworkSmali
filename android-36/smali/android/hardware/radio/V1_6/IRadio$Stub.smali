.class public abstract Landroid/hardware/radio/V1_6/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_6/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_6/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4397
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 4400
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

    .line 4419
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 4462
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4463
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 4464
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 4465
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 4466
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

    .line 4431
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
        0x3et
        -0x78t
        0x66t
        -0x68t
        0x7dt
        -0x1ct
        -0x14t
        -0x4ct
        -0x78t
        0x7t
        -0x40t
        -0x63t
        0x4ct
        -0x78t
        -0x14t
        0x38t
        0x36t
        0x59t
        0x30t
        -0x5et
        0x24t
        0x15t
        -0xft
        -0x49t
        0x4et
        -0x21t
        -0x75t
        0x14t
        -0x26t
        0x17t
        -0x7ct
        0x6bt
    .end array-data

    :array_4c
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

    :array_60
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

    :array_74
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

    :array_88
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

    :array_9c
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

    :array_b0
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

    .line 4405
    new-instance v0, Ljava/util/ArrayList;

    const-string v7, "android.hardware.radio@1.0::IRadio"

    const-string v8, "android.hidl.base@1.0::IBase"

    const-string v1, "android.hardware.radio@1.6::IRadio"

    const-string v2, "android.hardware.radio@1.5::IRadio"

    const-string v3, "android.hardware.radio@1.4::IRadio"

    const-string v4, "android.hardware.radio@1.3::IRadio"

    const-string v5, "android.hardware.radio@1.2::IRadio"

    const-string v6, "android.hardware.radio@1.1::IRadio"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 4425
    const-string v0, "android.hardware.radio@1.6::IRadio"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 4450
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 4472
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 4474
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 19
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4502
    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v1, "android.hardware.radio@1.3::IRadio"

    const-string v2, "android.hardware.radio@1.2::IRadio"

    const-string v3, "android.hardware.radio@1.1::IRadio"

    const-string v4, "android.hidl.base@1.0::IBase"

    const/4 v5, 0x0

    const-string v6, "android.hardware.radio@1.4::IRadio"

    const-string v7, "android.hardware.radio@1.5::IRadio"

    const-string v8, "android.hardware.radio@1.6::IRadio"

    const-string v9, "android.hardware.radio@1.0::IRadio"

    sparse-switch p1, :sswitch_data_e9c

    goto/16 :goto_e9b

    .line 6690
    :sswitch_1a
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6692
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->notifySyspropsChanged()V

    .line 6693
    goto/16 :goto_e9b

    .line 6679
    :sswitch_22
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6681
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 6682
    .local v1, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v13, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6683
    invoke-virtual {v1, v13}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 6684
    invoke-virtual {v13}, Landroid/os/HwParcel;->send()V

    .line 6685
    goto/16 :goto_e9b

    .line 6669
    .end local v1    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_34
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6671
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->ping()V

    .line 6672
    invoke-virtual {v13, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6673
    invoke-virtual {v13}, Landroid/os/HwParcel;->send()V

    .line 6674
    goto/16 :goto_e9b

    .line 6664
    :sswitch_42
    goto/16 :goto_e9b

    .line 6656
    :sswitch_44
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6658
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setHALInstrumentation()V

    .line 6659
    goto/16 :goto_e9b

    .line 6622
    :sswitch_4c
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6624
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 6625
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v13, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6627
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 6629
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6630
    .local v3, "_hidl_vec_size":I
    const-wide/16 v6, 0x8

    invoke-virtual {v2, v6, v7, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 6631
    const-wide/16 v6, 0xc

    invoke-virtual {v2, v6, v7, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 6632
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 6633
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_73
    if-ge v5, v3, :cond_94

    .line 6635
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 6636
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 6638
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_8c

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_8c

    .line 6642
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 6643
    nop

    .line 6633
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_73

    .line 6639
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_8c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 6646
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_94
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 6648
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v13, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 6650
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v13}, Landroid/os/HwParcel;->send()V

    .line 6651
    goto/16 :goto_e9b

    .line 6611
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_a1
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6613
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 6614
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v13, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6615
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 6616
    invoke-virtual {v13}, Landroid/os/HwParcel;->send()V

    .line 6617
    goto/16 :goto_e9b

    .line 6599
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_b3
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6601
    invoke-virtual {v12}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 6602
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual {v12}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 6603
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 6604
    invoke-virtual {v13, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6605
    invoke-virtual {v13}, Landroid/os/HwParcel;->send()V

    .line 6606
    goto/16 :goto_e9b

    .line 6588
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_c9
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6590
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 6591
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6592
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 6593
    invoke-virtual {v13}, Landroid/os/HwParcel;->send()V

    .line 6594
    goto/16 :goto_e9b

    .line 6577
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_db
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6579
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6580
    .local v1, "serial":I
    new-instance v2, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;-><init>()V

    .line 6581
    .local v2, "recordInfo":Landroid/hardware/radio/V1_6/PhonebookRecordInfo;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6582
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->updateSimPhonebookRecords(ILandroid/hardware/radio/V1_6/PhonebookRecordInfo;)V

    .line 6583
    goto/16 :goto_e9b

    .line 6568
    .end local v1    # "serial":I
    .end local v2    # "recordInfo":Landroid/hardware/radio/V1_6/PhonebookRecordInfo;
    :sswitch_ef
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6570
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6571
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getSimPhonebookCapacity(I)V

    .line 6572
    goto/16 :goto_e9b

    .line 6559
    .end local v1    # "serial":I
    :sswitch_fb
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6561
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6562
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getSimPhonebookRecords(I)V

    .line 6563
    goto/16 :goto_e9b

    .line 6548
    .end local v1    # "serial":I
    :sswitch_107
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6550
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6551
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_6/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_6/ImsiEncryptionInfo;-><init>()V

    .line 6552
    .local v2, "imsiEncryptionInfo":Landroid/hardware/radio/V1_6/ImsiEncryptionInfo;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_6/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6553
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setCarrierInfoForImsiEncryption_1_6(ILandroid/hardware/radio/V1_6/ImsiEncryptionInfo;)V

    .line 6554
    goto/16 :goto_e9b

    .line 6539
    .end local v1    # "serial":I
    .end local v2    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_6/ImsiEncryptionInfo;
    :sswitch_11b
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6541
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6542
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getSlicingConfig(I)V

    .line 6543
    goto/16 :goto_e9b

    .line 6530
    .end local v1    # "serial":I
    :sswitch_127
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6532
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6533
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getCurrentCalls_1_6(I)V

    .line 6534
    goto/16 :goto_e9b

    .line 6521
    .end local v1    # "serial":I
    :sswitch_133
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6523
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6524
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getDataRegistrationState_1_6(I)V

    .line 6525
    goto/16 :goto_e9b

    .line 6512
    .end local v1    # "serial":I
    :sswitch_13f
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6514
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6515
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getSignalStrength_1_6(I)V

    .line 6516
    goto/16 :goto_e9b

    .line 6503
    .end local v1    # "serial":I
    :sswitch_14b
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6505
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6506
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getVoiceRegistrationState_1_6(I)V

    .line 6507
    goto/16 :goto_e9b

    .line 6494
    .end local v1    # "serial":I
    :sswitch_157
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6496
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6497
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getCellInfoList_1_6(I)V

    .line 6498
    goto/16 :goto_e9b

    .line 6485
    .end local v1    # "serial":I
    :sswitch_163
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6487
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6488
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getSystemSelectionChannels(I)V

    .line 6489
    goto/16 :goto_e9b

    .line 6469
    .end local v1    # "serial":I
    :sswitch_16f
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6471
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6472
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 6473
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6474
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6475
    .local v3, "categories":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v4

    .line 6476
    .local v4, "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6477
    .local v5, "routing":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 6478
    .local v6, "hasKnownUserIntentEmergency":Z
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v7

    .line 6479
    .local v7, "isTesting":Z
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_6/IRadio$Stub;->emergencyDial_1_6(ILandroid/hardware/radio/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    .line 6480
    goto/16 :goto_e9b

    .line 6458
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    .end local v3    # "categories":I
    .end local v4    # "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "routing":I
    .end local v6    # "hasKnownUserIntentEmergency":Z
    .end local v7    # "isTesting":Z
    :sswitch_198
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6460
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6461
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt8()B

    move-result v2

    .line 6462
    .local v2, "dataThrottlingAction":B
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 6463
    .local v3, "completionDurationMillis":J
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setDataThrottling(IBJ)V

    .line 6464
    goto/16 :goto_e9b

    .line 6449
    .end local v1    # "serial":I
    .end local v2    # "dataThrottlingAction":B
    .end local v3    # "completionDurationMillis":J
    :sswitch_1ac
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6451
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6452
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getAllowedNetworkTypesBitmap(I)V

    .line 6453
    goto/16 :goto_e9b

    .line 6439
    .end local v1    # "serial":I
    :sswitch_1b8
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6441
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6442
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6443
    .local v2, "networkTypeBitmap":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setAllowedNetworkTypesBitmap(II)V

    .line 6444
    goto/16 :goto_e9b

    .line 6429
    .end local v1    # "serial":I
    .end local v2    # "networkTypeBitmap":I
    :sswitch_1c8
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6431
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6432
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6433
    .local v2, "callId":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->cancelHandover(II)V

    .line 6434
    goto/16 :goto_e9b

    .line 6419
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :sswitch_1d8
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6421
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6422
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6423
    .restart local v2    # "callId":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->startHandover(II)V

    .line 6424
    goto/16 :goto_e9b

    .line 6409
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :sswitch_1e8
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6411
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6412
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6413
    .local v2, "id":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->releasePduSessionId(II)V

    .line 6414
    goto/16 :goto_e9b

    .line 6400
    .end local v1    # "serial":I
    .end local v2    # "id":I
    :sswitch_1f8
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6402
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6403
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->allocatePduSessionId(I)V

    .line 6404
    goto/16 :goto_e9b

    .line 6391
    .end local v1    # "serial":I
    :sswitch_204
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6393
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6394
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->isNrDualConnectivityEnabled(I)V

    .line 6395
    goto/16 :goto_e9b

    .line 6381
    .end local v1    # "serial":I
    :sswitch_210
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6383
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6384
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt8()B

    move-result v2

    .line 6385
    .local v2, "nrDualConnectivityState":B
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setNrDualConnectivityState(IB)V

    .line 6386
    goto/16 :goto_e9b

    .line 6371
    .end local v1    # "serial":I
    .end local v2    # "nrDualConnectivityState":B
    :sswitch_220
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6373
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6374
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6375
    .local v2, "powerUp":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setSimCardPower_1_6(II)V

    .line 6376
    goto/16 :goto_e9b

    .line 6360
    .end local v1    # "serial":I
    .end local v2    # "powerUp":I
    :sswitch_230
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6362
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6363
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 6364
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6365
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendCdmaSmsExpectMore_1_6(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 6366
    goto/16 :goto_e9b

    .line 6349
    .end local v1    # "serial":I
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_244
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6351
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6352
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 6353
    .restart local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6354
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendCdmaSms_1_6(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 6355
    goto/16 :goto_e9b

    .line 6338
    .end local v1    # "serial":I
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_258
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6340
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6341
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 6342
    .local v2, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6343
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendSmsExpectMore_1_6(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 6344
    goto/16 :goto_e9b

    .line 6327
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_26c
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6329
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6330
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 6331
    .restart local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6332
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendSms_1_6(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 6333
    goto/16 :goto_e9b

    .line 6305
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_280
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6307
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6308
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6309
    .local v2, "accessNetwork":I
    new-instance v3, Landroid/hardware/radio/V1_5/DataProfileInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_5/DataProfileInfo;-><init>()V

    .line 6310
    .local v3, "dataProfileInfo":Landroid/hardware/radio/V1_5/DataProfileInfo;
    invoke-virtual {v3, v12}, Landroid/hardware/radio/V1_5/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6311
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 6312
    .local v4, "roamingAllowed":Z
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6313
    .local v5, "reason":I
    invoke-static {v12}, Landroid/hardware/radio/V1_5/LinkAddress;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v6

    .line 6314
    .local v6, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/LinkAddress;>;"
    invoke-virtual {v12}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v7

    .line 6315
    .local v7, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6316
    .local v8, "pduSessionId":I
    new-instance v9, Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    invoke-direct {v9}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;-><init>()V

    .line 6317
    .local v9, "sliceInfo":Landroid/hardware/radio/V1_6/OptionalSliceInfo;
    invoke-virtual {v9, v12}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6318
    new-instance v10, Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;

    invoke-direct {v10}, Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;-><init>()V

    .line 6319
    .local v10, "trafficDescriptor":Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;
    invoke-virtual {v10, v12}, Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6320
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 6321
    .local v11, "matchAllRuleAllowed":Z
    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setupDataCall_1_6(IILandroid/hardware/radio/V1_5/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;ILandroid/hardware/radio/V1_6/OptionalSliceInfo;Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;Z)V

    .line 6322
    goto/16 :goto_e9b

    .line 6296
    .end local v1    # "serial":I
    .end local v2    # "accessNetwork":I
    .end local v3    # "dataProfileInfo":Landroid/hardware/radio/V1_5/DataProfileInfo;
    .end local v4    # "roamingAllowed":Z
    .end local v5    # "reason":I
    .end local v6    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/LinkAddress;>;"
    .end local v7    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "pduSessionId":I
    .end local v9    # "sliceInfo":Landroid/hardware/radio/V1_6/OptionalSliceInfo;
    .end local v10    # "trafficDescriptor":Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;
    .end local v11    # "matchAllRuleAllowed":Z
    :sswitch_2c1
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6298
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6299
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getDataCallList_1_6(I)V

    .line 6300
    goto/16 :goto_e9b

    .line 6284
    .end local v1    # "serial":I
    :sswitch_2cd
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6286
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6287
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6288
    .local v2, "powerOn":Z
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 6289
    .local v3, "forEmergencyCall":Z
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 6290
    .local v4, "preferredForEmergencyCall":Z
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setRadioPower_1_6(IZZZ)V

    .line 6291
    goto/16 :goto_e9b

    .line 6273
    .end local v1    # "serial":I
    .end local v2    # "powerOn":Z
    .end local v3    # "forEmergencyCall":Z
    .end local v4    # "preferredForEmergencyCall":Z
    :sswitch_2e5
    invoke-virtual {v12, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6275
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6276
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6277
    .local v2, "persoType":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6278
    .local v3, "controlKey":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->supplySimDepersonalization(IILjava/lang/String;)V

    .line 6279
    goto/16 :goto_e9b

    .line 6262
    .end local v1    # "serial":I
    .end local v2    # "persoType":I
    .end local v3    # "controlKey":Ljava/lang/String;
    :sswitch_2f9
    invoke-virtual {v12, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6264
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6265
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 6266
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6267
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendCdmaSmsExpectMore(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 6268
    goto/16 :goto_e9b

    .line 6251
    .end local v1    # "serial":I
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_30d
    invoke-virtual {v12, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6253
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6254
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6255
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6256
    .local v3, "ran":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setNetworkSelectionModeManual_1_5(ILjava/lang/String;I)V

    .line 6257
    goto/16 :goto_e9b

    .line 6242
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "ran":I
    :sswitch_321
    invoke-virtual {v12, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6244
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6245
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getDataRegistrationState_1_5(I)V

    .line 6246
    goto/16 :goto_e9b

    .line 6233
    .end local v1    # "serial":I
    :sswitch_32d
    invoke-virtual {v12, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6235
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6236
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getVoiceRegistrationState_1_5(I)V

    .line 6237
    goto/16 :goto_e9b

    .line 6224
    .end local v1    # "serial":I
    :sswitch_339
    invoke-virtual {v12, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6226
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6227
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getBarringInfo(I)V

    .line 6228
    goto/16 :goto_e9b

    .line 6214
    .end local v1    # "serial":I
    :sswitch_345
    invoke-virtual {v12, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6216
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6217
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6218
    .local v2, "indicationFilter":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setIndicationFilter_1_5(II)V

    .line 6219
    goto/16 :goto_e9b

    .line 6202
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :sswitch_355
    invoke-virtual {v12, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6204
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6205
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6206
    .local v2, "powerOn":Z
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 6207
    .local v3, "forEmergencyCall":Z
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 6208
    .restart local v4    # "preferredForEmergencyCall":Z
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setRadioPower_1_5(IZZZ)V

    .line 6209
    goto/16 :goto_e9b

    .line 6192
    .end local v1    # "serial":I
    .end local v2    # "powerOn":Z
    .end local v3    # "forEmergencyCall":Z
    .end local v4    # "preferredForEmergencyCall":Z
    :sswitch_36d
    invoke-virtual {v12, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6194
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6195
    .restart local v1    # "serial":I
    invoke-static {v12}, Landroid/hardware/radio/V1_5/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6196
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/DataProfileInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setDataProfile_1_5(ILjava/util/ArrayList;)V

    .line 6197
    goto/16 :goto_e9b

    .line 6181
    .end local v1    # "serial":I
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/DataProfileInfo;>;"
    :sswitch_37d
    invoke-virtual {v12, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6183
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6184
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_5/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_5/DataProfileInfo;-><init>()V

    .line 6185
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_5/DataProfileInfo;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_5/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6186
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setInitialAttachApn_1_5(ILandroid/hardware/radio/V1_5/DataProfileInfo;)V

    .line 6187
    goto/16 :goto_e9b

    .line 6165
    .end local v1    # "serial":I
    .end local v2    # "dataProfileInfo":Landroid/hardware/radio/V1_5/DataProfileInfo;
    :sswitch_391
    invoke-virtual {v12, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6167
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6168
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6169
    .local v2, "accessNetwork":I
    new-instance v3, Landroid/hardware/radio/V1_5/DataProfileInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_5/DataProfileInfo;-><init>()V

    .line 6170
    .local v3, "dataProfileInfo":Landroid/hardware/radio/V1_5/DataProfileInfo;
    invoke-virtual {v3, v12}, Landroid/hardware/radio/V1_5/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6171
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 6172
    .local v4, "roamingAllowed":Z
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6173
    .restart local v5    # "reason":I
    invoke-static {v12}, Landroid/hardware/radio/V1_5/LinkAddress;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v6

    .line 6174
    .restart local v6    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/LinkAddress;>;"
    invoke-virtual {v12}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v7

    .line 6175
    .restart local v7    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setupDataCall_1_5(IILandroid/hardware/radio/V1_5/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 6176
    goto/16 :goto_e9b

    .line 6154
    .end local v1    # "serial":I
    .end local v2    # "accessNetwork":I
    .end local v3    # "dataProfileInfo":Landroid/hardware/radio/V1_5/DataProfileInfo;
    .end local v4    # "roamingAllowed":Z
    .end local v5    # "reason":I
    .end local v6    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/LinkAddress;>;"
    .end local v7    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_3ba
    invoke-virtual {v12, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6156
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6157
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_5/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_5/NetworkScanRequest;-><init>()V

    .line 6158
    .local v2, "request":Landroid/hardware/radio/V1_5/NetworkScanRequest;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_5/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6159
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->startNetworkScan_1_5(ILandroid/hardware/radio/V1_5/NetworkScanRequest;)V

    .line 6160
    goto/16 :goto_e9b

    .line 6143
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_5/NetworkScanRequest;
    :sswitch_3ce
    invoke-virtual {v12, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6145
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6146
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6147
    .local v2, "specifyChannels":Z
    invoke-static {v12}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 6148
    .local v3, "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/RadioAccessSpecifier;>;"
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setSystemSelectionChannels_1_5(IZLjava/util/ArrayList;)V

    .line 6149
    goto/16 :goto_e9b

    .line 6134
    .end local v1    # "serial":I
    .end local v2    # "specifyChannels":Z
    .end local v3    # "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/RadioAccessSpecifier;>;"
    :sswitch_3e2
    invoke-virtual {v12, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6136
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6137
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->areUiccApplicationsEnabled(I)V

    .line 6138
    goto/16 :goto_e9b

    .line 6124
    .end local v1    # "serial":I
    :sswitch_3ee
    invoke-virtual {v12, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6126
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6127
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6128
    .local v2, "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->enableUiccApplications(IZ)V

    .line 6129
    goto/16 :goto_e9b

    .line 6109
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :sswitch_3fe
    invoke-virtual {v12, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6111
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6112
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6113
    .local v2, "hysteresisMs":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6114
    .local v3, "hysteresisDlKbps":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 6115
    .local v4, "hysteresisUlKbps":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v5

    .line 6116
    .local v5, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v6

    .line 6117
    .local v6, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6118
    .local v7, "accessNetwork":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setLinkCapacityReportingCriteria_1_5(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 6119
    goto/16 :goto_e9b

    .line 6097
    .end local v1    # "serial":I
    .end local v2    # "hysteresisMs":I
    .end local v3    # "hysteresisDlKbps":I
    .end local v4    # "hysteresisUlKbps":I
    .end local v5    # "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "accessNetwork":I
    :sswitch_423
    invoke-virtual {v12, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6099
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6100
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_5/SignalThresholdInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_5/SignalThresholdInfo;-><init>()V

    .line 6101
    .local v2, "signalThresholdInfo":Landroid/hardware/radio/V1_5/SignalThresholdInfo;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6102
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6103
    .local v3, "accessNetwork":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setSignalStrengthReportingCriteria_1_5(ILandroid/hardware/radio/V1_5/SignalThresholdInfo;I)V

    .line 6104
    goto/16 :goto_e9b

    .line 6088
    .end local v1    # "serial":I
    .end local v2    # "signalThresholdInfo":Landroid/hardware/radio/V1_5/SignalThresholdInfo;
    .end local v3    # "accessNetwork":I
    :sswitch_43b
    invoke-virtual {v12, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6090
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6091
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getSignalStrength_1_4(I)V

    .line 6092
    goto/16 :goto_e9b

    .line 6079
    .end local v1    # "serial":I
    :sswitch_447
    invoke-virtual {v12, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6081
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6082
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getAllowedCarriers_1_4(I)V

    .line 6083
    goto/16 :goto_e9b

    .line 6067
    .end local v1    # "serial":I
    :sswitch_453
    invoke-virtual {v12, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6069
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6070
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;

    invoke-direct {v2}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;-><init>()V

    .line 6071
    .local v2, "carriers":Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6072
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6073
    .local v3, "multiSimPolicy":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setAllowedCarriers_1_4(ILandroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V

    .line 6074
    goto/16 :goto_e9b

    .line 6057
    .end local v1    # "serial":I
    .end local v2    # "carriers":Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
    .end local v3    # "multiSimPolicy":I
    :sswitch_46b
    invoke-virtual {v12, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6059
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6060
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6061
    .local v2, "networkTypeBitmap":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setPreferredNetworkTypeBitmap(II)V

    .line 6062
    goto/16 :goto_e9b

    .line 6048
    .end local v1    # "serial":I
    .end local v2    # "networkTypeBitmap":I
    :sswitch_47b
    invoke-virtual {v12, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6050
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6051
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getPreferredNetworkTypeBitmap(I)V

    .line 6052
    goto/16 :goto_e9b

    .line 6037
    .end local v1    # "serial":I
    :sswitch_487
    invoke-virtual {v12, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6039
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6040
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 6041
    .local v2, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6042
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->startNetworkScan_1_4(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 6043
    goto/16 :goto_e9b

    .line 6021
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :sswitch_49b
    invoke-virtual {v12, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6023
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6024
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 6025
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6026
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6027
    .local v3, "categories":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v4

    .line 6028
    .local v4, "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 6029
    .local v5, "routing":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 6030
    .local v6, "hasKnownUserIntentEmergency":Z
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v7

    .line 6031
    .local v7, "isTesting":Z
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_6/IRadio$Stub;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    .line 6032
    goto/16 :goto_e9b

    .line 6011
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    .end local v3    # "categories":I
    .end local v4    # "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "routing":I
    .end local v6    # "hasKnownUserIntentEmergency":Z
    .end local v7    # "isTesting":Z
    :sswitch_4c4
    invoke-virtual {v12, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6013
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6014
    .restart local v1    # "serial":I
    invoke-static {v12}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6015
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/DataProfileInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setDataProfile_1_4(ILjava/util/ArrayList;)V

    .line 6016
    goto/16 :goto_e9b

    .line 6000
    .end local v1    # "serial":I
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/DataProfileInfo;>;"
    :sswitch_4d4
    invoke-virtual {v12, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6002
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6003
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    .line 6004
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_4/DataProfileInfo;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6005
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setInitialAttachApn_1_4(ILandroid/hardware/radio/V1_4/DataProfileInfo;)V

    .line 6006
    goto/16 :goto_e9b

    .line 5984
    .end local v1    # "serial":I
    .end local v2    # "dataProfileInfo":Landroid/hardware/radio/V1_4/DataProfileInfo;
    :sswitch_4e8
    invoke-virtual {v12, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5986
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5987
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5988
    .local v2, "accessNetwork":I
    new-instance v3, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    .line 5989
    .local v3, "dataProfileInfo":Landroid/hardware/radio/V1_4/DataProfileInfo;
    invoke-virtual {v3, v12}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5990
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 5991
    .local v4, "roamingAllowed":Z
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5992
    .local v5, "reason":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v6

    .line 5993
    .local v6, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v7

    .line 5994
    .local v7, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setupDataCall_1_4(IILandroid/hardware/radio/V1_4/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5995
    goto/16 :goto_e9b

    .line 5975
    .end local v1    # "serial":I
    .end local v2    # "accessNetwork":I
    .end local v3    # "dataProfileInfo":Landroid/hardware/radio/V1_4/DataProfileInfo;
    .end local v4    # "roamingAllowed":Z
    .end local v5    # "reason":I
    .end local v6    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_511
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5977
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5978
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getModemStackStatus(I)V

    .line 5979
    goto/16 :goto_e9b

    .line 5965
    .end local v1    # "serial":I
    :sswitch_51d
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5967
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5968
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5969
    .local v2, "on":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->enableModem(IZ)V

    .line 5970
    goto/16 :goto_e9b

    .line 5954
    .end local v1    # "serial":I
    .end local v2    # "on":Z
    :sswitch_52d
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5956
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5957
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5958
    .local v2, "specifyChannels":Z
    invoke-static {v12}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 5959
    .local v3, "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_1/RadioAccessSpecifier;>;"
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setSystemSelectionChannels(IZLjava/util/ArrayList;)V

    .line 5960
    goto/16 :goto_e9b

    .line 5943
    .end local v1    # "serial":I
    .end local v2    # "specifyChannels":Z
    .end local v3    # "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_1/RadioAccessSpecifier;>;"
    :sswitch_541
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5945
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5946
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5947
    .local v2, "cid":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5948
    .local v3, "reason":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 5949
    goto/16 :goto_e9b

    .line 5925
    .end local v1    # "serial":I
    .end local v2    # "cid":I
    .end local v3    # "reason":I
    :sswitch_555
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5927
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5928
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5929
    .local v2, "accessNetwork":I
    new-instance v3, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 5930
    .local v3, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v3, v12}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5931
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 5932
    .local v4, "modemCognitive":Z
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    .line 5933
    .local v5, "roamingAllowed":Z
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 5934
    .local v6, "isRoaming":Z
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 5935
    .local v7, "reason":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v8

    .line 5936
    .local v8, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v9

    .line 5937
    .local v9, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5938
    goto/16 :goto_e9b

    .line 5910
    .end local v1    # "serial":I
    .end local v2    # "accessNetwork":I
    .end local v3    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v4    # "modemCognitive":Z
    .end local v5    # "roamingAllowed":Z
    .end local v6    # "isRoaming":Z
    .end local v7    # "reason":I
    .end local v8    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_586
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5912
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5913
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5914
    .local v2, "hysteresisMs":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5915
    .local v3, "hysteresisDlKbps":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 5916
    .local v4, "hysteresisUlKbps":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v5

    .line 5917
    .local v5, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v6

    .line 5918
    .local v6, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 5919
    .local v7, "accessNetwork":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 5920
    goto/16 :goto_e9b

    .line 5897
    .end local v1    # "serial":I
    .end local v2    # "hysteresisMs":I
    .end local v3    # "hysteresisDlKbps":I
    .end local v4    # "hysteresisUlKbps":I
    .end local v5    # "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "accessNetwork":I
    :sswitch_5ab
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5899
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5900
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5901
    .restart local v2    # "hysteresisMs":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5902
    .local v3, "hysteresisDb":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v4

    .line 5903
    .local v4, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 5904
    .local v5, "accessNetwork":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 5905
    goto/16 :goto_e9b

    .line 5887
    .end local v1    # "serial":I
    .end local v2    # "hysteresisMs":I
    .end local v3    # "hysteresisDb":I
    .end local v4    # "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "accessNetwork":I
    :sswitch_5c8
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5889
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5890
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5891
    .local v2, "indicationFilter":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 5892
    goto/16 :goto_e9b

    .line 5876
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :sswitch_5d8
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5878
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5879
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 5880
    .local v2, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5881
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 5882
    goto/16 :goto_e9b

    .line 5866
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :sswitch_5ec
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5868
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5869
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5870
    .local v2, "sessionHandle":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->stopKeepalive(II)V

    .line 5871
    goto/16 :goto_e9b

    .line 5855
    .end local v1    # "serial":I
    .end local v2    # "sessionHandle":I
    :sswitch_5fc
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5857
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5858
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 5859
    .local v2, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5860
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 5861
    goto/16 :goto_e9b

    .line 5846
    .end local v1    # "serial":I
    .end local v2    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :sswitch_610
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5848
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5849
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->stopNetworkScan(I)V

    .line 5850
    goto/16 :goto_e9b

    .line 5835
    .end local v1    # "serial":I
    :sswitch_61c
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5837
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5838
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 5839
    .local v2, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5840
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 5841
    goto/16 :goto_e9b

    .line 5825
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :sswitch_630
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5827
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5828
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5829
    .local v2, "powerUp":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 5830
    goto/16 :goto_e9b

    .line 5814
    .end local v1    # "serial":I
    .end local v2    # "powerUp":I
    :sswitch_640
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5816
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5817
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 5818
    .local v2, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5819
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 5820
    goto/16 :goto_e9b

    .line 5806
    .end local v1    # "serial":I
    .end local v2    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :sswitch_654
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5808
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->responseAcknowledgement()V

    .line 5809
    goto/16 :goto_e9b

    .line 5796
    :sswitch_65c
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5798
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5799
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5800
    .local v2, "powerUp":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setSimCardPower(IZ)V

    .line 5801
    goto/16 :goto_e9b

    .line 5786
    .end local v1    # "serial":I
    .end local v2    # "powerUp":Z
    :sswitch_66c
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5788
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5789
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5790
    .local v2, "indicationFilter":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setIndicationFilter(II)V

    .line 5791
    goto/16 :goto_e9b

    .line 5775
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :sswitch_67c
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5777
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5778
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5779
    .local v2, "deviceStateType":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 5780
    .local v3, "state":Z
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 5781
    goto/16 :goto_e9b

    .line 5766
    .end local v1    # "serial":I
    .end local v2    # "deviceStateType":I
    .end local v3    # "state":Z
    :sswitch_690
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5768
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5769
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getAllowedCarriers(I)V

    .line 5770
    goto/16 :goto_e9b

    .line 5754
    .end local v1    # "serial":I
    :sswitch_69c
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5756
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5757
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5758
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 5759
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v12}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5760
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 5761
    goto/16 :goto_e9b

    .line 5745
    .end local v1    # "serial":I
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :sswitch_6b4
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5747
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5748
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getModemActivityInfo(I)V

    .line 5749
    goto/16 :goto_e9b

    .line 5736
    .end local v1    # "serial":I
    :sswitch_6c0
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5738
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5739
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->pullLceData(I)V

    .line 5740
    goto/16 :goto_e9b

    .line 5727
    .end local v1    # "serial":I
    :sswitch_6cc
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5729
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5730
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->stopLceService(I)V

    .line 5731
    goto/16 :goto_e9b

    .line 5716
    .end local v1    # "serial":I
    :sswitch_6d8
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5718
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5719
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5720
    .local v2, "reportInterval":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 5721
    .local v3, "pullMode":Z
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->startLceService(IIZ)V

    .line 5722
    goto/16 :goto_e9b

    .line 5705
    .end local v1    # "serial":I
    .end local v2    # "reportInterval":I
    .end local v3    # "pullMode":Z
    :sswitch_6ec
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5707
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5708
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 5709
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5710
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 5711
    goto/16 :goto_e9b

    .line 5696
    .end local v1    # "serial":I
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_700
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5698
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5699
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getRadioCapability(I)V

    .line 5700
    goto/16 :goto_e9b

    .line 5687
    .end local v1    # "serial":I
    :sswitch_70c
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5689
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5690
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->requestShutdown(I)V

    .line 5691
    goto/16 :goto_e9b

    .line 5676
    .end local v1    # "serial":I
    :sswitch_718
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5678
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5679
    .restart local v1    # "serial":I
    invoke-static {v12}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5680
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 5681
    .local v3, "isRoaming":Z
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 5682
    goto/16 :goto_e9b

    .line 5664
    .end local v1    # "serial":I
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v3    # "isRoaming":Z
    :sswitch_72c
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5666
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5667
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5668
    .local v2, "authContext":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5669
    .local v3, "authData":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5670
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_6/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 5671
    goto/16 :goto_e9b

    .line 5655
    .end local v1    # "serial":I
    .end local v2    # "authContext":I
    .end local v3    # "authData":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :sswitch_744
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5657
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5658
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getHardwareConfig(I)V

    .line 5659
    goto/16 :goto_e9b

    .line 5645
    .end local v1    # "serial":I
    :sswitch_750
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5647
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5648
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5649
    .local v2, "allow":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setDataAllowed(IZ)V

    .line 5650
    goto/16 :goto_e9b

    .line 5634
    .end local v1    # "serial":I
    .end local v2    # "allow":Z
    :sswitch_760
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5636
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5637
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 5638
    .local v2, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5639
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 5640
    goto/16 :goto_e9b

    .line 5624
    .end local v1    # "serial":I
    .end local v2    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :sswitch_774
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5626
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5627
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5628
    .local v2, "resetType":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->nvResetConfig(II)V

    .line 5629
    goto/16 :goto_e9b

    .line 5614
    .end local v1    # "serial":I
    .end local v2    # "resetType":I
    :sswitch_784
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5616
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5617
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 5618
    .local v2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 5619
    goto/16 :goto_e9b

    .line 5603
    .end local v1    # "serial":I
    .end local v2    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_794
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5605
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5606
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 5607
    .local v2, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5608
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 5609
    goto/16 :goto_e9b

    .line 5593
    .end local v1    # "serial":I
    .end local v2    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :sswitch_7a8
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5595
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5596
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5597
    .local v2, "itemId":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->nvReadItem(II)V

    .line 5598
    goto/16 :goto_e9b

    .line 5582
    .end local v1    # "serial":I
    .end local v2    # "itemId":I
    :sswitch_7b8
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5584
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5585
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 5586
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5587
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 5588
    goto/16 :goto_e9b

    .line 5572
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :sswitch_7cc
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5574
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5575
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5576
    .local v2, "channelId":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 5577
    goto/16 :goto_e9b

    .line 5561
    .end local v1    # "serial":I
    .end local v2    # "channelId":I
    :sswitch_7dc
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5563
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5564
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5565
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5566
    .local v3, "p2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 5567
    goto/16 :goto_e9b

    .line 5550
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    .end local v3    # "p2":I
    :sswitch_7f0
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5552
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5553
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 5554
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5555
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 5556
    goto/16 :goto_e9b

    .line 5539
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :sswitch_804
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5541
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5542
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 5543
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5544
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 5545
    goto/16 :goto_e9b

    .line 5530
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :sswitch_818
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5532
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5533
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getImsRegistrationState(I)V

    .line 5534
    goto/16 :goto_e9b

    .line 5517
    .end local v1    # "serial":I
    :sswitch_824
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5519
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5520
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 5521
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5522
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 5523
    .local v3, "modemCognitive":Z
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 5524
    .local v4, "isRoaming":Z
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 5525
    goto/16 :goto_e9b

    .line 5507
    .end local v1    # "serial":I
    .end local v2    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v3    # "modemCognitive":Z
    .end local v4    # "isRoaming":Z
    :sswitch_840
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5509
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5510
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5511
    .local v2, "rate":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setCellInfoListRate(II)V

    .line 5512
    goto/16 :goto_e9b

    .line 5498
    .end local v1    # "serial":I
    .end local v2    # "rate":I
    :sswitch_850
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5500
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5501
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getCellInfoList(I)V

    .line 5502
    goto/16 :goto_e9b

    .line 5489
    .end local v1    # "serial":I
    :sswitch_85c
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5491
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5492
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 5493
    goto/16 :goto_e9b

    .line 5479
    .end local v1    # "serial":I
    :sswitch_868
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5481
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5482
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5483
    .local v2, "contents":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 5484
    goto/16 :goto_e9b

    .line 5468
    .end local v1    # "serial":I
    .end local v2    # "contents":Ljava/lang/String;
    :sswitch_878
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5470
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5471
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5472
    .local v2, "success":Z
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5473
    .local v3, "ackPdu":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 5474
    goto/16 :goto_e9b

    .line 5458
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "ackPdu":Ljava/lang/String;
    :sswitch_88c
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5460
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5461
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5462
    .local v2, "challenge":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 5463
    goto/16 :goto_e9b

    .line 5449
    .end local v1    # "serial":I
    .end local v2    # "challenge":Ljava/lang/String;
    :sswitch_89c
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5451
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5452
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 5453
    goto/16 :goto_e9b

    .line 5440
    .end local v1    # "serial":I
    :sswitch_8a8
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5442
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5443
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 5444
    goto/16 :goto_e9b

    .line 5430
    .end local v1    # "serial":I
    :sswitch_8b4
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5432
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5433
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5434
    .local v2, "available":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 5435
    goto/16 :goto_e9b

    .line 5420
    .end local v1    # "serial":I
    .end local v2    # "available":Z
    :sswitch_8c4
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5422
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5423
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5424
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 5425
    goto/16 :goto_e9b

    .line 5411
    .end local v1    # "serial":I
    .end local v2    # "smsc":Ljava/lang/String;
    :sswitch_8d4
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5413
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5414
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getSmscAddress(I)V

    .line 5415
    goto/16 :goto_e9b

    .line 5402
    .end local v1    # "serial":I
    :sswitch_8e0
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5404
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5405
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 5406
    goto/16 :goto_e9b

    .line 5393
    .end local v1    # "serial":I
    :sswitch_8ec
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5395
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5396
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getDeviceIdentity(I)V

    .line 5397
    goto/16 :goto_e9b

    .line 5383
    .end local v1    # "serial":I
    :sswitch_8f8
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5385
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5386
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5387
    .local v2, "index":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 5388
    goto/16 :goto_e9b

    .line 5372
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :sswitch_908
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5374
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5375
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 5376
    .local v2, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5377
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 5378
    goto/16 :goto_e9b

    .line 5363
    .end local v1    # "serial":I
    .end local v2    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :sswitch_91c
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5365
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5366
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getCDMASubscription(I)V

    .line 5367
    goto/16 :goto_e9b

    .line 5353
    .end local v1    # "serial":I
    :sswitch_928
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5355
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5356
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5357
    .local v2, "activate":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 5358
    goto/16 :goto_e9b

    .line 5343
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :sswitch_938
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5345
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5346
    .restart local v1    # "serial":I
    invoke-static {v12}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5347
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 5348
    goto/16 :goto_e9b

    .line 5334
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :sswitch_948
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5336
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5337
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 5338
    goto/16 :goto_e9b

    .line 5324
    .end local v1    # "serial":I
    :sswitch_954
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5326
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5327
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5328
    .local v2, "activate":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 5329
    goto/16 :goto_e9b

    .line 5314
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :sswitch_964
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5316
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5317
    .restart local v1    # "serial":I
    invoke-static {v12}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5318
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 5319
    goto/16 :goto_e9b

    .line 5305
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :sswitch_974
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5307
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5308
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 5309
    goto/16 :goto_e9b

    .line 5294
    .end local v1    # "serial":I
    :sswitch_980
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5296
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5297
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 5298
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5299
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 5300
    goto/16 :goto_e9b

    .line 5283
    .end local v1    # "serial":I
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :sswitch_994
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5285
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5286
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 5287
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5288
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 5289
    goto/16 :goto_e9b

    .line 5271
    .end local v1    # "serial":I
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_9a8
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5273
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5274
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5275
    .local v2, "dtmf":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5276
    .local v3, "on":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 5277
    .local v4, "off":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 5278
    goto/16 :goto_e9b

    .line 5261
    .end local v1    # "serial":I
    .end local v2    # "dtmf":Ljava/lang/String;
    .end local v3    # "on":I
    .end local v4    # "off":I
    :sswitch_9c0
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5263
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5264
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5265
    .local v2, "featureCode":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 5266
    goto/16 :goto_e9b

    .line 5252
    .end local v1    # "serial":I
    .end local v2    # "featureCode":Ljava/lang/String;
    :sswitch_9d0
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5254
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5255
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 5256
    goto/16 :goto_e9b

    .line 5242
    .end local v1    # "serial":I
    :sswitch_9dc
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5244
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5245
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5246
    .local v2, "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 5247
    goto/16 :goto_e9b

    .line 5233
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :sswitch_9ec
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5235
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5236
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getTTYMode(I)V

    .line 5237
    goto/16 :goto_e9b

    .line 5223
    .end local v1    # "serial":I
    :sswitch_9f8
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5225
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5226
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5227
    .local v2, "mode":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setTTYMode(II)V

    .line 5228
    goto/16 :goto_e9b

    .line 5214
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :sswitch_a08
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5216
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5217
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 5218
    goto/16 :goto_e9b

    .line 5204
    .end local v1    # "serial":I
    :sswitch_a14
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5206
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5207
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5208
    .local v2, "type":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 5209
    goto/16 :goto_e9b

    .line 5194
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :sswitch_a24
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5196
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5197
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5198
    .local v2, "cdmaSub":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 5199
    goto/16 :goto_e9b

    .line 5184
    .end local v1    # "serial":I
    .end local v2    # "cdmaSub":I
    :sswitch_a34
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5186
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5187
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5188
    .local v2, "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 5189
    goto/16 :goto_e9b

    .line 5175
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :sswitch_a44
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5177
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5178
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getNeighboringCids(I)V

    .line 5179
    goto/16 :goto_e9b

    .line 5166
    .end local v1    # "serial":I
    :sswitch_a50
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5168
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5169
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 5170
    goto/16 :goto_e9b

    .line 5156
    .end local v1    # "serial":I
    :sswitch_a5c
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5158
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5159
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5160
    .local v2, "nwType":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 5161
    goto/16 :goto_e9b

    .line 5147
    .end local v1    # "serial":I
    .end local v2    # "nwType":I
    :sswitch_a6c
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5149
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5150
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->explicitCallTransfer(I)V

    .line 5151
    goto/16 :goto_e9b

    .line 5137
    .end local v1    # "serial":I
    :sswitch_a78
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5139
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5140
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5141
    .local v2, "accept":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 5142
    goto/16 :goto_e9b

    .line 5127
    .end local v1    # "serial":I
    .end local v2    # "accept":Z
    :sswitch_a88
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5129
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5130
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5131
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 5132
    goto/16 :goto_e9b

    .line 5117
    .end local v1    # "serial":I
    .end local v2    # "commandResponse":Ljava/lang/String;
    :sswitch_a98
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5119
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5120
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5121
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 5122
    goto/16 :goto_e9b

    .line 5108
    .end local v1    # "serial":I
    .end local v2    # "command":Ljava/lang/String;
    :sswitch_aa8
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5110
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5111
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getAvailableBandModes(I)V

    .line 5112
    goto/16 :goto_e9b

    .line 5098
    .end local v1    # "serial":I
    :sswitch_ab4
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5100
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5101
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5102
    .local v2, "mode":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setBandMode(II)V

    .line 5103
    goto/16 :goto_e9b

    .line 5088
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :sswitch_ac4
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5090
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5091
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5092
    .local v2, "index":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 5093
    goto/16 :goto_e9b

    .line 5077
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :sswitch_ad4
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5079
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5080
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 5081
    .local v2, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5082
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 5083
    goto/16 :goto_e9b

    .line 5067
    .end local v1    # "serial":I
    .end local v2    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :sswitch_ae8
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5069
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5070
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5071
    .local v2, "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 5072
    goto/16 :goto_e9b

    .line 5058
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :sswitch_af8
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5060
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5061
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getDataCallList(I)V

    .line 5062
    goto/16 :goto_e9b

    .line 5049
    .end local v1    # "serial":I
    :sswitch_b04
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5051
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5052
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getClip(I)V

    .line 5053
    goto/16 :goto_e9b

    .line 5040
    .end local v1    # "serial":I
    :sswitch_b10
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5042
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5043
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getMute(I)V

    .line 5044
    goto/16 :goto_e9b

    .line 5030
    .end local v1    # "serial":I
    :sswitch_b1c
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5032
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5033
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5034
    .restart local v2    # "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setMute(IZ)V

    .line 5035
    goto/16 :goto_e9b

    .line 5020
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :sswitch_b2c
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5022
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5023
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5024
    .local v2, "gsmIndex":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->separateConnection(II)V

    .line 5025
    goto/16 :goto_e9b

    .line 5011
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :sswitch_b3c
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5013
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5014
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getBasebandVersion(I)V

    .line 5015
    goto/16 :goto_e9b

    .line 5002
    .end local v1    # "serial":I
    :sswitch_b48
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5004
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5005
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->stopDtmf(I)V

    .line 5006
    goto/16 :goto_e9b

    .line 4992
    .end local v1    # "serial":I
    :sswitch_b54
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4994
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4995
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4996
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 4997
    goto/16 :goto_e9b

    .line 4983
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :sswitch_b64
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4985
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4986
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getAvailableNetworks(I)V

    .line 4987
    goto/16 :goto_e9b

    .line 4973
    .end local v1    # "serial":I
    :sswitch_b70
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4975
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4976
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4977
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 4978
    goto/16 :goto_e9b

    .line 4964
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :sswitch_b80
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4966
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4967
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 4968
    goto/16 :goto_e9b

    .line 4955
    .end local v1    # "serial":I
    :sswitch_b8c
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4957
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4958
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 4959
    goto/16 :goto_e9b

    .line 4943
    .end local v1    # "serial":I
    :sswitch_b98
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4945
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4946
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4947
    .local v2, "facility":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4948
    .local v3, "oldPassword":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4949
    .local v4, "newPassword":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4950
    goto/16 :goto_e9b

    .line 4929
    .end local v1    # "serial":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "oldPassword":Ljava/lang/String;
    .end local v4    # "newPassword":Ljava/lang/String;
    :sswitch_bb0
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4931
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4932
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4933
    .restart local v2    # "facility":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4934
    .local v3, "lockState":Z
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4935
    .local v4, "password":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4936
    .local v5, "serviceClass":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 4937
    .local v6, "appId":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 4938
    goto/16 :goto_e9b

    .line 4916
    .end local v1    # "serial":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "lockState":Z
    .end local v4    # "password":Ljava/lang/String;
    .end local v5    # "serviceClass":I
    .end local v6    # "appId":Ljava/lang/String;
    :sswitch_bd1
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4918
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4919
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4920
    .restart local v2    # "facility":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4921
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 4922
    .local v4, "serviceClass":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4923
    .local v5, "appId":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 4924
    goto/16 :goto_e9b

    .line 4905
    .end local v1    # "serial":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    .end local v4    # "serviceClass":I
    .end local v5    # "appId":Ljava/lang/String;
    :sswitch_bee
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4907
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4908
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4909
    .local v2, "cid":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4910
    .local v3, "reasonRadioShutDown":Z
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 4911
    goto/16 :goto_e9b

    .line 4896
    .end local v1    # "serial":I
    .end local v2    # "cid":I
    .end local v3    # "reasonRadioShutDown":Z
    :sswitch_c02
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4898
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4899
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->acceptCall(I)V

    .line 4900
    goto/16 :goto_e9b

    .line 4885
    .end local v1    # "serial":I
    :sswitch_c0e
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4887
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4888
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4889
    .local v2, "success":Z
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4890
    .local v3, "cause":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 4891
    goto/16 :goto_e9b

    .line 4874
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :sswitch_c22
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4876
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4877
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4878
    .local v2, "enable":Z
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4879
    .local v3, "serviceClass":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setCallWaiting(IZI)V

    .line 4880
    goto/16 :goto_e9b

    .line 4864
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :sswitch_c36
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4866
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4867
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4868
    .local v2, "serviceClass":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getCallWaiting(II)V

    .line 4869
    goto/16 :goto_e9b

    .line 4853
    .end local v1    # "serial":I
    .end local v2    # "serviceClass":I
    :sswitch_c46
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4855
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4856
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 4857
    .local v2, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4858
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 4859
    goto/16 :goto_e9b

    .line 4842
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :sswitch_c5a
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4844
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4845
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 4846
    .restart local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4847
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 4848
    goto/16 :goto_e9b

    .line 4832
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :sswitch_c6e
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4834
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4835
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4836
    .local v2, "status":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setClir(II)V

    .line 4837
    goto/16 :goto_e9b

    .line 4823
    .end local v1    # "serial":I
    .end local v2    # "status":I
    :sswitch_c7e
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4825
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4826
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getClir(I)V

    .line 4827
    goto/16 :goto_e9b

    .line 4814
    .end local v1    # "serial":I
    :sswitch_c8a
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4816
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4817
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->cancelPendingUssd(I)V

    .line 4818
    goto/16 :goto_e9b

    .line 4804
    .end local v1    # "serial":I
    :sswitch_c96
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4806
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4807
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4808
    .local v2, "ussd":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 4809
    goto/16 :goto_e9b

    .line 4793
    .end local v1    # "serial":I
    .end local v2    # "ussd":Ljava/lang/String;
    :sswitch_ca6
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4795
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4796
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 4797
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4798
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 4799
    goto/16 :goto_e9b

    .line 4778
    .end local v1    # "serial":I
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :sswitch_cba
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4780
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4781
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4782
    .local v2, "radioTechnology":I
    new-instance v3, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4783
    .local v3, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v3, v12}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4784
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 4785
    .local v4, "modemCognitive":Z
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    .line 4786
    .local v5, "roamingAllowed":Z
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 4787
    .local v6, "isRoaming":Z
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 4788
    goto/16 :goto_e9b

    .line 4767
    .end local v1    # "serial":I
    .end local v2    # "radioTechnology":I
    .end local v3    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v4    # "modemCognitive":Z
    .end local v5    # "roamingAllowed":Z
    .end local v6    # "isRoaming":Z
    :sswitch_cdf
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4769
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4770
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 4771
    .local v2, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4772
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 4773
    goto/16 :goto_e9b

    .line 4756
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_cf3
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4758
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4759
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 4760
    .restart local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4761
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 4762
    goto/16 :goto_e9b

    .line 4746
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_d07
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4748
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4749
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4750
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 4751
    goto/16 :goto_e9b

    .line 4736
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :sswitch_d17
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4738
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4739
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4740
    .local v2, "on":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setRadioPower(IZ)V

    .line 4741
    goto/16 :goto_e9b

    .line 4727
    .end local v1    # "serial":I
    .end local v2    # "on":Z
    :sswitch_d27
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4729
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4730
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getOperator(I)V

    .line 4731
    goto/16 :goto_e9b

    .line 4718
    .end local v1    # "serial":I
    :sswitch_d33
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4720
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4721
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getDataRegistrationState(I)V

    .line 4722
    goto/16 :goto_e9b

    .line 4709
    .end local v1    # "serial":I
    :sswitch_d3f
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4711
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4712
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 4713
    goto/16 :goto_e9b

    .line 4700
    .end local v1    # "serial":I
    :sswitch_d4b
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4702
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4703
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getSignalStrength(I)V

    .line 4704
    goto/16 :goto_e9b

    .line 4691
    .end local v1    # "serial":I
    :sswitch_d57
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4693
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4694
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getLastCallFailCause(I)V

    .line 4695
    goto/16 :goto_e9b

    .line 4682
    .end local v1    # "serial":I
    :sswitch_d63
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4684
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4685
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->rejectCall(I)V

    .line 4686
    goto/16 :goto_e9b

    .line 4673
    .end local v1    # "serial":I
    :sswitch_d6f
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4675
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4676
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->conference(I)V

    .line 4677
    goto/16 :goto_e9b

    .line 4664
    .end local v1    # "serial":I
    :sswitch_d7b
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4666
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4667
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 4668
    goto/16 :goto_e9b

    .line 4655
    .end local v1    # "serial":I
    :sswitch_d87
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4657
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4658
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 4659
    goto/16 :goto_e9b

    .line 4646
    .end local v1    # "serial":I
    :sswitch_d93
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4648
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4649
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 4650
    goto/16 :goto_e9b

    .line 4636
    .end local v1    # "serial":I
    :sswitch_d9f
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4638
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4639
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4640
    .local v2, "gsmIndex":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->hangup(II)V

    .line 4641
    goto/16 :goto_e9b

    .line 4626
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :sswitch_daf
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4628
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4629
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4630
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 4631
    goto/16 :goto_e9b

    .line 4615
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    :sswitch_dbf
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4617
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4618
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 4619
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v12}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4620
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 4621
    goto/16 :goto_e9b

    .line 4606
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :sswitch_dd3
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4608
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4609
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getCurrentCalls(I)V

    .line 4610
    goto/16 :goto_e9b

    .line 4596
    .end local v1    # "serial":I
    :sswitch_ddf
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4598
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4599
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4600
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 4601
    goto/16 :goto_e9b

    .line 4584
    .end local v1    # "serial":I
    .end local v2    # "netPin":Ljava/lang/String;
    :sswitch_def
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4586
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4587
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4588
    .local v2, "oldPin2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4589
    .local v3, "newPin2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4590
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_6/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4591
    goto/16 :goto_e9b

    .line 4572
    .end local v1    # "serial":I
    .end local v2    # "oldPin2":Ljava/lang/String;
    .end local v3    # "newPin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :sswitch_e07
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4574
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4575
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4576
    .local v2, "oldPin":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4577
    .local v3, "newPin":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4578
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_6/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4579
    goto/16 :goto_e9b

    .line 4560
    .end local v1    # "serial":I
    .end local v2    # "oldPin":Ljava/lang/String;
    .end local v3    # "newPin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :sswitch_e1f
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4562
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4563
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4564
    .local v2, "puk2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4565
    .local v3, "pin2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4566
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_6/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4567
    goto :goto_e9b

    .line 4549
    .end local v1    # "serial":I
    .end local v2    # "puk2":Ljava/lang/String;
    .end local v3    # "pin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :sswitch_e36
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4551
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4552
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4553
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4554
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 4555
    goto :goto_e9b

    .line 4537
    .end local v1    # "serial":I
    .end local v2    # "pin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_e49
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4539
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4540
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4541
    .local v2, "puk":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4542
    .local v3, "pin":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4543
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_6/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4544
    goto :goto_e9b

    .line 4526
    .end local v1    # "serial":I
    .end local v2    # "puk":Ljava/lang/String;
    .end local v3    # "pin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :sswitch_e60
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4528
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4529
    .restart local v1    # "serial":I
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4530
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4531
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 4532
    goto :goto_e9b

    .line 4517
    .end local v1    # "serial":I
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_e73
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4519
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4520
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getIccCardStatus(I)V

    .line 4521
    goto :goto_e9b

    .line 4505
    .end local v1    # "serial":I
    :sswitch_e7e
    invoke-virtual {v12, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4507
    invoke-virtual {v12}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v1

    .line 4508
    .local v1, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual {v12}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v2

    .line 4509
    .local v2, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 4510
    invoke-virtual {v13, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4511
    invoke-virtual {v13}, Landroid/os/HwParcel;->send()V

    .line 4512
    nop

    .line 6702
    .end local v1    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    .end local v2    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    :goto_e9b
    return-void

    :sswitch_data_e9c
    .sparse-switch
        0x1 -> :sswitch_e7e
        0x2 -> :sswitch_e73
        0x3 -> :sswitch_e60
        0x4 -> :sswitch_e49
        0x5 -> :sswitch_e36
        0x6 -> :sswitch_e1f
        0x7 -> :sswitch_e07
        0x8 -> :sswitch_def
        0x9 -> :sswitch_ddf
        0xa -> :sswitch_dd3
        0xb -> :sswitch_dbf
        0xc -> :sswitch_daf
        0xd -> :sswitch_d9f
        0xe -> :sswitch_d93
        0xf -> :sswitch_d87
        0x10 -> :sswitch_d7b
        0x11 -> :sswitch_d6f
        0x12 -> :sswitch_d63
        0x13 -> :sswitch_d57
        0x14 -> :sswitch_d4b
        0x15 -> :sswitch_d3f
        0x16 -> :sswitch_d33
        0x17 -> :sswitch_d27
        0x18 -> :sswitch_d17
        0x19 -> :sswitch_d07
        0x1a -> :sswitch_cf3
        0x1b -> :sswitch_cdf
        0x1c -> :sswitch_cba
        0x1d -> :sswitch_ca6
        0x1e -> :sswitch_c96
        0x1f -> :sswitch_c8a
        0x20 -> :sswitch_c7e
        0x21 -> :sswitch_c6e
        0x22 -> :sswitch_c5a
        0x23 -> :sswitch_c46
        0x24 -> :sswitch_c36
        0x25 -> :sswitch_c22
        0x26 -> :sswitch_c0e
        0x27 -> :sswitch_c02
        0x28 -> :sswitch_bee
        0x29 -> :sswitch_bd1
        0x2a -> :sswitch_bb0
        0x2b -> :sswitch_b98
        0x2c -> :sswitch_b8c
        0x2d -> :sswitch_b80
        0x2e -> :sswitch_b70
        0x2f -> :sswitch_b64
        0x30 -> :sswitch_b54
        0x31 -> :sswitch_b48
        0x32 -> :sswitch_b3c
        0x33 -> :sswitch_b2c
        0x34 -> :sswitch_b1c
        0x35 -> :sswitch_b10
        0x36 -> :sswitch_b04
        0x37 -> :sswitch_af8
        0x38 -> :sswitch_ae8
        0x39 -> :sswitch_ad4
        0x3a -> :sswitch_ac4
        0x3b -> :sswitch_ab4
        0x3c -> :sswitch_aa8
        0x3d -> :sswitch_a98
        0x3e -> :sswitch_a88
        0x3f -> :sswitch_a78
        0x40 -> :sswitch_a6c
        0x41 -> :sswitch_a5c
        0x42 -> :sswitch_a50
        0x43 -> :sswitch_a44
        0x44 -> :sswitch_a34
        0x45 -> :sswitch_a24
        0x46 -> :sswitch_a14
        0x47 -> :sswitch_a08
        0x48 -> :sswitch_9f8
        0x49 -> :sswitch_9ec
        0x4a -> :sswitch_9dc
        0x4b -> :sswitch_9d0
        0x4c -> :sswitch_9c0
        0x4d -> :sswitch_9a8
        0x4e -> :sswitch_994
        0x4f -> :sswitch_980
        0x50 -> :sswitch_974
        0x51 -> :sswitch_964
        0x52 -> :sswitch_954
        0x53 -> :sswitch_948
        0x54 -> :sswitch_938
        0x55 -> :sswitch_928
        0x56 -> :sswitch_91c
        0x57 -> :sswitch_908
        0x58 -> :sswitch_8f8
        0x59 -> :sswitch_8ec
        0x5a -> :sswitch_8e0
        0x5b -> :sswitch_8d4
        0x5c -> :sswitch_8c4
        0x5d -> :sswitch_8b4
        0x5e -> :sswitch_8a8
        0x5f -> :sswitch_89c
        0x60 -> :sswitch_88c
        0x61 -> :sswitch_878
        0x62 -> :sswitch_868
        0x63 -> :sswitch_85c
        0x64 -> :sswitch_850
        0x65 -> :sswitch_840
        0x66 -> :sswitch_824
        0x67 -> :sswitch_818
        0x68 -> :sswitch_804
        0x69 -> :sswitch_7f0
        0x6a -> :sswitch_7dc
        0x6b -> :sswitch_7cc
        0x6c -> :sswitch_7b8
        0x6d -> :sswitch_7a8
        0x6e -> :sswitch_794
        0x6f -> :sswitch_784
        0x70 -> :sswitch_774
        0x71 -> :sswitch_760
        0x72 -> :sswitch_750
        0x73 -> :sswitch_744
        0x74 -> :sswitch_72c
        0x75 -> :sswitch_718
        0x76 -> :sswitch_70c
        0x77 -> :sswitch_700
        0x78 -> :sswitch_6ec
        0x79 -> :sswitch_6d8
        0x7a -> :sswitch_6cc
        0x7b -> :sswitch_6c0
        0x7c -> :sswitch_6b4
        0x7d -> :sswitch_69c
        0x7e -> :sswitch_690
        0x7f -> :sswitch_67c
        0x80 -> :sswitch_66c
        0x81 -> :sswitch_65c
        0x82 -> :sswitch_654
        0x83 -> :sswitch_640
        0x84 -> :sswitch_630
        0x85 -> :sswitch_61c
        0x86 -> :sswitch_610
        0x87 -> :sswitch_5fc
        0x88 -> :sswitch_5ec
        0x89 -> :sswitch_5d8
        0x8a -> :sswitch_5c8
        0x8b -> :sswitch_5ab
        0x8c -> :sswitch_586
        0x8d -> :sswitch_555
        0x8e -> :sswitch_541
        0x8f -> :sswitch_52d
        0x90 -> :sswitch_51d
        0x91 -> :sswitch_511
        0x92 -> :sswitch_4e8
        0x93 -> :sswitch_4d4
        0x94 -> :sswitch_4c4
        0x95 -> :sswitch_49b
        0x96 -> :sswitch_487
        0x97 -> :sswitch_47b
        0x98 -> :sswitch_46b
        0x99 -> :sswitch_453
        0x9a -> :sswitch_447
        0x9b -> :sswitch_43b
        0x9c -> :sswitch_423
        0x9d -> :sswitch_3fe
        0x9e -> :sswitch_3ee
        0x9f -> :sswitch_3e2
        0xa0 -> :sswitch_3ce
        0xa1 -> :sswitch_3ba
        0xa2 -> :sswitch_391
        0xa3 -> :sswitch_37d
        0xa4 -> :sswitch_36d
        0xa5 -> :sswitch_355
        0xa6 -> :sswitch_345
        0xa7 -> :sswitch_339
        0xa8 -> :sswitch_32d
        0xa9 -> :sswitch_321
        0xaa -> :sswitch_30d
        0xab -> :sswitch_2f9
        0xac -> :sswitch_2e5
        0xad -> :sswitch_2cd
        0xae -> :sswitch_2c1
        0xaf -> :sswitch_280
        0xb0 -> :sswitch_26c
        0xb1 -> :sswitch_258
        0xb2 -> :sswitch_244
        0xb3 -> :sswitch_230
        0xb4 -> :sswitch_220
        0xb5 -> :sswitch_210
        0xb6 -> :sswitch_204
        0xb7 -> :sswitch_1f8
        0xb8 -> :sswitch_1e8
        0xb9 -> :sswitch_1d8
        0xba -> :sswitch_1c8
        0xbb -> :sswitch_1b8
        0xbc -> :sswitch_1ac
        0xbd -> :sswitch_198
        0xbe -> :sswitch_16f
        0xbf -> :sswitch_163
        0xc0 -> :sswitch_157
        0xc1 -> :sswitch_14b
        0xc2 -> :sswitch_13f
        0xc3 -> :sswitch_133
        0xc4 -> :sswitch_127
        0xc5 -> :sswitch_11b
        0xc6 -> :sswitch_107
        0xc7 -> :sswitch_fb
        0xc8 -> :sswitch_ef
        0xc9 -> :sswitch_db
        0xf43484e -> :sswitch_c9
        0xf444247 -> :sswitch_b3
        0xf445343 -> :sswitch_a1
        0xf485348 -> :sswitch_4c
        0xf494e54 -> :sswitch_44
        0xf4c5444 -> :sswitch_42
        0xf504e47 -> :sswitch_34
        0xf524546 -> :sswitch_22
        0xf535953 -> :sswitch_1a
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 4456
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 4484
    const-string v0, "android.hardware.radio@1.6::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4485
    return-object p0

    .line 4487
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

    .line 4491
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 4492
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 4446
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 4496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 4478
    const/4 v0, 0x1

    return v0
.end method
