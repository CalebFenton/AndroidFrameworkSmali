.class public abstract Landroid/hardware/radio/V1_1/IRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IRadioIndication.java"

# interfaces
.implements Landroid/hardware/radio/V1_1/IRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_1/IRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1244
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1247
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

    .line 1261
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1299
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1300
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1301
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1302
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1303
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

    .line 1273
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

    :array_34
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

    .line 1252
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.0::IRadioIndication"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.radio@1.1::IRadioIndication"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1267
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1287
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 1309
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1311
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

    .line 1339
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    const/4 v1, 0x0

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.radio@1.0::IRadioIndication"

    sparse-switch p1, :sswitch_data_3d6

    goto/16 :goto_3d5

    .line 1928
    :sswitch_c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1930
    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->notifySyspropsChanged()V

    .line 1931
    goto/16 :goto_3d5

    .line 1917
    :sswitch_14
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1919
    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1920
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1921
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1922
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1923
    goto/16 :goto_3d5

    .line 1907
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_26
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1909
    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->ping()V

    .line 1910
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1911
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1912
    goto/16 :goto_3d5

    .line 1902
    :sswitch_34
    goto/16 :goto_3d5

    .line 1894
    :sswitch_36
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1896
    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->setHALInstrumentation()V

    .line 1897
    goto/16 :goto_3d5

    .line 1860
    :sswitch_3e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1862
    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1863
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1865
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1867
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1868
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1869
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1870
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1871
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_65
    if-ge v4, v3, :cond_86

    .line 1873
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1874
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1876
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7e

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7e

    .line 1880
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1881
    nop

    .line 1871
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    .line 1877
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7e
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1884
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_86
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1886
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1888
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1889
    goto/16 :goto_3d5

    .line 1849
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_93
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1851
    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1852
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1853
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1854
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1855
    goto/16 :goto_3d5

    .line 1837
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1839
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1840
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1841
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1842
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1843
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1844
    goto/16 :goto_3d5

    .line 1826
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1828
    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1829
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1830
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1831
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1832
    goto/16 :goto_3d5

    .line 1815
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cd
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1817
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1818
    .local v0, "type":I
    new-instance v1, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 1819
    .local v1, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1820
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 1821
    goto/16 :goto_3d5

    .line 1804
    .end local v0    # "type":I
    .end local v1    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :sswitch_e1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1806
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1807
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_1/NetworkScanResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/NetworkScanResult;-><init>()V

    .line 1808
    .local v1, "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_1/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1809
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V

    .line 1810
    goto/16 :goto_3d5

    .line 1795
    .end local v0    # "type":I
    .end local v1    # "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    :sswitch_f5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1797
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1798
    .local v0, "info":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->carrierInfoForImsiEncryption(I)V

    .line 1799
    goto/16 :goto_3d5

    .line 1785
    .end local v0    # "info":I
    :sswitch_101
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1788
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1789
    .local v1, "reason":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->modemReset(ILjava/lang/String;)V

    .line 1790
    goto/16 :goto_3d5

    .line 1774
    .end local v0    # "type":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_111
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1776
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1777
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/PcoDataInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/PcoDataInfo;-><init>()V

    .line 1778
    .local v1, "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/PcoDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1779
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V

    .line 1780
    goto/16 :goto_3d5

    .line 1763
    .end local v0    # "type":I
    .end local v1    # "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    :sswitch_125
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1765
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1766
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 1767
    .local v1, "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1768
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 1769
    goto/16 :goto_3d5

    .line 1753
    .end local v0    # "type":I
    .end local v1    # "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    :sswitch_139
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1755
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1756
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1757
    .local v1, "alpha":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    .line 1758
    goto/16 :goto_3d5

    .line 1742
    .end local v0    # "type":I
    .end local v1    # "alpha":Ljava/lang/String;
    :sswitch_149
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1744
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1745
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 1746
    .local v1, "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1747
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V

    .line 1748
    goto/16 :goto_3d5

    .line 1731
    .end local v0    # "type":I
    .end local v1    # "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    :sswitch_15d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1733
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1734
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 1735
    .local v1, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1736
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 1737
    goto/16 :goto_3d5

    .line 1721
    .end local v0    # "type":I
    .end local v1    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_171
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1723
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1724
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1725
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->hardwareConfigChanged(ILjava/util/ArrayList;)V

    .line 1726
    goto/16 :goto_3d5

    .line 1711
    .end local v0    # "type":I
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :sswitch_181
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1713
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1714
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1715
    .local v1, "state":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->srvccStateNotify(II)V

    .line 1716
    goto/16 :goto_3d5

    .line 1701
    .end local v0    # "type":I
    .end local v1    # "state":I
    :sswitch_191
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1703
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1704
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1705
    .local v1, "activate":Z
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->subscriptionStatusChanged(IZ)V

    .line 1706
    goto/16 :goto_3d5

    .line 1692
    .end local v0    # "type":I
    .end local v1    # "activate":Z
    :sswitch_1a1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1694
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1695
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->imsNetworkStateChanged(I)V

    .line 1696
    goto/16 :goto_3d5

    .line 1682
    .end local v0    # "type":I
    :sswitch_1ad
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1684
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1685
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1686
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->cellInfoList(ILjava/util/ArrayList;)V

    .line 1687
    goto/16 :goto_3d5

    .line 1672
    .end local v0    # "type":I
    .end local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :sswitch_1bd
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1674
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1675
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1676
    .local v1, "rat":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->voiceRadioTechChanged(II)V

    .line 1677
    goto/16 :goto_3d5

    .line 1663
    .end local v0    # "type":I
    .end local v1    # "rat":I
    :sswitch_1cd
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1665
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1666
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->rilConnected(I)V

    .line 1667
    goto/16 :goto_3d5

    .line 1654
    .end local v0    # "type":I
    :sswitch_1d9
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1656
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1657
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->exitEmergencyCallbackMode(I)V

    .line 1658
    goto/16 :goto_3d5

    .line 1644
    .end local v0    # "type":I
    :sswitch_1e5
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1646
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1647
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1648
    .local v1, "version":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->cdmaPrlChanged(II)V

    .line 1649
    goto/16 :goto_3d5

    .line 1634
    .end local v0    # "type":I
    .end local v1    # "version":I
    :sswitch_1f5
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1636
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1637
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1638
    .local v1, "cdmaSource":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    .line 1639
    goto/16 :goto_3d5

    .line 1625
    .end local v0    # "type":I
    .end local v1    # "cdmaSource":I
    :sswitch_205
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1627
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1628
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->resendIncallMute(I)V

    .line 1629
    goto/16 :goto_3d5

    .line 1615
    .end local v0    # "type":I
    :sswitch_211
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1617
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1618
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1619
    .local v1, "start":Z
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->indicateRingbackTone(IZ)V

    .line 1620
    goto/16 :goto_3d5

    .line 1604
    .end local v0    # "type":I
    .end local v1    # "start":Z
    :sswitch_221
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1606
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1607
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;-><init>()V

    .line 1608
    .local v1, "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1609
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V

    .line 1610
    goto/16 :goto_3d5

    .line 1594
    .end local v0    # "type":I
    .end local v1    # "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    :sswitch_235
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1596
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1597
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1598
    .local v1, "status":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->cdmaOtaProvisionStatus(II)V

    .line 1599
    goto/16 :goto_3d5

    .line 1583
    .end local v0    # "type":I
    .end local v1    # "status":I
    :sswitch_245
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1585
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1586
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    .line 1587
    .local v1, "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1588
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V

    .line 1589
    goto/16 :goto_3d5

    .line 1574
    .end local v0    # "type":I
    .end local v1    # "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    :sswitch_259
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1576
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1577
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->enterEmergencyCallbackMode(I)V

    .line 1578
    goto/16 :goto_3d5

    .line 1564
    .end local v0    # "type":I
    :sswitch_265
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1566
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1567
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1568
    .local v1, "state":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->restrictedStateChanged(II)V

    .line 1569
    goto/16 :goto_3d5

    .line 1555
    .end local v0    # "type":I
    .end local v1    # "state":I
    :sswitch_275
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1557
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1558
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    .line 1559
    goto/16 :goto_3d5

    .line 1545
    .end local v0    # "type":I
    :sswitch_281
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1547
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1548
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1549
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->newBroadcastSms(ILjava/util/ArrayList;)V

    .line 1550
    goto/16 :goto_3d5

    .line 1534
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_291
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1536
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1537
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 1538
    .local v1, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1539
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 1540
    goto/16 :goto_3d5

    .line 1525
    .end local v0    # "type":I
    .end local v1    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_2a5
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1527
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1528
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->simStatusChanged(I)V

    .line 1529
    goto/16 :goto_3d5

    .line 1513
    .end local v0    # "type":I
    :sswitch_2b1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1515
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1516
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1517
    .local v1, "isGsm":Z
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 1518
    .local v2, "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1519
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V

    .line 1520
    goto/16 :goto_3d5

    .line 1502
    .end local v0    # "type":I
    .end local v1    # "isGsm":Z
    .end local v2    # "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    :sswitch_2c9
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1504
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1505
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/SimRefreshResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SimRefreshResult;-><init>()V

    .line 1506
    .local v1, "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1507
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V

    .line 1508
    goto/16 :goto_3d5

    .line 1493
    .end local v0    # "type":I
    .end local v1    # "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    :sswitch_2dd
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1495
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1496
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->simSmsStorageFull(I)V

    .line 1497
    goto/16 :goto_3d5

    .line 1483
    .end local v0    # "type":I
    :sswitch_2e9
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1485
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1486
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v1

    .line 1487
    .local v1, "timeout":J
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->stkCallSetup(IJ)V

    .line 1488
    goto/16 :goto_3d5

    .line 1473
    .end local v0    # "type":I
    .end local v1    # "timeout":J
    :sswitch_2f9
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1475
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1476
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1477
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    .line 1478
    goto/16 :goto_3d5

    .line 1463
    .end local v0    # "type":I
    .end local v1    # "cmd":Ljava/lang/String;
    :sswitch_309
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1466
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1467
    .restart local v1    # "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    .line 1468
    goto/16 :goto_3d5

    .line 1454
    .end local v0    # "type":I
    .end local v1    # "cmd":Ljava/lang/String;
    :sswitch_319
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1456
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1457
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->stkSessionEnd(I)V

    .line 1458
    goto/16 :goto_3d5

    .line 1443
    .end local v0    # "type":I
    :sswitch_325
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1446
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 1447
    .local v1, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1448
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 1449
    goto/16 :goto_3d5

    .line 1433
    .end local v0    # "type":I
    .end local v1    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    :sswitch_339
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1436
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1437
    .local v1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->dataCallListChanged(ILjava/util/ArrayList;)V

    .line 1438
    goto/16 :goto_3d5

    .line 1422
    .end local v0    # "type":I
    .end local v1    # "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :sswitch_349
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1424
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1425
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 1426
    .local v1, "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1427
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V

    .line 1428
    goto/16 :goto_3d5

    .line 1411
    .end local v0    # "type":I
    .end local v1    # "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :sswitch_35d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1413
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1414
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1415
    .local v1, "nitzTime":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 1416
    .local v2, "receivedTime":J
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->nitzTimeReceived(ILjava/lang/String;J)V

    .line 1417
    goto :goto_3d5

    .line 1400
    .end local v0    # "type":I
    .end local v1    # "nitzTime":Ljava/lang/String;
    .end local v2    # "receivedTime":J
    :sswitch_370
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1402
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1403
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1404
    .local v1, "modeType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1405
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->onUssd(IILjava/lang/String;)V

    .line 1406
    goto :goto_3d5

    .line 1390
    .end local v0    # "type":I
    .end local v1    # "modeType":I
    .end local v2    # "msg":Ljava/lang/String;
    :sswitch_383
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1393
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1394
    .local v1, "recordNumber":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->newSmsOnSim(II)V

    .line 1395
    goto :goto_3d5

    .line 1380
    .end local v0    # "type":I
    .end local v1    # "recordNumber":I
    :sswitch_392
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1382
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1383
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1384
    .local v1, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->newSmsStatusReport(ILjava/util/ArrayList;)V

    .line 1385
    goto :goto_3d5

    .line 1370
    .end local v0    # "type":I
    .end local v1    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_3a1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1372
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1373
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1374
    .restart local v1    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->newSms(ILjava/util/ArrayList;)V

    .line 1375
    goto :goto_3d5

    .line 1361
    .end local v0    # "type":I
    .end local v1    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_3b0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1363
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1364
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->networkStateChanged(I)V

    .line 1365
    goto :goto_3d5

    .line 1352
    .end local v0    # "type":I
    :sswitch_3bb
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1354
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1355
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->callStateChanged(I)V

    .line 1356
    goto :goto_3d5

    .line 1342
    .end local v0    # "type":I
    :sswitch_3c6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1345
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1346
    .local v1, "radioState":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->radioStateChanged(II)V

    .line 1347
    nop

    .line 1940
    .end local v0    # "type":I
    .end local v1    # "radioState":I
    :goto_3d5
    return-void

    :sswitch_data_3d6
    .sparse-switch
        0x1 -> :sswitch_3c6
        0x2 -> :sswitch_3bb
        0x3 -> :sswitch_3b0
        0x4 -> :sswitch_3a1
        0x5 -> :sswitch_392
        0x6 -> :sswitch_383
        0x7 -> :sswitch_370
        0x8 -> :sswitch_35d
        0x9 -> :sswitch_349
        0xa -> :sswitch_339
        0xb -> :sswitch_325
        0xc -> :sswitch_319
        0xd -> :sswitch_309
        0xe -> :sswitch_2f9
        0xf -> :sswitch_2e9
        0x10 -> :sswitch_2dd
        0x11 -> :sswitch_2c9
        0x12 -> :sswitch_2b1
        0x13 -> :sswitch_2a5
        0x14 -> :sswitch_291
        0x15 -> :sswitch_281
        0x16 -> :sswitch_275
        0x17 -> :sswitch_265
        0x18 -> :sswitch_259
        0x19 -> :sswitch_245
        0x1a -> :sswitch_235
        0x1b -> :sswitch_221
        0x1c -> :sswitch_211
        0x1d -> :sswitch_205
        0x1e -> :sswitch_1f5
        0x1f -> :sswitch_1e5
        0x20 -> :sswitch_1d9
        0x21 -> :sswitch_1cd
        0x22 -> :sswitch_1bd
        0x23 -> :sswitch_1ad
        0x24 -> :sswitch_1a1
        0x25 -> :sswitch_191
        0x26 -> :sswitch_181
        0x27 -> :sswitch_171
        0x28 -> :sswitch_15d
        0x29 -> :sswitch_149
        0x2a -> :sswitch_139
        0x2b -> :sswitch_125
        0x2c -> :sswitch_111
        0x2d -> :sswitch_101
        0x2e -> :sswitch_f5
        0x2f -> :sswitch_e1
        0x30 -> :sswitch_cd
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

    .line 1293
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1321
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1322
    return-object p0

    .line 1324
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

    .line 1328
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1329
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 1283
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1315
    const/4 v0, 0x1

    return v0
.end method
