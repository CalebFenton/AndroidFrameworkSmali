.class public abstract Landroid/hardware/radio/V1_3/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_3/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_3/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2930
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 2933
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

    .line 2949
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 2989
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2990
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2991
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2992
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2993
    return-object v0
.end method

.method public final blacklist getHashChain()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 2961
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_2a

    new-array v3, v1, [B

    fill-array-data v3, :array_3e

    new-array v4, v1, [B

    fill-array-data v4, :array_52

    new-array v5, v1, [B

    fill-array-data v5, :array_66

    new-array v1, v1, [B

    fill-array-data v1, :array_7a

    filled-new-array {v2, v3, v4, v5, v1}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_2a
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

    :array_3e
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

    :array_52
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

    :array_66
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

    :array_7a
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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2938
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.0::IRadio"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.radio@1.3::IRadio"

    const-string v4, "android.hardware.radio@1.2::IRadio"

    const-string v5, "android.hardware.radio@1.1::IRadio"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 2955
    const-string v0, "android.hardware.radio@1.3::IRadio"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 2977
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 2999
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 3001
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

    .line 3029
    move-object v10, p3

    const-string v1, "android.hardware.radio@1.3::IRadio"

    const-string v2, "android.hardware.radio@1.2::IRadio"

    const-string v3, "android.hardware.radio@1.1::IRadio"

    const-string v4, "android.hidl.base@1.0::IBase"

    const/4 v5, 0x0

    const-string v6, "android.hardware.radio@1.0::IRadio"

    sparse-switch p1, :sswitch_data_a5e

    goto/16 :goto_a5c

    .line 4613
    :sswitch_11
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4615
    invoke-virtual {p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->notifySyspropsChanged()V

    .line 4616
    goto/16 :goto_a5c

    .line 4602
    :sswitch_19
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4604
    invoke-virtual {p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 4605
    .local v1, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4606
    invoke-virtual {v1, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4607
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4608
    goto/16 :goto_a5c

    .line 4592
    .end local v1    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2b
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4594
    invoke-virtual {p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->ping()V

    .line 4595
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4596
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4597
    goto/16 :goto_a5c

    .line 4587
    :sswitch_39
    goto/16 :goto_a5c

    .line 4579
    :sswitch_3b
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4581
    invoke-virtual {p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setHALInstrumentation()V

    .line 4582
    goto/16 :goto_a5c

    .line 4545
    :sswitch_43
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4547
    invoke-virtual {p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 4548
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4550
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 4552
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4553
    .local v3, "_hidl_vec_size":I
    const-wide/16 v6, 0x8

    invoke-virtual {v2, v6, v7, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4554
    const-wide/16 v6, 0xc

    invoke-virtual {v2, v6, v7, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4555
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 4556
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_6a
    if-ge v5, v3, :cond_8b

    .line 4558
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 4559
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 4561
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_83

    array-length v9, v8

    const/16 v11, 0x20

    if-ne v9, v11, :cond_83

    .line 4565
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 4566
    nop

    .line 4556
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_6a

    .line 4562
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_83
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v11, "Array element is not of the expected length"

    invoke-direct {v9, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 4569
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_8b
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 4571
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 4573
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4574
    goto/16 :goto_a5c

    .line 4534
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_98
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4536
    invoke-virtual {p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 4537
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4538
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4539
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4540
    goto/16 :goto_a5c

    .line 4522
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_aa
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4524
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 4525
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4526
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 4527
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4528
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4529
    goto/16 :goto_a5c

    .line 4511
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_c0
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4513
    invoke-virtual {p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 4514
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4515
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4516
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4517
    goto/16 :goto_a5c

    .line 4502
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_d2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4504
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4505
    .local v1, "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getModemStackStatus(I)V

    .line 4506
    goto/16 :goto_a5c

    .line 4492
    .end local v1    # "serial":I
    :sswitch_de
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4494
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4495
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4496
    .local v2, "on":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->enableModem(IZ)V

    .line 4497
    goto/16 :goto_a5c

    .line 4481
    .end local v1    # "serial":I
    .end local v2    # "on":Z
    :sswitch_ee
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4483
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4484
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4485
    .local v2, "specifyChannels":Z
    invoke-static {p2}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4486
    .local v3, "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_1/RadioAccessSpecifier;>;"
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setSystemSelectionChannels(IZLjava/util/ArrayList;)V

    .line 4487
    goto/16 :goto_a5c

    .line 4470
    .end local v1    # "serial":I
    .end local v2    # "specifyChannels":Z
    .end local v3    # "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_1/RadioAccessSpecifier;>;"
    :sswitch_102
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4472
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4473
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4474
    .local v2, "cid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4475
    .local v3, "reason":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 4476
    goto/16 :goto_a5c

    .line 4452
    .end local v1    # "serial":I
    .end local v2    # "cid":I
    .end local v3    # "reason":I
    :sswitch_116
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4454
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4455
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4456
    .local v2, "accessNetwork":I
    new-instance v3, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4457
    .local v3, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4458
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 4459
    .local v4, "modemCognitive":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    .line 4460
    .local v5, "roamingAllowed":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 4461
    .local v6, "isRoaming":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 4462
    .local v7, "reason":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v8

    .line 4463
    .local v8, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v9

    .line 4464
    .local v9, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4465
    goto/16 :goto_a5c

    .line 4437
    .end local v1    # "serial":I
    .end local v2    # "accessNetwork":I
    .end local v3    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v4    # "modemCognitive":Z
    .end local v5    # "roamingAllowed":Z
    .end local v6    # "isRoaming":Z
    .end local v7    # "reason":I
    .end local v8    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_147
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4439
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4440
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4441
    .local v2, "hysteresisMs":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4442
    .local v3, "hysteresisDlKbps":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 4443
    .local v4, "hysteresisUlKbps":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v5

    .line 4444
    .local v5, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v6

    .line 4445
    .local v6, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 4446
    .local v7, "accessNetwork":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 4447
    goto/16 :goto_a5c

    .line 4424
    .end local v1    # "serial":I
    .end local v2    # "hysteresisMs":I
    .end local v3    # "hysteresisDlKbps":I
    .end local v4    # "hysteresisUlKbps":I
    .end local v5    # "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "accessNetwork":I
    :sswitch_16c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4426
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4427
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4428
    .restart local v2    # "hysteresisMs":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4429
    .local v3, "hysteresisDb":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v4

    .line 4430
    .local v4, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 4431
    .local v5, "accessNetwork":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 4432
    goto/16 :goto_a5c

    .line 4414
    .end local v1    # "serial":I
    .end local v2    # "hysteresisMs":I
    .end local v3    # "hysteresisDb":I
    .end local v4    # "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "accessNetwork":I
    :sswitch_189
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4416
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4417
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4418
    .local v2, "indicationFilter":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 4419
    goto/16 :goto_a5c

    .line 4403
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :sswitch_199
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4405
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4406
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 4407
    .local v2, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4408
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 4409
    goto/16 :goto_a5c

    .line 4393
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :sswitch_1ad
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4395
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4396
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4397
    .local v2, "sessionHandle":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->stopKeepalive(II)V

    .line 4398
    goto/16 :goto_a5c

    .line 4382
    .end local v1    # "serial":I
    .end local v2    # "sessionHandle":I
    :sswitch_1bd
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4384
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4385
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 4386
    .local v2, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4387
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 4388
    goto/16 :goto_a5c

    .line 4373
    .end local v1    # "serial":I
    .end local v2    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :sswitch_1d1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4375
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4376
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->stopNetworkScan(I)V

    .line 4377
    goto/16 :goto_a5c

    .line 4362
    .end local v1    # "serial":I
    :sswitch_1dd
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4364
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4365
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 4366
    .local v2, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4367
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 4368
    goto/16 :goto_a5c

    .line 4352
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :sswitch_1f1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4354
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4355
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4356
    .local v2, "powerUp":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 4357
    goto/16 :goto_a5c

    .line 4341
    .end local v1    # "serial":I
    .end local v2    # "powerUp":I
    :sswitch_201
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4343
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4344
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 4345
    .local v2, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4346
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 4347
    goto/16 :goto_a5c

    .line 4333
    .end local v1    # "serial":I
    .end local v2    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :sswitch_215
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4335
    invoke-virtual {p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->responseAcknowledgement()V

    .line 4336
    goto/16 :goto_a5c

    .line 4323
    :sswitch_21d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4325
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4326
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4327
    .local v2, "powerUp":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setSimCardPower(IZ)V

    .line 4328
    goto/16 :goto_a5c

    .line 4313
    .end local v1    # "serial":I
    .end local v2    # "powerUp":Z
    :sswitch_22d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4315
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4316
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4317
    .local v2, "indicationFilter":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setIndicationFilter(II)V

    .line 4318
    goto/16 :goto_a5c

    .line 4302
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :sswitch_23d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4304
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4305
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4306
    .local v2, "deviceStateType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4307
    .local v3, "state":Z
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 4308
    goto/16 :goto_a5c

    .line 4293
    .end local v1    # "serial":I
    .end local v2    # "deviceStateType":I
    .end local v3    # "state":Z
    :sswitch_251
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4295
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4296
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getAllowedCarriers(I)V

    .line 4297
    goto/16 :goto_a5c

    .line 4281
    .end local v1    # "serial":I
    :sswitch_25d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4283
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4284
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4285
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 4286
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4287
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 4288
    goto/16 :goto_a5c

    .line 4272
    .end local v1    # "serial":I
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :sswitch_275
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4274
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4275
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getModemActivityInfo(I)V

    .line 4276
    goto/16 :goto_a5c

    .line 4263
    .end local v1    # "serial":I
    :sswitch_281
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4265
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4266
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->pullLceData(I)V

    .line 4267
    goto/16 :goto_a5c

    .line 4254
    .end local v1    # "serial":I
    :sswitch_28d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4256
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4257
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->stopLceService(I)V

    .line 4258
    goto/16 :goto_a5c

    .line 4243
    .end local v1    # "serial":I
    :sswitch_299
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4245
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4246
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4247
    .local v2, "reportInterval":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4248
    .local v3, "pullMode":Z
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->startLceService(IIZ)V

    .line 4249
    goto/16 :goto_a5c

    .line 4232
    .end local v1    # "serial":I
    .end local v2    # "reportInterval":I
    .end local v3    # "pullMode":Z
    :sswitch_2ad
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4234
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4235
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4236
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4237
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4238
    goto/16 :goto_a5c

    .line 4223
    .end local v1    # "serial":I
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_2c1
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4225
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4226
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getRadioCapability(I)V

    .line 4227
    goto/16 :goto_a5c

    .line 4214
    .end local v1    # "serial":I
    :sswitch_2cd
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4216
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4217
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->requestShutdown(I)V

    .line 4218
    goto/16 :goto_a5c

    .line 4203
    .end local v1    # "serial":I
    :sswitch_2d9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4205
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4206
    .restart local v1    # "serial":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4207
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4208
    .local v3, "isRoaming":Z
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 4209
    goto/16 :goto_a5c

    .line 4191
    .end local v1    # "serial":I
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v3    # "isRoaming":Z
    :sswitch_2ed
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4193
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4194
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4195
    .local v2, "authContext":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4196
    .local v3, "authData":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4197
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_3/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 4198
    goto/16 :goto_a5c

    .line 4182
    .end local v1    # "serial":I
    .end local v2    # "authContext":I
    .end local v3    # "authData":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :sswitch_305
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4184
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4185
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getHardwareConfig(I)V

    .line 4186
    goto/16 :goto_a5c

    .line 4172
    .end local v1    # "serial":I
    :sswitch_311
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4174
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4175
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4176
    .local v2, "allow":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setDataAllowed(IZ)V

    .line 4177
    goto/16 :goto_a5c

    .line 4161
    .end local v1    # "serial":I
    .end local v2    # "allow":Z
    :sswitch_321
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4163
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4164
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 4165
    .local v2, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4166
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 4167
    goto/16 :goto_a5c

    .line 4151
    .end local v1    # "serial":I
    .end local v2    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :sswitch_335
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4153
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4154
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4155
    .local v2, "resetType":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->nvResetConfig(II)V

    .line 4156
    goto/16 :goto_a5c

    .line 4141
    .end local v1    # "serial":I
    .end local v2    # "resetType":I
    :sswitch_345
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4143
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4144
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4145
    .local v2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 4146
    goto/16 :goto_a5c

    .line 4130
    .end local v1    # "serial":I
    .end local v2    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_355
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4132
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4133
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 4134
    .local v2, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4135
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 4136
    goto/16 :goto_a5c

    .line 4120
    .end local v1    # "serial":I
    .end local v2    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :sswitch_369
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4122
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4123
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4124
    .local v2, "itemId":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->nvReadItem(II)V

    .line 4125
    goto/16 :goto_a5c

    .line 4109
    .end local v1    # "serial":I
    .end local v2    # "itemId":I
    :sswitch_379
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4111
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4112
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4113
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4114
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4115
    goto/16 :goto_a5c

    .line 4099
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :sswitch_38d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4101
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4102
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4103
    .local v2, "channelId":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 4104
    goto/16 :goto_a5c

    .line 4088
    .end local v1    # "serial":I
    .end local v2    # "channelId":I
    :sswitch_39d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4090
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4091
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4092
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4093
    .local v3, "p2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 4094
    goto/16 :goto_a5c

    .line 4077
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    .end local v3    # "p2":I
    :sswitch_3b1
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4079
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4080
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4081
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4082
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4083
    goto/16 :goto_a5c

    .line 4066
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :sswitch_3c5
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4068
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4069
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 4070
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4071
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 4072
    goto/16 :goto_a5c

    .line 4057
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :sswitch_3d9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4059
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4060
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getImsRegistrationState(I)V

    .line 4061
    goto/16 :goto_a5c

    .line 4044
    .end local v1    # "serial":I
    :sswitch_3e5
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4046
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4047
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4048
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4049
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4050
    .local v3, "modemCognitive":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 4051
    .local v4, "isRoaming":Z
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 4052
    goto/16 :goto_a5c

    .line 4034
    .end local v1    # "serial":I
    .end local v2    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v3    # "modemCognitive":Z
    .end local v4    # "isRoaming":Z
    :sswitch_401
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4036
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4037
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4038
    .local v2, "rate":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCellInfoListRate(II)V

    .line 4039
    goto/16 :goto_a5c

    .line 4025
    .end local v1    # "serial":I
    .end local v2    # "rate":I
    :sswitch_411
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4027
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4028
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCellInfoList(I)V

    .line 4029
    goto/16 :goto_a5c

    .line 4016
    .end local v1    # "serial":I
    :sswitch_41d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4018
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4019
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 4020
    goto/16 :goto_a5c

    .line 4006
    .end local v1    # "serial":I
    :sswitch_429
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4008
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4009
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4010
    .local v2, "contents":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 4011
    goto/16 :goto_a5c

    .line 3995
    .end local v1    # "serial":I
    .end local v2    # "contents":Ljava/lang/String;
    :sswitch_439
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3997
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3998
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3999
    .local v2, "success":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4000
    .local v3, "ackPdu":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 4001
    goto/16 :goto_a5c

    .line 3985
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "ackPdu":Ljava/lang/String;
    :sswitch_44d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3987
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3988
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3989
    .local v2, "challenge":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 3990
    goto/16 :goto_a5c

    .line 3976
    .end local v1    # "serial":I
    .end local v2    # "challenge":Ljava/lang/String;
    :sswitch_45d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3978
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3979
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 3980
    goto/16 :goto_a5c

    .line 3967
    .end local v1    # "serial":I
    :sswitch_469
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3969
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3970
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 3971
    goto/16 :goto_a5c

    .line 3957
    .end local v1    # "serial":I
    :sswitch_475
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3959
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3960
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3961
    .local v2, "available":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 3962
    goto/16 :goto_a5c

    .line 3947
    .end local v1    # "serial":I
    .end local v2    # "available":Z
    :sswitch_485
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3949
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3950
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3951
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 3952
    goto/16 :goto_a5c

    .line 3938
    .end local v1    # "serial":I
    .end local v2    # "smsc":Ljava/lang/String;
    :sswitch_495
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3940
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3941
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getSmscAddress(I)V

    .line 3942
    goto/16 :goto_a5c

    .line 3929
    .end local v1    # "serial":I
    :sswitch_4a1
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3931
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3932
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 3933
    goto/16 :goto_a5c

    .line 3920
    .end local v1    # "serial":I
    :sswitch_4ad
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3922
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3923
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getDeviceIdentity(I)V

    .line 3924
    goto/16 :goto_a5c

    .line 3910
    .end local v1    # "serial":I
    :sswitch_4b9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3912
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3913
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3914
    .local v2, "index":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 3915
    goto/16 :goto_a5c

    .line 3899
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :sswitch_4c9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3901
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3902
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 3903
    .local v2, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3904
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 3905
    goto/16 :goto_a5c

    .line 3890
    .end local v1    # "serial":I
    .end local v2    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :sswitch_4dd
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3892
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3893
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCDMASubscription(I)V

    .line 3894
    goto/16 :goto_a5c

    .line 3880
    .end local v1    # "serial":I
    :sswitch_4e9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3882
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3883
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3884
    .local v2, "activate":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 3885
    goto/16 :goto_a5c

    .line 3870
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :sswitch_4f9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3872
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3873
    .restart local v1    # "serial":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3874
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 3875
    goto/16 :goto_a5c

    .line 3861
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :sswitch_509
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3863
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3864
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 3865
    goto/16 :goto_a5c

    .line 3851
    .end local v1    # "serial":I
    :sswitch_515
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3853
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3854
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3855
    .local v2, "activate":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 3856
    goto/16 :goto_a5c

    .line 3841
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :sswitch_525
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3843
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3844
    .restart local v1    # "serial":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3845
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 3846
    goto/16 :goto_a5c

    .line 3832
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :sswitch_535
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3834
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3835
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 3836
    goto/16 :goto_a5c

    .line 3821
    .end local v1    # "serial":I
    :sswitch_541
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3823
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3824
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 3825
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3826
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 3827
    goto/16 :goto_a5c

    .line 3810
    .end local v1    # "serial":I
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :sswitch_555
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3812
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3813
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 3814
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3815
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 3816
    goto/16 :goto_a5c

    .line 3798
    .end local v1    # "serial":I
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_569
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3800
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3801
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3802
    .local v2, "dtmf":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3803
    .local v3, "on":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 3804
    .local v4, "off":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 3805
    goto/16 :goto_a5c

    .line 3788
    .end local v1    # "serial":I
    .end local v2    # "dtmf":Ljava/lang/String;
    .end local v3    # "on":I
    .end local v4    # "off":I
    :sswitch_581
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3790
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3791
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3792
    .local v2, "featureCode":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 3793
    goto/16 :goto_a5c

    .line 3779
    .end local v1    # "serial":I
    .end local v2    # "featureCode":Ljava/lang/String;
    :sswitch_591
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3781
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3782
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 3783
    goto/16 :goto_a5c

    .line 3769
    .end local v1    # "serial":I
    :sswitch_59d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3771
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3772
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3773
    .local v2, "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 3774
    goto/16 :goto_a5c

    .line 3760
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :sswitch_5ad
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3762
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3763
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getTTYMode(I)V

    .line 3764
    goto/16 :goto_a5c

    .line 3750
    .end local v1    # "serial":I
    :sswitch_5b9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3752
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3753
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3754
    .local v2, "mode":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setTTYMode(II)V

    .line 3755
    goto/16 :goto_a5c

    .line 3741
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :sswitch_5c9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3743
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3744
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 3745
    goto/16 :goto_a5c

    .line 3731
    .end local v1    # "serial":I
    :sswitch_5d5
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3733
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3734
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3735
    .local v2, "type":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 3736
    goto/16 :goto_a5c

    .line 3721
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :sswitch_5e5
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3723
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3724
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3725
    .local v2, "cdmaSub":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 3726
    goto/16 :goto_a5c

    .line 3711
    .end local v1    # "serial":I
    .end local v2    # "cdmaSub":I
    :sswitch_5f5
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3713
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3714
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3715
    .local v2, "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 3716
    goto/16 :goto_a5c

    .line 3702
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :sswitch_605
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3704
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3705
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getNeighboringCids(I)V

    .line 3706
    goto/16 :goto_a5c

    .line 3693
    .end local v1    # "serial":I
    :sswitch_611
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3695
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3696
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 3697
    goto/16 :goto_a5c

    .line 3683
    .end local v1    # "serial":I
    :sswitch_61d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3685
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3686
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3687
    .local v2, "nwType":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 3688
    goto/16 :goto_a5c

    .line 3674
    .end local v1    # "serial":I
    .end local v2    # "nwType":I
    :sswitch_62d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3676
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3677
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->explicitCallTransfer(I)V

    .line 3678
    goto/16 :goto_a5c

    .line 3664
    .end local v1    # "serial":I
    :sswitch_639
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3666
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3667
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3668
    .local v2, "accept":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 3669
    goto/16 :goto_a5c

    .line 3654
    .end local v1    # "serial":I
    .end local v2    # "accept":Z
    :sswitch_649
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3656
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3657
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3658
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 3659
    goto/16 :goto_a5c

    .line 3644
    .end local v1    # "serial":I
    .end local v2    # "commandResponse":Ljava/lang/String;
    :sswitch_659
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3646
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3647
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3648
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 3649
    goto/16 :goto_a5c

    .line 3635
    .end local v1    # "serial":I
    .end local v2    # "command":Ljava/lang/String;
    :sswitch_669
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3637
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3638
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getAvailableBandModes(I)V

    .line 3639
    goto/16 :goto_a5c

    .line 3625
    .end local v1    # "serial":I
    :sswitch_675
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3627
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3628
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3629
    .local v2, "mode":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setBandMode(II)V

    .line 3630
    goto/16 :goto_a5c

    .line 3615
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :sswitch_685
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3617
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3618
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3619
    .local v2, "index":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 3620
    goto/16 :goto_a5c

    .line 3604
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :sswitch_695
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3606
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3607
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 3608
    .local v2, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3609
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 3610
    goto/16 :goto_a5c

    .line 3594
    .end local v1    # "serial":I
    .end local v2    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :sswitch_6a9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3596
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3597
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3598
    .local v2, "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 3599
    goto/16 :goto_a5c

    .line 3585
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :sswitch_6b9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3587
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3588
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getDataCallList(I)V

    .line 3589
    goto/16 :goto_a5c

    .line 3576
    .end local v1    # "serial":I
    :sswitch_6c5
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3578
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3579
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getClip(I)V

    .line 3580
    goto/16 :goto_a5c

    .line 3567
    .end local v1    # "serial":I
    :sswitch_6d1
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3569
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3570
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getMute(I)V

    .line 3571
    goto/16 :goto_a5c

    .line 3557
    .end local v1    # "serial":I
    :sswitch_6dd
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3559
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3560
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3561
    .restart local v2    # "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setMute(IZ)V

    .line 3562
    goto/16 :goto_a5c

    .line 3547
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :sswitch_6ed
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3549
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3550
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3551
    .local v2, "gsmIndex":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->separateConnection(II)V

    .line 3552
    goto/16 :goto_a5c

    .line 3538
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :sswitch_6fd
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3540
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3541
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getBasebandVersion(I)V

    .line 3542
    goto/16 :goto_a5c

    .line 3529
    .end local v1    # "serial":I
    :sswitch_709
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3531
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3532
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->stopDtmf(I)V

    .line 3533
    goto/16 :goto_a5c

    .line 3519
    .end local v1    # "serial":I
    :sswitch_715
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3521
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3522
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3523
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 3524
    goto/16 :goto_a5c

    .line 3510
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :sswitch_725
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3512
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3513
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getAvailableNetworks(I)V

    .line 3514
    goto/16 :goto_a5c

    .line 3500
    .end local v1    # "serial":I
    :sswitch_731
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3502
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3503
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3504
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 3505
    goto/16 :goto_a5c

    .line 3491
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :sswitch_741
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3493
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3494
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 3495
    goto/16 :goto_a5c

    .line 3482
    .end local v1    # "serial":I
    :sswitch_74d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3484
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3485
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 3486
    goto/16 :goto_a5c

    .line 3470
    .end local v1    # "serial":I
    :sswitch_759
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3472
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3473
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3474
    .local v2, "facility":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3475
    .local v3, "oldPassword":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3476
    .local v4, "newPassword":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3477
    goto/16 :goto_a5c

    .line 3456
    .end local v1    # "serial":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "oldPassword":Ljava/lang/String;
    .end local v4    # "newPassword":Ljava/lang/String;
    :sswitch_771
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3458
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3459
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3460
    .restart local v2    # "facility":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 3461
    .local v3, "lockState":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3462
    .local v4, "password":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 3463
    .local v5, "serviceClass":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3464
    .local v6, "appId":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 3465
    goto/16 :goto_a5c

    .line 3443
    .end local v1    # "serial":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "lockState":Z
    .end local v4    # "password":Ljava/lang/String;
    .end local v5    # "serviceClass":I
    .end local v6    # "appId":Ljava/lang/String;
    :sswitch_792
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3445
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3446
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3447
    .restart local v2    # "facility":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3448
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 3449
    .local v4, "serviceClass":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3450
    .local v5, "appId":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3451
    goto/16 :goto_a5c

    .line 3432
    .end local v1    # "serial":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    .end local v4    # "serviceClass":I
    .end local v5    # "appId":Ljava/lang/String;
    :sswitch_7af
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3434
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3435
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3436
    .local v2, "cid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 3437
    .local v3, "reasonRadioShutDown":Z
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 3438
    goto/16 :goto_a5c

    .line 3423
    .end local v1    # "serial":I
    .end local v2    # "cid":I
    .end local v3    # "reasonRadioShutDown":Z
    :sswitch_7c3
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3425
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3426
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->acceptCall(I)V

    .line 3427
    goto/16 :goto_a5c

    .line 3412
    .end local v1    # "serial":I
    :sswitch_7cf
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3414
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3415
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3416
    .local v2, "success":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3417
    .local v3, "cause":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 3418
    goto/16 :goto_a5c

    .line 3401
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :sswitch_7e3
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3403
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3404
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3405
    .local v2, "enable":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3406
    .local v3, "serviceClass":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCallWaiting(IZI)V

    .line 3407
    goto/16 :goto_a5c

    .line 3391
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :sswitch_7f7
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3393
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3394
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3395
    .local v2, "serviceClass":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCallWaiting(II)V

    .line 3396
    goto/16 :goto_a5c

    .line 3380
    .end local v1    # "serial":I
    .end local v2    # "serviceClass":I
    :sswitch_807
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3382
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3383
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3384
    .local v2, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3385
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3386
    goto/16 :goto_a5c

    .line 3369
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :sswitch_81b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3371
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3372
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3373
    .restart local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3374
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3375
    goto/16 :goto_a5c

    .line 3359
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :sswitch_82f
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3361
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3362
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3363
    .local v2, "status":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setClir(II)V

    .line 3364
    goto/16 :goto_a5c

    .line 3350
    .end local v1    # "serial":I
    .end local v2    # "status":I
    :sswitch_83f
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3352
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3353
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getClir(I)V

    .line 3354
    goto/16 :goto_a5c

    .line 3341
    .end local v1    # "serial":I
    :sswitch_84b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3343
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3344
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->cancelPendingUssd(I)V

    .line 3345
    goto/16 :goto_a5c

    .line 3331
    .end local v1    # "serial":I
    :sswitch_857
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3333
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3334
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3335
    .local v2, "ussd":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 3336
    goto/16 :goto_a5c

    .line 3320
    .end local v1    # "serial":I
    .end local v2    # "ussd":Ljava/lang/String;
    :sswitch_867
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3322
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3323
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 3324
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3325
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 3326
    goto/16 :goto_a5c

    .line 3305
    .end local v1    # "serial":I
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :sswitch_87b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3307
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3308
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3309
    .local v2, "radioTechnology":I
    new-instance v3, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 3310
    .local v3, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3311
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 3312
    .local v4, "modemCognitive":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    .line 3313
    .local v5, "roamingAllowed":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 3314
    .local v6, "isRoaming":Z
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 3315
    goto/16 :goto_a5c

    .line 3294
    .end local v1    # "serial":I
    .end local v2    # "radioTechnology":I
    .end local v3    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v4    # "modemCognitive":Z
    .end local v5    # "roamingAllowed":Z
    .end local v6    # "isRoaming":Z
    :sswitch_8a0
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3296
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3297
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3298
    .local v2, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3299
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3300
    goto/16 :goto_a5c

    .line 3283
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_8b4
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3285
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3286
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3287
    .restart local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3288
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3289
    goto/16 :goto_a5c

    .line 3273
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :sswitch_8c8
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3275
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3276
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3277
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 3278
    goto/16 :goto_a5c

    .line 3263
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :sswitch_8d8
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3265
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3266
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3267
    .local v2, "on":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setRadioPower(IZ)V

    .line 3268
    goto/16 :goto_a5c

    .line 3254
    .end local v1    # "serial":I
    .end local v2    # "on":Z
    :sswitch_8e8
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3256
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3257
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getOperator(I)V

    .line 3258
    goto/16 :goto_a5c

    .line 3245
    .end local v1    # "serial":I
    :sswitch_8f4
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3247
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3248
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getDataRegistrationState(I)V

    .line 3249
    goto/16 :goto_a5c

    .line 3236
    .end local v1    # "serial":I
    :sswitch_900
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3238
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3239
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 3240
    goto/16 :goto_a5c

    .line 3227
    .end local v1    # "serial":I
    :sswitch_90c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3229
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3230
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getSignalStrength(I)V

    .line 3231
    goto/16 :goto_a5c

    .line 3218
    .end local v1    # "serial":I
    :sswitch_918
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3220
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3221
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getLastCallFailCause(I)V

    .line 3222
    goto/16 :goto_a5c

    .line 3209
    .end local v1    # "serial":I
    :sswitch_924
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3211
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3212
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->rejectCall(I)V

    .line 3213
    goto/16 :goto_a5c

    .line 3200
    .end local v1    # "serial":I
    :sswitch_930
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3202
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3203
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->conference(I)V

    .line 3204
    goto/16 :goto_a5c

    .line 3191
    .end local v1    # "serial":I
    :sswitch_93c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3193
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3194
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 3195
    goto/16 :goto_a5c

    .line 3182
    .end local v1    # "serial":I
    :sswitch_948
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3184
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3185
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 3186
    goto/16 :goto_a5c

    .line 3173
    .end local v1    # "serial":I
    :sswitch_954
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3175
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3176
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 3177
    goto/16 :goto_a5c

    .line 3163
    .end local v1    # "serial":I
    :sswitch_960
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3165
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3166
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3167
    .local v2, "gsmIndex":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->hangup(II)V

    .line 3168
    goto/16 :goto_a5c

    .line 3153
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :sswitch_970
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3155
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3156
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3157
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 3158
    goto/16 :goto_a5c

    .line 3142
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    :sswitch_980
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3144
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3145
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 3146
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3147
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 3148
    goto/16 :goto_a5c

    .line 3133
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :sswitch_994
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3135
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3136
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCurrentCalls(I)V

    .line 3137
    goto/16 :goto_a5c

    .line 3123
    .end local v1    # "serial":I
    :sswitch_9a0
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3125
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3126
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3127
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 3128
    goto/16 :goto_a5c

    .line 3111
    .end local v1    # "serial":I
    .end local v2    # "netPin":Ljava/lang/String;
    :sswitch_9b0
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3113
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3114
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3115
    .local v2, "oldPin2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3116
    .local v3, "newPin2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3117
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_3/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3118
    goto/16 :goto_a5c

    .line 3099
    .end local v1    # "serial":I
    .end local v2    # "oldPin2":Ljava/lang/String;
    .end local v3    # "newPin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :sswitch_9c8
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3101
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3102
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3103
    .local v2, "oldPin":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3104
    .local v3, "newPin":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3105
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_3/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3106
    goto/16 :goto_a5c

    .line 3087
    .end local v1    # "serial":I
    .end local v2    # "oldPin":Ljava/lang/String;
    .end local v3    # "newPin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :sswitch_9e0
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3089
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3090
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3091
    .local v2, "puk2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3092
    .local v3, "pin2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3093
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_3/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3094
    goto :goto_a5c

    .line 3076
    .end local v1    # "serial":I
    .end local v2    # "puk2":Ljava/lang/String;
    .end local v3    # "pin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :sswitch_9f7
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3078
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3079
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3080
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3081
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 3082
    goto :goto_a5c

    .line 3064
    .end local v1    # "serial":I
    .end local v2    # "pin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_a0a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3066
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3067
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3068
    .local v2, "puk":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3069
    .local v3, "pin":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3070
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/radio/V1_3/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3071
    goto :goto_a5c

    .line 3053
    .end local v1    # "serial":I
    .end local v2    # "puk":Ljava/lang/String;
    .end local v3    # "pin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :sswitch_a21
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3055
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3056
    .restart local v1    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3057
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3058
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 3059
    goto :goto_a5c

    .line 3044
    .end local v1    # "serial":I
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :sswitch_a34
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3046
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3047
    .restart local v1    # "serial":I
    invoke-virtual {p0, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getIccCardStatus(I)V

    .line 3048
    goto :goto_a5c

    .line 3032
    .end local v1    # "serial":I
    :sswitch_a3f
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3034
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v1

    .line 3035
    .local v1, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v2

    .line 3036
    .local v2, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 3037
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3038
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3039
    nop

    .line 4625
    .end local v1    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    .end local v2    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    :goto_a5c
    return-void

    nop

    :sswitch_data_a5e
    .sparse-switch
        0x1 -> :sswitch_a3f
        0x2 -> :sswitch_a34
        0x3 -> :sswitch_a21
        0x4 -> :sswitch_a0a
        0x5 -> :sswitch_9f7
        0x6 -> :sswitch_9e0
        0x7 -> :sswitch_9c8
        0x8 -> :sswitch_9b0
        0x9 -> :sswitch_9a0
        0xa -> :sswitch_994
        0xb -> :sswitch_980
        0xc -> :sswitch_970
        0xd -> :sswitch_960
        0xe -> :sswitch_954
        0xf -> :sswitch_948
        0x10 -> :sswitch_93c
        0x11 -> :sswitch_930
        0x12 -> :sswitch_924
        0x13 -> :sswitch_918
        0x14 -> :sswitch_90c
        0x15 -> :sswitch_900
        0x16 -> :sswitch_8f4
        0x17 -> :sswitch_8e8
        0x18 -> :sswitch_8d8
        0x19 -> :sswitch_8c8
        0x1a -> :sswitch_8b4
        0x1b -> :sswitch_8a0
        0x1c -> :sswitch_87b
        0x1d -> :sswitch_867
        0x1e -> :sswitch_857
        0x1f -> :sswitch_84b
        0x20 -> :sswitch_83f
        0x21 -> :sswitch_82f
        0x22 -> :sswitch_81b
        0x23 -> :sswitch_807
        0x24 -> :sswitch_7f7
        0x25 -> :sswitch_7e3
        0x26 -> :sswitch_7cf
        0x27 -> :sswitch_7c3
        0x28 -> :sswitch_7af
        0x29 -> :sswitch_792
        0x2a -> :sswitch_771
        0x2b -> :sswitch_759
        0x2c -> :sswitch_74d
        0x2d -> :sswitch_741
        0x2e -> :sswitch_731
        0x2f -> :sswitch_725
        0x30 -> :sswitch_715
        0x31 -> :sswitch_709
        0x32 -> :sswitch_6fd
        0x33 -> :sswitch_6ed
        0x34 -> :sswitch_6dd
        0x35 -> :sswitch_6d1
        0x36 -> :sswitch_6c5
        0x37 -> :sswitch_6b9
        0x38 -> :sswitch_6a9
        0x39 -> :sswitch_695
        0x3a -> :sswitch_685
        0x3b -> :sswitch_675
        0x3c -> :sswitch_669
        0x3d -> :sswitch_659
        0x3e -> :sswitch_649
        0x3f -> :sswitch_639
        0x40 -> :sswitch_62d
        0x41 -> :sswitch_61d
        0x42 -> :sswitch_611
        0x43 -> :sswitch_605
        0x44 -> :sswitch_5f5
        0x45 -> :sswitch_5e5
        0x46 -> :sswitch_5d5
        0x47 -> :sswitch_5c9
        0x48 -> :sswitch_5b9
        0x49 -> :sswitch_5ad
        0x4a -> :sswitch_59d
        0x4b -> :sswitch_591
        0x4c -> :sswitch_581
        0x4d -> :sswitch_569
        0x4e -> :sswitch_555
        0x4f -> :sswitch_541
        0x50 -> :sswitch_535
        0x51 -> :sswitch_525
        0x52 -> :sswitch_515
        0x53 -> :sswitch_509
        0x54 -> :sswitch_4f9
        0x55 -> :sswitch_4e9
        0x56 -> :sswitch_4dd
        0x57 -> :sswitch_4c9
        0x58 -> :sswitch_4b9
        0x59 -> :sswitch_4ad
        0x5a -> :sswitch_4a1
        0x5b -> :sswitch_495
        0x5c -> :sswitch_485
        0x5d -> :sswitch_475
        0x5e -> :sswitch_469
        0x5f -> :sswitch_45d
        0x60 -> :sswitch_44d
        0x61 -> :sswitch_439
        0x62 -> :sswitch_429
        0x63 -> :sswitch_41d
        0x64 -> :sswitch_411
        0x65 -> :sswitch_401
        0x66 -> :sswitch_3e5
        0x67 -> :sswitch_3d9
        0x68 -> :sswitch_3c5
        0x69 -> :sswitch_3b1
        0x6a -> :sswitch_39d
        0x6b -> :sswitch_38d
        0x6c -> :sswitch_379
        0x6d -> :sswitch_369
        0x6e -> :sswitch_355
        0x6f -> :sswitch_345
        0x70 -> :sswitch_335
        0x71 -> :sswitch_321
        0x72 -> :sswitch_311
        0x73 -> :sswitch_305
        0x74 -> :sswitch_2ed
        0x75 -> :sswitch_2d9
        0x76 -> :sswitch_2cd
        0x77 -> :sswitch_2c1
        0x78 -> :sswitch_2ad
        0x79 -> :sswitch_299
        0x7a -> :sswitch_28d
        0x7b -> :sswitch_281
        0x7c -> :sswitch_275
        0x7d -> :sswitch_25d
        0x7e -> :sswitch_251
        0x7f -> :sswitch_23d
        0x80 -> :sswitch_22d
        0x81 -> :sswitch_21d
        0x82 -> :sswitch_215
        0x83 -> :sswitch_201
        0x84 -> :sswitch_1f1
        0x85 -> :sswitch_1dd
        0x86 -> :sswitch_1d1
        0x87 -> :sswitch_1bd
        0x88 -> :sswitch_1ad
        0x89 -> :sswitch_199
        0x8a -> :sswitch_189
        0x8b -> :sswitch_16c
        0x8c -> :sswitch_147
        0x8d -> :sswitch_116
        0x8e -> :sswitch_102
        0x8f -> :sswitch_ee
        0x90 -> :sswitch_de
        0x91 -> :sswitch_d2
        0xf43484e -> :sswitch_c0
        0xf444247 -> :sswitch_aa
        0xf445343 -> :sswitch_98
        0xf485348 -> :sswitch_43
        0xf494e54 -> :sswitch_3b
        0xf4c5444 -> :sswitch_39
        0xf504e47 -> :sswitch_2b
        0xf524546 -> :sswitch_19
        0xf535953 -> :sswitch_11
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 2983
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 3011
    const-string v0, "android.hardware.radio@1.3::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3012
    return-object p0

    .line 3014
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

    .line 3018
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 3019
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 2973
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 3023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 3005
    const/4 v0, 0x1

    return v0
.end method
