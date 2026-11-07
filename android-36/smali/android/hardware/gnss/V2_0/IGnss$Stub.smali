.class public abstract Landroid/hardware/gnss/V2_0/IGnss$Stub;
.super Landroid/os/HwBinder;
.source "IGnss.java"

# interfaces
.implements Landroid/hardware/gnss/V2_0/IGnss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_0/IGnss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1150
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1153
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

    .line 1168
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1207
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1208
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1209
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1210
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1211
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

    .line 1180
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

    :array_38
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

    :array_4c
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

    .line 1158
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss@1.0::IGnss"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.gnss@2.0::IGnss"

    const-string v4, "android.hardware.gnss@1.1::IGnss"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1174
    const-string v0, "android.hardware.gnss@2.0::IGnss"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1195
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 1217
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1219
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

    .line 1247
    move-object v7, p3

    const-string v1, "android.hardware.gnss@1.1::IGnss"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.gnss@2.0::IGnss"

    const-string v4, "android.hardware.gnss@1.0::IGnss"

    const/4 v5, 0x0

    const/4 v8, 0x0

    sparse-switch p1, :sswitch_data_416

    goto/16 :goto_415

    .line 1738
    :sswitch_10
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1740
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->notifySyspropsChanged()V

    .line 1741
    goto/16 :goto_415

    .line 1727
    :sswitch_18
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1729
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 1730
    .local v1, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1731
    invoke-virtual {v1, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1732
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1733
    goto/16 :goto_415

    .line 1717
    .end local v1    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1719
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->ping()V

    .line 1720
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1721
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1722
    goto/16 :goto_415

    .line 1712
    :sswitch_38
    goto/16 :goto_415

    .line 1704
    :sswitch_3a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1706
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->setHALInstrumentation()V

    .line 1707
    goto/16 :goto_415

    .line 1670
    :sswitch_42
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1672
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 1673
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1675
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1677
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1678
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1679
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1680
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 1681
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_69
    if-ge v5, v3, :cond_8a

    .line 1683
    mul-int/lit8 v6, v5, 0x20

    int-to-long v8, v6

    .line 1684
    .local v8, "_hidl_array_offset_1":J
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 1686
    .local v6, "_hidl_array_item_1":[B
    if-eqz v6, :cond_82

    array-length v10, v6

    const/16 v11, 0x20

    if-ne v10, v11, :cond_82

    .line 1690
    invoke-virtual {v4, v8, v9, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1691
    nop

    .line 1681
    .end local v6    # "_hidl_array_item_1":[B
    .end local v8    # "_hidl_array_offset_1":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    .line 1687
    .restart local v6    # "_hidl_array_item_1":[B
    .restart local v8    # "_hidl_array_offset_1":J
    :cond_82
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Array element is not of the expected length"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1694
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_item_1":[B
    .end local v8    # "_hidl_array_offset_1":J
    :cond_8a
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1696
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1698
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1699
    goto/16 :goto_415

    .line 1659
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_97
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1661
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 1662
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1663
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1664
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1665
    goto/16 :goto_415

    .line 1647
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1649
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 1650
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1651
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1652
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1653
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1654
    goto/16 :goto_415

    .line 1636
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bf
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1638
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 1639
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1640
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1641
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1642
    goto/16 :goto_415

    .line 1623
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_d1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1625
    new-instance v1, Landroid/hardware/gnss/V2_0/GnssLocation;

    invoke-direct {v1}, Landroid/hardware/gnss/V2_0/GnssLocation;-><init>()V

    .line 1626
    .local v1, "location":Landroid/hardware/gnss/V2_0/GnssLocation;
    invoke-virtual {v1, p2}, Landroid/hardware/gnss/V2_0/GnssLocation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1627
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->injectBestLocation_2_0(Landroid/hardware/gnss/V2_0/GnssLocation;)Z

    move-result v2

    .line 1628
    .local v2, "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1629
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1630
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1631
    goto/16 :goto_415

    .line 1612
    .end local v1    # "location":Landroid/hardware/gnss/V2_0/GnssLocation;
    .end local v2    # "_hidl_out_success":Z
    :sswitch_eb
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1614
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->getExtensionGnssBatching_2_0()Landroid/hardware/gnss/V2_0/IGnssBatching;

    move-result-object v1

    .line 1615
    .local v1, "_hidl_out_batchingIface":Landroid/hardware/gnss/V2_0/IGnssBatching;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1616
    if-nez v1, :cond_f8

    goto :goto_fc

    :cond_f8
    invoke-interface {v1}, Landroid/hardware/gnss/V2_0/IGnssBatching;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_fc
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1617
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1618
    goto/16 :goto_415

    .line 1601
    .end local v1    # "_hidl_out_batchingIface":Landroid/hardware/gnss/V2_0/IGnssBatching;
    :sswitch_104
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1603
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->getExtensionVisibilityControl()Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;

    move-result-object v1

    .line 1604
    .local v1, "_hidl_out_visibilityControlIface":Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1605
    if-nez v1, :cond_111

    goto :goto_115

    :cond_111
    invoke-interface {v1}, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_115
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1606
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1607
    goto/16 :goto_415

    .line 1590
    .end local v1    # "_hidl_out_visibilityControlIface":Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;
    :sswitch_11d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1592
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->getExtensionMeasurementCorrections()Landroid/hardware/gnss/measurement_corrections/V1_0/IMeasurementCorrections;

    move-result-object v1

    .line 1593
    .local v1, "_hidl_out_measurementCorrectionsIface":Landroid/hardware/gnss/measurement_corrections/V1_0/IMeasurementCorrections;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1594
    if-nez v1, :cond_12a

    goto :goto_12e

    :cond_12a
    invoke-interface {v1}, Landroid/hardware/gnss/measurement_corrections/V1_0/IMeasurementCorrections;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_12e
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1595
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1596
    goto/16 :goto_415

    .line 1579
    .end local v1    # "_hidl_out_measurementCorrectionsIface":Landroid/hardware/gnss/measurement_corrections/V1_0/IMeasurementCorrections;
    :sswitch_136
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1581
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->getExtensionGnssMeasurement_2_0()Landroid/hardware/gnss/V2_0/IGnssMeasurement;

    move-result-object v1

    .line 1582
    .local v1, "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V2_0/IGnssMeasurement;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1583
    if-nez v1, :cond_143

    goto :goto_147

    :cond_143
    invoke-interface {v1}, Landroid/hardware/gnss/V2_0/IGnssMeasurement;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_147
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1584
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1585
    goto/16 :goto_415

    .line 1568
    .end local v1    # "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V2_0/IGnssMeasurement;
    :sswitch_14f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1570
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->getExtensionAGnssRil_2_0()Landroid/hardware/gnss/V2_0/IAGnssRil;

    move-result-object v1

    .line 1571
    .local v1, "_hidl_out_aGnssRilIface":Landroid/hardware/gnss/V2_0/IAGnssRil;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1572
    if-nez v1, :cond_15c

    goto :goto_160

    :cond_15c
    invoke-interface {v1}, Landroid/hardware/gnss/V2_0/IAGnssRil;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_160
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1573
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1574
    goto/16 :goto_415

    .line 1557
    .end local v1    # "_hidl_out_aGnssRilIface":Landroid/hardware/gnss/V2_0/IAGnssRil;
    :sswitch_168
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1559
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->getExtensionAGnss_2_0()Landroid/hardware/gnss/V2_0/IAGnss;

    move-result-object v1

    .line 1560
    .local v1, "_hidl_out_aGnssIface":Landroid/hardware/gnss/V2_0/IAGnss;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1561
    if-nez v1, :cond_175

    goto :goto_179

    :cond_175
    invoke-interface {v1}, Landroid/hardware/gnss/V2_0/IAGnss;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_179
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1562
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1563
    goto/16 :goto_415

    .line 1546
    .end local v1    # "_hidl_out_aGnssIface":Landroid/hardware/gnss/V2_0/IAGnss;
    :sswitch_181
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1548
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->getExtensionGnssDebug_2_0()Landroid/hardware/gnss/V2_0/IGnssDebug;

    move-result-object v1

    .line 1549
    .local v1, "_hidl_out_gnssDebugIface":Landroid/hardware/gnss/V2_0/IGnssDebug;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1550
    if-nez v1, :cond_18e

    goto :goto_192

    :cond_18e
    invoke-interface {v1}, Landroid/hardware/gnss/V2_0/IGnssDebug;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_192
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1551
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1552
    goto/16 :goto_415

    .line 1535
    .end local v1    # "_hidl_out_gnssDebugIface":Landroid/hardware/gnss/V2_0/IGnssDebug;
    :sswitch_19a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1537
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->getExtensionGnssConfiguration_2_0()Landroid/hardware/gnss/V2_0/IGnssConfiguration;

    move-result-object v1

    .line 1538
    .local v1, "_hidl_out_gnssConfigurationIface":Landroid/hardware/gnss/V2_0/IGnssConfiguration;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1539
    if-nez v1, :cond_1a7

    goto :goto_1ab

    :cond_1a7
    invoke-interface {v1}, Landroid/hardware/gnss/V2_0/IGnssConfiguration;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_1ab
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1540
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1541
    goto/16 :goto_415

    .line 1523
    .end local v1    # "_hidl_out_gnssConfigurationIface":Landroid/hardware/gnss/V2_0/IGnssConfiguration;
    :sswitch_1b3
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1525
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/gnss/V2_0/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V2_0/IGnssCallback;

    move-result-object v1

    .line 1526
    .local v1, "callback":Landroid/hardware/gnss/V2_0/IGnssCallback;
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->setCallback_2_0(Landroid/hardware/gnss/V2_0/IGnssCallback;)Z

    move-result v2

    .line 1527
    .restart local v2    # "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1528
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1529
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1530
    goto/16 :goto_415

    .line 1510
    .end local v1    # "callback":Landroid/hardware/gnss/V2_0/IGnssCallback;
    .end local v2    # "_hidl_out_success":Z
    :sswitch_1cd
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1512
    new-instance v1, Landroid/hardware/gnss/V1_0/GnssLocation;

    invoke-direct {v1}, Landroid/hardware/gnss/V1_0/GnssLocation;-><init>()V

    .line 1513
    .local v1, "location":Landroid/hardware/gnss/V1_0/GnssLocation;
    invoke-virtual {v1, p2}, Landroid/hardware/gnss/V1_0/GnssLocation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1514
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->injectBestLocation(Landroid/hardware/gnss/V1_0/GnssLocation;)Z

    move-result v2

    .line 1515
    .restart local v2    # "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1516
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1517
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1518
    goto/16 :goto_415

    .line 1499
    .end local v1    # "location":Landroid/hardware/gnss/V1_0/GnssLocation;
    .end local v2    # "_hidl_out_success":Z
    :sswitch_1e7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1501
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->getExtensionGnssMeasurement_1_1()Landroid/hardware/gnss/V1_1/IGnssMeasurement;

    move-result-object v1

    .line 1502
    .local v1, "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_1/IGnssMeasurement;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1503
    if-nez v1, :cond_1f4

    goto :goto_1f8

    :cond_1f4
    invoke-interface {v1}, Landroid/hardware/gnss/V1_1/IGnssMeasurement;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_1f8
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1504
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1505
    goto/16 :goto_415

    .line 1488
    .end local v1    # "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_1/IGnssMeasurement;
    :sswitch_200
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1490
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->getExtensionGnssConfiguration_1_1()Landroid/hardware/gnss/V1_1/IGnssConfiguration;

    move-result-object v1

    .line 1491
    .local v1, "_hidl_out_gnssConfigurationIface":Landroid/hardware/gnss/V1_1/IGnssConfiguration;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1492
    if-nez v1, :cond_20d

    goto :goto_211

    :cond_20d
    invoke-interface {v1}, Landroid/hardware/gnss/V1_1/IGnssConfiguration;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_211
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1493
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1494
    goto/16 :goto_415

    .line 1471
    .end local v1    # "_hidl_out_gnssConfigurationIface":Landroid/hardware/gnss/V1_1/IGnssConfiguration;
    :sswitch_219
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1473
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 1474
    .local v1, "mode":B
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1475
    .local v2, "recurrence":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1476
    .local v3, "minIntervalMs":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1477
    .local v4, "preferredAccuracyMeters":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 1478
    .local v5, "preferredTimeMs":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 1479
    .local v6, "lowPowerMode":Z
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->setPositionMode_1_1(BIIIIZ)Z

    move-result v9

    .line 1480
    .local v9, "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1481
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1482
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1483
    goto/16 :goto_415

    .line 1459
    .end local v1    # "mode":B
    .end local v2    # "recurrence":I
    .end local v3    # "minIntervalMs":I
    .end local v4    # "preferredAccuracyMeters":I
    .end local v5    # "preferredTimeMs":I
    .end local v6    # "lowPowerMode":Z
    .end local v9    # "_hidl_out_success":Z
    :sswitch_244
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1461
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/gnss/V1_1/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_1/IGnssCallback;

    move-result-object v1

    .line 1462
    .local v1, "callback":Landroid/hardware/gnss/V1_1/IGnssCallback;
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->setCallback_1_1(Landroid/hardware/gnss/V1_1/IGnssCallback;)Z

    move-result v2

    .line 1463
    .local v2, "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1464
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1465
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1466
    goto/16 :goto_415

    .line 1448
    .end local v1    # "callback":Landroid/hardware/gnss/V1_1/IGnssCallback;
    .end local v2    # "_hidl_out_success":Z
    :sswitch_25e
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1450
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->getExtensionGnssBatching()Landroid/hardware/gnss/V1_0/IGnssBatching;

    move-result-object v1

    .line 1451
    .local v1, "_hidl_out_batchingIface":Landroid/hardware/gnss/V1_0/IGnssBatching;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1452
    if-nez v1, :cond_26b

    goto :goto_26f

    :cond_26b
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssBatching;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_26f
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1453
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1454
    goto/16 :goto_415

    .line 1437
    .end local v1    # "_hidl_out_batchingIface":Landroid/hardware/gnss/V1_0/IGnssBatching;
    :sswitch_277
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->getExtensionGnssDebug()Landroid/hardware/gnss/V1_0/IGnssDebug;

    move-result-object v1

    .line 1440
    .local v1, "_hidl_out_debugIface":Landroid/hardware/gnss/V1_0/IGnssDebug;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1441
    if-nez v1, :cond_284

    goto :goto_288

    :cond_284
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssDebug;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_288
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1442
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1443
    goto/16 :goto_415

    .line 1426
    .end local v1    # "_hidl_out_debugIface":Landroid/hardware/gnss/V1_0/IGnssDebug;
    :sswitch_290
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1428
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->getExtensionGnssConfiguration()Landroid/hardware/gnss/V1_0/IGnssConfiguration;

    move-result-object v1

    .line 1429
    .local v1, "_hidl_out_gnssConfigIface":Landroid/hardware/gnss/V1_0/IGnssConfiguration;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1430
    if-nez v1, :cond_29d

    goto :goto_2a1

    :cond_29d
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssConfiguration;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_2a1
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1431
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1432
    goto/16 :goto_415

    .line 1415
    .end local v1    # "_hidl_out_gnssConfigIface":Landroid/hardware/gnss/V1_0/IGnssConfiguration;
    :sswitch_2a9
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1417
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->getExtensionXtra()Landroid/hardware/gnss/V1_0/IGnssXtra;

    move-result-object v1

    .line 1418
    .local v1, "_hidl_out_xtraIface":Landroid/hardware/gnss/V1_0/IGnssXtra;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1419
    if-nez v1, :cond_2b6

    goto :goto_2ba

    :cond_2b6
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssXtra;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_2ba
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1420
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1421
    goto/16 :goto_415

    .line 1404
    .end local v1    # "_hidl_out_xtraIface":Landroid/hardware/gnss/V1_0/IGnssXtra;
    :sswitch_2c2
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1406
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->getExtensionGnssNavigationMessage()Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;

    move-result-object v1

    .line 1407
    .local v1, "_hidl_out_gnssNavigationIface":Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1408
    if-nez v1, :cond_2cf

    goto :goto_2d3

    :cond_2cf
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_2d3
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1409
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1410
    goto/16 :goto_415

    .line 1393
    .end local v1    # "_hidl_out_gnssNavigationIface":Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;
    :sswitch_2db
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1395
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->getExtensionGnssMeasurement()Landroid/hardware/gnss/V1_0/IGnssMeasurement;

    move-result-object v1

    .line 1396
    .local v1, "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_0/IGnssMeasurement;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1397
    if-nez v1, :cond_2e8

    goto :goto_2ec

    :cond_2e8
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssMeasurement;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_2ec
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1398
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1399
    goto/16 :goto_415

    .line 1382
    .end local v1    # "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_0/IGnssMeasurement;
    :sswitch_2f4
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1384
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->getExtensionGnssNi()Landroid/hardware/gnss/V1_0/IGnssNi;

    move-result-object v1

    .line 1385
    .local v1, "_hidl_out_gnssNiIface":Landroid/hardware/gnss/V1_0/IGnssNi;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1386
    if-nez v1, :cond_301

    goto :goto_305

    :cond_301
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssNi;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_305
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1387
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1388
    goto/16 :goto_415

    .line 1371
    .end local v1    # "_hidl_out_gnssNiIface":Landroid/hardware/gnss/V1_0/IGnssNi;
    :sswitch_30d
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->getExtensionAGnss()Landroid/hardware/gnss/V1_0/IAGnss;

    move-result-object v1

    .line 1374
    .local v1, "_hidl_out_aGnssIface":Landroid/hardware/gnss/V1_0/IAGnss;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1375
    if-nez v1, :cond_31a

    goto :goto_31e

    :cond_31a
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IAGnss;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_31e
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1376
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1377
    goto/16 :goto_415

    .line 1360
    .end local v1    # "_hidl_out_aGnssIface":Landroid/hardware/gnss/V1_0/IAGnss;
    :sswitch_326
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1362
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->getExtensionGnssGeofencing()Landroid/hardware/gnss/V1_0/IGnssGeofencing;

    move-result-object v1

    .line 1363
    .local v1, "_hidl_out_gnssGeofencingIface":Landroid/hardware/gnss/V1_0/IGnssGeofencing;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1364
    if-nez v1, :cond_333

    goto :goto_337

    :cond_333
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssGeofencing;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_337
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1365
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1366
    goto/16 :goto_415

    .line 1349
    .end local v1    # "_hidl_out_gnssGeofencingIface":Landroid/hardware/gnss/V1_0/IGnssGeofencing;
    :sswitch_33f
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1351
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->getExtensionAGnssRil()Landroid/hardware/gnss/V1_0/IAGnssRil;

    move-result-object v1

    .line 1352
    .local v1, "_hidl_out_aGnssRilIface":Landroid/hardware/gnss/V1_0/IAGnssRil;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1353
    if-nez v1, :cond_34c

    goto :goto_350

    :cond_34c
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IAGnssRil;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_350
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1354
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1355
    goto/16 :goto_415

    .line 1333
    .end local v1    # "_hidl_out_aGnssRilIface":Landroid/hardware/gnss/V1_0/IAGnssRil;
    :sswitch_358
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 1336
    .local v1, "mode":B
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1337
    .local v2, "recurrence":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1338
    .restart local v3    # "minIntervalMs":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1339
    .restart local v4    # "preferredAccuracyMeters":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 1340
    .restart local v5    # "preferredTimeMs":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->setPositionMode(BIIII)Z

    move-result v6

    .line 1341
    .local v6, "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1342
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1343
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1344
    goto/16 :goto_415

    .line 1322
    .end local v1    # "mode":B
    .end local v2    # "recurrence":I
    .end local v3    # "minIntervalMs":I
    .end local v4    # "preferredAccuracyMeters":I
    .end local v5    # "preferredTimeMs":I
    .end local v6    # "_hidl_out_success":Z
    :sswitch_37f
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v1

    .line 1325
    .local v1, "aidingDataFlags":S
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->deleteAidingData(S)V

    .line 1326
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1327
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1328
    goto/16 :goto_415

    .line 1308
    .end local v1    # "aidingDataFlags":S
    :sswitch_391
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v1

    .line 1311
    .local v1, "latitudeDegrees":D
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v3

    .line 1312
    .local v3, "longitudeDegrees":D
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    move-result v5

    .line 1313
    .local v5, "accuracyMeters":F
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->injectLocation(DDF)Z

    move-result v6

    .line 1314
    .restart local v6    # "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1315
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1316
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1317
    goto :goto_415

    .line 1294
    .end local v1    # "latitudeDegrees":D
    .end local v3    # "longitudeDegrees":D
    .end local v5    # "accuracyMeters":F
    .end local v6    # "_hidl_out_success":Z
    :sswitch_3af
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v1

    .line 1297
    .local v1, "timeMs":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 1298
    .local v3, "timeReferenceMs":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 1299
    .local v5, "uncertaintyMs":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->injectTime(JJI)Z

    move-result v6

    .line 1300
    .restart local v6    # "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1301
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1302
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1303
    goto :goto_415

    .line 1284
    .end local v1    # "timeMs":J
    .end local v3    # "timeReferenceMs":J
    .end local v5    # "uncertaintyMs":I
    .end local v6    # "_hidl_out_success":Z
    :sswitch_3cd
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1286
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->cleanup()V

    .line 1287
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1288
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1289
    goto :goto_415

    .line 1273
    :sswitch_3da
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->stop()Z

    move-result v1

    .line 1276
    .local v1, "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1277
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1278
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1279
    goto :goto_415

    .line 1262
    .end local v1    # "_hidl_out_success":Z
    :sswitch_3eb
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->start()Z

    move-result v1

    .line 1265
    .restart local v1    # "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1266
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1267
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1268
    goto :goto_415

    .line 1250
    .end local v1    # "_hidl_out_success":Z
    :sswitch_3fc
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssCallback;

    move-result-object v1

    .line 1253
    .local v1, "callback":Landroid/hardware/gnss/V1_0/IGnssCallback;
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->setCallback(Landroid/hardware/gnss/V1_0/IGnssCallback;)Z

    move-result v2

    .line 1254
    .local v2, "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1255
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1256
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1257
    nop

    .line 1750
    .end local v1    # "callback":Landroid/hardware/gnss/V1_0/IGnssCallback;
    .end local v2    # "_hidl_out_success":Z
    :goto_415
    return-void

    :sswitch_data_416
    .sparse-switch
        0x1 -> :sswitch_3fc
        0x2 -> :sswitch_3eb
        0x3 -> :sswitch_3da
        0x4 -> :sswitch_3cd
        0x5 -> :sswitch_3af
        0x6 -> :sswitch_391
        0x7 -> :sswitch_37f
        0x8 -> :sswitch_358
        0x9 -> :sswitch_33f
        0xa -> :sswitch_326
        0xb -> :sswitch_30d
        0xc -> :sswitch_2f4
        0xd -> :sswitch_2db
        0xe -> :sswitch_2c2
        0xf -> :sswitch_2a9
        0x10 -> :sswitch_290
        0x11 -> :sswitch_277
        0x12 -> :sswitch_25e
        0x13 -> :sswitch_244
        0x14 -> :sswitch_219
        0x15 -> :sswitch_200
        0x16 -> :sswitch_1e7
        0x17 -> :sswitch_1cd
        0x18 -> :sswitch_1b3
        0x19 -> :sswitch_19a
        0x1a -> :sswitch_181
        0x1b -> :sswitch_168
        0x1c -> :sswitch_14f
        0x1d -> :sswitch_136
        0x1e -> :sswitch_11d
        0x1f -> :sswitch_104
        0x20 -> :sswitch_eb
        0x21 -> :sswitch_d1
        0xf43484e -> :sswitch_bf
        0xf444247 -> :sswitch_a9
        0xf445343 -> :sswitch_97
        0xf485348 -> :sswitch_42
        0xf494e54 -> :sswitch_3a
        0xf4c5444 -> :sswitch_38
        0xf504e47 -> :sswitch_2a
        0xf524546 -> :sswitch_18
        0xf535953 -> :sswitch_10
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 1201
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1229
    const-string v0, "android.hardware.gnss@2.0::IGnss"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1230
    return-object p0

    .line 1232
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

    .line 1236
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->registerService(Ljava/lang/String;)V

    .line 1237
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 1191
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnss$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1223
    const/4 v0, 0x1

    return v0
.end method
