.class public abstract Landroid/hardware/gnss/V2_1/IGnssConfiguration$Stub;
.super Landroid/os/HwBinder;
.source "IGnssConfiguration.java"

# interfaces
.implements Landroid/hardware/gnss/V2_1/IGnssConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_1/IGnssConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 754
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 757
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

    .line 773
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 813
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 814
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 815
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 816
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 817
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

    .line 785
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
        0x73t
        0x7dt
        0x75t
        0x0t
        0x17t
        0x73t
        -0x71t
        0x7t
        0x53t
        -0x2ft
        0x3bt
        -0x60t
        0x1at
        0x33t
        0x10t
        -0x20t
        0x16t
        0x1ft
        0x29t
        0x4bt
        -0x76t
        -0x18t
        0xbt
        0x3ft
        -0x2at
        0x3et
        -0x56t
        0x22t
        0x7et
        -0x63t
        -0x64t
        0x66t
    .end array-data

    :array_3e
    .array-data 1
        -0x14t
        -0x37t
        0x66t
        -0x3at
        -0x75t
        -0x23t
        -0x43t
        -0x6bt
        -0x38t
        -0x26t
        -0x19t
        -0x7et
        -0x48t
        0x42t
        0x4t
        -0x31t
        0x1t
        -0x39t
        0x57t
        0x34t
        0x67t
        0x5et
        -0x79t
        0x69t
        -0x6at
        0x3ft
        0x3bt
        0x51t
        0x6t
        -0x14t
        0x12t
        -0x75t
    .end array-data

    :array_52
    .array-data 1
        0x3ct
        0x51t
        -0x7dt
        -0x29t
        0x50t
        0x60t
        0x10t
        -0x42t
        0x57t
        -0x20t
        -0x9t
        0x48t
        -0x1dt
        0x64t
        0xft
        -0x3et
        -0x22t
        -0x2ft
        -0x46t
        -0x6bt
        0x57t
        -0x7ct
        -0x4at
        0x25t
        0x6bt
        -0x5ct
        0x27t
        -0xct
        -0x3dt
        -0x67t
        0x59t
        0x1ct
    .end array-data

    :array_66
    .array-data 1
        -0x5t
        -0x6et
        -0x1et
        -0x4ct
        0xft
        -0x72t
        -0x63t
        0x49t
        0x4et
        -0x71t
        -0x2dt
        -0x4ct
        -0x54t
        0x18t
        0x49t
        -0x66t
        0x32t
        0x16t
        0x34t
        0x2et
        0x7ct
        -0x1t
        0x16t
        0x7t
        0x14t
        -0x3dt
        -0x45t
        -0xdt
        0x66t
        0xbt
        0x6et
        0x79t
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

    .line 762
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss@1.0::IGnssConfiguration"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.gnss@2.1::IGnssConfiguration"

    const-string v4, "android.hardware.gnss@2.0::IGnssConfiguration"

    const-string v5, "android.hardware.gnss@1.1::IGnssConfiguration"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 779
    const-string v0, "android.hardware.gnss@2.1::IGnssConfiguration"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 801
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 823
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 825
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

    .line 853
    const-string v0, "android.hardware.gnss@1.0::IGnssConfiguration"

    const-string v1, "android.hidl.base@1.0::IBase"

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_1a8

    goto/16 :goto_1a7

    .line 1078
    :sswitch_a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssConfiguration$Stub;->notifySyspropsChanged()V

    .line 1081
    goto/16 :goto_1a7

    .line 1067
    :sswitch_12
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssConfiguration$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1070
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1071
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1072
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1073
    goto/16 :goto_1a7

    .line 1057
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_24
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssConfiguration$Stub;->ping()V

    .line 1060
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1061
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1062
    goto/16 :goto_1a7

    .line 1052
    :sswitch_32
    goto/16 :goto_1a7

    .line 1044
    :sswitch_34
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssConfiguration$Stub;->setHALInstrumentation()V

    .line 1047
    goto/16 :goto_1a7

    .line 1010
    :sswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssConfiguration$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1013
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1015
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1017
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1018
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1019
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1020
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1021
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_63
    if-ge v4, v3, :cond_84

    .line 1023
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1024
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1026
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7c

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7c

    .line 1030
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1031
    nop

    .line 1021
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 1027
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1034
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_84
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1036
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1038
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1039
    goto/16 :goto_1a7

    .line 999
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_91
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssConfiguration$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1002
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1003
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1005
    goto/16 :goto_1a7

    .line 987
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 990
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 991
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/V2_1/IGnssConfiguration$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 992
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 993
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 994
    goto/16 :goto_1a7

    .line 976
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssConfiguration$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 979
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 980
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 981
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 982
    goto/16 :goto_1a7

    .line 964
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cb
    const-string v0, "android.hardware.gnss@2.1::IGnssConfiguration"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    invoke-static {p2}, Landroid/hardware/gnss/V2_1/IGnssConfiguration$BlacklistedSource;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 967
    .local v0, "blacklist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_1/IGnssConfiguration$BlacklistedSource;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssConfiguration$Stub;->setBlacklist_2_1(Ljava/util/ArrayList;)Z

    move-result v1

    .line 968
    .local v1, "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 969
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 970
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 971
    goto/16 :goto_1a7

    .line 952
    .end local v0    # "blacklist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_1/IGnssConfiguration$BlacklistedSource;>;"
    .end local v1    # "_hidl_out_success":Z
    :sswitch_e3
    const-string v0, "android.hardware.gnss@2.0::IGnssConfiguration"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 955
    .local v0, "emergencyExtensionSeconds":I
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssConfiguration$Stub;->setEsExtensionSec(I)Z

    move-result v1

    .line 956
    .restart local v1    # "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 957
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 958
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 959
    goto/16 :goto_1a7

    .line 940
    .end local v0    # "emergencyExtensionSeconds":I
    .end local v1    # "_hidl_out_success":Z
    :sswitch_fb
    const-string v0, "android.hardware.gnss@1.1::IGnssConfiguration"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 942
    invoke-static {p2}, Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 943
    .local v0, "blacklist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssConfiguration$Stub;->setBlacklist(Ljava/util/ArrayList;)Z

    move-result v1

    .line 944
    .restart local v1    # "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 945
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 946
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 947
    goto/16 :goto_1a7

    .line 928
    .end local v0    # "blacklist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;>;"
    .end local v1    # "_hidl_out_success":Z
    :sswitch_113
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 931
    .local v0, "enable":Z
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssConfiguration$Stub;->setEmergencySuplPdn(Z)Z

    move-result v1

    .line 932
    .restart local v1    # "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 933
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 934
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 935
    goto/16 :goto_1a7

    .line 916
    .end local v0    # "enable":Z
    .end local v1    # "_hidl_out_success":Z
    :sswitch_129
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 918
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 919
    .local v0, "protocol":B
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssConfiguration$Stub;->setGlonassPositioningProtocol(B)Z

    move-result v1

    .line 920
    .restart local v1    # "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 921
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 922
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 923
    goto :goto_1a7

    .line 904
    .end local v0    # "protocol":B
    .end local v1    # "_hidl_out_success":Z
    :sswitch_13e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 907
    .local v0, "lppProfile":B
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssConfiguration$Stub;->setLppProfile(B)Z

    move-result v1

    .line 908
    .restart local v1    # "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 909
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 910
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 911
    goto :goto_1a7

    .line 892
    .end local v0    # "lppProfile":B
    .end local v1    # "_hidl_out_success":Z
    :sswitch_153
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 895
    .local v0, "lock":B
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssConfiguration$Stub;->setGpsLock(B)Z

    move-result v1

    .line 896
    .restart local v1    # "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 897
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 898
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 899
    goto :goto_1a7

    .line 880
    .end local v0    # "lock":B
    .end local v1    # "_hidl_out_success":Z
    :sswitch_168
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 883
    .local v0, "mode":B
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssConfiguration$Stub;->setSuplMode(B)Z

    move-result v1

    .line 884
    .restart local v1    # "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 885
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 886
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 887
    goto :goto_1a7

    .line 868
    .end local v0    # "mode":B
    .end local v1    # "_hidl_out_success":Z
    :sswitch_17d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 871
    .local v0, "version":I
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssConfiguration$Stub;->setSuplVersion(I)Z

    move-result v1

    .line 872
    .restart local v1    # "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 873
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 874
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 875
    goto :goto_1a7

    .line 856
    .end local v0    # "version":I
    .end local v1    # "_hidl_out_success":Z
    :sswitch_192
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 859
    .local v0, "enabled":Z
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssConfiguration$Stub;->setSuplEs(Z)Z

    move-result v1

    .line 860
    .restart local v1    # "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 861
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 862
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 863
    nop

    .line 1090
    .end local v0    # "enabled":Z
    .end local v1    # "_hidl_out_success":Z
    :goto_1a7
    return-void

    :sswitch_data_1a8
    .sparse-switch
        0x1 -> :sswitch_192
        0x2 -> :sswitch_17d
        0x3 -> :sswitch_168
        0x4 -> :sswitch_153
        0x5 -> :sswitch_13e
        0x6 -> :sswitch_129
        0x7 -> :sswitch_113
        0x8 -> :sswitch_fb
        0x9 -> :sswitch_e3
        0xa -> :sswitch_cb
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

    .line 807
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 835
    const-string v0, "android.hardware.gnss@2.1::IGnssConfiguration"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 836
    return-object p0

    .line 838
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

    .line 842
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V2_1/IGnssConfiguration$Stub;->registerService(Ljava/lang/String;)V

    .line 843
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 797
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssConfiguration$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 829
    const/4 v0, 0x1

    return v0
.end method
