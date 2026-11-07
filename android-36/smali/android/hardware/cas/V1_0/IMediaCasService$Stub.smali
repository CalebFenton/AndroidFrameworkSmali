.class public abstract Landroid/hardware/cas/V1_0/IMediaCasService$Stub;
.super Landroid/os/HwBinder;
.source "IMediaCasService.java"

# interfaces
.implements Landroid/hardware/cas/V1_0/IMediaCasService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/cas/V1_0/IMediaCasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 551
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 554
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

    .line 567
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 604
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 605
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 606
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 607
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 608
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

    .line 579
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

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.cas@1.0::IMediaCasService"

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

    .line 573
    const-string v0, "android.hardware.cas@1.0::IMediaCasService"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 592
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 614
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 616
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

    .line 644
    const/4 v0, 0x0

    const-string v1, "android.hardware.cas@1.0::IMediaCasService"

    const-string v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_148

    goto/16 :goto_147

    .line 809
    :sswitch_b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->notifySyspropsChanged()V

    .line 812
    goto/16 :goto_147

    .line 798
    :sswitch_13
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 801
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 802
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 803
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 804
    goto/16 :goto_147

    .line 788
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_25
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->ping()V

    .line 791
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 792
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 793
    goto/16 :goto_147

    .line 783
    :sswitch_33
    goto/16 :goto_147

    .line 775
    :sswitch_35
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->setHALInstrumentation()V

    .line 778
    goto/16 :goto_147

    .line 741
    :sswitch_3d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 744
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 746
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 748
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 749
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 750
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 751
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 752
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_64
    if-ge v4, v2, :cond_85

    .line 754
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 755
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 757
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7d

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7d

    .line 761
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 762
    nop

    .line 752
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 758
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7d
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 765
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_85
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 767
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 769
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 770
    goto/16 :goto_147

    .line 730
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_92
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 734
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 735
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 736
    goto/16 :goto_147

    .line 718
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 721
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 722
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 723
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 724
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 725
    goto/16 :goto_147

    .line 707
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_ba
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 710
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 711
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 712
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 713
    goto/16 :goto_147

    .line 695
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cc
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 698
    .local v1, "CA_system_id":I
    invoke-virtual {p0, v1}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->createDescrambler(I)Landroid/hardware/cas/V1_0/IDescramblerBase;

    move-result-object v2

    .line 699
    .local v2, "_hidl_out_descrambler":Landroid/hardware/cas/V1_0/IDescramblerBase;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 700
    if-nez v2, :cond_dd

    goto :goto_e1

    :cond_dd
    invoke-interface {v2}, Landroid/hardware/cas/V1_0/IDescramblerBase;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    :goto_e1
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 701
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 702
    goto :goto_147

    .line 683
    .end local v1    # "CA_system_id":I
    .end local v2    # "_hidl_out_descrambler":Landroid/hardware/cas/V1_0/IDescramblerBase;
    :sswitch_e8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 686
    .local v0, "CA_system_id":I
    invoke-virtual {p0, v0}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->isDescramblerSupported(I)Z

    move-result v1

    .line 687
    .local v1, "_hidl_out_result":Z
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 688
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 689
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 690
    goto :goto_147

    .line 670
    .end local v0    # "CA_system_id":I
    .end local v1    # "_hidl_out_result":Z
    :sswitch_fd
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 673
    .local v1, "CA_system_id":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/cas/V1_0/ICasListener;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/cas/V1_0/ICasListener;

    move-result-object v2

    .line 674
    .local v2, "listener":Landroid/hardware/cas/V1_0/ICasListener;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->createPlugin(ILandroid/hardware/cas/V1_0/ICasListener;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v4

    .line 675
    .local v4, "_hidl_out_cas":Landroid/hardware/cas/V1_0/ICas;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 676
    if-nez v4, :cond_116

    goto :goto_11a

    :cond_116
    invoke-interface {v4}, Landroid/hardware/cas/V1_0/ICas;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    :goto_11a
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 677
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 678
    goto :goto_147

    .line 658
    .end local v1    # "CA_system_id":I
    .end local v2    # "listener":Landroid/hardware/cas/V1_0/ICasListener;
    .end local v4    # "_hidl_out_cas":Landroid/hardware/cas/V1_0/ICas;
    :sswitch_121
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 661
    .restart local v0    # "CA_system_id":I
    invoke-virtual {p0, v0}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->isSystemIdSupported(I)Z

    move-result v1

    .line 662
    .local v1, "_hidl_out_result":Z
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 663
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 664
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 665
    goto :goto_147

    .line 647
    .end local v0    # "CA_system_id":I
    .end local v1    # "_hidl_out_result":Z
    :sswitch_136
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->enumeratePlugins()Ljava/util/ArrayList;

    move-result-object v0

    .line 650
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 651
    invoke-static {p3, v0}, Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 652
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 653
    nop

    .line 821
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;>;"
    :goto_147
    return-void

    :sswitch_data_148
    .sparse-switch
        0x1 -> :sswitch_136
        0x2 -> :sswitch_121
        0x3 -> :sswitch_fd
        0x4 -> :sswitch_e8
        0x5 -> :sswitch_cc
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

    .line 598
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 626
    const-string v0, "android.hardware.cas@1.0::IMediaCasService"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 627
    return-object p0

    .line 629
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

    .line 633
    invoke-virtual {p0, p1}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->registerService(Ljava/lang/String;)V

    .line 634
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 588
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/IMediaCasService$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 620
    const/4 v0, 0x1

    return v0
.end method
