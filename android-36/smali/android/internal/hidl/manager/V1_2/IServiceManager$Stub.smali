.class public abstract Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;
.super Landroid/os/HwBinder;
.source "IServiceManager.java"

# interfaces
.implements Landroid/internal/hidl/manager/V1_2/IServiceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/hidl/manager/V1_2/IServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 776
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 779
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

    .line 794
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 833
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 834
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 835
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 836
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 837
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

    .line 806
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
        0x6ft
        0x3at
        -0x76t
        0x3ft
        -0x2ct
        -0x41t
        -0x43t
        0x2t
        -0x1ct
        -0x1at
        0x1ct
        0x73t
        0x2dt
        0x2dt
        -0xat
        0x16t
        -0x1t
        0x69t
        0x43t
        0x4at
        0x1et
        -0x28t
        0x3ct
        -0x26t
        0x33t
        0x73t
        0x3t
        -0x53t
        -0x3at
        -0x29t
        0x14t
        -0x21t
    .end array-data

    :array_38
    .array-data 1
        0xbt
        -0x6ct
        -0x24t
        -0x79t
        0x6ft
        0x74t
        -0x62t
        -0x2et
        0x4at
        -0x68t
        -0xat
        0x1ct
        0x41t
        -0x2ct
        0x6at
        -0x29t
        0x5at
        0x27t
        0x51t
        0x11t
        0x63t
        -0xft
        -0x6at
        -0x76t
        0x8t
        0x42t
        0x13t
        -0x5dt
        0x3ct
        0x68t
        0x4et
        -0xat
    .end array-data

    :array_4c
    .array-data 1
        -0x7bt
        0x39t
        0x4ft
        -0x76t
        0xdt
        0x15t
        -0x19t
        -0x5t
        0x2et
        -0x1ct
        0x5ct
        0x52t
        -0x2ft
        -0x5t
        -0x75t
        -0x71t
        -0x2dt
        -0x3ft
        0x3ct
        0x33t
        0x3et
        0x63t
        -0x39t
        -0x74t
        0x4at
        -0x5ft
        -0x1t
        -0x7at
        -0x7ct
        0xct
        -0xat
        -0x24t
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

    .line 784
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hidl.manager@1.0::IServiceManager"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hidl.manager@1.2::IServiceManager"

    const-string v4, "android.hidl.manager@1.1::IServiceManager"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 800
    const-string v0, "android.hidl.manager@1.2::IServiceManager"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 821
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 843
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 845
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

    .line 873
    const-string v0, "android.hidl.manager@1.2::IServiceManager"

    const-string v1, "android.hidl.base@1.0::IBase"

    const-string v2, "android.hidl.manager@1.0::IServiceManager"

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_260

    goto/16 :goto_25e

    .line 1159
    :sswitch_c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p0}, Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;->notifySyspropsChanged()V

    .line 1162
    goto/16 :goto_25e

    .line 1148
    :sswitch_14
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1150
    invoke-virtual {p0}, Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1151
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1152
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1153
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1154
    goto/16 :goto_25e

    .line 1138
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_26
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {p0}, Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;->ping()V

    .line 1141
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1142
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1143
    goto/16 :goto_25e

    .line 1133
    :sswitch_34
    goto/16 :goto_25e

    .line 1125
    :sswitch_36
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {p0}, Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;->setHALInstrumentation()V

    .line 1128
    goto/16 :goto_25e

    .line 1091
    :sswitch_3e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    invoke-virtual {p0}, Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1094
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1096
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1098
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1099
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1100
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1101
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1102
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_65
    if-ge v4, v2, :cond_86

    .line 1104
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1105
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1107
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7e

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7e

    .line 1111
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1112
    nop

    .line 1102
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    .line 1108
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7e
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1115
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_86
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1117
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1119
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1120
    goto/16 :goto_25e

    .line 1080
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_93
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {p0}, Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1083
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1084
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1086
    goto/16 :goto_25e

    .line 1068
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1071
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1072
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1073
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1074
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1075
    goto/16 :goto_25e

    .line 1057
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bb
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {p0}, Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1060
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1061
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1062
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1063
    goto/16 :goto_25e

    .line 1043
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cd
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1046
    .local v0, "fqName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1047
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/internal/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/internal/hidl/base/V1_0/IBase;

    move-result-object v2

    .line 1048
    .local v2, "service":Landroid/internal/hidl/base/V1_0/IBase;
    invoke-virtual {p0, v0, v1, v2}, Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;->tryUnregister(Ljava/lang/String;Ljava/lang/String;Landroid/internal/hidl/base/V1_0/IBase;)Z

    move-result v4

    .line 1049
    .local v4, "_hidl_out_success":Z
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1050
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1051
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1052
    goto/16 :goto_25e

    .line 1031
    .end local v0    # "fqName":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "service":Landroid/internal/hidl/base/V1_0/IBase;
    .end local v4    # "_hidl_out_success":Z
    :sswitch_ef
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1034
    .restart local v0    # "fqName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;->listManifestByInterface(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1035
    .local v1, "_hidl_out_instanceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1036
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1037
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1038
    goto/16 :goto_25e

    .line 1017
    .end local v0    # "fqName":Ljava/lang/String;
    .end local v1    # "_hidl_out_instanceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_105
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1020
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/internal/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/internal/hidl/base/V1_0/IBase;

    move-result-object v1

    .line 1021
    .local v1, "service":Landroid/internal/hidl/base/V1_0/IBase;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1022
    .local v2, "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1, v2}, Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;->addWithChain(Ljava/lang/String;Landroid/internal/hidl/base/V1_0/IBase;Ljava/util/ArrayList;)Z

    move-result v4

    .line 1023
    .restart local v4    # "_hidl_out_success":Z
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1024
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1025
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1026
    goto/16 :goto_25e

    .line 1004
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "service":Landroid/internal/hidl/base/V1_0/IBase;
    .end local v2    # "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "_hidl_out_success":Z
    :sswitch_127
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/internal/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/internal/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 1007
    .local v0, "server":Landroid/internal/hidl/base/V1_0/IBase;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/internal/hidl/manager/V1_2/IClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/internal/hidl/manager/V1_2/IClientCallback;

    move-result-object v1

    .line 1008
    .local v1, "cb":Landroid/internal/hidl/manager/V1_2/IClientCallback;
    invoke-virtual {p0, v0, v1}, Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;->unregisterClientCallback(Landroid/internal/hidl/base/V1_0/IBase;Landroid/internal/hidl/manager/V1_2/IClientCallback;)Z

    move-result v2

    .line 1009
    .local v2, "_hidl_out_success":Z
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1010
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1011
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1012
    goto/16 :goto_25e

    .line 989
    .end local v0    # "server":Landroid/internal/hidl/base/V1_0/IBase;
    .end local v1    # "cb":Landroid/internal/hidl/manager/V1_2/IClientCallback;
    .end local v2    # "_hidl_out_success":Z
    :sswitch_149
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 992
    .local v0, "fqName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 993
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/internal/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/internal/hidl/base/V1_0/IBase;

    move-result-object v2

    .line 994
    .local v2, "server":Landroid/internal/hidl/base/V1_0/IBase;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/internal/hidl/manager/V1_2/IClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/internal/hidl/manager/V1_2/IClientCallback;

    move-result-object v4

    .line 995
    .local v4, "cb":Landroid/internal/hidl/manager/V1_2/IClientCallback;
    invoke-virtual {p0, v0, v1, v2, v4}, Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;->registerClientCallback(Ljava/lang/String;Ljava/lang/String;Landroid/internal/hidl/base/V1_0/IBase;Landroid/internal/hidl/manager/V1_2/IClientCallback;)Z

    move-result v5

    .line 996
    .local v5, "_hidl_out_success":Z
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 997
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 998
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 999
    goto/16 :goto_25e

    .line 975
    .end local v0    # "fqName":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "server":Landroid/internal/hidl/base/V1_0/IBase;
    .end local v4    # "cb":Landroid/internal/hidl/manager/V1_2/IClientCallback;
    .end local v5    # "_hidl_out_success":Z
    :sswitch_173
    const-string v0, "android.hidl.manager@1.1::IServiceManager"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 978
    .restart local v0    # "fqName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 979
    .restart local v1    # "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/internal/hidl/manager/V1_0/IServiceNotification;->asInterface(Landroid/os/IHwBinder;)Landroid/internal/hidl/manager/V1_0/IServiceNotification;

    move-result-object v2

    .line 980
    .local v2, "callback":Landroid/internal/hidl/manager/V1_0/IServiceNotification;
    invoke-virtual {p0, v0, v1, v2}, Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;->unregisterForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/internal/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v4

    .line 981
    .local v4, "_hidl_out_success":Z
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 982
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 983
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 984
    goto/16 :goto_25e

    .line 963
    .end local v0    # "fqName":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "callback":Landroid/internal/hidl/manager/V1_0/IServiceNotification;
    .end local v4    # "_hidl_out_success":Z
    :sswitch_197
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 966
    .restart local v0    # "fqName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 967
    .restart local v1    # "name":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;->registerPassthroughClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 969
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 970
    goto/16 :goto_25e

    .line 952
    .end local v0    # "fqName":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :sswitch_1ad
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual {p0}, Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;->debugDump()Ljava/util/ArrayList;

    move-result-object v0

    .line 955
    .local v0, "_hidl_out_info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 956
    invoke-static {p3, v0}, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 957
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 958
    goto/16 :goto_25e

    .line 938
    .end local v0    # "_hidl_out_info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    :sswitch_1bf
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 941
    .local v0, "fqName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 942
    .restart local v1    # "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/internal/hidl/manager/V1_0/IServiceNotification;->asInterface(Landroid/os/IHwBinder;)Landroid/internal/hidl/manager/V1_0/IServiceNotification;

    move-result-object v2

    .line 943
    .restart local v2    # "callback":Landroid/internal/hidl/manager/V1_0/IServiceNotification;
    invoke-virtual {p0, v0, v1, v2}, Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/internal/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v4

    .line 944
    .restart local v4    # "_hidl_out_success":Z
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 945
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 946
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 947
    goto/16 :goto_25e

    .line 926
    .end local v0    # "fqName":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "callback":Landroid/internal/hidl/manager/V1_0/IServiceNotification;
    .end local v4    # "_hidl_out_success":Z
    :sswitch_1e1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 929
    .restart local v0    # "fqName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;->listByInterface(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 930
    .local v1, "_hidl_out_instanceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 931
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 932
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 933
    goto :goto_25e

    .line 915
    .end local v0    # "fqName":Ljava/lang/String;
    .end local v1    # "_hidl_out_instanceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_1f6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual {p0}, Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;->list()Ljava/util/ArrayList;

    move-result-object v0

    .line 918
    .local v0, "_hidl_out_fqInstanceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 919
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 920
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 921
    goto :goto_25e

    .line 902
    .end local v0    # "_hidl_out_fqInstanceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_207
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, "fqName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 906
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;->getTransport(Ljava/lang/String;Ljava/lang/String;)B

    move-result v2

    .line 907
    .local v2, "_hidl_out_transport":B
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 908
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 909
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 910
    goto :goto_25e

    .line 889
    .end local v0    # "fqName":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "_hidl_out_transport":B
    :sswitch_220
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 892
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/internal/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/internal/hidl/base/V1_0/IBase;

    move-result-object v1

    .line 893
    .local v1, "service":Landroid/internal/hidl/base/V1_0/IBase;
    invoke-virtual {p0, v0, v1}, Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;->add(Ljava/lang/String;Landroid/internal/hidl/base/V1_0/IBase;)Z

    move-result v2

    .line 894
    .local v2, "_hidl_out_success":Z
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 895
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 896
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 897
    goto :goto_25e

    .line 876
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "service":Landroid/internal/hidl/base/V1_0/IBase;
    .end local v2    # "_hidl_out_success":Z
    :sswitch_23d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, "fqName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 880
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/internal/hidl/base/V1_0/IBase;

    move-result-object v2

    .line 881
    .local v2, "_hidl_out_service":Landroid/internal/hidl/base/V1_0/IBase;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 882
    if-nez v2, :cond_253

    const/4 v3, 0x0

    goto :goto_257

    :cond_253
    invoke-interface {v2}, Landroid/internal/hidl/base/V1_0/IBase;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    :goto_257
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 883
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 884
    nop

    .line 1171
    .end local v0    # "fqName":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "_hidl_out_service":Landroid/internal/hidl/base/V1_0/IBase;
    :goto_25e
    return-void

    nop

    :sswitch_data_260
    .sparse-switch
        0x1 -> :sswitch_23d
        0x2 -> :sswitch_220
        0x3 -> :sswitch_207
        0x4 -> :sswitch_1f6
        0x5 -> :sswitch_1e1
        0x6 -> :sswitch_1bf
        0x7 -> :sswitch_1ad
        0x8 -> :sswitch_197
        0x9 -> :sswitch_173
        0xa -> :sswitch_149
        0xb -> :sswitch_127
        0xc -> :sswitch_105
        0xd -> :sswitch_ef
        0xe -> :sswitch_cd
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

    .line 827
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 855
    const-string v0, "android.hidl.manager@1.2::IServiceManager"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 856
    return-object p0

    .line 858
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

    .line 862
    invoke-virtual {p0, p1}, Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;->registerService(Ljava/lang/String;)V

    .line 863
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 817
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/internal/hidl/manager/V1_2/IServiceManager$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 849
    const/4 v0, 0x1

    return v0
.end method
