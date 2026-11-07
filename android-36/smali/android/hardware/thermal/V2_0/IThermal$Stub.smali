.class public abstract Landroid/hardware/thermal/V2_0/IThermal$Stub;
.super Landroid/os/HwBinder;
.source "IThermal.java"

# interfaces
.implements Landroid/hardware/thermal/V2_0/IThermal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/thermal/V2_0/IThermal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 689
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 692
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

    .line 706
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 744
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 745
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 746
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 747
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 748
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

    .line 718
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
        -0x43t
        -0x78t
        -0x4ct
        -0x7at
        0x39t
        -0x36t
        -0x1dt
        0x9t
        -0x7et
        0x2t
        0x10t
        0x24t
        -0x1et
        0x23t
        0x71t
        0x7t
        0x6ct
        0x76t
        -0x6t
        -0x58t
        0x46t
        0x6et
        0x38t
        -0x36t
        0x59t
        -0x7bt
        0x29t
        0x45t
        0x2bt
        0x61t
        -0x72t
        -0x52t
    .end array-data

    :array_34
    .array-data 1
        -0x69t
        -0xft
        -0x14t
        0x44t
        0x60t
        0x43t
        -0x44t
        0x5at
        0x66t
        0x45t
        -0x49t
        0x45t
        0x29t
        -0x5at
        0x27t
        0x64t
        -0x6at
        -0x43t
        -0x4dt
        0x5et
        0xat
        -0x12t
        0x41t
        -0x13t
        -0x5bt
        0x5ct
        -0x47t
        0x2dt
        0x51t
        -0x15t
        0x78t
        0x2t
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

    .line 697
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.thermal@1.0::IThermal"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.thermal@2.0::IThermal"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 712
    const-string v0, "android.hardware.thermal@2.0::IThermal"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 732
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 754
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 756
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

    .line 784
    const-string v0, "android.hardware.thermal@1.0::IThermal"

    const-string v1, "android.hardware.thermal@2.0::IThermal"

    const-string v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_16a

    goto/16 :goto_168

    .line 1011
    :sswitch_c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p0}, Landroid/hardware/thermal/V2_0/IThermal$Stub;->notifySyspropsChanged()V

    .line 1014
    goto/16 :goto_168

    .line 1000
    :sswitch_14
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {p0}, Landroid/hardware/thermal/V2_0/IThermal$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1003
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1004
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1005
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1006
    goto/16 :goto_168

    .line 990
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_26
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 992
    invoke-virtual {p0}, Landroid/hardware/thermal/V2_0/IThermal$Stub;->ping()V

    .line 993
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 994
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 995
    goto/16 :goto_168

    .line 985
    :sswitch_34
    goto/16 :goto_168

    .line 977
    :sswitch_36
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 979
    invoke-virtual {p0}, Landroid/hardware/thermal/V2_0/IThermal$Stub;->setHALInstrumentation()V

    .line 980
    goto/16 :goto_168

    .line 943
    :sswitch_3e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p0}, Landroid/hardware/thermal/V2_0/IThermal$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 946
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 948
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 950
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 951
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 952
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 953
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 954
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_65
    if-ge v4, v2, :cond_86

    .line 956
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 957
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 959
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7e

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7e

    .line 963
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 964
    nop

    .line 954
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    .line 960
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7e
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 967
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_86
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 969
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 971
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 972
    goto/16 :goto_168

    .line 932
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_93
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual {p0}, Landroid/hardware/thermal/V2_0/IThermal$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 935
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 936
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 938
    goto/16 :goto_168

    .line 920
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 922
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 923
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 924
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/thermal/V2_0/IThermal$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 925
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 926
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 927
    goto/16 :goto_168

    .line 909
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual {p0}, Landroid/hardware/thermal/V2_0/IThermal$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 912
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 913
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 914
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 915
    goto/16 :goto_168

    .line 892
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cd
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 895
    .local v0, "filterType":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 896
    .local v1, "type":I
    new-instance v2, Landroid/hardware/thermal/V2_0/IThermal$Stub$6;

    invoke-direct {v2, p0, p3}, Landroid/hardware/thermal/V2_0/IThermal$Stub$6;-><init>(Landroid/hardware/thermal/V2_0/IThermal$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/thermal/V2_0/IThermal$Stub;->getCurrentCoolingDevices(ZILandroid/hardware/thermal/V2_0/IThermal$getCurrentCoolingDevicesCallback;)V

    .line 904
    goto/16 :goto_168

    .line 880
    .end local v0    # "filterType":Z
    .end local v1    # "type":I
    :sswitch_e2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/thermal/V2_0/IThermalChangedCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/thermal/V2_0/IThermalChangedCallback;

    move-result-object v0

    .line 883
    .local v0, "callback":Landroid/hardware/thermal/V2_0/IThermalChangedCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/thermal/V2_0/IThermal$Stub;->unregisterThermalChangedCallback(Landroid/hardware/thermal/V2_0/IThermalChangedCallback;)Landroid/hardware/thermal/V1_0/ThermalStatus;

    move-result-object v1

    .line 884
    .local v1, "_hidl_out_status":Landroid/hardware/thermal/V1_0/ThermalStatus;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 885
    invoke-virtual {v1, p3}, Landroid/hardware/thermal/V1_0/ThermalStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 886
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 887
    goto :goto_168

    .line 866
    .end local v0    # "callback":Landroid/hardware/thermal/V2_0/IThermalChangedCallback;
    .end local v1    # "_hidl_out_status":Landroid/hardware/thermal/V1_0/ThermalStatus;
    :sswitch_fb
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/thermal/V2_0/IThermalChangedCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/thermal/V2_0/IThermalChangedCallback;

    move-result-object v0

    .line 869
    .restart local v0    # "callback":Landroid/hardware/thermal/V2_0/IThermalChangedCallback;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 870
    .local v1, "filterType":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 871
    .local v2, "type":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/thermal/V2_0/IThermal$Stub;->registerThermalChangedCallback(Landroid/hardware/thermal/V2_0/IThermalChangedCallback;ZI)Landroid/hardware/thermal/V1_0/ThermalStatus;

    move-result-object v4

    .line 872
    .local v4, "_hidl_out_status":Landroid/hardware/thermal/V1_0/ThermalStatus;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 873
    invoke-virtual {v4, p3}, Landroid/hardware/thermal/V1_0/ThermalStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 874
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 875
    goto :goto_168

    .line 849
    .end local v0    # "callback":Landroid/hardware/thermal/V2_0/IThermalChangedCallback;
    .end local v1    # "filterType":Z
    .end local v2    # "type":I
    .end local v4    # "_hidl_out_status":Landroid/hardware/thermal/V1_0/ThermalStatus;
    :sswitch_11c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 852
    .local v0, "filterType":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 853
    .local v1, "type":I
    new-instance v2, Landroid/hardware/thermal/V2_0/IThermal$Stub$5;

    invoke-direct {v2, p0, p3}, Landroid/hardware/thermal/V2_0/IThermal$Stub$5;-><init>(Landroid/hardware/thermal/V2_0/IThermal$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/thermal/V2_0/IThermal$Stub;->getTemperatureThresholds(ZILandroid/hardware/thermal/V2_0/IThermal$getTemperatureThresholdsCallback;)V

    .line 861
    goto :goto_168

    .line 832
    .end local v0    # "filterType":Z
    .end local v1    # "type":I
    :sswitch_130
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 835
    .restart local v0    # "filterType":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 836
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/thermal/V2_0/IThermal$Stub$4;

    invoke-direct {v2, p0, p3}, Landroid/hardware/thermal/V2_0/IThermal$Stub$4;-><init>(Landroid/hardware/thermal/V2_0/IThermal$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/thermal/V2_0/IThermal$Stub;->getCurrentTemperatures(ZILandroid/hardware/thermal/V2_0/IThermal$getCurrentTemperaturesCallback;)V

    .line 844
    goto :goto_168

    .line 817
    .end local v0    # "filterType":Z
    .end local v1    # "type":I
    :sswitch_144
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    new-instance v0, Landroid/hardware/thermal/V2_0/IThermal$Stub$3;

    invoke-direct {v0, p0, p3}, Landroid/hardware/thermal/V2_0/IThermal$Stub$3;-><init>(Landroid/hardware/thermal/V2_0/IThermal$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/thermal/V2_0/IThermal$Stub;->getCoolingDevices(Landroid/hardware/thermal/V1_0/IThermal$getCoolingDevicesCallback;)V

    .line 827
    goto :goto_168

    .line 802
    :sswitch_150
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    new-instance v0, Landroid/hardware/thermal/V2_0/IThermal$Stub$2;

    invoke-direct {v0, p0, p3}, Landroid/hardware/thermal/V2_0/IThermal$Stub$2;-><init>(Landroid/hardware/thermal/V2_0/IThermal$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/thermal/V2_0/IThermal$Stub;->getCpuUsages(Landroid/hardware/thermal/V1_0/IThermal$getCpuUsagesCallback;)V

    .line 812
    goto :goto_168

    .line 787
    :sswitch_15c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    new-instance v0, Landroid/hardware/thermal/V2_0/IThermal$Stub$1;

    invoke-direct {v0, p0, p3}, Landroid/hardware/thermal/V2_0/IThermal$Stub$1;-><init>(Landroid/hardware/thermal/V2_0/IThermal$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/thermal/V2_0/IThermal$Stub;->getTemperatures(Landroid/hardware/thermal/V1_0/IThermal$getTemperaturesCallback;)V

    .line 797
    nop

    .line 1023
    :goto_168
    return-void

    nop

    :sswitch_data_16a
    .sparse-switch
        0x1 -> :sswitch_15c
        0x2 -> :sswitch_150
        0x3 -> :sswitch_144
        0x4 -> :sswitch_130
        0x5 -> :sswitch_11c
        0x6 -> :sswitch_fb
        0x7 -> :sswitch_e2
        0x8 -> :sswitch_cd
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

    .line 738
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 766
    const-string v0, "android.hardware.thermal@2.0::IThermal"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 767
    return-object p0

    .line 769
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

    .line 773
    invoke-virtual {p0, p1}, Landroid/hardware/thermal/V2_0/IThermal$Stub;->registerService(Ljava/lang/String;)V

    .line 774
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 728
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/thermal/V2_0/IThermal$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 760
    const/4 v0, 0x1

    return v0
.end method
