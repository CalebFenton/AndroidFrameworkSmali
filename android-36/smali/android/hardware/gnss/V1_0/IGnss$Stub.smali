.class public abstract Landroid/hardware/gnss/V1_0/IGnss$Stub;
.super Landroid/os/HwBinder;
.source "IGnss.java"

# interfaces
.implements Landroid/hardware/gnss/V1_0/IGnss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1142
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1145
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

    .line 1158
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1195
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1196
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1197
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1198
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1199
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

    .line 1170
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

    .line 1150
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss@1.0::IGnss"

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

    .line 1164
    const-string v0, "android.hardware.gnss@1.0::IGnss"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1183
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 1205
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1207
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

    .line 1235
    move-object v6, p3

    const-string v1, "android.hidl.base@1.0::IBase"

    const/4 v2, 0x0

    const-string v3, "android.hardware.gnss@1.0::IGnss"

    const/4 v7, 0x0

    sparse-switch p1, :sswitch_data_286

    goto/16 :goto_284

    .line 1549
    :sswitch_c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1551
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->notifySyspropsChanged()V

    .line 1552
    goto/16 :goto_284

    .line 1538
    :sswitch_14
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1540
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 1541
    .local v1, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1542
    invoke-virtual {v1, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1543
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1544
    goto/16 :goto_284

    .line 1528
    .end local v1    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_26
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1530
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->ping()V

    .line 1531
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1532
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1533
    goto/16 :goto_284

    .line 1523
    :sswitch_34
    goto/16 :goto_284

    .line 1515
    :sswitch_36
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1517
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->setHALInstrumentation()V

    .line 1518
    goto/16 :goto_284

    .line 1481
    :sswitch_3e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1483
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 1484
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1486
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1488
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1489
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1490
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1491
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 1492
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_65
    if-ge v5, v3, :cond_86

    .line 1494
    mul-int/lit8 v7, v5, 0x20

    int-to-long v7, v7

    .line 1495
    .local v7, "_hidl_array_offset_1":J
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 1497
    .local v9, "_hidl_array_item_1":[B
    if-eqz v9, :cond_7e

    array-length v10, v9

    const/16 v11, 0x20

    if-ne v10, v11, :cond_7e

    .line 1501
    invoke-virtual {v4, v7, v8, v9}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1502
    nop

    .line 1492
    .end local v7    # "_hidl_array_offset_1":J
    .end local v9    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_65

    .line 1498
    .restart local v7    # "_hidl_array_offset_1":J
    .restart local v9    # "_hidl_array_item_1":[B
    :cond_7e
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Array element is not of the expected length"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1505
    .end local v5    # "_hidl_index_0":I
    .end local v7    # "_hidl_array_offset_1":J
    .end local v9    # "_hidl_array_item_1":[B
    :cond_86
    const-wide/16 v7, 0x0

    invoke-virtual {v2, v7, v8, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1507
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1509
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1510
    goto/16 :goto_284

    .line 1470
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_93
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1472
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 1473
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1474
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1475
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1476
    goto/16 :goto_284

    .line 1458
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1460
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 1461
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1462
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1463
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1464
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1465
    goto/16 :goto_284

    .line 1447
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bb
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1449
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 1450
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1451
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1452
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1453
    goto/16 :goto_284

    .line 1436
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cd
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1438
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionGnssBatching()Landroid/hardware/gnss/V1_0/IGnssBatching;

    move-result-object v1

    .line 1439
    .local v1, "_hidl_out_batchingIface":Landroid/hardware/gnss/V1_0/IGnssBatching;
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1440
    if-nez v1, :cond_da

    goto :goto_de

    :cond_da
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssBatching;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_de
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1441
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1442
    goto/16 :goto_284

    .line 1425
    .end local v1    # "_hidl_out_batchingIface":Landroid/hardware/gnss/V1_0/IGnssBatching;
    :sswitch_e6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1427
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionGnssDebug()Landroid/hardware/gnss/V1_0/IGnssDebug;

    move-result-object v1

    .line 1428
    .local v1, "_hidl_out_debugIface":Landroid/hardware/gnss/V1_0/IGnssDebug;
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1429
    if-nez v1, :cond_f3

    goto :goto_f7

    :cond_f3
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssDebug;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_f7
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1430
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1431
    goto/16 :goto_284

    .line 1414
    .end local v1    # "_hidl_out_debugIface":Landroid/hardware/gnss/V1_0/IGnssDebug;
    :sswitch_ff
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1416
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionGnssConfiguration()Landroid/hardware/gnss/V1_0/IGnssConfiguration;

    move-result-object v1

    .line 1417
    .local v1, "_hidl_out_gnssConfigIface":Landroid/hardware/gnss/V1_0/IGnssConfiguration;
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1418
    if-nez v1, :cond_10c

    goto :goto_110

    :cond_10c
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssConfiguration;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_110
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1419
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1420
    goto/16 :goto_284

    .line 1403
    .end local v1    # "_hidl_out_gnssConfigIface":Landroid/hardware/gnss/V1_0/IGnssConfiguration;
    :sswitch_118
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionXtra()Landroid/hardware/gnss/V1_0/IGnssXtra;

    move-result-object v1

    .line 1406
    .local v1, "_hidl_out_xtraIface":Landroid/hardware/gnss/V1_0/IGnssXtra;
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1407
    if-nez v1, :cond_125

    goto :goto_129

    :cond_125
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssXtra;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_129
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1408
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1409
    goto/16 :goto_284

    .line 1392
    .end local v1    # "_hidl_out_xtraIface":Landroid/hardware/gnss/V1_0/IGnssXtra;
    :sswitch_131
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionGnssNavigationMessage()Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;

    move-result-object v1

    .line 1395
    .local v1, "_hidl_out_gnssNavigationIface":Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1396
    if-nez v1, :cond_13e

    goto :goto_142

    :cond_13e
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_142
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1397
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1398
    goto/16 :goto_284

    .line 1381
    .end local v1    # "_hidl_out_gnssNavigationIface":Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;
    :sswitch_14a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionGnssMeasurement()Landroid/hardware/gnss/V1_0/IGnssMeasurement;

    move-result-object v1

    .line 1384
    .local v1, "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_0/IGnssMeasurement;
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1385
    if-nez v1, :cond_157

    goto :goto_15b

    :cond_157
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssMeasurement;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_15b
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1386
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1387
    goto/16 :goto_284

    .line 1370
    .end local v1    # "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_0/IGnssMeasurement;
    :sswitch_163
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1372
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionGnssNi()Landroid/hardware/gnss/V1_0/IGnssNi;

    move-result-object v1

    .line 1373
    .local v1, "_hidl_out_gnssNiIface":Landroid/hardware/gnss/V1_0/IGnssNi;
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1374
    if-nez v1, :cond_170

    goto :goto_174

    :cond_170
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssNi;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_174
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1375
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1376
    goto/16 :goto_284

    .line 1359
    .end local v1    # "_hidl_out_gnssNiIface":Landroid/hardware/gnss/V1_0/IGnssNi;
    :sswitch_17c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1361
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionAGnss()Landroid/hardware/gnss/V1_0/IAGnss;

    move-result-object v1

    .line 1362
    .local v1, "_hidl_out_aGnssIface":Landroid/hardware/gnss/V1_0/IAGnss;
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1363
    if-nez v1, :cond_189

    goto :goto_18d

    :cond_189
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IAGnss;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_18d
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1364
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1365
    goto/16 :goto_284

    .line 1348
    .end local v1    # "_hidl_out_aGnssIface":Landroid/hardware/gnss/V1_0/IAGnss;
    :sswitch_195
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionGnssGeofencing()Landroid/hardware/gnss/V1_0/IGnssGeofencing;

    move-result-object v1

    .line 1351
    .local v1, "_hidl_out_gnssGeofencingIface":Landroid/hardware/gnss/V1_0/IGnssGeofencing;
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1352
    if-nez v1, :cond_1a2

    goto :goto_1a6

    :cond_1a2
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssGeofencing;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_1a6
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1353
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1354
    goto/16 :goto_284

    .line 1337
    .end local v1    # "_hidl_out_gnssGeofencingIface":Landroid/hardware/gnss/V1_0/IGnssGeofencing;
    :sswitch_1ae
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1339
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionAGnssRil()Landroid/hardware/gnss/V1_0/IAGnssRil;

    move-result-object v1

    .line 1340
    .local v1, "_hidl_out_aGnssRilIface":Landroid/hardware/gnss/V1_0/IAGnssRil;
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1341
    if-nez v1, :cond_1bb

    goto :goto_1bf

    :cond_1bb
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IAGnssRil;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_1bf
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1342
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1343
    goto/16 :goto_284

    .line 1321
    .end local v1    # "_hidl_out_aGnssRilIface":Landroid/hardware/gnss/V1_0/IAGnssRil;
    :sswitch_1c7
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 1324
    .local v1, "mode":B
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1325
    .local v2, "recurrence":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1326
    .local v3, "minIntervalMs":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1327
    .local v4, "preferredAccuracyMeters":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 1328
    .local v5, "preferredTimeMs":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->setPositionMode(BIIII)Z

    move-result v8

    .line 1329
    .local v8, "_hidl_out_success":Z
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1330
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1331
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1332
    goto/16 :goto_284

    .line 1310
    .end local v1    # "mode":B
    .end local v2    # "recurrence":I
    .end local v3    # "minIntervalMs":I
    .end local v4    # "preferredAccuracyMeters":I
    .end local v5    # "preferredTimeMs":I
    .end local v8    # "_hidl_out_success":Z
    :sswitch_1ee
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v1

    .line 1313
    .local v1, "aidingDataFlags":S
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->deleteAidingData(S)V

    .line 1314
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1315
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1316
    goto/16 :goto_284

    .line 1296
    .end local v1    # "aidingDataFlags":S
    :sswitch_200
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v1

    .line 1299
    .local v1, "latitudeDegrees":D
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v3

    .line 1300
    .local v3, "longitudeDegrees":D
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    move-result v5

    .line 1301
    .local v5, "accuracyMeters":F
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->injectLocation(DDF)Z

    move-result v8

    .line 1302
    .restart local v8    # "_hidl_out_success":Z
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1303
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1304
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1305
    goto :goto_284

    .line 1282
    .end local v1    # "latitudeDegrees":D
    .end local v3    # "longitudeDegrees":D
    .end local v5    # "accuracyMeters":F
    .end local v8    # "_hidl_out_success":Z
    :sswitch_21e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1284
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v1

    .line 1285
    .local v1, "timeMs":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 1286
    .local v3, "timeReferenceMs":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 1287
    .local v5, "uncertaintyMs":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->injectTime(JJI)Z

    move-result v8

    .line 1288
    .restart local v8    # "_hidl_out_success":Z
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1289
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1290
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1291
    goto :goto_284

    .line 1272
    .end local v1    # "timeMs":J
    .end local v3    # "timeReferenceMs":J
    .end local v5    # "uncertaintyMs":I
    .end local v8    # "_hidl_out_success":Z
    :sswitch_23c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->cleanup()V

    .line 1275
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1276
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1277
    goto :goto_284

    .line 1261
    :sswitch_249
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->stop()Z

    move-result v1

    .line 1264
    .local v1, "_hidl_out_success":Z
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1265
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1266
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1267
    goto :goto_284

    .line 1250
    .end local v1    # "_hidl_out_success":Z
    :sswitch_25a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->start()Z

    move-result v1

    .line 1253
    .restart local v1    # "_hidl_out_success":Z
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1254
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1255
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1256
    goto :goto_284

    .line 1238
    .end local v1    # "_hidl_out_success":Z
    :sswitch_26b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssCallback;

    move-result-object v1

    .line 1241
    .local v1, "callback":Landroid/hardware/gnss/V1_0/IGnssCallback;
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->setCallback(Landroid/hardware/gnss/V1_0/IGnssCallback;)Z

    move-result v2

    .line 1242
    .local v2, "_hidl_out_success":Z
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1243
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1244
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1245
    nop

    .line 1561
    .end local v1    # "callback":Landroid/hardware/gnss/V1_0/IGnssCallback;
    .end local v2    # "_hidl_out_success":Z
    :goto_284
    return-void

    nop

    :sswitch_data_286
    .sparse-switch
        0x1 -> :sswitch_26b
        0x2 -> :sswitch_25a
        0x3 -> :sswitch_249
        0x4 -> :sswitch_23c
        0x5 -> :sswitch_21e
        0x6 -> :sswitch_200
        0x7 -> :sswitch_1ee
        0x8 -> :sswitch_1c7
        0x9 -> :sswitch_1ae
        0xa -> :sswitch_195
        0xb -> :sswitch_17c
        0xc -> :sswitch_163
        0xd -> :sswitch_14a
        0xe -> :sswitch_131
        0xf -> :sswitch_118
        0x10 -> :sswitch_ff
        0x11 -> :sswitch_e6
        0x12 -> :sswitch_cd
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

    .line 1189
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1217
    const-string v0, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1218
    return-object p0

    .line 1220
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

    .line 1224
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->registerService(Ljava/lang/String;)V

    .line 1225
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 1179
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1211
    const/4 v0, 0x1

    return v0
.end method
