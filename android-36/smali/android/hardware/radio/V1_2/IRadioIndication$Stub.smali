.class public abstract Landroid/hardware/radio/V1_2/IRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IRadioIndication.java"

# interfaces
.implements Landroid/hardware/radio/V1_2/IRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_2/IRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1350
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1353
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

    .line 1368
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1407
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1408
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1409
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1410
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1411
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

    .line 1380
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
        -0x33t
        -0x59t
        0x52t
        -0x52t
        -0x55t
        -0x56t
        -0x44t
        0x20t
        0x48t
        0x6at
        -0x7et
        -0x54t
        0x57t
        -0x5dt
        -0x23t
        0x10t
        0x77t
        -0x7bt
        -0x40t
        0x6t
        0x9t
        0x4at
        0x34t
        -0x65t
        -0x3bt
        -0x1et
        0x24t
        -0x18t
        -0x56t
        0x22t
        -0x5ft
        0x7ct
    .end array-data

    :array_38
    .array-data 1
        -0x4t
        -0x3bt
        -0x38t
        -0x38t
        -0x75t
        -0x7bt
        -0x57t
        -0xat
        0x3ft
        -0x46t
        0x67t
        -0x27t
        -0x1at
        0x74t
        -0x26t
        0x46t
        0x6ct
        0x72t
        -0x57t
        -0x74t
        -0x5et
        -0x79t
        -0xdt
        0x43t
        -0x5t
        0x57t
        0x21t
        -0x30t
        -0x68t
        0x71t
        0x3ft
        -0x7at
    .end array-data

    :array_4c
    .array-data 1
        -0x77t
        -0x29t
        -0x71t
        -0x5ct
        -0x65t
        0x9t
        -0x1et
        -0xdt
        0x18t
        0x12t
        -0x45t
        0x63t
        -0x1ft
        -0x41t
        -0x54t
        0x2bt
        -0xdt
        0x18t
        -0x57t
        0x56t
        0x14t
        0x73t
        -0x3at
        -0x50t
        -0x13t
        0x69t
        0x4t
        -0x32t
        0x18t
        0x37t
        0x7dt
        0x54t
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

    .line 1358
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.radio@1.2::IRadioIndication"

    const-string v4, "android.hardware.radio@1.1::IRadioIndication"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1374
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1395
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 1417
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1419
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

    .line 1447
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    const-string v1, "android.hardware.radio@1.2::IRadioIndication"

    const/4 v2, 0x0

    const-string v3, "android.hidl.base@1.0::IBase"

    const-string v4, "android.hardware.radio@1.0::IRadioIndication"

    sparse-switch p1, :sswitch_data_434

    goto/16 :goto_433

    .line 2089
    :sswitch_e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2091
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->notifySyspropsChanged()V

    .line 2092
    goto/16 :goto_433

    .line 2078
    :sswitch_16
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2080
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2081
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2082
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2083
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2084
    goto/16 :goto_433

    .line 2068
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_28
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2070
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->ping()V

    .line 2071
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2072
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2073
    goto/16 :goto_433

    .line 2063
    :sswitch_36
    goto/16 :goto_433

    .line 2055
    :sswitch_38
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2057
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->setHALInstrumentation()V

    .line 2058
    goto/16 :goto_433

    .line 2021
    :sswitch_40
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2023
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2024
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2026
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 2028
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2029
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2030
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2031
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2032
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_67
    if-ge v4, v3, :cond_88

    .line 2034
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 2035
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 2037
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_80

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_80

    .line 2041
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2042
    nop

    .line 2032
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    .line 2038
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_80
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2045
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_88
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2047
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2049
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2050
    goto/16 :goto_433

    .line 2010
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_95
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2012
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2013
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2014
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2015
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2016
    goto/16 :goto_433

    .line 1998
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a7
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2000
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 2001
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2002
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2003
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2004
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2005
    goto/16 :goto_433

    .line 1987
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bd
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1989
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1990
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1991
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1992
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1993
    goto/16 :goto_433

    .line 1976
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cf
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1978
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1979
    .local v0, "type":I
    new-instance v1, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 1980
    .local v1, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1981
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->currentSignalStrength_1_2(ILandroid/hardware/radio/V1_2/SignalStrength;)V

    .line 1982
    goto/16 :goto_433

    .line 1966
    .end local v0    # "type":I
    .end local v1    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :sswitch_e3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1968
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1969
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1970
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->currentPhysicalChannelConfigs(ILjava/util/ArrayList;)V

    .line 1971
    goto/16 :goto_433

    .line 1955
    .end local v0    # "type":I
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    :sswitch_f3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1957
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1958
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;-><init>()V

    .line 1959
    .local v1, "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1960
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->currentLinkCapacityEstimate(ILandroid/hardware/radio/V1_2/LinkCapacityEstimate;)V

    .line 1961
    goto/16 :goto_433

    .line 1945
    .end local v0    # "type":I
    .end local v1    # "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    :sswitch_107
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1947
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1948
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1949
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->cellInfoList_1_2(ILjava/util/ArrayList;)V

    .line 1950
    goto/16 :goto_433

    .line 1934
    .end local v0    # "type":I
    .end local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :sswitch_117
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1936
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1937
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_2/NetworkScanResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/NetworkScanResult;-><init>()V

    .line 1938
    .local v1, "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_2/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1939
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V

    .line 1940
    goto/16 :goto_433

    .line 1923
    .end local v0    # "type":I
    .end local v1    # "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    :sswitch_12b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1925
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1926
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 1927
    .local v1, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1928
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 1929
    goto/16 :goto_433

    .line 1912
    .end local v0    # "type":I
    .end local v1    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :sswitch_13f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1914
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1915
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_1/NetworkScanResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/NetworkScanResult;-><init>()V

    .line 1916
    .local v1, "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_1/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1917
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V

    .line 1918
    goto/16 :goto_433

    .line 1903
    .end local v0    # "type":I
    .end local v1    # "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    :sswitch_153
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1905
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1906
    .local v0, "info":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->carrierInfoForImsiEncryption(I)V

    .line 1907
    goto/16 :goto_433

    .line 1893
    .end local v0    # "info":I
    :sswitch_15f
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1895
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1896
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1897
    .local v1, "reason":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->modemReset(ILjava/lang/String;)V

    .line 1898
    goto/16 :goto_433

    .line 1882
    .end local v0    # "type":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_16f
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1884
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1885
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/PcoDataInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/PcoDataInfo;-><init>()V

    .line 1886
    .local v1, "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/PcoDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1887
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V

    .line 1888
    goto/16 :goto_433

    .line 1871
    .end local v0    # "type":I
    .end local v1    # "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    :sswitch_183
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1873
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1874
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 1875
    .local v1, "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1876
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 1877
    goto/16 :goto_433

    .line 1861
    .end local v0    # "type":I
    .end local v1    # "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    :sswitch_197
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1863
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1864
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1865
    .local v1, "alpha":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    .line 1866
    goto/16 :goto_433

    .line 1850
    .end local v0    # "type":I
    .end local v1    # "alpha":Ljava/lang/String;
    :sswitch_1a7
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1852
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1853
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 1854
    .local v1, "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1855
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V

    .line 1856
    goto/16 :goto_433

    .line 1839
    .end local v0    # "type":I
    .end local v1    # "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    :sswitch_1bb
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1841
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1842
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 1843
    .local v1, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1844
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 1845
    goto/16 :goto_433

    .line 1829
    .end local v0    # "type":I
    .end local v1    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_1cf
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1831
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1832
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1833
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->hardwareConfigChanged(ILjava/util/ArrayList;)V

    .line 1834
    goto/16 :goto_433

    .line 1819
    .end local v0    # "type":I
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :sswitch_1df
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1821
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1822
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1823
    .local v1, "state":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->srvccStateNotify(II)V

    .line 1824
    goto/16 :goto_433

    .line 1809
    .end local v0    # "type":I
    .end local v1    # "state":I
    :sswitch_1ef
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1811
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1812
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1813
    .local v1, "activate":Z
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->subscriptionStatusChanged(IZ)V

    .line 1814
    goto/16 :goto_433

    .line 1800
    .end local v0    # "type":I
    .end local v1    # "activate":Z
    :sswitch_1ff
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1802
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1803
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->imsNetworkStateChanged(I)V

    .line 1804
    goto/16 :goto_433

    .line 1790
    .end local v0    # "type":I
    :sswitch_20b
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1792
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1793
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1794
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->cellInfoList(ILjava/util/ArrayList;)V

    .line 1795
    goto/16 :goto_433

    .line 1780
    .end local v0    # "type":I
    .end local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :sswitch_21b
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1782
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1783
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1784
    .local v1, "rat":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->voiceRadioTechChanged(II)V

    .line 1785
    goto/16 :goto_433

    .line 1771
    .end local v0    # "type":I
    .end local v1    # "rat":I
    :sswitch_22b
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1773
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1774
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->rilConnected(I)V

    .line 1775
    goto/16 :goto_433

    .line 1762
    .end local v0    # "type":I
    :sswitch_237
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1764
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1765
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->exitEmergencyCallbackMode(I)V

    .line 1766
    goto/16 :goto_433

    .line 1752
    .end local v0    # "type":I
    :sswitch_243
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1754
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1755
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1756
    .local v1, "version":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->cdmaPrlChanged(II)V

    .line 1757
    goto/16 :goto_433

    .line 1742
    .end local v0    # "type":I
    .end local v1    # "version":I
    :sswitch_253
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1744
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1745
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1746
    .local v1, "cdmaSource":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    .line 1747
    goto/16 :goto_433

    .line 1733
    .end local v0    # "type":I
    .end local v1    # "cdmaSource":I
    :sswitch_263
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1735
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1736
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->resendIncallMute(I)V

    .line 1737
    goto/16 :goto_433

    .line 1723
    .end local v0    # "type":I
    :sswitch_26f
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1725
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1726
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1727
    .local v1, "start":Z
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->indicateRingbackTone(IZ)V

    .line 1728
    goto/16 :goto_433

    .line 1712
    .end local v0    # "type":I
    .end local v1    # "start":Z
    :sswitch_27f
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1714
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1715
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;-><init>()V

    .line 1716
    .local v1, "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1717
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V

    .line 1718
    goto/16 :goto_433

    .line 1702
    .end local v0    # "type":I
    .end local v1    # "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    :sswitch_293
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1704
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1705
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1706
    .local v1, "status":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->cdmaOtaProvisionStatus(II)V

    .line 1707
    goto/16 :goto_433

    .line 1691
    .end local v0    # "type":I
    .end local v1    # "status":I
    :sswitch_2a3
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1693
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1694
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    .line 1695
    .local v1, "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1696
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V

    .line 1697
    goto/16 :goto_433

    .line 1682
    .end local v0    # "type":I
    .end local v1    # "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    :sswitch_2b7
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1684
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1685
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->enterEmergencyCallbackMode(I)V

    .line 1686
    goto/16 :goto_433

    .line 1672
    .end local v0    # "type":I
    :sswitch_2c3
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1674
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1675
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1676
    .local v1, "state":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->restrictedStateChanged(II)V

    .line 1677
    goto/16 :goto_433

    .line 1663
    .end local v0    # "type":I
    .end local v1    # "state":I
    :sswitch_2d3
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1665
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1666
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    .line 1667
    goto/16 :goto_433

    .line 1653
    .end local v0    # "type":I
    :sswitch_2df
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1655
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1656
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1657
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->newBroadcastSms(ILjava/util/ArrayList;)V

    .line 1658
    goto/16 :goto_433

    .line 1642
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_2ef
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1644
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1645
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 1646
    .local v1, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1647
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 1648
    goto/16 :goto_433

    .line 1633
    .end local v0    # "type":I
    .end local v1    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_303
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1635
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1636
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->simStatusChanged(I)V

    .line 1637
    goto/16 :goto_433

    .line 1621
    .end local v0    # "type":I
    :sswitch_30f
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1623
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1624
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1625
    .local v1, "isGsm":Z
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 1626
    .local v2, "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1627
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V

    .line 1628
    goto/16 :goto_433

    .line 1610
    .end local v0    # "type":I
    .end local v1    # "isGsm":Z
    .end local v2    # "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    :sswitch_327
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1612
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1613
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/SimRefreshResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SimRefreshResult;-><init>()V

    .line 1614
    .local v1, "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1615
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V

    .line 1616
    goto/16 :goto_433

    .line 1601
    .end local v0    # "type":I
    .end local v1    # "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    :sswitch_33b
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1603
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1604
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->simSmsStorageFull(I)V

    .line 1605
    goto/16 :goto_433

    .line 1591
    .end local v0    # "type":I
    :sswitch_347
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1593
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1594
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v1

    .line 1595
    .local v1, "timeout":J
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->stkCallSetup(IJ)V

    .line 1596
    goto/16 :goto_433

    .line 1581
    .end local v0    # "type":I
    .end local v1    # "timeout":J
    :sswitch_357
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1583
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1584
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1585
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    .line 1586
    goto/16 :goto_433

    .line 1571
    .end local v0    # "type":I
    .end local v1    # "cmd":Ljava/lang/String;
    :sswitch_367
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1573
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1574
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1575
    .restart local v1    # "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    .line 1576
    goto/16 :goto_433

    .line 1562
    .end local v0    # "type":I
    .end local v1    # "cmd":Ljava/lang/String;
    :sswitch_377
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1564
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1565
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->stkSessionEnd(I)V

    .line 1566
    goto/16 :goto_433

    .line 1551
    .end local v0    # "type":I
    :sswitch_383
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1553
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1554
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 1555
    .local v1, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1556
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 1557
    goto/16 :goto_433

    .line 1541
    .end local v0    # "type":I
    .end local v1    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    :sswitch_397
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1543
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1544
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1545
    .local v1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->dataCallListChanged(ILjava/util/ArrayList;)V

    .line 1546
    goto/16 :goto_433

    .line 1530
    .end local v0    # "type":I
    .end local v1    # "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :sswitch_3a7
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1532
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1533
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 1534
    .local v1, "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1535
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V

    .line 1536
    goto/16 :goto_433

    .line 1519
    .end local v0    # "type":I
    .end local v1    # "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :sswitch_3bb
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1521
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1522
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1523
    .local v1, "nitzTime":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 1524
    .local v2, "receivedTime":J
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->nitzTimeReceived(ILjava/lang/String;J)V

    .line 1525
    goto :goto_433

    .line 1508
    .end local v0    # "type":I
    .end local v1    # "nitzTime":Ljava/lang/String;
    .end local v2    # "receivedTime":J
    :sswitch_3ce
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1510
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1511
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1512
    .local v1, "modeType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1513
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->onUssd(IILjava/lang/String;)V

    .line 1514
    goto :goto_433

    .line 1498
    .end local v0    # "type":I
    .end local v1    # "modeType":I
    .end local v2    # "msg":Ljava/lang/String;
    :sswitch_3e1
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1500
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1501
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1502
    .local v1, "recordNumber":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->newSmsOnSim(II)V

    .line 1503
    goto :goto_433

    .line 1488
    .end local v0    # "type":I
    .end local v1    # "recordNumber":I
    :sswitch_3f0
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1490
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1491
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1492
    .local v1, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->newSmsStatusReport(ILjava/util/ArrayList;)V

    .line 1493
    goto :goto_433

    .line 1478
    .end local v0    # "type":I
    .end local v1    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_3ff
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1480
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1481
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1482
    .restart local v1    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->newSms(ILjava/util/ArrayList;)V

    .line 1483
    goto :goto_433

    .line 1469
    .end local v0    # "type":I
    .end local v1    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_40e
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1471
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1472
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->networkStateChanged(I)V

    .line 1473
    goto :goto_433

    .line 1460
    .end local v0    # "type":I
    :sswitch_419
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1462
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1463
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->callStateChanged(I)V

    .line 1464
    goto :goto_433

    .line 1450
    .end local v0    # "type":I
    :sswitch_424
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1452
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1453
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1454
    .local v1, "radioState":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->radioStateChanged(II)V

    .line 1455
    nop

    .line 2101
    .end local v0    # "type":I
    .end local v1    # "radioState":I
    :goto_433
    return-void

    :sswitch_data_434
    .sparse-switch
        0x1 -> :sswitch_424
        0x2 -> :sswitch_419
        0x3 -> :sswitch_40e
        0x4 -> :sswitch_3ff
        0x5 -> :sswitch_3f0
        0x6 -> :sswitch_3e1
        0x7 -> :sswitch_3ce
        0x8 -> :sswitch_3bb
        0x9 -> :sswitch_3a7
        0xa -> :sswitch_397
        0xb -> :sswitch_383
        0xc -> :sswitch_377
        0xd -> :sswitch_367
        0xe -> :sswitch_357
        0xf -> :sswitch_347
        0x10 -> :sswitch_33b
        0x11 -> :sswitch_327
        0x12 -> :sswitch_30f
        0x13 -> :sswitch_303
        0x14 -> :sswitch_2ef
        0x15 -> :sswitch_2df
        0x16 -> :sswitch_2d3
        0x17 -> :sswitch_2c3
        0x18 -> :sswitch_2b7
        0x19 -> :sswitch_2a3
        0x1a -> :sswitch_293
        0x1b -> :sswitch_27f
        0x1c -> :sswitch_26f
        0x1d -> :sswitch_263
        0x1e -> :sswitch_253
        0x1f -> :sswitch_243
        0x20 -> :sswitch_237
        0x21 -> :sswitch_22b
        0x22 -> :sswitch_21b
        0x23 -> :sswitch_20b
        0x24 -> :sswitch_1ff
        0x25 -> :sswitch_1ef
        0x26 -> :sswitch_1df
        0x27 -> :sswitch_1cf
        0x28 -> :sswitch_1bb
        0x29 -> :sswitch_1a7
        0x2a -> :sswitch_197
        0x2b -> :sswitch_183
        0x2c -> :sswitch_16f
        0x2d -> :sswitch_15f
        0x2e -> :sswitch_153
        0x2f -> :sswitch_13f
        0x30 -> :sswitch_12b
        0x31 -> :sswitch_117
        0x32 -> :sswitch_107
        0x33 -> :sswitch_f3
        0x34 -> :sswitch_e3
        0x35 -> :sswitch_cf
        0xf43484e -> :sswitch_bd
        0xf444247 -> :sswitch_a7
        0xf445343 -> :sswitch_95
        0xf485348 -> :sswitch_40
        0xf494e54 -> :sswitch_38
        0xf4c5444 -> :sswitch_36
        0xf504e47 -> :sswitch_28
        0xf524546 -> :sswitch_16
        0xf535953 -> :sswitch_e
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 1401
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1429
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1430
    return-object p0

    .line 1432
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

    .line 1436
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1437
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 1391
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1423
    const/4 v0, 0x1

    return v0
.end method
