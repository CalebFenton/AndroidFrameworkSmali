.class public abstract Landroid/hardware/contexthub/V1_1/IContexthub$Stub;
.super Landroid/os/HwBinder;
.source "IContexthub.java"

# interfaces
.implements Landroid/hardware/contexthub/V1_1/IContexthub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/V1_1/IContexthub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 602
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 605
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

    .line 619
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 657
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 658
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 659
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 660
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 661
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

    .line 631
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
        -0x7dt
        0x51t
        -0x34t
        0x1t
        -0x12t
        -0x2ct
        -0x40t
        -0x4ct
        0x48t
        0x2dt
        -0x6bt
        0x72t
        -0x4bt
        -0x39t
        -0x23t
        -0x3t
        0x17t
        -0x79t
        0x4dt
        -0x72t
        -0x25t
        0x51t
        -0x2at
        0x76t
        0x1dt
        0x34t
        -0x7ft
        0x16t
        -0x4t
        -0x6ft
        -0x23t
        0x18t
    .end array-data

    :array_34
    .array-data 1
        -0x20t
        0x42t
        0x52t
        0x2dt
        -0x56t
        0x4bt
        0x5ft
        0x7ft
        -0x2ct
        -0x60t
        -0x5ft
        -0x65t
        -0x33t
        -0x53t
        -0x47t
        0x3ct
        0x79t
        -0x5ft
        -0x50t
        0x4ct
        0x9t
        -0x11t
        0x2ct
        -0x68t
        0x13t
        -0x5dt
        -0x58t
        -0x6ct
        0x10t
        0x32t
        -0xdt
        -0xbt
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

    .line 610
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.contexthub@1.0::IContexthub"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.contexthub@1.1::IContexthub"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 625
    const-string v0, "android.hardware.contexthub@1.1::IContexthub"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 645
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 667
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 669
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

    .line 697
    const-string v0, "android.hidl.base@1.0::IBase"

    const-string v1, "android.hardware.contexthub@1.0::IContexthub"

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_1c0

    goto/16 :goto_1be

    .line 921
    :sswitch_a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_1/IContexthub$Stub;->notifySyspropsChanged()V

    .line 924
    goto/16 :goto_1be

    .line 910
    :sswitch_12
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_1/IContexthub$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 913
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 914
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 915
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 916
    goto/16 :goto_1be

    .line 900
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_24
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 902
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_1/IContexthub$Stub;->ping()V

    .line 903
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 904
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 905
    goto/16 :goto_1be

    .line 895
    :sswitch_32
    goto/16 :goto_1be

    .line 887
    :sswitch_34
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_1/IContexthub$Stub;->setHALInstrumentation()V

    .line 890
    goto/16 :goto_1be

    .line 853
    :sswitch_3c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_1/IContexthub$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 856
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 858
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 860
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 861
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 862
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 863
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 864
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_63
    if-ge v4, v3, :cond_84

    .line 866
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 867
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 869
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7c

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7c

    .line 873
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 874
    nop

    .line 864
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 870
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 877
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_84
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 879
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 881
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 882
    goto/16 :goto_1be

    .line 842
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_91
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_1/IContexthub$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 845
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 846
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 847
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 848
    goto/16 :goto_1be

    .line 830
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 833
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 834
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/contexthub/V1_1/IContexthub$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 835
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 836
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 837
    goto/16 :goto_1be

    .line 819
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 821
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_1/IContexthub$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 822
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 823
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 824
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 825
    goto/16 :goto_1be

    .line 807
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cb
    const-string v0, "android.hardware.contexthub@1.1::IContexthub"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 810
    .local v0, "setting":B
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 811
    .local v1, "newValue":B
    invoke-virtual {p0, v0, v1}, Landroid/hardware/contexthub/V1_1/IContexthub$Stub;->onSettingChanged(BB)V

    .line 812
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 813
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 814
    goto/16 :goto_1be

    .line 795
    .end local v0    # "setting":B
    .end local v1    # "newValue":B
    :sswitch_e3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 798
    .local v0, "hubId":I
    invoke-virtual {p0, v0}, Landroid/hardware/contexthub/V1_1/IContexthub$Stub;->queryApps(I)I

    move-result v1

    .line 799
    .local v1, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 800
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 801
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 802
    goto/16 :goto_1be

    .line 781
    .end local v0    # "hubId":I
    .end local v1    # "_hidl_out_result":I
    :sswitch_f9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 784
    .restart local v0    # "hubId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 785
    .local v3, "appId":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 786
    .local v1, "transactionId":I
    invoke-virtual {p0, v0, v3, v4, v1}, Landroid/hardware/contexthub/V1_1/IContexthub$Stub;->disableNanoApp(IJI)I

    move-result v5

    .line 787
    .local v5, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 788
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 789
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 790
    goto/16 :goto_1be

    .line 767
    .end local v0    # "hubId":I
    .end local v1    # "transactionId":I
    .end local v3    # "appId":J
    .end local v5    # "_hidl_out_result":I
    :sswitch_117
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 770
    .restart local v0    # "hubId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 771
    .restart local v3    # "appId":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 772
    .restart local v1    # "transactionId":I
    invoke-virtual {p0, v0, v3, v4, v1}, Landroid/hardware/contexthub/V1_1/IContexthub$Stub;->enableNanoApp(IJI)I

    move-result v5

    .line 773
    .restart local v5    # "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 774
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 775
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 776
    goto/16 :goto_1be

    .line 753
    .end local v0    # "hubId":I
    .end local v1    # "transactionId":I
    .end local v3    # "appId":J
    .end local v5    # "_hidl_out_result":I
    :sswitch_135
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 756
    .restart local v0    # "hubId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 757
    .restart local v3    # "appId":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 758
    .restart local v1    # "transactionId":I
    invoke-virtual {p0, v0, v3, v4, v1}, Landroid/hardware/contexthub/V1_1/IContexthub$Stub;->unloadNanoApp(IJI)I

    move-result v5

    .line 759
    .restart local v5    # "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 760
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 761
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 762
    goto :goto_1be

    .line 738
    .end local v0    # "hubId":I
    .end local v1    # "transactionId":I
    .end local v3    # "appId":J
    .end local v5    # "_hidl_out_result":I
    :sswitch_152
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 741
    .restart local v0    # "hubId":I
    new-instance v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;

    invoke-direct {v1}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;-><init>()V

    .line 742
    .local v1, "appBinary":Landroid/hardware/contexthub/V1_0/NanoAppBinary;
    invoke-virtual {v1, p2}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->readFromParcel(Landroid/os/HwParcel;)V

    .line 743
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 744
    .local v3, "transactionId":I
    invoke-virtual {p0, v0, v1, v3}, Landroid/hardware/contexthub/V1_1/IContexthub$Stub;->loadNanoApp(ILandroid/hardware/contexthub/V1_0/NanoAppBinary;I)I

    move-result v4

    .line 745
    .local v4, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 746
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 747
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 748
    goto :goto_1be

    .line 724
    .end local v0    # "hubId":I
    .end local v1    # "appBinary":Landroid/hardware/contexthub/V1_0/NanoAppBinary;
    .end local v3    # "transactionId":I
    .end local v4    # "_hidl_out_result":I
    :sswitch_173
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 727
    .restart local v0    # "hubId":I
    new-instance v1, Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    invoke-direct {v1}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;-><init>()V

    .line 728
    .local v1, "msg":Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    invoke-virtual {v1, p2}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->readFromParcel(Landroid/os/HwParcel;)V

    .line 729
    invoke-virtual {p0, v0, v1}, Landroid/hardware/contexthub/V1_1/IContexthub$Stub;->sendMessageToHub(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)I

    move-result v3

    .line 730
    .local v3, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 731
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 732
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 733
    goto :goto_1be

    .line 711
    .end local v0    # "hubId":I
    .end local v1    # "msg":Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    .end local v3    # "_hidl_out_result":I
    :sswitch_190
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 714
    .restart local v0    # "hubId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contexthub/V1_0/IContexthubCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/contexthub/V1_0/IContexthubCallback;

    move-result-object v1

    .line 715
    .local v1, "cb":Landroid/hardware/contexthub/V1_0/IContexthubCallback;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/contexthub/V1_1/IContexthub$Stub;->registerCallback(ILandroid/hardware/contexthub/V1_0/IContexthubCallback;)I

    move-result v3

    .line 716
    .restart local v3    # "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 717
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 718
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 719
    goto :goto_1be

    .line 700
    .end local v0    # "hubId":I
    .end local v1    # "cb":Landroid/hardware/contexthub/V1_0/IContexthubCallback;
    .end local v3    # "_hidl_out_result":I
    :sswitch_1ad
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_1/IContexthub$Stub;->getHubs()Ljava/util/ArrayList;

    move-result-object v0

    .line 703
    .local v0, "_hidl_out_hubs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/ContextHub;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 704
    invoke-static {p3, v0}, Landroid/hardware/contexthub/V1_0/ContextHub;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 705
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 706
    nop

    .line 933
    .end local v0    # "_hidl_out_hubs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/ContextHub;>;"
    :goto_1be
    return-void

    nop

    :sswitch_data_1c0
    .sparse-switch
        0x1 -> :sswitch_1ad
        0x2 -> :sswitch_190
        0x3 -> :sswitch_173
        0x4 -> :sswitch_152
        0x5 -> :sswitch_135
        0x6 -> :sswitch_117
        0x7 -> :sswitch_f9
        0x8 -> :sswitch_e3
        0x9 -> :sswitch_cb
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

    .line 651
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 679
    const-string v0, "android.hardware.contexthub@1.1::IContexthub"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 680
    return-object p0

    .line 682
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

    .line 686
    invoke-virtual {p0, p1}, Landroid/hardware/contexthub/V1_1/IContexthub$Stub;->registerService(Ljava/lang/String;)V

    .line 687
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 641
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_1/IContexthub$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 673
    const/4 v0, 0x1

    return v0
.end method
