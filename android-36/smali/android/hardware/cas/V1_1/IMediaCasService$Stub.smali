.class public abstract Landroid/hardware/cas/V1_1/IMediaCasService$Stub;
.super Landroid/os/HwBinder;
.source "IMediaCasService.java"

# interfaces
.implements Landroid/hardware/cas/V1_1/IMediaCasService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/cas/V1_1/IMediaCasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 542
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 545
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

    .line 559
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 597
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 598
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 599
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 600
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 601
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

    .line 571
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
        -0x21t
        -0x6t
        -0x33t
        -0x42t
        0xbt
        -0x31t
        -0x7ct
        0x43t
        0x1t
        0x3dt
        -0x1bt
        -0x43t
        -0x3bt
        0x6at
        -0x7dt
        0x47t
        -0x66t
        -0x27t
        0x79t
        -0x2ct
        -0x6ft
        -0x62t
        -0x2ft
        0x5at
        0x55t
        -0x7bt
        0x53t
        -0x61t
        0x46t
        0x9t
        0x1ft
        0x7t
    .end array-data

    :array_34
    .array-data 1
        -0x7at
        -0x46t
        -0x64t
        0x3t
        -0x69t
        -0x75t
        0x79t
        -0x59t
        0x42t
        -0x17t
        -0x70t
        0x42t
        0xbt
        -0x3bt
        -0x32t
        -0x30t
        0x67t
        0x3dt
        0x25t
        -0x57t
        0x39t
        -0x8t
        0x25t
        0x72t
        -0x67t
        0x6bt
        -0x11t
        -0x6et
        0x62t
        0x1et
        0x20t
        0x14t
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

    .line 550
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.cas@1.0::IMediaCasService"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.cas@1.1::IMediaCasService"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 565
    const-string v0, "android.hardware.cas@1.1::IMediaCasService"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 585
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 607
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 609
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

    .line 637
    const/4 v0, 0x0

    const-string v1, "android.hardware.cas@1.0::IMediaCasService"

    const-string v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_170

    goto/16 :goto_16e

    .line 815
    :sswitch_b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p0}, Landroid/hardware/cas/V1_1/IMediaCasService$Stub;->notifySyspropsChanged()V

    .line 818
    goto/16 :goto_16e

    .line 804
    :sswitch_13
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 806
    invoke-virtual {p0}, Landroid/hardware/cas/V1_1/IMediaCasService$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 807
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 808
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 809
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 810
    goto/16 :goto_16e

    .line 794
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_25
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 796
    invoke-virtual {p0}, Landroid/hardware/cas/V1_1/IMediaCasService$Stub;->ping()V

    .line 797
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 798
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 799
    goto/16 :goto_16e

    .line 789
    :sswitch_33
    goto/16 :goto_16e

    .line 781
    :sswitch_35
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p0}, Landroid/hardware/cas/V1_1/IMediaCasService$Stub;->setHALInstrumentation()V

    .line 784
    goto/16 :goto_16e

    .line 747
    :sswitch_3d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p0}, Landroid/hardware/cas/V1_1/IMediaCasService$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 750
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 752
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 754
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 755
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 756
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 757
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 758
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_64
    if-ge v4, v2, :cond_85

    .line 760
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 761
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 763
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7d

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7d

    .line 767
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 768
    nop

    .line 758
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 764
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7d
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 771
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_85
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 773
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 775
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 776
    goto/16 :goto_16e

    .line 736
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_92
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual {p0}, Landroid/hardware/cas/V1_1/IMediaCasService$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 739
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 740
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 742
    goto/16 :goto_16e

    .line 724
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 727
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 728
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/cas/V1_1/IMediaCasService$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 729
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 730
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 731
    goto/16 :goto_16e

    .line 713
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_ba
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p0}, Landroid/hardware/cas/V1_1/IMediaCasService$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 716
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 717
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 718
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 719
    goto/16 :goto_16e

    .line 700
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cc
    const-string v1, "android.hardware.cas@1.1::IMediaCasService"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 703
    .local v1, "caSystemId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/cas/V1_1/ICasListener;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/cas/V1_1/ICasListener;

    move-result-object v2

    .line 704
    .local v2, "listener":Landroid/hardware/cas/V1_1/ICasListener;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/cas/V1_1/IMediaCasService$Stub;->createPluginExt(ILandroid/hardware/cas/V1_1/ICasListener;)Landroid/hardware/cas/V1_1/ICas;

    move-result-object v4

    .line 705
    .local v4, "_hidl_out_cas":Landroid/hardware/cas/V1_1/ICas;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 706
    if-nez v4, :cond_e7

    goto :goto_eb

    :cond_e7
    invoke-interface {v4}, Landroid/hardware/cas/V1_1/ICas;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    :goto_eb
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 707
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 708
    goto/16 :goto_16e

    .line 688
    .end local v1    # "caSystemId":I
    .end local v2    # "listener":Landroid/hardware/cas/V1_1/ICasListener;
    .end local v4    # "_hidl_out_cas":Landroid/hardware/cas/V1_1/ICas;
    :sswitch_f3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 691
    .local v1, "CA_system_id":I
    invoke-virtual {p0, v1}, Landroid/hardware/cas/V1_1/IMediaCasService$Stub;->createDescrambler(I)Landroid/hardware/cas/V1_0/IDescramblerBase;

    move-result-object v2

    .line 692
    .local v2, "_hidl_out_descrambler":Landroid/hardware/cas/V1_0/IDescramblerBase;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 693
    if-nez v2, :cond_104

    goto :goto_108

    :cond_104
    invoke-interface {v2}, Landroid/hardware/cas/V1_0/IDescramblerBase;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    :goto_108
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 694
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 695
    goto :goto_16e

    .line 676
    .end local v1    # "CA_system_id":I
    .end local v2    # "_hidl_out_descrambler":Landroid/hardware/cas/V1_0/IDescramblerBase;
    :sswitch_10f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 679
    .local v0, "CA_system_id":I
    invoke-virtual {p0, v0}, Landroid/hardware/cas/V1_1/IMediaCasService$Stub;->isDescramblerSupported(I)Z

    move-result v1

    .line 680
    .local v1, "_hidl_out_result":Z
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 681
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 682
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 683
    goto :goto_16e

    .line 663
    .end local v0    # "CA_system_id":I
    .end local v1    # "_hidl_out_result":Z
    :sswitch_124
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 666
    .local v1, "CA_system_id":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/cas/V1_0/ICasListener;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/cas/V1_0/ICasListener;

    move-result-object v2

    .line 667
    .local v2, "listener":Landroid/hardware/cas/V1_0/ICasListener;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/cas/V1_1/IMediaCasService$Stub;->createPlugin(ILandroid/hardware/cas/V1_0/ICasListener;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v4

    .line 668
    .local v4, "_hidl_out_cas":Landroid/hardware/cas/V1_0/ICas;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 669
    if-nez v4, :cond_13d

    goto :goto_141

    :cond_13d
    invoke-interface {v4}, Landroid/hardware/cas/V1_0/ICas;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    :goto_141
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 670
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 671
    goto :goto_16e

    .line 651
    .end local v1    # "CA_system_id":I
    .end local v2    # "listener":Landroid/hardware/cas/V1_0/ICasListener;
    .end local v4    # "_hidl_out_cas":Landroid/hardware/cas/V1_0/ICas;
    :sswitch_148
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 654
    .restart local v0    # "CA_system_id":I
    invoke-virtual {p0, v0}, Landroid/hardware/cas/V1_1/IMediaCasService$Stub;->isSystemIdSupported(I)Z

    move-result v1

    .line 655
    .local v1, "_hidl_out_result":Z
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 656
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 657
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 658
    goto :goto_16e

    .line 640
    .end local v0    # "CA_system_id":I
    .end local v1    # "_hidl_out_result":Z
    :sswitch_15d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0}, Landroid/hardware/cas/V1_1/IMediaCasService$Stub;->enumeratePlugins()Ljava/util/ArrayList;

    move-result-object v0

    .line 643
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 644
    invoke-static {p3, v0}, Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 645
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 646
    nop

    .line 827
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;>;"
    :goto_16e
    return-void

    nop

    :sswitch_data_170
    .sparse-switch
        0x1 -> :sswitch_15d
        0x2 -> :sswitch_148
        0x3 -> :sswitch_124
        0x4 -> :sswitch_10f
        0x5 -> :sswitch_f3
        0x6 -> :sswitch_cc
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

    .line 591
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 619
    const-string v0, "android.hardware.cas@1.1::IMediaCasService"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 620
    return-object p0

    .line 622
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

    .line 626
    invoke-virtual {p0, p1}, Landroid/hardware/cas/V1_1/IMediaCasService$Stub;->registerService(Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 581
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/cas/V1_1/IMediaCasService$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 613
    const/4 v0, 0x1

    return v0
.end method
