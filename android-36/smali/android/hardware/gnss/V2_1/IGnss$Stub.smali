.class public abstract Landroid/hardware/gnss/V2_1/IGnss$Stub;
.super Landroid/os/HwBinder;
.source "IGnss.java"

# interfaces
.implements Landroid/hardware/gnss/V2_1/IGnss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_1/IGnss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1207
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1210
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

    .line 1226
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1266
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1267
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1268
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1269
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1270
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

    .line 1238
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
        -0x3dt
        0x19t
        -0x1at
        -0x75t
        0x3t
        -0x7et
        -0x67t
        0x58t
        0x40t
        0x44t
        0x2t
        -0x3et
        -0x27t
        -0x3at
        -0x7et
        0x1t
        -0x6at
        0x78t
        0x8t
        0x7dt
        0x60t
        0x49t
        0x58t
        0x7t
        -0x40t
        -0x59t
        0x44t
        0x4et
        0xat
        0x6at
        -0x7t
        -0x7ft
    .end array-data

    :array_3e
    .array-data 1
        -0xbt
        0x60t
        0x5ft
        0x48t
        -0x3et
        -0x5t
        -0x61t
        0x23t
        0x16t
        0x15t
        -0x23t
        -0x6dt
        0x2bt
        -0x9t
        0x30t
        -0x52t
        -0x6bt
        0x40t
        -0xct
        -0x7t
        -0x75t
        0x5bt
        0x7at
        -0x1et
        -0x4et
        0x69t
        -0x69t
        0x5ft
        0x45t
        0x2ft
        0x6dt
        0x73t
    .end array-data

    :array_52
    .array-data 1
        -0x4bt
        -0xft
        -0xct
        -0x3ft
        -0x43t
        0x6dt
        -0x19t
        0x1at
        -0x72t
        0x71t
        -0x29t
        0xft
        0x57t
        -0x33t
        -0x55t
        -0x70t
        0x4at
        -0x40t
        0x24t
        -0x5ft
        0x2ft
        0x3dt
        -0x12t
        0x3et
        0x21t
        0x73t
        0x77t
        0xat
        0x45t
        -0x7dt
        -0x44t
        -0x3et
    .end array-data

    :array_66
    .array-data 1
        -0x13t
        -0x1at
        -0x69t
        0x10t
        -0x3dt
        -0x57t
        0x5ct
        0x2ct
        -0x42t
        -0x7ft
        -0x72t
        0x6ct
        -0x75t
        -0x49t
        0x2ct
        0x78t
        0x16t
        -0x7et
        0x3ft
        -0x54t
        -0x1bt
        -0x4t
        0x21t
        -0x3ft
        0x77t
        0x31t
        -0x4et
        0x6ft
        0x41t
        -0x27t
        0x4dt
        0x65t
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

    .line 1215
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss@1.0::IGnss"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.gnss@2.1::IGnss"

    const-string v4, "android.hardware.gnss@2.0::IGnss"

    const-string v5, "android.hardware.gnss@1.1::IGnss"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1232
    const-string v0, "android.hardware.gnss@2.1::IGnss"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1254
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 1276
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1278
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 17
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1306
    move-object v7, p3

    const-string v1, "android.hardware.gnss@2.1::IGnss"

    const-string v2, "android.hardware.gnss@1.1::IGnss"

    const-string v3, "android.hidl.base@1.0::IBase"

    const-string v4, "android.hardware.gnss@2.0::IGnss"

    const-string v5, "android.hardware.gnss@1.0::IGnss"

    const/4 v6, 0x0

    const/4 v8, 0x0

    sparse-switch p1, :sswitch_data_496

    goto/16 :goto_495

    .line 1853
    :sswitch_12
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1855
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->notifySyspropsChanged()V

    .line 1856
    goto/16 :goto_495

    .line 1842
    :sswitch_1a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1844
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 1845
    .local v1, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1846
    invoke-virtual {v1, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1847
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1848
    goto/16 :goto_495

    .line 1832
    .end local v1    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1834
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->ping()V

    .line 1835
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1836
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1837
    goto/16 :goto_495

    .line 1827
    :sswitch_3a
    goto/16 :goto_495

    .line 1819
    :sswitch_3c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1821
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->setHALInstrumentation()V

    .line 1822
    goto/16 :goto_495

    .line 1785
    :sswitch_44
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 1788
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1790
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1792
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1793
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1794
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1795
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 1796
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_6b
    if-ge v5, v3, :cond_8c

    .line 1798
    mul-int/lit8 v6, v5, 0x20

    int-to-long v8, v6

    .line 1799
    .local v8, "_hidl_array_offset_1":J
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 1801
    .local v6, "_hidl_array_item_1":[B
    if-eqz v6, :cond_84

    array-length v10, v6

    const/16 v11, 0x20

    if-ne v10, v11, :cond_84

    .line 1805
    invoke-virtual {v4, v8, v9, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1806
    nop

    .line 1796
    .end local v6    # "_hidl_array_item_1":[B
    .end local v8    # "_hidl_array_offset_1":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_6b

    .line 1802
    .restart local v6    # "_hidl_array_item_1":[B
    .restart local v8    # "_hidl_array_offset_1":J
    :cond_84
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Array element is not of the expected length"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1809
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_item_1":[B
    .end local v8    # "_hidl_array_offset_1":J
    :cond_8c
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1811
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1813
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1814
    goto/16 :goto_495

    .line 1774
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_99
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1776
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 1777
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1778
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1779
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1780
    goto/16 :goto_495

    .line 1762
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_ab
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1764
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 1765
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1766
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1767
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1768
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1769
    goto/16 :goto_495

    .line 1751
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_c1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1753
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 1754
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1755
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1756
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1757
    goto/16 :goto_495

    .line 1740
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_d3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1742
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssAntennaInfo()Landroid/hardware/gnss/V2_1/IGnssAntennaInfo;

    move-result-object v1

    .line 1743
    .local v1, "_hidl_out_gnssAntennaInfoIface":Landroid/hardware/gnss/V2_1/IGnssAntennaInfo;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1744
    if-nez v1, :cond_e0

    goto :goto_e4

    :cond_e0
    invoke-interface {v1}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfo;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    :goto_e4
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1745
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1746
    goto/16 :goto_495

    .line 1729
    .end local v1    # "_hidl_out_gnssAntennaInfoIface":Landroid/hardware/gnss/V2_1/IGnssAntennaInfo;
    :sswitch_ec
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1731
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionMeasurementCorrections_1_1()Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections;

    move-result-object v1

    .line 1732
    .local v1, "_hidl_out_measurementCorrectionsIface":Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1733
    if-nez v1, :cond_f9

    goto :goto_fd

    :cond_f9
    invoke-interface {v1}, Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    :goto_fd
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1734
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1735
    goto/16 :goto_495

    .line 1718
    .end local v1    # "_hidl_out_measurementCorrectionsIface":Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections;
    :sswitch_105
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1720
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssConfiguration_2_1()Landroid/hardware/gnss/V2_1/IGnssConfiguration;

    move-result-object v1

    .line 1721
    .local v1, "_hidl_out_gnssConfigurationIface":Landroid/hardware/gnss/V2_1/IGnssConfiguration;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1722
    if-nez v1, :cond_112

    goto :goto_116

    :cond_112
    invoke-interface {v1}, Landroid/hardware/gnss/V2_1/IGnssConfiguration;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    :goto_116
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1723
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1724
    goto/16 :goto_495

    .line 1707
    .end local v1    # "_hidl_out_gnssConfigurationIface":Landroid/hardware/gnss/V2_1/IGnssConfiguration;
    :sswitch_11e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1709
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssMeasurement_2_1()Landroid/hardware/gnss/V2_1/IGnssMeasurement;

    move-result-object v1

    .line 1710
    .local v1, "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V2_1/IGnssMeasurement;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1711
    if-nez v1, :cond_12b

    goto :goto_12f

    :cond_12b
    invoke-interface {v1}, Landroid/hardware/gnss/V2_1/IGnssMeasurement;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    :goto_12f
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1712
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1713
    goto/16 :goto_495

    .line 1695
    .end local v1    # "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V2_1/IGnssMeasurement;
    :sswitch_137
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1697
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/gnss/V2_1/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V2_1/IGnssCallback;

    move-result-object v1

    .line 1698
    .local v1, "callback":Landroid/hardware/gnss/V2_1/IGnssCallback;
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->setCallback_2_1(Landroid/hardware/gnss/V2_1/IGnssCallback;)Z

    move-result v2

    .line 1699
    .local v2, "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1700
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1701
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1702
    goto/16 :goto_495

    .line 1682
    .end local v1    # "callback":Landroid/hardware/gnss/V2_1/IGnssCallback;
    .end local v2    # "_hidl_out_success":Z
    :sswitch_151
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1684
    new-instance v1, Landroid/hardware/gnss/V2_0/GnssLocation;

    invoke-direct {v1}, Landroid/hardware/gnss/V2_0/GnssLocation;-><init>()V

    .line 1685
    .local v1, "location":Landroid/hardware/gnss/V2_0/GnssLocation;
    invoke-virtual {v1, p2}, Landroid/hardware/gnss/V2_0/GnssLocation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1686
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->injectBestLocation_2_0(Landroid/hardware/gnss/V2_0/GnssLocation;)Z

    move-result v2

    .line 1687
    .restart local v2    # "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1688
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1689
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1690
    goto/16 :goto_495

    .line 1671
    .end local v1    # "location":Landroid/hardware/gnss/V2_0/GnssLocation;
    .end local v2    # "_hidl_out_success":Z
    :sswitch_16b
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1673
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssBatching_2_0()Landroid/hardware/gnss/V2_0/IGnssBatching;

    move-result-object v1

    .line 1674
    .local v1, "_hidl_out_batchingIface":Landroid/hardware/gnss/V2_0/IGnssBatching;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1675
    if-nez v1, :cond_178

    goto :goto_17c

    :cond_178
    invoke-interface {v1}, Landroid/hardware/gnss/V2_0/IGnssBatching;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    :goto_17c
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1676
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1677
    goto/16 :goto_495

    .line 1660
    .end local v1    # "_hidl_out_batchingIface":Landroid/hardware/gnss/V2_0/IGnssBatching;
    :sswitch_184
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1662
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionVisibilityControl()Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;

    move-result-object v1

    .line 1663
    .local v1, "_hidl_out_visibilityControlIface":Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1664
    if-nez v1, :cond_191

    goto :goto_195

    :cond_191
    invoke-interface {v1}, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    :goto_195
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1665
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1666
    goto/16 :goto_495

    .line 1649
    .end local v1    # "_hidl_out_visibilityControlIface":Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;
    :sswitch_19d
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1651
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionMeasurementCorrections()Landroid/hardware/gnss/measurement_corrections/V1_0/IMeasurementCorrections;

    move-result-object v1

    .line 1652
    .local v1, "_hidl_out_measurementCorrectionsIface":Landroid/hardware/gnss/measurement_corrections/V1_0/IMeasurementCorrections;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1653
    if-nez v1, :cond_1aa

    goto :goto_1ae

    :cond_1aa
    invoke-interface {v1}, Landroid/hardware/gnss/measurement_corrections/V1_0/IMeasurementCorrections;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    :goto_1ae
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1654
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1655
    goto/16 :goto_495

    .line 1638
    .end local v1    # "_hidl_out_measurementCorrectionsIface":Landroid/hardware/gnss/measurement_corrections/V1_0/IMeasurementCorrections;
    :sswitch_1b6
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1640
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssMeasurement_2_0()Landroid/hardware/gnss/V2_0/IGnssMeasurement;

    move-result-object v1

    .line 1641
    .local v1, "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V2_0/IGnssMeasurement;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1642
    if-nez v1, :cond_1c3

    goto :goto_1c7

    :cond_1c3
    invoke-interface {v1}, Landroid/hardware/gnss/V2_0/IGnssMeasurement;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    :goto_1c7
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1643
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1644
    goto/16 :goto_495

    .line 1627
    .end local v1    # "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V2_0/IGnssMeasurement;
    :sswitch_1cf
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1629
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionAGnssRil_2_0()Landroid/hardware/gnss/V2_0/IAGnssRil;

    move-result-object v1

    .line 1630
    .local v1, "_hidl_out_aGnssRilIface":Landroid/hardware/gnss/V2_0/IAGnssRil;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1631
    if-nez v1, :cond_1dc

    goto :goto_1e0

    :cond_1dc
    invoke-interface {v1}, Landroid/hardware/gnss/V2_0/IAGnssRil;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    :goto_1e0
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1632
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1633
    goto/16 :goto_495

    .line 1616
    .end local v1    # "_hidl_out_aGnssRilIface":Landroid/hardware/gnss/V2_0/IAGnssRil;
    :sswitch_1e8
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1618
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionAGnss_2_0()Landroid/hardware/gnss/V2_0/IAGnss;

    move-result-object v1

    .line 1619
    .local v1, "_hidl_out_aGnssIface":Landroid/hardware/gnss/V2_0/IAGnss;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1620
    if-nez v1, :cond_1f5

    goto :goto_1f9

    :cond_1f5
    invoke-interface {v1}, Landroid/hardware/gnss/V2_0/IAGnss;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    :goto_1f9
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1621
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1622
    goto/16 :goto_495

    .line 1605
    .end local v1    # "_hidl_out_aGnssIface":Landroid/hardware/gnss/V2_0/IAGnss;
    :sswitch_201
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1607
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssDebug_2_0()Landroid/hardware/gnss/V2_0/IGnssDebug;

    move-result-object v1

    .line 1608
    .local v1, "_hidl_out_gnssDebugIface":Landroid/hardware/gnss/V2_0/IGnssDebug;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1609
    if-nez v1, :cond_20e

    goto :goto_212

    :cond_20e
    invoke-interface {v1}, Landroid/hardware/gnss/V2_0/IGnssDebug;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    :goto_212
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1610
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1611
    goto/16 :goto_495

    .line 1594
    .end local v1    # "_hidl_out_gnssDebugIface":Landroid/hardware/gnss/V2_0/IGnssDebug;
    :sswitch_21a
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1596
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssConfiguration_2_0()Landroid/hardware/gnss/V2_0/IGnssConfiguration;

    move-result-object v1

    .line 1597
    .local v1, "_hidl_out_gnssConfigurationIface":Landroid/hardware/gnss/V2_0/IGnssConfiguration;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1598
    if-nez v1, :cond_227

    goto :goto_22b

    :cond_227
    invoke-interface {v1}, Landroid/hardware/gnss/V2_0/IGnssConfiguration;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    :goto_22b
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1599
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1600
    goto/16 :goto_495

    .line 1582
    .end local v1    # "_hidl_out_gnssConfigurationIface":Landroid/hardware/gnss/V2_0/IGnssConfiguration;
    :sswitch_233
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1584
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/gnss/V2_0/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V2_0/IGnssCallback;

    move-result-object v1

    .line 1585
    .local v1, "callback":Landroid/hardware/gnss/V2_0/IGnssCallback;
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->setCallback_2_0(Landroid/hardware/gnss/V2_0/IGnssCallback;)Z

    move-result v2

    .line 1586
    .restart local v2    # "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1587
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1588
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1589
    goto/16 :goto_495

    .line 1569
    .end local v1    # "callback":Landroid/hardware/gnss/V2_0/IGnssCallback;
    .end local v2    # "_hidl_out_success":Z
    :sswitch_24d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1571
    new-instance v1, Landroid/hardware/gnss/V1_0/GnssLocation;

    invoke-direct {v1}, Landroid/hardware/gnss/V1_0/GnssLocation;-><init>()V

    .line 1572
    .local v1, "location":Landroid/hardware/gnss/V1_0/GnssLocation;
    invoke-virtual {v1, p2}, Landroid/hardware/gnss/V1_0/GnssLocation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1573
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->injectBestLocation(Landroid/hardware/gnss/V1_0/GnssLocation;)Z

    move-result v2

    .line 1574
    .restart local v2    # "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1575
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1576
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1577
    goto/16 :goto_495

    .line 1558
    .end local v1    # "location":Landroid/hardware/gnss/V1_0/GnssLocation;
    .end local v2    # "_hidl_out_success":Z
    :sswitch_267
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1560
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssMeasurement_1_1()Landroid/hardware/gnss/V1_1/IGnssMeasurement;

    move-result-object v1

    .line 1561
    .local v1, "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_1/IGnssMeasurement;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1562
    if-nez v1, :cond_274

    goto :goto_278

    :cond_274
    invoke-interface {v1}, Landroid/hardware/gnss/V1_1/IGnssMeasurement;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    :goto_278
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1563
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1564
    goto/16 :goto_495

    .line 1547
    .end local v1    # "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_1/IGnssMeasurement;
    :sswitch_280
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1549
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssConfiguration_1_1()Landroid/hardware/gnss/V1_1/IGnssConfiguration;

    move-result-object v1

    .line 1550
    .local v1, "_hidl_out_gnssConfigurationIface":Landroid/hardware/gnss/V1_1/IGnssConfiguration;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1551
    if-nez v1, :cond_28d

    goto :goto_291

    :cond_28d
    invoke-interface {v1}, Landroid/hardware/gnss/V1_1/IGnssConfiguration;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    :goto_291
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1552
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1553
    goto/16 :goto_495

    .line 1530
    .end local v1    # "_hidl_out_gnssConfigurationIface":Landroid/hardware/gnss/V1_1/IGnssConfiguration;
    :sswitch_299
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1532
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 1533
    .local v1, "mode":B
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1534
    .local v2, "recurrence":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1535
    .local v3, "minIntervalMs":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1536
    .local v4, "preferredAccuracyMeters":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 1537
    .local v5, "preferredTimeMs":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 1538
    .local v6, "lowPowerMode":Z
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->setPositionMode_1_1(BIIIIZ)Z

    move-result v9

    .line 1539
    .local v9, "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1540
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1541
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1542
    goto/16 :goto_495

    .line 1518
    .end local v1    # "mode":B
    .end local v2    # "recurrence":I
    .end local v3    # "minIntervalMs":I
    .end local v4    # "preferredAccuracyMeters":I
    .end local v5    # "preferredTimeMs":I
    .end local v6    # "lowPowerMode":Z
    .end local v9    # "_hidl_out_success":Z
    :sswitch_2c4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1520
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/gnss/V1_1/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_1/IGnssCallback;

    move-result-object v1

    .line 1521
    .local v1, "callback":Landroid/hardware/gnss/V1_1/IGnssCallback;
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->setCallback_1_1(Landroid/hardware/gnss/V1_1/IGnssCallback;)Z

    move-result v2

    .line 1522
    .local v2, "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1523
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1524
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1525
    goto/16 :goto_495

    .line 1507
    .end local v1    # "callback":Landroid/hardware/gnss/V1_1/IGnssCallback;
    .end local v2    # "_hidl_out_success":Z
    :sswitch_2de
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1509
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssBatching()Landroid/hardware/gnss/V1_0/IGnssBatching;

    move-result-object v1

    .line 1510
    .local v1, "_hidl_out_batchingIface":Landroid/hardware/gnss/V1_0/IGnssBatching;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1511
    if-nez v1, :cond_2eb

    goto :goto_2ef

    :cond_2eb
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssBatching;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    :goto_2ef
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1512
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1513
    goto/16 :goto_495

    .line 1496
    .end local v1    # "_hidl_out_batchingIface":Landroid/hardware/gnss/V1_0/IGnssBatching;
    :sswitch_2f7
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1498
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssDebug()Landroid/hardware/gnss/V1_0/IGnssDebug;

    move-result-object v1

    .line 1499
    .local v1, "_hidl_out_debugIface":Landroid/hardware/gnss/V1_0/IGnssDebug;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1500
    if-nez v1, :cond_304

    goto :goto_308

    :cond_304
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssDebug;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    :goto_308
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1501
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1502
    goto/16 :goto_495

    .line 1485
    .end local v1    # "_hidl_out_debugIface":Landroid/hardware/gnss/V1_0/IGnssDebug;
    :sswitch_310
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssConfiguration()Landroid/hardware/gnss/V1_0/IGnssConfiguration;

    move-result-object v1

    .line 1488
    .local v1, "_hidl_out_gnssConfigIface":Landroid/hardware/gnss/V1_0/IGnssConfiguration;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1489
    if-nez v1, :cond_31d

    goto :goto_321

    :cond_31d
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssConfiguration;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    :goto_321
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1490
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1491
    goto/16 :goto_495

    .line 1474
    .end local v1    # "_hidl_out_gnssConfigIface":Landroid/hardware/gnss/V1_0/IGnssConfiguration;
    :sswitch_329
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1476
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionXtra()Landroid/hardware/gnss/V1_0/IGnssXtra;

    move-result-object v1

    .line 1477
    .local v1, "_hidl_out_xtraIface":Landroid/hardware/gnss/V1_0/IGnssXtra;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1478
    if-nez v1, :cond_336

    goto :goto_33a

    :cond_336
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssXtra;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    :goto_33a
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1479
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1480
    goto/16 :goto_495

    .line 1463
    .end local v1    # "_hidl_out_xtraIface":Landroid/hardware/gnss/V1_0/IGnssXtra;
    :sswitch_342
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssNavigationMessage()Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;

    move-result-object v1

    .line 1466
    .local v1, "_hidl_out_gnssNavigationIface":Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1467
    if-nez v1, :cond_34f

    goto :goto_353

    :cond_34f
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    :goto_353
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1468
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1469
    goto/16 :goto_495

    .line 1452
    .end local v1    # "_hidl_out_gnssNavigationIface":Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;
    :sswitch_35b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1454
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssMeasurement()Landroid/hardware/gnss/V1_0/IGnssMeasurement;

    move-result-object v1

    .line 1455
    .local v1, "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_0/IGnssMeasurement;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1456
    if-nez v1, :cond_368

    goto :goto_36c

    :cond_368
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssMeasurement;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    :goto_36c
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1457
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1458
    goto/16 :goto_495

    .line 1441
    .end local v1    # "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_0/IGnssMeasurement;
    :sswitch_374
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1443
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssNi()Landroid/hardware/gnss/V1_0/IGnssNi;

    move-result-object v1

    .line 1444
    .local v1, "_hidl_out_gnssNiIface":Landroid/hardware/gnss/V1_0/IGnssNi;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1445
    if-nez v1, :cond_381

    goto :goto_385

    :cond_381
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssNi;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    :goto_385
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1446
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1447
    goto/16 :goto_495

    .line 1430
    .end local v1    # "_hidl_out_gnssNiIface":Landroid/hardware/gnss/V1_0/IGnssNi;
    :sswitch_38d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1432
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionAGnss()Landroid/hardware/gnss/V1_0/IAGnss;

    move-result-object v1

    .line 1433
    .local v1, "_hidl_out_aGnssIface":Landroid/hardware/gnss/V1_0/IAGnss;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1434
    if-nez v1, :cond_39a

    goto :goto_39e

    :cond_39a
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IAGnss;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    :goto_39e
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1435
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1436
    goto/16 :goto_495

    .line 1419
    .end local v1    # "_hidl_out_aGnssIface":Landroid/hardware/gnss/V1_0/IAGnss;
    :sswitch_3a6
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1421
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssGeofencing()Landroid/hardware/gnss/V1_0/IGnssGeofencing;

    move-result-object v1

    .line 1422
    .local v1, "_hidl_out_gnssGeofencingIface":Landroid/hardware/gnss/V1_0/IGnssGeofencing;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1423
    if-nez v1, :cond_3b3

    goto :goto_3b7

    :cond_3b3
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssGeofencing;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    :goto_3b7
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1424
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1425
    goto/16 :goto_495

    .line 1408
    .end local v1    # "_hidl_out_gnssGeofencingIface":Landroid/hardware/gnss/V1_0/IGnssGeofencing;
    :sswitch_3bf
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1410
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionAGnssRil()Landroid/hardware/gnss/V1_0/IAGnssRil;

    move-result-object v1

    .line 1411
    .local v1, "_hidl_out_aGnssRilIface":Landroid/hardware/gnss/V1_0/IAGnssRil;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1412
    if-nez v1, :cond_3cc

    goto :goto_3d0

    :cond_3cc
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IAGnssRil;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    :goto_3d0
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1413
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1414
    goto/16 :goto_495

    .line 1392
    .end local v1    # "_hidl_out_aGnssRilIface":Landroid/hardware/gnss/V1_0/IAGnssRil;
    :sswitch_3d8
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 1395
    .local v1, "mode":B
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1396
    .local v2, "recurrence":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1397
    .restart local v3    # "minIntervalMs":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1398
    .restart local v4    # "preferredAccuracyMeters":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 1399
    .restart local v5    # "preferredTimeMs":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->setPositionMode(BIIII)Z

    move-result v6

    .line 1400
    .local v6, "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1401
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1402
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1403
    goto/16 :goto_495

    .line 1381
    .end local v1    # "mode":B
    .end local v2    # "recurrence":I
    .end local v3    # "minIntervalMs":I
    .end local v4    # "preferredAccuracyMeters":I
    .end local v5    # "preferredTimeMs":I
    .end local v6    # "_hidl_out_success":Z
    :sswitch_3ff
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v1

    .line 1384
    .local v1, "aidingDataFlags":S
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->deleteAidingData(S)V

    .line 1385
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1386
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1387
    goto/16 :goto_495

    .line 1367
    .end local v1    # "aidingDataFlags":S
    :sswitch_411
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v1

    .line 1370
    .local v1, "latitudeDegrees":D
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v3

    .line 1371
    .local v3, "longitudeDegrees":D
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    move-result v5

    .line 1372
    .local v5, "accuracyMeters":F
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->injectLocation(DDF)Z

    move-result v6

    .line 1373
    .restart local v6    # "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1374
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1375
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1376
    goto :goto_495

    .line 1353
    .end local v1    # "latitudeDegrees":D
    .end local v3    # "longitudeDegrees":D
    .end local v5    # "accuracyMeters":F
    .end local v6    # "_hidl_out_success":Z
    :sswitch_42f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1355
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v1

    .line 1356
    .local v1, "timeMs":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 1357
    .local v3, "timeReferenceMs":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 1358
    .local v5, "uncertaintyMs":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->injectTime(JJI)Z

    move-result v6

    .line 1359
    .restart local v6    # "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1360
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1361
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1362
    goto :goto_495

    .line 1343
    .end local v1    # "timeMs":J
    .end local v3    # "timeReferenceMs":J
    .end local v5    # "uncertaintyMs":I
    .end local v6    # "_hidl_out_success":Z
    :sswitch_44d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1345
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->cleanup()V

    .line 1346
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1347
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1348
    goto :goto_495

    .line 1332
    :sswitch_45a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1334
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->stop()Z

    move-result v1

    .line 1335
    .local v1, "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1336
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1337
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1338
    goto :goto_495

    .line 1321
    .end local v1    # "_hidl_out_success":Z
    :sswitch_46b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->start()Z

    move-result v1

    .line 1324
    .restart local v1    # "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1325
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1326
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1327
    goto :goto_495

    .line 1309
    .end local v1    # "_hidl_out_success":Z
    :sswitch_47c
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssCallback;

    move-result-object v1

    .line 1312
    .local v1, "callback":Landroid/hardware/gnss/V1_0/IGnssCallback;
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->setCallback(Landroid/hardware/gnss/V1_0/IGnssCallback;)Z

    move-result v2

    .line 1313
    .local v2, "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1314
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1315
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1316
    nop

    .line 1865
    .end local v1    # "callback":Landroid/hardware/gnss/V1_0/IGnssCallback;
    .end local v2    # "_hidl_out_success":Z
    :goto_495
    return-void

    :sswitch_data_496
    .sparse-switch
        0x1 -> :sswitch_47c
        0x2 -> :sswitch_46b
        0x3 -> :sswitch_45a
        0x4 -> :sswitch_44d
        0x5 -> :sswitch_42f
        0x6 -> :sswitch_411
        0x7 -> :sswitch_3ff
        0x8 -> :sswitch_3d8
        0x9 -> :sswitch_3bf
        0xa -> :sswitch_3a6
        0xb -> :sswitch_38d
        0xc -> :sswitch_374
        0xd -> :sswitch_35b
        0xe -> :sswitch_342
        0xf -> :sswitch_329
        0x10 -> :sswitch_310
        0x11 -> :sswitch_2f7
        0x12 -> :sswitch_2de
        0x13 -> :sswitch_2c4
        0x14 -> :sswitch_299
        0x15 -> :sswitch_280
        0x16 -> :sswitch_267
        0x17 -> :sswitch_24d
        0x18 -> :sswitch_233
        0x19 -> :sswitch_21a
        0x1a -> :sswitch_201
        0x1b -> :sswitch_1e8
        0x1c -> :sswitch_1cf
        0x1d -> :sswitch_1b6
        0x1e -> :sswitch_19d
        0x1f -> :sswitch_184
        0x20 -> :sswitch_16b
        0x21 -> :sswitch_151
        0x22 -> :sswitch_137
        0x23 -> :sswitch_11e
        0x24 -> :sswitch_105
        0x25 -> :sswitch_ec
        0x26 -> :sswitch_d3
        0xf43484e -> :sswitch_c1
        0xf444247 -> :sswitch_ab
        0xf445343 -> :sswitch_99
        0xf485348 -> :sswitch_44
        0xf494e54 -> :sswitch_3c
        0xf4c5444 -> :sswitch_3a
        0xf504e47 -> :sswitch_2c
        0xf524546 -> :sswitch_1a
        0xf535953 -> :sswitch_12
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 1260
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1288
    const-string v0, "android.hardware.gnss@2.1::IGnss"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1289
    return-object p0

    .line 1291
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

    .line 1295
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->registerService(Ljava/lang/String;)V

    .line 1296
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 1250
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1282
    const/4 v0, 0x1

    return v0
.end method
