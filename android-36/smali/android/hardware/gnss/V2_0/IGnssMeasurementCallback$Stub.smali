.class public abstract Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$Stub;
.super Landroid/os/HwBinder;
.source "IGnssMeasurementCallback.java"

# interfaces
.implements Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1305
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1308
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

    .line 1323
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1362
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1363
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1364
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1365
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1366
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

    .line 1335
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
        -0x23t
        0x6ct
        -0x27t
        -0x25t
        -0x5ct
        -0x3t
        -0x17t
        -0x66t
        0x1bt
        -0x3dt
        -0x35t
        0x17t
        0x28t
        -0x28t
        0x23t
        0x9t
        -0xbt
        0x9t
        -0x5at
        -0x1at
        -0x1ft
        -0x67t
        0x3et
        0x50t
        0x42t
        -0x21t
        -0x5bt
        -0x1t
        -0x1ct
        -0x51t
        0x54t
        0x42t
    .end array-data

    :array_38
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

    :array_4c
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

    .line 1313
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss@1.0::IGnssMeasurementCallback"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.gnss@2.0::IGnssMeasurementCallback"

    const-string v4, "android.hardware.gnss@1.1::IGnssMeasurementCallback"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1329
    const-string v0, "android.hardware.gnss@2.0::IGnssMeasurementCallback"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1350
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 1372
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1374
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

    .line 1402
    const-string v0, "android.hidl.base@1.0::IBase"

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_10c

    goto/16 :goto_10b

    .line 1543
    :sswitch_8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1545
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$Stub;->notifySyspropsChanged()V

    .line 1546
    goto/16 :goto_10b

    .line 1532
    :sswitch_10
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1534
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1535
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1536
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1537
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1538
    goto/16 :goto_10b

    .line 1522
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_22
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1524
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$Stub;->ping()V

    .line 1525
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1526
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1527
    goto/16 :goto_10b

    .line 1517
    :sswitch_30
    goto/16 :goto_10b

    .line 1509
    :sswitch_32
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1511
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$Stub;->setHALInstrumentation()V

    .line 1512
    goto/16 :goto_10b

    .line 1475
    :sswitch_3a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1477
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1478
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1480
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1482
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1483
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1484
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1485
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1486
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_61
    if-ge v4, v3, :cond_82

    .line 1488
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1489
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1491
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7a

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7a

    .line 1495
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1496
    nop

    .line 1486
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_61

    .line 1492
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7a
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1499
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_82
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1501
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1503
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1504
    goto/16 :goto_10b

    .line 1464
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_8f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1466
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1467
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1468
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1469
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1470
    goto :goto_10b

    .line 1452
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1454
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1455
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1456
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1457
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1458
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1459
    goto :goto_10b

    .line 1441
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1443
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1444
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1445
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1446
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1447
    goto :goto_10b

    .line 1429
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_c6
    const-string v0, "android.hardware.gnss@2.0::IGnssMeasurementCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1431
    new-instance v0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;

    invoke-direct {v0}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;-><init>()V

    .line 1432
    .local v0, "data":Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1433
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$Stub;->gnssMeasurementCb_2_0(Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;)V

    .line 1434
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1435
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1436
    goto :goto_10b

    .line 1417
    .end local v0    # "data":Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;
    :sswitch_dd
    const-string v0, "android.hardware.gnss@1.1::IGnssMeasurementCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1419
    new-instance v0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;-><init>()V

    .line 1420
    .local v0, "data":Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1421
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$Stub;->gnssMeasurementCb(Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;)V

    .line 1422
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1423
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1424
    goto :goto_10b

    .line 1405
    .end local v0    # "data":Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;
    :sswitch_f4
    const-string v0, "android.hardware.gnss@1.0::IGnssMeasurementCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1407
    new-instance v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;-><init>()V

    .line 1408
    .local v0, "data":Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1409
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$Stub;->GnssMeasurementCb(Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;)V

    .line 1410
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1411
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1412
    nop

    .line 1555
    .end local v0    # "data":Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;
    :goto_10b
    return-void

    :sswitch_data_10c
    .sparse-switch
        0x1 -> :sswitch_f4
        0x2 -> :sswitch_dd
        0x3 -> :sswitch_c6
        0xf43484e -> :sswitch_b5
        0xf444247 -> :sswitch_a0
        0xf445343 -> :sswitch_8f
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

    .line 1356
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1384
    const-string v0, "android.hardware.gnss@2.0::IGnssMeasurementCallback"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1385
    return-object p0

    .line 1387
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

    .line 1391
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 1392
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 1346
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1378
    const/4 v0, 0x1

    return v0
.end method
