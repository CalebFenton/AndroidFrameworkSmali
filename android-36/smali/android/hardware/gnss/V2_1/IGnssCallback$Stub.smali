.class public abstract Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;
.super Landroid/os/HwBinder;
.source "IGnssCallback.java"

# interfaces
.implements Landroid/hardware/gnss/V2_1/IGnssCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_1/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 998
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1001
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

    .line 1017
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1057
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1058
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1059
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1060
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1061
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

    .line 1029
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
        0x35t
        0x41t
        -0x28t
        0x3at
        -0x21t
        -0x16t
        -0x3ft
        0x6et
        -0x1dt
        -0x1ct
        0x5dt
        0x18t
        0x3at
        0x58t
        -0x21t
        -0x2t
        0x6t
        0x1t
        0x2ct
        -0x35t
        0x5at
        -0x5bt
        -0x44t
        -0x2et
        -0x1ct
        -0xat
        -0x12t
        -0x52t
        0x26t
        -0x61t
        0x69t
        -0x33t
    .end array-data

    :array_3e
    .array-data 1
        0x64t
        0x23t
        0x20t
        0x37t
        0x10t
        -0x66t
        0x5et
        0x5ft
        0x53t
        -0x55t
        0x3t
        0x77t
        -0x19t
        0x55t
        -0x14t
        0x49t
        0x4at
        -0x17t
        0x3ft
        -0x35t
        0x52t
        0x79t
        -0x1at
        -0x12t
        -0x59t
        0x1dt
        -0x14t
        0x2et
        0x7at
        -0x3at
        -0x5t
        -0x4t
    .end array-data

    :array_52
    .array-data 1
        -0x76t
        -0x2bt
        0x5bt
        -0x3dt
        0x5bt
        -0x4dt
        -0x58t
        0x3et
        0x65t
        -0x40t
        0x18t
        -0x43t
        -0x3t
        -0x19t
        -0x52t
        0x5et
        -0x44t
        0x74t
        -0x61t
        -0xet
        -0x41t
        0x6bt
        0x79t
        0x41t
        0x2dt
        -0x13t
        0xbt
        -0x3at
        -0x38t
        -0x65t
        -0x69t
        -0x28t
    .end array-data

    :array_66
    .array-data 1
        -0x5et
        -0x5t
        -0x27t
        0x74t
        0x7ft
        -0x45t
        -0x64t
        -0x15t
        -0x74t
        0x10t
        -0x70t
        -0x4bt
        -0x5et
        0x41t
        0x38t
        0x31t
        0x22t
        0x46t
        0x50t
        0x2dt
        0x5at
        -0x10t
        0x65t
        0x4at
        -0x74t
        0x2bt
        0x60t
        0x3at
        -0x65t
        -0xbt
        0x21t
        -0x4t
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

    .line 1006
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss@1.0::IGnssCallback"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.gnss@2.1::IGnssCallback"

    const-string v4, "android.hardware.gnss@2.0::IGnssCallback"

    const-string v5, "android.hardware.gnss@1.1::IGnssCallback"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1023
    const-string v0, "android.hardware.gnss@2.1::IGnssCallback"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1045
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 1067
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1069
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

    .line 1097
    const-string v0, "android.hardware.gnss@2.1::IGnssCallback"

    const-string v1, "android.hardware.gnss@1.1::IGnssCallback"

    const-string v2, "android.hardware.gnss@2.0::IGnssCallback"

    const-string v3, "android.hidl.base@1.0::IBase"

    const-string v4, "android.hardware.gnss@1.0::IGnssCallback"

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_20a

    goto/16 :goto_208

    .line 1392
    :sswitch_10
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->notifySyspropsChanged()V

    .line 1395
    goto/16 :goto_208

    .line 1381
    :sswitch_18
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1384
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1385
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1386
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1387
    goto/16 :goto_208

    .line 1371
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->ping()V

    .line 1374
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1375
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1376
    goto/16 :goto_208

    .line 1366
    :sswitch_38
    goto/16 :goto_208

    .line 1358
    :sswitch_3a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->setHALInstrumentation()V

    .line 1361
    goto/16 :goto_208

    .line 1324
    :sswitch_42
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1326
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1327
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1329
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1331
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1332
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1333
    const-wide/16 v3, 0xc

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1334
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1335
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_69
    if-ge v4, v2, :cond_8a

    .line 1337
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1338
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1340
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_82

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_82

    .line 1344
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1345
    nop

    .line 1335
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    .line 1341
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_82
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1348
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_8a
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1350
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1352
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1353
    goto/16 :goto_208

    .line 1313
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_97
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1315
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1316
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1317
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1319
    goto/16 :goto_208

    .line 1301
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a9
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1303
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1304
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1305
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1306
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1307
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1308
    goto/16 :goto_208

    .line 1290
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bf
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1293
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1294
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1295
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1296
    goto/16 :goto_208

    .line 1279
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_d1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1281
    invoke-static {p2}, Landroid/hardware/gnss/V2_1/IGnssCallback$GnssSvInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1282
    .local v0, "svInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_1/IGnssCallback$GnssSvInfo;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssSvStatusCb_2_1(Ljava/util/ArrayList;)V

    .line 1283
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1284
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1285
    goto/16 :goto_208

    .line 1268
    .end local v0    # "svInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_1/IGnssCallback$GnssSvInfo;>;"
    :sswitch_e3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1271
    .local v0, "capabilities":I
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssSetCapabilitiesCb_2_1(I)V

    .line 1272
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1273
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1274
    goto/16 :goto_208

    .line 1257
    .end local v0    # "capabilities":I
    :sswitch_f5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1259
    invoke-static {p2}, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1260
    .local v0, "svInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssSvStatusCb_2_0(Ljava/util/ArrayList;)V

    .line 1261
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1262
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1263
    goto/16 :goto_208

    .line 1245
    .end local v0    # "svInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;>;"
    :sswitch_107
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1248
    .local v0, "independentFromGnss":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1249
    .local v1, "isUserEmergency":Z
    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssRequestLocationCb_2_0(ZZ)V

    .line 1250
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1251
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1252
    goto/16 :goto_208

    .line 1233
    .end local v0    # "independentFromGnss":Z
    .end local v1    # "isUserEmergency":Z
    :sswitch_11d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1235
    new-instance v0, Landroid/hardware/gnss/V2_0/GnssLocation;

    invoke-direct {v0}, Landroid/hardware/gnss/V2_0/GnssLocation;-><init>()V

    .line 1236
    .local v0, "location":Landroid/hardware/gnss/V2_0/GnssLocation;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V2_0/GnssLocation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1237
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssLocationCb_2_0(Landroid/hardware/gnss/V2_0/GnssLocation;)V

    .line 1238
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1239
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1240
    goto/16 :goto_208

    .line 1222
    .end local v0    # "location":Landroid/hardware/gnss/V2_0/GnssLocation;
    :sswitch_133
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1224
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1225
    .local v0, "capabilities":I
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssSetCapabilitiesCb_2_0(I)V

    .line 1226
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1227
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1228
    goto/16 :goto_208

    .line 1211
    .end local v0    # "capabilities":I
    :sswitch_145
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1214
    .local v0, "independentFromGnss":Z
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssRequestLocationCb(Z)V

    .line 1215
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1216
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1217
    goto/16 :goto_208

    .line 1200
    .end local v0    # "independentFromGnss":Z
    :sswitch_157
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1203
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssNameCb(Ljava/lang/String;)V

    .line 1204
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1205
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1206
    goto/16 :goto_208

    .line 1188
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_169
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1190
    new-instance v0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;-><init>()V

    .line 1191
    .local v0, "info":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1192
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssSetSystemInfoCb(Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;)V

    .line 1193
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1194
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1195
    goto/16 :goto_208

    .line 1178
    .end local v0    # "info":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;
    :sswitch_17f
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssRequestTimeCb()V

    .line 1181
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1182
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1183
    goto/16 :goto_208

    .line 1168
    :sswitch_18d
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssReleaseWakelockCb()V

    .line 1171
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1172
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1173
    goto :goto_208

    .line 1158
    :sswitch_19a
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1160
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssAcquireWakelockCb()V

    .line 1161
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1162
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1163
    goto :goto_208

    .line 1147
    :sswitch_1a7
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1150
    .local v0, "capabilities":I
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssSetCapabilitesCb(I)V

    .line 1151
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1152
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1153
    goto :goto_208

    .line 1135
    .end local v0    # "capabilities":I
    :sswitch_1b8
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 1138
    .local v0, "timestamp":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1139
    .local v2, "nmea":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssNmeaCb(JLjava/lang/String;)V

    .line 1140
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1141
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1142
    goto :goto_208

    .line 1123
    .end local v0    # "timestamp":J
    .end local v2    # "nmea":Ljava/lang/String;
    :sswitch_1cd
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1125
    new-instance v0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;-><init>()V

    .line 1126
    .local v0, "svInfo":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1127
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssSvStatusCb(Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;)V

    .line 1128
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1129
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1130
    goto :goto_208

    .line 1112
    .end local v0    # "svInfo":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;
    :sswitch_1e2
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 1115
    .local v0, "status":B
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssStatusCb(B)V

    .line 1116
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1117
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1118
    goto :goto_208

    .line 1100
    .end local v0    # "status":B
    :sswitch_1f3
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1102
    new-instance v0, Landroid/hardware/gnss/V1_0/GnssLocation;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/GnssLocation;-><init>()V

    .line 1103
    .local v0, "location":Landroid/hardware/gnss/V1_0/GnssLocation;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V1_0/GnssLocation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1104
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssLocationCb(Landroid/hardware/gnss/V1_0/GnssLocation;)V

    .line 1105
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1106
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1107
    nop

    .line 1404
    .end local v0    # "location":Landroid/hardware/gnss/V1_0/GnssLocation;
    :goto_208
    return-void

    nop

    :sswitch_data_20a
    .sparse-switch
        0x1 -> :sswitch_1f3
        0x2 -> :sswitch_1e2
        0x3 -> :sswitch_1cd
        0x4 -> :sswitch_1b8
        0x5 -> :sswitch_1a7
        0x6 -> :sswitch_19a
        0x7 -> :sswitch_18d
        0x8 -> :sswitch_17f
        0x9 -> :sswitch_169
        0xa -> :sswitch_157
        0xb -> :sswitch_145
        0xc -> :sswitch_133
        0xd -> :sswitch_11d
        0xe -> :sswitch_107
        0xf -> :sswitch_f5
        0x10 -> :sswitch_e3
        0x11 -> :sswitch_d1
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

    .line 1051
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1079
    const-string v0, "android.hardware.gnss@2.1::IGnssCallback"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1080
    return-object p0

    .line 1082
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

    .line 1086
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 1087
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 1041
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1073
    const/4 v0, 0x1

    return v0
.end method
