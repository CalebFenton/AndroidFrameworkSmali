.class public abstract Landroid/hardware/contexthub/V1_2/IContexthub$Stub;
.super Landroid/os/HwBinder;
.source "IContexthub.java"

# interfaces
.implements Landroid/hardware/contexthub/V1_2/IContexthub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/V1_2/IContexthub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 695
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 698
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

    .line 713
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 752
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 753
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 754
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 755
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 756
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

    .line 725
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
        0x35t
        0x0t
        -0x2dt
        -0x3ct
        -0x1et
        -0x2ct
        -0x62t
        -0x12t
        -0x2et
        -0xdt
        0x23t
        -0x6dt
        0x30t
        -0x5ft
        0x66t
        -0x42t
        -0x4et
        -0x25t
        0x2dt
        0x50t
        0x71t
        -0x48t
        0x4dt
        -0x64t
        0x73t
        -0x75t
        0x4t
        -0x74t
        0x2dt
        0x54t
        -0x5dt
        -0x27t
    .end array-data

    :array_38
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

    :array_4c
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

    .line 703
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.contexthub@1.0::IContexthub"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.contexthub@1.2::IContexthub"

    const-string v4, "android.hardware.contexthub@1.1::IContexthub"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 719
    const-string v0, "android.hardware.contexthub@1.2::IContexthub"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 740
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 762
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 764
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

    .line 792
    const-string v0, "android.hardware.contexthub@1.2::IContexthub"

    const-string v1, "android.hidl.base@1.0::IBase"

    const-string v2, "android.hardware.contexthub@1.0::IContexthub"

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_202

    goto/16 :goto_201

    .line 1056
    :sswitch_c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_2/IContexthub$Stub;->notifySyspropsChanged()V

    .line 1059
    goto/16 :goto_201

    .line 1045
    :sswitch_14
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_2/IContexthub$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1048
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1049
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1050
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1051
    goto/16 :goto_201

    .line 1035
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_26
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_2/IContexthub$Stub;->ping()V

    .line 1038
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1039
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1040
    goto/16 :goto_201

    .line 1030
    :sswitch_34
    goto/16 :goto_201

    .line 1022
    :sswitch_36
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_2/IContexthub$Stub;->setHALInstrumentation()V

    .line 1025
    goto/16 :goto_201

    .line 988
    :sswitch_3e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_2/IContexthub$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 991
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 993
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 995
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 996
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 997
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 998
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 999
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_65
    if-ge v4, v2, :cond_86

    .line 1001
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1002
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1004
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7e

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7e

    .line 1008
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1009
    nop

    .line 999
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    .line 1005
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7e
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1012
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_86
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1014
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1016
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1017
    goto/16 :goto_201

    .line 977
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_93
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 979
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_2/IContexthub$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 980
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 981
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 982
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 983
    goto/16 :goto_201

    .line 965
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 968
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 969
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/contexthub/V1_2/IContexthub$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 970
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 971
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 972
    goto/16 :goto_201

    .line 954
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bb
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_2/IContexthub$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 957
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 958
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 959
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 960
    goto/16 :goto_201

    .line 942
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cd
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 945
    .local v0, "setting":B
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 946
    .local v1, "newValue":B
    invoke-virtual {p0, v0, v1}, Landroid/hardware/contexthub/V1_2/IContexthub$Stub;->onSettingChanged_1_2(BB)V

    .line 947
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 948
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 949
    goto/16 :goto_201

    .line 929
    .end local v0    # "setting":B
    .end local v1    # "newValue":B
    :sswitch_e3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 931
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 932
    .local v0, "hubId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contexthub/V1_2/IContexthubCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/contexthub/V1_2/IContexthubCallback;

    move-result-object v1

    .line 933
    .local v1, "cb":Landroid/hardware/contexthub/V1_2/IContexthubCallback;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/contexthub/V1_2/IContexthub$Stub;->registerCallback_1_2(ILandroid/hardware/contexthub/V1_2/IContexthubCallback;)I

    move-result v2

    .line 934
    .local v2, "_hidl_out_result":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 935
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 936
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 937
    goto/16 :goto_201

    .line 914
    .end local v0    # "hubId":I
    .end local v1    # "cb":Landroid/hardware/contexthub/V1_2/IContexthubCallback;
    .end local v2    # "_hidl_out_result":I
    :sswitch_101
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    new-instance v0, Landroid/hardware/contexthub/V1_2/IContexthub$Stub$1;

    invoke-direct {v0, p0, p3}, Landroid/hardware/contexthub/V1_2/IContexthub$Stub$1;-><init>(Landroid/hardware/contexthub/V1_2/IContexthub$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/contexthub/V1_2/IContexthub$Stub;->getHubs_1_2(Landroid/hardware/contexthub/V1_2/IContexthub$getHubs_1_2Callback;)V

    .line 924
    goto/16 :goto_201

    .line 902
    :sswitch_10e
    const-string v0, "android.hardware.contexthub@1.1::IContexthub"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 905
    .local v0, "setting":B
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 906
    .local v1, "newValue":B
    invoke-virtual {p0, v0, v1}, Landroid/hardware/contexthub/V1_2/IContexthub$Stub;->onSettingChanged(BB)V

    .line 907
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 908
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 909
    goto/16 :goto_201

    .line 890
    .end local v0    # "setting":B
    .end local v1    # "newValue":B
    :sswitch_126
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 893
    .local v0, "hubId":I
    invoke-virtual {p0, v0}, Landroid/hardware/contexthub/V1_2/IContexthub$Stub;->queryApps(I)I

    move-result v1

    .line 894
    .local v1, "_hidl_out_result":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 895
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 896
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 897
    goto/16 :goto_201

    .line 876
    .end local v0    # "hubId":I
    .end local v1    # "_hidl_out_result":I
    :sswitch_13c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 879
    .restart local v0    # "hubId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v1

    .line 880
    .local v1, "appId":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 881
    .local v4, "transactionId":I
    invoke-virtual {p0, v0, v1, v2, v4}, Landroid/hardware/contexthub/V1_2/IContexthub$Stub;->disableNanoApp(IJI)I

    move-result v5

    .line 882
    .local v5, "_hidl_out_result":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 883
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 884
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 885
    goto/16 :goto_201

    .line 862
    .end local v0    # "hubId":I
    .end local v1    # "appId":J
    .end local v4    # "transactionId":I
    .end local v5    # "_hidl_out_result":I
    :sswitch_15a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 865
    .restart local v0    # "hubId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v1

    .line 866
    .restart local v1    # "appId":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 867
    .restart local v4    # "transactionId":I
    invoke-virtual {p0, v0, v1, v2, v4}, Landroid/hardware/contexthub/V1_2/IContexthub$Stub;->enableNanoApp(IJI)I

    move-result v5

    .line 868
    .restart local v5    # "_hidl_out_result":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 869
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 870
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 871
    goto/16 :goto_201

    .line 848
    .end local v0    # "hubId":I
    .end local v1    # "appId":J
    .end local v4    # "transactionId":I
    .end local v5    # "_hidl_out_result":I
    :sswitch_178
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 851
    .restart local v0    # "hubId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v1

    .line 852
    .restart local v1    # "appId":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 853
    .restart local v4    # "transactionId":I
    invoke-virtual {p0, v0, v1, v2, v4}, Landroid/hardware/contexthub/V1_2/IContexthub$Stub;->unloadNanoApp(IJI)I

    move-result v5

    .line 854
    .restart local v5    # "_hidl_out_result":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 855
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 856
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 857
    goto :goto_201

    .line 833
    .end local v0    # "hubId":I
    .end local v1    # "appId":J
    .end local v4    # "transactionId":I
    .end local v5    # "_hidl_out_result":I
    :sswitch_195
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 836
    .restart local v0    # "hubId":I
    new-instance v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;

    invoke-direct {v1}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;-><init>()V

    .line 837
    .local v1, "appBinary":Landroid/hardware/contexthub/V1_0/NanoAppBinary;
    invoke-virtual {v1, p2}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->readFromParcel(Landroid/os/HwParcel;)V

    .line 838
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 839
    .local v2, "transactionId":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/contexthub/V1_2/IContexthub$Stub;->loadNanoApp(ILandroid/hardware/contexthub/V1_0/NanoAppBinary;I)I

    move-result v4

    .line 840
    .local v4, "_hidl_out_result":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 841
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 842
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 843
    goto :goto_201

    .line 819
    .end local v0    # "hubId":I
    .end local v1    # "appBinary":Landroid/hardware/contexthub/V1_0/NanoAppBinary;
    .end local v2    # "transactionId":I
    .end local v4    # "_hidl_out_result":I
    :sswitch_1b6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 821
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 822
    .restart local v0    # "hubId":I
    new-instance v1, Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    invoke-direct {v1}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;-><init>()V

    .line 823
    .local v1, "msg":Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    invoke-virtual {v1, p2}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->readFromParcel(Landroid/os/HwParcel;)V

    .line 824
    invoke-virtual {p0, v0, v1}, Landroid/hardware/contexthub/V1_2/IContexthub$Stub;->sendMessageToHub(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)I

    move-result v2

    .line 825
    .local v2, "_hidl_out_result":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 826
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 827
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 828
    goto :goto_201

    .line 806
    .end local v0    # "hubId":I
    .end local v1    # "msg":Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    .end local v2    # "_hidl_out_result":I
    :sswitch_1d3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 809
    .restart local v0    # "hubId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contexthub/V1_0/IContexthubCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/contexthub/V1_0/IContexthubCallback;

    move-result-object v1

    .line 810
    .local v1, "cb":Landroid/hardware/contexthub/V1_0/IContexthubCallback;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/contexthub/V1_2/IContexthub$Stub;->registerCallback(ILandroid/hardware/contexthub/V1_0/IContexthubCallback;)I

    move-result v2

    .line 811
    .restart local v2    # "_hidl_out_result":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 812
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 813
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 814
    goto :goto_201

    .line 795
    .end local v0    # "hubId":I
    .end local v1    # "cb":Landroid/hardware/contexthub/V1_0/IContexthubCallback;
    .end local v2    # "_hidl_out_result":I
    :sswitch_1f0
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_2/IContexthub$Stub;->getHubs()Ljava/util/ArrayList;

    move-result-object v0

    .line 798
    .local v0, "_hidl_out_hubs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/ContextHub;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 799
    invoke-static {p3, v0}, Landroid/hardware/contexthub/V1_0/ContextHub;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 800
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 801
    nop

    .line 1068
    .end local v0    # "_hidl_out_hubs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/ContextHub;>;"
    :goto_201
    return-void

    :sswitch_data_202
    .sparse-switch
        0x1 -> :sswitch_1f0
        0x2 -> :sswitch_1d3
        0x3 -> :sswitch_1b6
        0x4 -> :sswitch_195
        0x5 -> :sswitch_178
        0x6 -> :sswitch_15a
        0x7 -> :sswitch_13c
        0x8 -> :sswitch_126
        0x9 -> :sswitch_10e
        0xa -> :sswitch_101
        0xb -> :sswitch_e3
        0xc -> :sswitch_cd
        0xf43484e -> :sswitch_bb
        0xf444247 -> :sswitch_a5
        0xf445343 -> :sswitch_93
        0xf485348 -> :sswitch_3e
        0xf494e54 -> :sswitch_36
        0xf4c5444 -> :sswitch_34
        0xf504e47 -> :sswitch_26
        0xf524546 -> :sswitch_14
        0xf535953 -> :sswitch_c
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 746
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 774
    const-string v0, "android.hardware.contexthub@1.2::IContexthub"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 775
    return-object p0

    .line 777
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

    .line 781
    invoke-virtual {p0, p1}, Landroid/hardware/contexthub/V1_2/IContexthub$Stub;->registerService(Ljava/lang/String;)V

    .line 782
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 736
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_2/IContexthub$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 768
    const/4 v0, 0x1

    return v0
.end method
