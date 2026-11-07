.class public abstract Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$Stub;
.super Landroid/os/HwBinder;
.source "IGnssMeasurementCallback.java"

# interfaces
.implements Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1126
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1129
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

    .line 1145
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1185
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1186
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1187
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1188
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1189
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

    .line 1157
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
        0x11t
        -0x17t
        -0x1ft
        -0x5ft
        -0x3t
        0xct
        -0x65t
        0x3dt
        -0x6at
        0x48t
        0x75t
        0xdt
        0x4bt
        0x10t
        -0x24t
        0x2at
        -0x7dt
        -0x63t
        0x3at
        0x66t
        -0x78t
        -0x70t
        0x4ct
        0x3ft
        -0x3ct
        -0x6bt
        0x0t
        -0x5ct
        -0x19t
        -0x36t
        0x75t
        -0x50t
    .end array-data

    :array_3e
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

    :array_52
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

    :array_66
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

    .line 1134
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss@1.0::IGnssMeasurementCallback"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.gnss@2.1::IGnssMeasurementCallback"

    const-string v4, "android.hardware.gnss@2.0::IGnssMeasurementCallback"

    const-string v5, "android.hardware.gnss@1.1::IGnssMeasurementCallback"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1151
    const-string v0, "android.hardware.gnss@2.1::IGnssMeasurementCallback"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1173
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 1195
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1197
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

    .line 1225
    const-string v0, "android.hidl.base@1.0::IBase"

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_124

    goto/16 :goto_123

    .line 1378
    :sswitch_8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1380
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$Stub;->notifySyspropsChanged()V

    .line 1381
    goto/16 :goto_123

    .line 1367
    :sswitch_10
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1370
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1371
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1372
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1373
    goto/16 :goto_123

    .line 1357
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_22
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$Stub;->ping()V

    .line 1360
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1361
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1362
    goto/16 :goto_123

    .line 1352
    :sswitch_30
    goto/16 :goto_123

    .line 1344
    :sswitch_32
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1346
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$Stub;->setHALInstrumentation()V

    .line 1347
    goto/16 :goto_123

    .line 1310
    :sswitch_3a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1313
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1315
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1317
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1318
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1319
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1320
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1321
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_61
    if-ge v4, v3, :cond_82

    .line 1323
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1324
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1326
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7a

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7a

    .line 1330
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1331
    nop

    .line 1321
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_61

    .line 1327
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7a
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1334
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_82
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1336
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1338
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1339
    goto/16 :goto_123

    .line 1299
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_8f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1302
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1303
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1304
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1305
    goto/16 :goto_123

    .line 1287
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1290
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1291
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1292
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1293
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1294
    goto :goto_123

    .line 1276
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1278
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1279
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1280
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1281
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1282
    goto :goto_123

    .line 1264
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_c7
    const-string v0, "android.hardware.gnss@2.1::IGnssMeasurementCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1266
    new-instance v0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssData;

    invoke-direct {v0}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssData;-><init>()V

    .line 1267
    .local v0, "data":Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssData;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1268
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$Stub;->gnssMeasurementCb_2_1(Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssData;)V

    .line 1269
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1270
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1271
    goto :goto_123

    .line 1252
    .end local v0    # "data":Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssData;
    :sswitch_de
    const-string v0, "android.hardware.gnss@2.0::IGnssMeasurementCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1254
    new-instance v0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;

    invoke-direct {v0}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;-><init>()V

    .line 1255
    .local v0, "data":Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1256
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$Stub;->gnssMeasurementCb_2_0(Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;)V

    .line 1257
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1258
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1259
    goto :goto_123

    .line 1240
    .end local v0    # "data":Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssData;
    :sswitch_f5
    const-string v0, "android.hardware.gnss@1.1::IGnssMeasurementCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1242
    new-instance v0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;-><init>()V

    .line 1243
    .local v0, "data":Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1244
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$Stub;->gnssMeasurementCb(Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;)V

    .line 1245
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1246
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1247
    goto :goto_123

    .line 1228
    .end local v0    # "data":Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssData;
    :sswitch_10c
    const-string v0, "android.hardware.gnss@1.0::IGnssMeasurementCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1230
    new-instance v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;-><init>()V

    .line 1231
    .local v0, "data":Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1232
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$Stub;->GnssMeasurementCb(Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;)V

    .line 1233
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1234
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1235
    nop

    .line 1390
    .end local v0    # "data":Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssData;
    :goto_123
    return-void

    :sswitch_data_124
    .sparse-switch
        0x1 -> :sswitch_10c
        0x2 -> :sswitch_f5
        0x3 -> :sswitch_de
        0x4 -> :sswitch_c7
        0xf43484e -> :sswitch_b6
        0xf444247 -> :sswitch_a1
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

    .line 1179
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1207
    const-string v0, "android.hardware.gnss@2.1::IGnssMeasurementCallback"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1208
    return-object p0

    .line 1210
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

    .line 1214
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 1215
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 1169
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1201
    const/4 v0, 0x1

    return v0
.end method
