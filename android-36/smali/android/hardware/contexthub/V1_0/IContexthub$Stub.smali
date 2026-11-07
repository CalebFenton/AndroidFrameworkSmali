.class public abstract Landroid/hardware/contexthub/V1_0/IContexthub$Stub;
.super Landroid/os/HwBinder;
.source "IContexthub.java"

# interfaces
.implements Landroid/hardware/contexthub/V1_0/IContexthub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/V1_0/IContexthub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 718
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 721
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

    .line 734
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 771
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 772
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 773
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 774
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 775
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

    .line 746
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

    .line 726
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.contexthub@1.0::IContexthub"

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

    .line 740
    const-string v0, "android.hardware.contexthub@1.0::IContexthub"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 759
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 781
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 783
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

    .line 811
    const-string v0, "android.hidl.base@1.0::IBase"

    const-string v1, "android.hardware.contexthub@1.0::IContexthub"

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_1a8

    goto/16 :goto_1a6

    .line 1023
    :sswitch_a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->notifySyspropsChanged()V

    .line 1026
    goto/16 :goto_1a6

    .line 1012
    :sswitch_12
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1015
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1016
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1017
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1018
    goto/16 :goto_1a6

    .line 1002
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_24
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->ping()V

    .line 1005
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1006
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1007
    goto/16 :goto_1a6

    .line 997
    :sswitch_32
    goto/16 :goto_1a6

    .line 989
    :sswitch_34
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->setHALInstrumentation()V

    .line 992
    goto/16 :goto_1a6

    .line 955
    :sswitch_3c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 958
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 960
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 962
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 963
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 964
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 965
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 966
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_63
    if-ge v4, v3, :cond_84

    .line 968
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 969
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 971
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7c

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7c

    .line 975
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 976
    nop

    .line 966
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 972
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 979
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_84
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 981
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 983
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 984
    goto/16 :goto_1a6

    .line 944
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_91
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 946
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 947
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 948
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 949
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 950
    goto/16 :goto_1a6

    .line 932
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 935
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 936
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 937
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 938
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 939
    goto/16 :goto_1a6

    .line 921
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 924
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 925
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 926
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 927
    goto/16 :goto_1a6

    .line 909
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cb
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 912
    .local v0, "hubId":I
    invoke-virtual {p0, v0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->queryApps(I)I

    move-result v1

    .line 913
    .local v1, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 914
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 915
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 916
    goto/16 :goto_1a6

    .line 895
    .end local v0    # "hubId":I
    .end local v1    # "_hidl_out_result":I
    :sswitch_e1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 898
    .restart local v0    # "hubId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 899
    .local v3, "appId":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 900
    .local v1, "transactionId":I
    invoke-virtual {p0, v0, v3, v4, v1}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->disableNanoApp(IJI)I

    move-result v5

    .line 901
    .local v5, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 902
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 903
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 904
    goto/16 :goto_1a6

    .line 881
    .end local v0    # "hubId":I
    .end local v1    # "transactionId":I
    .end local v3    # "appId":J
    .end local v5    # "_hidl_out_result":I
    :sswitch_ff
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 884
    .restart local v0    # "hubId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 885
    .restart local v3    # "appId":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 886
    .restart local v1    # "transactionId":I
    invoke-virtual {p0, v0, v3, v4, v1}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->enableNanoApp(IJI)I

    move-result v5

    .line 887
    .restart local v5    # "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 888
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 889
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 890
    goto/16 :goto_1a6

    .line 867
    .end local v0    # "hubId":I
    .end local v1    # "transactionId":I
    .end local v3    # "appId":J
    .end local v5    # "_hidl_out_result":I
    :sswitch_11d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 870
    .restart local v0    # "hubId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 871
    .restart local v3    # "appId":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 872
    .restart local v1    # "transactionId":I
    invoke-virtual {p0, v0, v3, v4, v1}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->unloadNanoApp(IJI)I

    move-result v5

    .line 873
    .restart local v5    # "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 874
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 875
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 876
    goto :goto_1a6

    .line 852
    .end local v0    # "hubId":I
    .end local v1    # "transactionId":I
    .end local v3    # "appId":J
    .end local v5    # "_hidl_out_result":I
    :sswitch_13a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 854
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 855
    .restart local v0    # "hubId":I
    new-instance v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;

    invoke-direct {v1}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;-><init>()V

    .line 856
    .local v1, "appBinary":Landroid/hardware/contexthub/V1_0/NanoAppBinary;
    invoke-virtual {v1, p2}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->readFromParcel(Landroid/os/HwParcel;)V

    .line 857
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 858
    .local v3, "transactionId":I
    invoke-virtual {p0, v0, v1, v3}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->loadNanoApp(ILandroid/hardware/contexthub/V1_0/NanoAppBinary;I)I

    move-result v4

    .line 859
    .local v4, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 860
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 861
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 862
    goto :goto_1a6

    .line 838
    .end local v0    # "hubId":I
    .end local v1    # "appBinary":Landroid/hardware/contexthub/V1_0/NanoAppBinary;
    .end local v3    # "transactionId":I
    .end local v4    # "_hidl_out_result":I
    :sswitch_15b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 841
    .restart local v0    # "hubId":I
    new-instance v1, Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    invoke-direct {v1}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;-><init>()V

    .line 842
    .local v1, "msg":Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    invoke-virtual {v1, p2}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->readFromParcel(Landroid/os/HwParcel;)V

    .line 843
    invoke-virtual {p0, v0, v1}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->sendMessageToHub(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)I

    move-result v3

    .line 844
    .local v3, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 845
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 846
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 847
    goto :goto_1a6

    .line 825
    .end local v0    # "hubId":I
    .end local v1    # "msg":Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    .end local v3    # "_hidl_out_result":I
    :sswitch_178
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 828
    .restart local v0    # "hubId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contexthub/V1_0/IContexthubCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/contexthub/V1_0/IContexthubCallback;

    move-result-object v1

    .line 829
    .local v1, "cb":Landroid/hardware/contexthub/V1_0/IContexthubCallback;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->registerCallback(ILandroid/hardware/contexthub/V1_0/IContexthubCallback;)I

    move-result v3

    .line 830
    .restart local v3    # "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 831
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 832
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 833
    goto :goto_1a6

    .line 814
    .end local v0    # "hubId":I
    .end local v1    # "cb":Landroid/hardware/contexthub/V1_0/IContexthubCallback;
    .end local v3    # "_hidl_out_result":I
    :sswitch_195
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->getHubs()Ljava/util/ArrayList;

    move-result-object v0

    .line 817
    .local v0, "_hidl_out_hubs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/ContextHub;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 818
    invoke-static {p3, v0}, Landroid/hardware/contexthub/V1_0/ContextHub;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 819
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 820
    nop

    .line 1035
    .end local v0    # "_hidl_out_hubs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/ContextHub;>;"
    :goto_1a6
    return-void

    nop

    :sswitch_data_1a8
    .sparse-switch
        0x1 -> :sswitch_195
        0x2 -> :sswitch_178
        0x3 -> :sswitch_15b
        0x4 -> :sswitch_13a
        0x5 -> :sswitch_11d
        0x6 -> :sswitch_ff
        0x7 -> :sswitch_e1
        0x8 -> :sswitch_cb
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

    .line 765
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 793
    const-string v0, "android.hardware.contexthub@1.0::IContexthub"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 794
    return-object p0

    .line 796
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

    .line 800
    invoke-virtual {p0, p1}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->registerService(Ljava/lang/String;)V

    .line 801
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 755
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 787
    const/4 v0, 0x1

    return v0
.end method
