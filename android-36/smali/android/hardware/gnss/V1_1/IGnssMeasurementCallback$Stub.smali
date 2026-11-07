.class public abstract Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$Stub;
.super Landroid/os/HwBinder;
.source "IGnssMeasurementCallback.java"

# interfaces
.implements Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 809
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 812
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

    .line 826
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 864
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 865
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 866
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 867
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 868
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

    .line 838
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
        0x7at
        -0x1et
        0x2t
        0x56t
        0x62t
        -0x1dt
        0xet
        0x69t
        0xat
        0x3ft
        -0x6t
        0x1ct
        0x65t
        -0x34t
        -0x69t
        0x2ct
        0x62t
        -0x69t
        -0x5at
        -0x7at
        0x38t
        0x17t
        0x40t
        0x55t
        -0x3dt
        0x3ct
        -0x41t
        0x3dt
        0x2et
        0x4bt
        -0x43t
        -0x24t
    .end array-data

    :array_34
    .array-data 1
        -0x43t
        -0x5ct
        -0x6et
        -0x14t
        0x40t
        0x21t
        -0x2ft
        0x38t
        0x69t
        -0x22t
        0x72t
        -0x43t
        0x6ft
        -0x74t
        0x15t
        -0x3bt
        -0x7dt
        0x7bt
        0x78t
        -0x2at
        0x13t
        0x6bt
        -0x73t
        0x53t
        -0x72t
        -0x2t
        -0x3bt
        0x32t
        0x5t
        0x73t
        -0x5bt
        -0x14t
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

    .line 817
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss@1.0::IGnssMeasurementCallback"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.gnss@1.1::IGnssMeasurementCallback"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 832
    const-string v0, "android.hardware.gnss@1.1::IGnssMeasurementCallback"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 852
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 874
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 876
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

    .line 904
    const-string v0, "android.hidl.base@1.0::IBase"

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_f4

    goto/16 :goto_f3

    .line 1033
    :sswitch_8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$Stub;->notifySyspropsChanged()V

    .line 1036
    goto/16 :goto_f3

    .line 1022
    :sswitch_10
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1025
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1026
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1027
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1028
    goto/16 :goto_f3

    .line 1012
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_22
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$Stub;->ping()V

    .line 1015
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1016
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1017
    goto/16 :goto_f3

    .line 1007
    :sswitch_30
    goto/16 :goto_f3

    .line 999
    :sswitch_32
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$Stub;->setHALInstrumentation()V

    .line 1002
    goto/16 :goto_f3

    .line 965
    :sswitch_3a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 968
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 970
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 972
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 973
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 974
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 975
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 976
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_61
    if-ge v4, v3, :cond_82

    .line 978
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 979
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 981
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7a

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7a

    .line 985
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 986
    nop

    .line 976
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_61

    .line 982
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7a
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 989
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_82
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 991
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 993
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 994
    goto :goto_f3

    .line 954
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_8e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 957
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 958
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 959
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 960
    goto :goto_f3

    .line 942
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_9f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 945
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 946
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 947
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 948
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 949
    goto :goto_f3

    .line 931
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 934
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 935
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 936
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 937
    goto :goto_f3

    .line 919
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_c5
    const-string v0, "android.hardware.gnss@1.1::IGnssMeasurementCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 921
    new-instance v0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;-><init>()V

    .line 922
    .local v0, "data":Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 923
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$Stub;->gnssMeasurementCb(Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;)V

    .line 924
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 925
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 926
    goto :goto_f3

    .line 907
    .end local v0    # "data":Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;
    :sswitch_dc
    const-string v0, "android.hardware.gnss@1.0::IGnssMeasurementCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    new-instance v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;-><init>()V

    .line 910
    .local v0, "data":Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 911
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$Stub;->GnssMeasurementCb(Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;)V

    .line 912
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 913
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 914
    nop

    .line 1045
    .end local v0    # "data":Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;
    :goto_f3
    return-void

    :sswitch_data_f4
    .sparse-switch
        0x1 -> :sswitch_dc
        0x2 -> :sswitch_c5
        0xf43484e -> :sswitch_b4
        0xf444247 -> :sswitch_9f
        0xf445343 -> :sswitch_8e
        0xf485348 -> :sswitch_3a
        0xf494e54 -> :sswitch_32
        0xf4c5444 -> :sswitch_30
        0xf504e47 -> :sswitch_22
        0xf524546 -> :sswitch_10
        0xf535953 -> :sswitch_8
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 858
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 886
    const-string v0, "android.hardware.gnss@1.1::IGnssMeasurementCallback"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 887
    return-object p0

    .line 889
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

    .line 893
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 894
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 848
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 880
    const/4 v0, 0x1

    return v0
.end method
