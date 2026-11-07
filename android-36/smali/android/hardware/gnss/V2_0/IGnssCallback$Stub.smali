.class public abstract Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;
.super Landroid/os/HwBinder;
.source "IGnssCallback.java"

# interfaces
.implements Landroid/hardware/gnss/V2_0/IGnssCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_0/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 976
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 979
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

    .line 994
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1033
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1034
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1035
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1036
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1037
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

    .line 1006
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

    :array_38
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

    :array_4c
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

    .line 984
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss@1.0::IGnssCallback"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.gnss@2.0::IGnssCallback"

    const-string v4, "android.hardware.gnss@1.1::IGnssCallback"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1000
    const-string v0, "android.hardware.gnss@2.0::IGnssCallback"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1021
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 1043
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1045
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

    .line 1073
    const-string v0, "android.hardware.gnss@1.1::IGnssCallback"

    const-string v1, "android.hardware.gnss@2.0::IGnssCallback"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.gnss@1.0::IGnssCallback"

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_1e4

    goto/16 :goto_1e2

    .line 1346
    :sswitch_e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1348
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->notifySyspropsChanged()V

    .line 1349
    goto/16 :goto_1e2

    .line 1335
    :sswitch_16
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1337
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1338
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1339
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1340
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1341
    goto/16 :goto_1e2

    .line 1325
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_28
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->ping()V

    .line 1328
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1329
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1330
    goto/16 :goto_1e2

    .line 1320
    :sswitch_36
    goto/16 :goto_1e2

    .line 1312
    :sswitch_38
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->setHALInstrumentation()V

    .line 1315
    goto/16 :goto_1e2

    .line 1278
    :sswitch_40
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1281
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1283
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1285
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1286
    .local v2, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1287
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1288
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1289
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_67
    if-ge v4, v2, :cond_88

    .line 1291
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1292
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1294
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_80

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_80

    .line 1298
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1299
    nop

    .line 1289
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    .line 1295
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_80
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1302
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_88
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1304
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1306
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1307
    goto/16 :goto_1e2

    .line 1267
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_95
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1269
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1270
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1271
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1272
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1273
    goto/16 :goto_1e2

    .line 1255
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1258
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1259
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1260
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1261
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1262
    goto/16 :goto_1e2

    .line 1244
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bd
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1247
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1248
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1249
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1250
    goto/16 :goto_1e2

    .line 1233
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cf
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1235
    invoke-static {p2}, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1236
    .local v0, "svInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssSvStatusCb_2_0(Ljava/util/ArrayList;)V

    .line 1237
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1238
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1239
    goto/16 :goto_1e2

    .line 1221
    .end local v0    # "svInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;>;"
    :sswitch_e1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1224
    .local v0, "independentFromGnss":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1225
    .local v1, "isUserEmergency":Z
    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssRequestLocationCb_2_0(ZZ)V

    .line 1226
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1227
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1228
    goto/16 :goto_1e2

    .line 1209
    .end local v0    # "independentFromGnss":Z
    .end local v1    # "isUserEmergency":Z
    :sswitch_f7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1211
    new-instance v0, Landroid/hardware/gnss/V2_0/GnssLocation;

    invoke-direct {v0}, Landroid/hardware/gnss/V2_0/GnssLocation;-><init>()V

    .line 1212
    .local v0, "location":Landroid/hardware/gnss/V2_0/GnssLocation;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V2_0/GnssLocation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1213
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssLocationCb_2_0(Landroid/hardware/gnss/V2_0/GnssLocation;)V

    .line 1214
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1215
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1216
    goto/16 :goto_1e2

    .line 1198
    .end local v0    # "location":Landroid/hardware/gnss/V2_0/GnssLocation;
    :sswitch_10d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1201
    .local v0, "capabilities":I
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssSetCapabilitiesCb_2_0(I)V

    .line 1202
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1203
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1204
    goto/16 :goto_1e2

    .line 1187
    .end local v0    # "capabilities":I
    :sswitch_11f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1189
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1190
    .local v0, "independentFromGnss":Z
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssRequestLocationCb(Z)V

    .line 1191
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1192
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1193
    goto/16 :goto_1e2

    .line 1176
    .end local v0    # "independentFromGnss":Z
    :sswitch_131
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1179
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssNameCb(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1181
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1182
    goto/16 :goto_1e2

    .line 1164
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_143
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1166
    new-instance v0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;-><init>()V

    .line 1167
    .local v0, "info":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1168
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssSetSystemInfoCb(Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;)V

    .line 1169
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1170
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1171
    goto/16 :goto_1e2

    .line 1154
    .end local v0    # "info":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;
    :sswitch_159
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssRequestTimeCb()V

    .line 1157
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1158
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1159
    goto/16 :goto_1e2

    .line 1144
    :sswitch_167
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssReleaseWakelockCb()V

    .line 1147
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1148
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1149
    goto :goto_1e2

    .line 1134
    :sswitch_174
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssAcquireWakelockCb()V

    .line 1137
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1138
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1139
    goto :goto_1e2

    .line 1123
    :sswitch_181
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1126
    .local v0, "capabilities":I
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssSetCapabilitesCb(I)V

    .line 1127
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1128
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1129
    goto :goto_1e2

    .line 1111
    .end local v0    # "capabilities":I
    :sswitch_192
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 1114
    .local v0, "timestamp":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1115
    .local v2, "nmea":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssNmeaCb(JLjava/lang/String;)V

    .line 1116
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1117
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1118
    goto :goto_1e2

    .line 1099
    .end local v0    # "timestamp":J
    .end local v2    # "nmea":Ljava/lang/String;
    :sswitch_1a7
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    new-instance v0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;-><init>()V

    .line 1102
    .local v0, "svInfo":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1103
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssSvStatusCb(Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;)V

    .line 1104
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1105
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1106
    goto :goto_1e2

    .line 1088
    .end local v0    # "svInfo":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;
    :sswitch_1bc
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 1091
    .local v0, "status":B
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssStatusCb(B)V

    .line 1092
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1093
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1094
    goto :goto_1e2

    .line 1076
    .end local v0    # "status":B
    :sswitch_1cd
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    new-instance v0, Landroid/hardware/gnss/V1_0/GnssLocation;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/GnssLocation;-><init>()V

    .line 1079
    .local v0, "location":Landroid/hardware/gnss/V1_0/GnssLocation;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V1_0/GnssLocation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1080
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssLocationCb(Landroid/hardware/gnss/V1_0/GnssLocation;)V

    .line 1081
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1082
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1083
    nop

    .line 1358
    .end local v0    # "location":Landroid/hardware/gnss/V1_0/GnssLocation;
    :goto_1e2
    return-void

    nop

    :sswitch_data_1e4
    .sparse-switch
        0x1 -> :sswitch_1cd
        0x2 -> :sswitch_1bc
        0x3 -> :sswitch_1a7
        0x4 -> :sswitch_192
        0x5 -> :sswitch_181
        0x6 -> :sswitch_174
        0x7 -> :sswitch_167
        0x8 -> :sswitch_159
        0x9 -> :sswitch_143
        0xa -> :sswitch_131
        0xb -> :sswitch_11f
        0xc -> :sswitch_10d
        0xd -> :sswitch_f7
        0xe -> :sswitch_e1
        0xf -> :sswitch_cf
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

    .line 1027
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1055
    const-string v0, "android.hardware.gnss@2.0::IGnssCallback"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1056
    return-object p0

    .line 1058
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

    .line 1062
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 1063
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 1017
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1049
    const/4 v0, 0x1

    return v0
.end method
