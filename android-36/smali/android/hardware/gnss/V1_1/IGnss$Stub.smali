.class public abstract Landroid/hardware/gnss/V1_1/IGnss$Stub;
.super Landroid/os/HwBinder;
.source "IGnss.java"

# interfaces
.implements Landroid/hardware/gnss/V1_1/IGnss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_1/IGnss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 929
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 932
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

    .line 946
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 984
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 985
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 986
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 987
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 988
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

    .line 958
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

    :array_34
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

    .line 937
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss@1.0::IGnss"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.gnss@1.1::IGnss"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 952
    const-string v0, "android.hardware.gnss@1.1::IGnss"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 972
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 994
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 996
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

    .line 1024
    move-object v7, p3

    const-string v1, "android.hardware.gnss@1.1::IGnss"

    const-string v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x0

    const-string v4, "android.hardware.gnss@1.0::IGnss"

    const/4 v8, 0x0

    sparse-switch p1, :sswitch_data_318

    goto/16 :goto_317

    .line 1402
    :sswitch_e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1404
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->notifySyspropsChanged()V

    .line 1405
    goto/16 :goto_317

    .line 1391
    :sswitch_16
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1393
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 1394
    .local v1, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1395
    invoke-virtual {v1, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1396
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1397
    goto/16 :goto_317

    .line 1381
    .end local v1    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_28
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->ping()V

    .line 1384
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1385
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1386
    goto/16 :goto_317

    .line 1376
    :sswitch_36
    goto/16 :goto_317

    .line 1368
    :sswitch_38
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1370
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->setHALInstrumentation()V

    .line 1371
    goto/16 :goto_317

    .line 1334
    :sswitch_40
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1336
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 1337
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1339
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1341
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1342
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1343
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1344
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 1345
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_67
    if-ge v5, v3, :cond_88

    .line 1347
    mul-int/lit8 v6, v5, 0x20

    int-to-long v8, v6

    .line 1348
    .local v8, "_hidl_array_offset_1":J
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 1350
    .local v6, "_hidl_array_item_1":[B
    if-eqz v6, :cond_80

    array-length v10, v6

    const/16 v11, 0x20

    if-ne v10, v11, :cond_80

    .line 1354
    invoke-virtual {v4, v8, v9, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1355
    nop

    .line 1345
    .end local v6    # "_hidl_array_item_1":[B
    .end local v8    # "_hidl_array_offset_1":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_67

    .line 1351
    .restart local v6    # "_hidl_array_item_1":[B
    .restart local v8    # "_hidl_array_offset_1":J
    :cond_80
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Array element is not of the expected length"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1358
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_item_1":[B
    .end local v8    # "_hidl_array_offset_1":J
    :cond_88
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1360
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1362
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1363
    goto/16 :goto_317

    .line 1323
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_95
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1325
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 1326
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1327
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1329
    goto/16 :goto_317

    .line 1311
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 1314
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1315
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1316
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1317
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1318
    goto/16 :goto_317

    .line 1300
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bd
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1302
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 1303
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1304
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1305
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1306
    goto/16 :goto_317

    .line 1287
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cf
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1289
    new-instance v1, Landroid/hardware/gnss/V1_0/GnssLocation;

    invoke-direct {v1}, Landroid/hardware/gnss/V1_0/GnssLocation;-><init>()V

    .line 1290
    .local v1, "location":Landroid/hardware/gnss/V1_0/GnssLocation;
    invoke-virtual {v1, p2}, Landroid/hardware/gnss/V1_0/GnssLocation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1291
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->injectBestLocation(Landroid/hardware/gnss/V1_0/GnssLocation;)Z

    move-result v2

    .line 1292
    .local v2, "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1293
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1294
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1295
    goto/16 :goto_317

    .line 1276
    .end local v1    # "location":Landroid/hardware/gnss/V1_0/GnssLocation;
    .end local v2    # "_hidl_out_success":Z
    :sswitch_e9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1278
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getExtensionGnssMeasurement_1_1()Landroid/hardware/gnss/V1_1/IGnssMeasurement;

    move-result-object v1

    .line 1279
    .local v1, "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_1/IGnssMeasurement;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1280
    if-nez v1, :cond_f6

    goto :goto_fa

    :cond_f6
    invoke-interface {v1}, Landroid/hardware/gnss/V1_1/IGnssMeasurement;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    :goto_fa
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1281
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1282
    goto/16 :goto_317

    .line 1265
    .end local v1    # "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_1/IGnssMeasurement;
    :sswitch_102
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getExtensionGnssConfiguration_1_1()Landroid/hardware/gnss/V1_1/IGnssConfiguration;

    move-result-object v1

    .line 1268
    .local v1, "_hidl_out_gnssConfigurationIface":Landroid/hardware/gnss/V1_1/IGnssConfiguration;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1269
    if-nez v1, :cond_10f

    goto :goto_113

    :cond_10f
    invoke-interface {v1}, Landroid/hardware/gnss/V1_1/IGnssConfiguration;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    :goto_113
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1270
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1271
    goto/16 :goto_317

    .line 1248
    .end local v1    # "_hidl_out_gnssConfigurationIface":Landroid/hardware/gnss/V1_1/IGnssConfiguration;
    :sswitch_11b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1250
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 1251
    .local v1, "mode":B
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1252
    .local v2, "recurrence":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1253
    .local v3, "minIntervalMs":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1254
    .local v4, "preferredAccuracyMeters":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 1255
    .local v5, "preferredTimeMs":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    .line 1256
    .local v6, "lowPowerMode":Z
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->setPositionMode_1_1(BIIIIZ)Z

    move-result v9

    .line 1257
    .local v9, "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1258
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1259
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1260
    goto/16 :goto_317

    .line 1236
    .end local v1    # "mode":B
    .end local v2    # "recurrence":I
    .end local v3    # "minIntervalMs":I
    .end local v4    # "preferredAccuracyMeters":I
    .end local v5    # "preferredTimeMs":I
    .end local v6    # "lowPowerMode":Z
    .end local v9    # "_hidl_out_success":Z
    :sswitch_146
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/gnss/V1_1/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_1/IGnssCallback;

    move-result-object v1

    .line 1239
    .local v1, "callback":Landroid/hardware/gnss/V1_1/IGnssCallback;
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->setCallback_1_1(Landroid/hardware/gnss/V1_1/IGnssCallback;)Z

    move-result v2

    .line 1240
    .local v2, "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1241
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1242
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1243
    goto/16 :goto_317

    .line 1225
    .end local v1    # "callback":Landroid/hardware/gnss/V1_1/IGnssCallback;
    .end local v2    # "_hidl_out_success":Z
    :sswitch_160
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getExtensionGnssBatching()Landroid/hardware/gnss/V1_0/IGnssBatching;

    move-result-object v1

    .line 1228
    .local v1, "_hidl_out_batchingIface":Landroid/hardware/gnss/V1_0/IGnssBatching;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1229
    if-nez v1, :cond_16d

    goto :goto_171

    :cond_16d
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssBatching;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    :goto_171
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1230
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1231
    goto/16 :goto_317

    .line 1214
    .end local v1    # "_hidl_out_batchingIface":Landroid/hardware/gnss/V1_0/IGnssBatching;
    :sswitch_179
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getExtensionGnssDebug()Landroid/hardware/gnss/V1_0/IGnssDebug;

    move-result-object v1

    .line 1217
    .local v1, "_hidl_out_debugIface":Landroid/hardware/gnss/V1_0/IGnssDebug;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1218
    if-nez v1, :cond_186

    goto :goto_18a

    :cond_186
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssDebug;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    :goto_18a
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1219
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1220
    goto/16 :goto_317

    .line 1203
    .end local v1    # "_hidl_out_debugIface":Landroid/hardware/gnss/V1_0/IGnssDebug;
    :sswitch_192
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getExtensionGnssConfiguration()Landroid/hardware/gnss/V1_0/IGnssConfiguration;

    move-result-object v1

    .line 1206
    .local v1, "_hidl_out_gnssConfigIface":Landroid/hardware/gnss/V1_0/IGnssConfiguration;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1207
    if-nez v1, :cond_19f

    goto :goto_1a3

    :cond_19f
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssConfiguration;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    :goto_1a3
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1208
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1209
    goto/16 :goto_317

    .line 1192
    .end local v1    # "_hidl_out_gnssConfigIface":Landroid/hardware/gnss/V1_0/IGnssConfiguration;
    :sswitch_1ab
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getExtensionXtra()Landroid/hardware/gnss/V1_0/IGnssXtra;

    move-result-object v1

    .line 1195
    .local v1, "_hidl_out_xtraIface":Landroid/hardware/gnss/V1_0/IGnssXtra;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1196
    if-nez v1, :cond_1b8

    goto :goto_1bc

    :cond_1b8
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssXtra;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    :goto_1bc
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1197
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1198
    goto/16 :goto_317

    .line 1181
    .end local v1    # "_hidl_out_xtraIface":Landroid/hardware/gnss/V1_0/IGnssXtra;
    :sswitch_1c4
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getExtensionGnssNavigationMessage()Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;

    move-result-object v1

    .line 1184
    .local v1, "_hidl_out_gnssNavigationIface":Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1185
    if-nez v1, :cond_1d1

    goto :goto_1d5

    :cond_1d1
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    :goto_1d5
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1186
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1187
    goto/16 :goto_317

    .line 1170
    .end local v1    # "_hidl_out_gnssNavigationIface":Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;
    :sswitch_1dd
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getExtensionGnssMeasurement()Landroid/hardware/gnss/V1_0/IGnssMeasurement;

    move-result-object v1

    .line 1173
    .local v1, "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_0/IGnssMeasurement;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1174
    if-nez v1, :cond_1ea

    goto :goto_1ee

    :cond_1ea
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssMeasurement;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    :goto_1ee
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1175
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1176
    goto/16 :goto_317

    .line 1159
    .end local v1    # "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_0/IGnssMeasurement;
    :sswitch_1f6
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getExtensionGnssNi()Landroid/hardware/gnss/V1_0/IGnssNi;

    move-result-object v1

    .line 1162
    .local v1, "_hidl_out_gnssNiIface":Landroid/hardware/gnss/V1_0/IGnssNi;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1163
    if-nez v1, :cond_203

    goto :goto_207

    :cond_203
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssNi;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    :goto_207
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1164
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1165
    goto/16 :goto_317

    .line 1148
    .end local v1    # "_hidl_out_gnssNiIface":Landroid/hardware/gnss/V1_0/IGnssNi;
    :sswitch_20f
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1150
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getExtensionAGnss()Landroid/hardware/gnss/V1_0/IAGnss;

    move-result-object v1

    .line 1151
    .local v1, "_hidl_out_aGnssIface":Landroid/hardware/gnss/V1_0/IAGnss;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1152
    if-nez v1, :cond_21c

    goto :goto_220

    :cond_21c
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IAGnss;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    :goto_220
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1153
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1154
    goto/16 :goto_317

    .line 1137
    .end local v1    # "_hidl_out_aGnssIface":Landroid/hardware/gnss/V1_0/IAGnss;
    :sswitch_228
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getExtensionGnssGeofencing()Landroid/hardware/gnss/V1_0/IGnssGeofencing;

    move-result-object v1

    .line 1140
    .local v1, "_hidl_out_gnssGeofencingIface":Landroid/hardware/gnss/V1_0/IGnssGeofencing;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1141
    if-nez v1, :cond_235

    goto :goto_239

    :cond_235
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IGnssGeofencing;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    :goto_239
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1142
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1143
    goto/16 :goto_317

    .line 1126
    .end local v1    # "_hidl_out_gnssGeofencingIface":Landroid/hardware/gnss/V1_0/IGnssGeofencing;
    :sswitch_241
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getExtensionAGnssRil()Landroid/hardware/gnss/V1_0/IAGnssRil;

    move-result-object v1

    .line 1129
    .local v1, "_hidl_out_aGnssRilIface":Landroid/hardware/gnss/V1_0/IAGnssRil;
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1130
    if-nez v1, :cond_24e

    goto :goto_252

    :cond_24e
    invoke-interface {v1}, Landroid/hardware/gnss/V1_0/IAGnssRil;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    :goto_252
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1131
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1132
    goto/16 :goto_317

    .line 1110
    .end local v1    # "_hidl_out_aGnssRilIface":Landroid/hardware/gnss/V1_0/IAGnssRil;
    :sswitch_25a
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 1113
    .local v1, "mode":B
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1114
    .local v2, "recurrence":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1115
    .restart local v3    # "minIntervalMs":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1116
    .restart local v4    # "preferredAccuracyMeters":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 1117
    .restart local v5    # "preferredTimeMs":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->setPositionMode(BIIII)Z

    move-result v6

    .line 1118
    .local v6, "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1119
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1120
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1121
    goto/16 :goto_317

    .line 1099
    .end local v1    # "mode":B
    .end local v2    # "recurrence":I
    .end local v3    # "minIntervalMs":I
    .end local v4    # "preferredAccuracyMeters":I
    .end local v5    # "preferredTimeMs":I
    .end local v6    # "_hidl_out_success":Z
    :sswitch_281
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v1

    .line 1102
    .local v1, "aidingDataFlags":S
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->deleteAidingData(S)V

    .line 1103
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1104
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1105
    goto/16 :goto_317

    .line 1085
    .end local v1    # "aidingDataFlags":S
    :sswitch_293
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v1

    .line 1088
    .local v1, "latitudeDegrees":D
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v3

    .line 1089
    .local v3, "longitudeDegrees":D
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    move-result v5

    .line 1090
    .local v5, "accuracyMeters":F
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->injectLocation(DDF)Z

    move-result v6

    .line 1091
    .restart local v6    # "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1092
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1093
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1094
    goto :goto_317

    .line 1071
    .end local v1    # "latitudeDegrees":D
    .end local v3    # "longitudeDegrees":D
    .end local v5    # "accuracyMeters":F
    .end local v6    # "_hidl_out_success":Z
    :sswitch_2b1
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v1

    .line 1074
    .local v1, "timeMs":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 1075
    .local v3, "timeReferenceMs":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 1076
    .local v5, "uncertaintyMs":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->injectTime(JJI)Z

    move-result v6

    .line 1077
    .restart local v6    # "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1078
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1079
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1080
    goto :goto_317

    .line 1061
    .end local v1    # "timeMs":J
    .end local v3    # "timeReferenceMs":J
    .end local v5    # "uncertaintyMs":I
    .end local v6    # "_hidl_out_success":Z
    :sswitch_2cf
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->cleanup()V

    .line 1064
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1065
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1066
    goto :goto_317

    .line 1050
    :sswitch_2dc
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->stop()Z

    move-result v1

    .line 1053
    .local v1, "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1054
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1055
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1056
    goto :goto_317

    .line 1039
    .end local v1    # "_hidl_out_success":Z
    :sswitch_2ed
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->start()Z

    move-result v1

    .line 1042
    .restart local v1    # "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1043
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1044
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1045
    goto :goto_317

    .line 1027
    .end local v1    # "_hidl_out_success":Z
    :sswitch_2fe
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1029
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssCallback;

    move-result-object v1

    .line 1030
    .local v1, "callback":Landroid/hardware/gnss/V1_0/IGnssCallback;
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->setCallback(Landroid/hardware/gnss/V1_0/IGnssCallback;)Z

    move-result v2

    .line 1031
    .local v2, "_hidl_out_success":Z
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1032
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1033
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1034
    nop

    .line 1414
    .end local v1    # "callback":Landroid/hardware/gnss/V1_0/IGnssCallback;
    .end local v2    # "_hidl_out_success":Z
    :goto_317
    return-void

    :sswitch_data_318
    .sparse-switch
        0x1 -> :sswitch_2fe
        0x2 -> :sswitch_2ed
        0x3 -> :sswitch_2dc
        0x4 -> :sswitch_2cf
        0x5 -> :sswitch_2b1
        0x6 -> :sswitch_293
        0x7 -> :sswitch_281
        0x8 -> :sswitch_25a
        0x9 -> :sswitch_241
        0xa -> :sswitch_228
        0xb -> :sswitch_20f
        0xc -> :sswitch_1f6
        0xd -> :sswitch_1dd
        0xe -> :sswitch_1c4
        0xf -> :sswitch_1ab
        0x10 -> :sswitch_192
        0x11 -> :sswitch_179
        0x12 -> :sswitch_160
        0x13 -> :sswitch_146
        0x14 -> :sswitch_11b
        0x15 -> :sswitch_102
        0x16 -> :sswitch_e9
        0x17 -> :sswitch_cf
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

    .line 978
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1006
    const-string v0, "android.hardware.gnss@1.1::IGnss"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1007
    return-object p0

    .line 1009
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

    .line 1013
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->registerService(Ljava/lang/String;)V

    .line 1014
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 968
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1000
    const/4 v0, 0x1

    return v0
.end method
