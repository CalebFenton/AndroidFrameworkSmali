.class public abstract Landroid/hardware/radio/V1_4/IRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IRadioIndication.java"

# interfaces
.implements Landroid/hardware/radio/V1_4/IRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_4/IRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1478
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1481
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

    .line 1498
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1539
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1540
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1541
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1542
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1543
    return-object v0
.end method

.method public final blacklist getHashChain()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1510
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_2e

    new-array v3, v1, [B

    fill-array-data v3, :array_42

    new-array v4, v1, [B

    fill-array-data v4, :array_56

    new-array v5, v1, [B

    fill-array-data v5, :array_6a

    new-array v6, v1, [B

    fill-array-data v6, :array_7e

    new-array v7, v1, [B

    fill-array-data v7, :array_92

    filled-new-array/range {v2 .. v7}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_2e
    .array-data 1
        0x33t
        -0x27t
        -0x1at
        -0x77t
        0x5ct
        -0x36t
        -0x68t
        -0x56t
        0x56t
        0x29t
        0x6bt
        -0x50t
        0x17t
        0x20t
        -0x2ft
        -0x75t
        -0x76t
        -0x33t
        0xet
        0x4dt
        -0x1ct
        -0x6at
        0xbt
        -0x15t
        0x71t
        0x2et
        0x63t
        -0x53t
        0x14t
        0x74t
        0x38t
        -0x5bt
    .end array-data

    :array_42
    .array-data 1
        -0x17t
        -0x30t
        -0xft
        0x1at
        0x52t
        0x71t
        0x5ft
        0x5at
        0x29t
        -0x28t
        -0x62t
        0x2dt
        -0x72t
        0x2et
        0x21t
        -0x25t
        0x1et
        0x16t
        -0x5ct
        0x31t
        0x74t
        -0x51t
        0x6bt
        -0x63t
        0x51t
        -0x5at
        0x2dt
        0x70t
        0x5ct
        -0x26t
        0x14t
        0x55t
    .end array-data

    :array_56
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

    :array_6a
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

    :array_7e
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

    :array_92
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
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1486
    new-instance v0, Ljava/util/ArrayList;

    const-string v5, "android.hardware.radio@1.0::IRadioIndication"

    const-string v6, "android.hidl.base@1.0::IBase"

    const-string v1, "android.hardware.radio@1.4::IRadioIndication"

    const-string v2, "android.hardware.radio@1.3::IRadioIndication"

    const-string v3, "android.hardware.radio@1.2::IRadioIndication"

    const-string v4, "android.hardware.radio@1.1::IRadioIndication"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1504
    const-string v0, "android.hardware.radio@1.4::IRadioIndication"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1527
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 1549
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1551
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

    .line 1579
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    const-string v1, "android.hardware.radio@1.2::IRadioIndication"

    const-string v2, "android.hardware.radio@1.4::IRadioIndication"

    const/4 v3, 0x0

    const-string v4, "android.hidl.base@1.0::IBase"

    const-string v5, "android.hardware.radio@1.0::IRadioIndication"

    sparse-switch p1, :sswitch_data_49e

    goto/16 :goto_49d

    .line 2283
    :sswitch_10
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2285
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->notifySyspropsChanged()V

    .line 2286
    goto/16 :goto_49d

    .line 2272
    :sswitch_18
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2274
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2275
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2276
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2277
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2278
    goto/16 :goto_49d

    .line 2262
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2a
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2264
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->ping()V

    .line 2265
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2266
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2267
    goto/16 :goto_49d

    .line 2257
    :sswitch_38
    goto/16 :goto_49d

    .line 2249
    :sswitch_3a
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2251
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->setHALInstrumentation()V

    .line 2252
    goto/16 :goto_49d

    .line 2215
    :sswitch_42
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2217
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2218
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2220
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2222
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2223
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2224
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2225
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2226
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_69
    if-ge v4, v2, :cond_8a

    .line 2228
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 2229
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 2231
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_82

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_82

    .line 2235
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2236
    nop

    .line 2226
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    .line 2232
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_82
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2239
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_8a
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2241
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2243
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2244
    goto/16 :goto_49d

    .line 2204
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_97
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2206
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2207
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2208
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2209
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2210
    goto/16 :goto_49d

    .line 2192
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a9
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2194
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 2195
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2196
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2197
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2198
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2199
    goto/16 :goto_49d

    .line 2181
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bf
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2183
    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2184
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2185
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2186
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2187
    goto/16 :goto_49d

    .line 2170
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_d1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2172
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2173
    .local v0, "type":I
    new-instance v1, Landroid/hardware/radio/V1_4/SignalStrength;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/SignalStrength;-><init>()V

    .line 2174
    .local v1, "signalStrength":Landroid/hardware/radio/V1_4/SignalStrength;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_4/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2175
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->currentSignalStrength_1_4(ILandroid/hardware/radio/V1_4/SignalStrength;)V

    .line 2176
    goto/16 :goto_49d

    .line 2160
    .end local v0    # "type":I
    .end local v1    # "signalStrength":Landroid/hardware/radio/V1_4/SignalStrength;
    :sswitch_e5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2162
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2163
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2164
    .local v1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->dataCallListChanged_1_4(ILjava/util/ArrayList;)V

    .line 2165
    goto/16 :goto_49d

    .line 2150
    .end local v0    # "type":I
    .end local v1    # "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    :sswitch_f5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2152
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2153
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2154
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/PhysicalChannelConfig;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->currentPhysicalChannelConfigs_1_4(ILjava/util/ArrayList;)V

    .line 2155
    goto/16 :goto_49d

    .line 2139
    .end local v0    # "type":I
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/PhysicalChannelConfig;>;"
    :sswitch_105
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2141
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2142
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_4/NetworkScanResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/NetworkScanResult;-><init>()V

    .line 2143
    .local v1, "result":Landroid/hardware/radio/V1_4/NetworkScanResult;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_4/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2144
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->networkScanResult_1_4(ILandroid/hardware/radio/V1_4/NetworkScanResult;)V

    .line 2145
    goto/16 :goto_49d

    .line 2129
    .end local v0    # "type":I
    .end local v1    # "result":Landroid/hardware/radio/V1_4/NetworkScanResult;
    :sswitch_119
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2131
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2132
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_4/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2133
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/CellInfo;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->cellInfoList_1_4(ILjava/util/ArrayList;)V

    .line 2134
    goto/16 :goto_49d

    .line 2119
    .end local v0    # "type":I
    .end local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/CellInfo;>;"
    :sswitch_129
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2121
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2122
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_4/EmergencyNumber;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2123
    .local v1, "emergencyNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/EmergencyNumber;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->currentEmergencyNumberList(ILjava/util/ArrayList;)V

    .line 2124
    goto/16 :goto_49d

    .line 2108
    .end local v0    # "type":I
    .end local v1    # "emergencyNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/EmergencyNumber;>;"
    :sswitch_139
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2110
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2111
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 2112
    .local v1, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2113
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->currentSignalStrength_1_2(ILandroid/hardware/radio/V1_2/SignalStrength;)V

    .line 2114
    goto/16 :goto_49d

    .line 2098
    .end local v0    # "type":I
    .end local v1    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :sswitch_14d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2100
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2101
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2102
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->currentPhysicalChannelConfigs(ILjava/util/ArrayList;)V

    .line 2103
    goto/16 :goto_49d

    .line 2087
    .end local v0    # "type":I
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    :sswitch_15d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2089
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2090
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;-><init>()V

    .line 2091
    .local v1, "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2092
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->currentLinkCapacityEstimate(ILandroid/hardware/radio/V1_2/LinkCapacityEstimate;)V

    .line 2093
    goto/16 :goto_49d

    .line 2077
    .end local v0    # "type":I
    .end local v1    # "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    :sswitch_171
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2079
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2080
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2081
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->cellInfoList_1_2(ILjava/util/ArrayList;)V

    .line 2082
    goto/16 :goto_49d

    .line 2066
    .end local v0    # "type":I
    .end local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :sswitch_181
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2068
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2069
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_2/NetworkScanResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/NetworkScanResult;-><init>()V

    .line 2070
    .local v1, "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_2/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2071
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V

    .line 2072
    goto/16 :goto_49d

    .line 2055
    .end local v0    # "type":I
    .end local v1    # "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    :sswitch_195
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2057
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2058
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 2059
    .local v1, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2060
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 2061
    goto/16 :goto_49d

    .line 2044
    .end local v0    # "type":I
    .end local v1    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :sswitch_1a9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2046
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2047
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_1/NetworkScanResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/NetworkScanResult;-><init>()V

    .line 2048
    .local v1, "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_1/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2049
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V

    .line 2050
    goto/16 :goto_49d

    .line 2035
    .end local v0    # "type":I
    .end local v1    # "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    :sswitch_1bd
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2037
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2038
    .local v0, "info":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->carrierInfoForImsiEncryption(I)V

    .line 2039
    goto/16 :goto_49d

    .line 2025
    .end local v0    # "info":I
    :sswitch_1c9
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2027
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2028
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2029
    .local v1, "reason":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->modemReset(ILjava/lang/String;)V

    .line 2030
    goto/16 :goto_49d

    .line 2014
    .end local v0    # "type":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_1d9
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2016
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2017
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/PcoDataInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/PcoDataInfo;-><init>()V

    .line 2018
    .local v1, "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/PcoDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2019
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V

    .line 2020
    goto/16 :goto_49d

    .line 2003
    .end local v0    # "type":I
    .end local v1    # "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    :sswitch_1ed
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2005
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2006
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 2007
    .local v1, "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2008
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 2009
    goto/16 :goto_49d

    .line 1993
    .end local v0    # "type":I
    .end local v1    # "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    :sswitch_201
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1995
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1996
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1997
    .local v1, "alpha":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    .line 1998
    goto/16 :goto_49d

    .line 1982
    .end local v0    # "type":I
    .end local v1    # "alpha":Ljava/lang/String;
    :sswitch_211
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1984
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1985
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 1986
    .local v1, "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1987
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V

    .line 1988
    goto/16 :goto_49d

    .line 1971
    .end local v0    # "type":I
    .end local v1    # "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    :sswitch_225
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1973
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1974
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 1975
    .local v1, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1976
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 1977
    goto/16 :goto_49d

    .line 1961
    .end local v0    # "type":I
    .end local v1    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :sswitch_239
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1963
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1964
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1965
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->hardwareConfigChanged(ILjava/util/ArrayList;)V

    .line 1966
    goto/16 :goto_49d

    .line 1951
    .end local v0    # "type":I
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :sswitch_249
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1953
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1954
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1955
    .local v1, "state":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->srvccStateNotify(II)V

    .line 1956
    goto/16 :goto_49d

    .line 1941
    .end local v0    # "type":I
    .end local v1    # "state":I
    :sswitch_259
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1943
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1944
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1945
    .local v1, "activate":Z
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->subscriptionStatusChanged(IZ)V

    .line 1946
    goto/16 :goto_49d

    .line 1932
    .end local v0    # "type":I
    .end local v1    # "activate":Z
    :sswitch_269
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1934
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1935
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->imsNetworkStateChanged(I)V

    .line 1936
    goto/16 :goto_49d

    .line 1922
    .end local v0    # "type":I
    :sswitch_275
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1924
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1925
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1926
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->cellInfoList(ILjava/util/ArrayList;)V

    .line 1927
    goto/16 :goto_49d

    .line 1912
    .end local v0    # "type":I
    .end local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :sswitch_285
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1914
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1915
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1916
    .local v1, "rat":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->voiceRadioTechChanged(II)V

    .line 1917
    goto/16 :goto_49d

    .line 1903
    .end local v0    # "type":I
    .end local v1    # "rat":I
    :sswitch_295
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1905
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1906
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->rilConnected(I)V

    .line 1907
    goto/16 :goto_49d

    .line 1894
    .end local v0    # "type":I
    :sswitch_2a1
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1896
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1897
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->exitEmergencyCallbackMode(I)V

    .line 1898
    goto/16 :goto_49d

    .line 1884
    .end local v0    # "type":I
    :sswitch_2ad
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1886
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1887
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1888
    .local v1, "version":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->cdmaPrlChanged(II)V

    .line 1889
    goto/16 :goto_49d

    .line 1874
    .end local v0    # "type":I
    .end local v1    # "version":I
    :sswitch_2bd
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1876
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1877
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1878
    .local v1, "cdmaSource":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    .line 1879
    goto/16 :goto_49d

    .line 1865
    .end local v0    # "type":I
    .end local v1    # "cdmaSource":I
    :sswitch_2cd
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1867
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1868
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->resendIncallMute(I)V

    .line 1869
    goto/16 :goto_49d

    .line 1855
    .end local v0    # "type":I
    :sswitch_2d9
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1857
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1858
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1859
    .local v1, "start":Z
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->indicateRingbackTone(IZ)V

    .line 1860
    goto/16 :goto_49d

    .line 1844
    .end local v0    # "type":I
    .end local v1    # "start":Z
    :sswitch_2e9
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1846
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1847
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;-><init>()V

    .line 1848
    .local v1, "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1849
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V

    .line 1850
    goto/16 :goto_49d

    .line 1834
    .end local v0    # "type":I
    .end local v1    # "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    :sswitch_2fd
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1836
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1837
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1838
    .local v1, "status":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->cdmaOtaProvisionStatus(II)V

    .line 1839
    goto/16 :goto_49d

    .line 1823
    .end local v0    # "type":I
    .end local v1    # "status":I
    :sswitch_30d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1825
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1826
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    .line 1827
    .local v1, "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1828
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V

    .line 1829
    goto/16 :goto_49d

    .line 1814
    .end local v0    # "type":I
    .end local v1    # "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    :sswitch_321
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1816
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1817
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->enterEmergencyCallbackMode(I)V

    .line 1818
    goto/16 :goto_49d

    .line 1804
    .end local v0    # "type":I
    :sswitch_32d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1806
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1807
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1808
    .local v1, "state":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->restrictedStateChanged(II)V

    .line 1809
    goto/16 :goto_49d

    .line 1795
    .end local v0    # "type":I
    .end local v1    # "state":I
    :sswitch_33d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1797
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1798
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    .line 1799
    goto/16 :goto_49d

    .line 1785
    .end local v0    # "type":I
    :sswitch_349
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1788
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1789
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->newBroadcastSms(ILjava/util/ArrayList;)V

    .line 1790
    goto/16 :goto_49d

    .line 1774
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_359
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1776
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1777
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 1778
    .local v1, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1779
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 1780
    goto/16 :goto_49d

    .line 1765
    .end local v0    # "type":I
    .end local v1    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :sswitch_36d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1767
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1768
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->simStatusChanged(I)V

    .line 1769
    goto/16 :goto_49d

    .line 1753
    .end local v0    # "type":I
    :sswitch_379
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1755
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1756
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1757
    .local v1, "isGsm":Z
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 1758
    .local v2, "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1759
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V

    .line 1760
    goto/16 :goto_49d

    .line 1742
    .end local v0    # "type":I
    .end local v1    # "isGsm":Z
    .end local v2    # "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    :sswitch_391
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1744
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1745
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/SimRefreshResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SimRefreshResult;-><init>()V

    .line 1746
    .local v1, "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1747
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V

    .line 1748
    goto/16 :goto_49d

    .line 1733
    .end local v0    # "type":I
    .end local v1    # "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    :sswitch_3a5
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1735
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1736
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->simSmsStorageFull(I)V

    .line 1737
    goto/16 :goto_49d

    .line 1723
    .end local v0    # "type":I
    :sswitch_3b1
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1725
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1726
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v1

    .line 1727
    .local v1, "timeout":J
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->stkCallSetup(IJ)V

    .line 1728
    goto/16 :goto_49d

    .line 1713
    .end local v0    # "type":I
    .end local v1    # "timeout":J
    :sswitch_3c1
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1715
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1716
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1717
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    .line 1718
    goto/16 :goto_49d

    .line 1703
    .end local v0    # "type":I
    .end local v1    # "cmd":Ljava/lang/String;
    :sswitch_3d1
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1705
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1706
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1707
    .restart local v1    # "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    .line 1708
    goto/16 :goto_49d

    .line 1694
    .end local v0    # "type":I
    .end local v1    # "cmd":Ljava/lang/String;
    :sswitch_3e1
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1696
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1697
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->stkSessionEnd(I)V

    .line 1698
    goto/16 :goto_49d

    .line 1683
    .end local v0    # "type":I
    :sswitch_3ed
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1685
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1686
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 1687
    .local v1, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1688
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 1689
    goto/16 :goto_49d

    .line 1673
    .end local v0    # "type":I
    .end local v1    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    :sswitch_401
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1675
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1676
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1677
    .local v1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->dataCallListChanged(ILjava/util/ArrayList;)V

    .line 1678
    goto/16 :goto_49d

    .line 1662
    .end local v0    # "type":I
    .end local v1    # "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :sswitch_411
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1664
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1665
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 1666
    .local v1, "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1667
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V

    .line 1668
    goto/16 :goto_49d

    .line 1651
    .end local v0    # "type":I
    .end local v1    # "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :sswitch_425
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1653
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1654
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1655
    .local v1, "nitzTime":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 1656
    .local v2, "receivedTime":J
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->nitzTimeReceived(ILjava/lang/String;J)V

    .line 1657
    goto :goto_49d

    .line 1640
    .end local v0    # "type":I
    .end local v1    # "nitzTime":Ljava/lang/String;
    .end local v2    # "receivedTime":J
    :sswitch_438
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1642
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1643
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1644
    .local v1, "modeType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1645
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->onUssd(IILjava/lang/String;)V

    .line 1646
    goto :goto_49d

    .line 1630
    .end local v0    # "type":I
    .end local v1    # "modeType":I
    .end local v2    # "msg":Ljava/lang/String;
    :sswitch_44b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1632
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1633
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1634
    .local v1, "recordNumber":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->newSmsOnSim(II)V

    .line 1635
    goto :goto_49d

    .line 1620
    .end local v0    # "type":I
    .end local v1    # "recordNumber":I
    :sswitch_45a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1622
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1623
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1624
    .local v1, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->newSmsStatusReport(ILjava/util/ArrayList;)V

    .line 1625
    goto :goto_49d

    .line 1610
    .end local v0    # "type":I
    .end local v1    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_469
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1612
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1613
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1614
    .restart local v1    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->newSms(ILjava/util/ArrayList;)V

    .line 1615
    goto :goto_49d

    .line 1601
    .end local v0    # "type":I
    .end local v1    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_478
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1603
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1604
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->networkStateChanged(I)V

    .line 1605
    goto :goto_49d

    .line 1592
    .end local v0    # "type":I
    :sswitch_483
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1595
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->callStateChanged(I)V

    .line 1596
    goto :goto_49d

    .line 1582
    .end local v0    # "type":I
    :sswitch_48e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1584
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1585
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1586
    .local v1, "radioState":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->radioStateChanged(II)V

    .line 1587
    nop

    .line 2295
    .end local v0    # "type":I
    .end local v1    # "radioState":I
    :goto_49d
    return-void

    :sswitch_data_49e
    .sparse-switch
        0x1 -> :sswitch_48e
        0x2 -> :sswitch_483
        0x3 -> :sswitch_478
        0x4 -> :sswitch_469
        0x5 -> :sswitch_45a
        0x6 -> :sswitch_44b
        0x7 -> :sswitch_438
        0x8 -> :sswitch_425
        0x9 -> :sswitch_411
        0xa -> :sswitch_401
        0xb -> :sswitch_3ed
        0xc -> :sswitch_3e1
        0xd -> :sswitch_3d1
        0xe -> :sswitch_3c1
        0xf -> :sswitch_3b1
        0x10 -> :sswitch_3a5
        0x11 -> :sswitch_391
        0x12 -> :sswitch_379
        0x13 -> :sswitch_36d
        0x14 -> :sswitch_359
        0x15 -> :sswitch_349
        0x16 -> :sswitch_33d
        0x17 -> :sswitch_32d
        0x18 -> :sswitch_321
        0x19 -> :sswitch_30d
        0x1a -> :sswitch_2fd
        0x1b -> :sswitch_2e9
        0x1c -> :sswitch_2d9
        0x1d -> :sswitch_2cd
        0x1e -> :sswitch_2bd
        0x1f -> :sswitch_2ad
        0x20 -> :sswitch_2a1
        0x21 -> :sswitch_295
        0x22 -> :sswitch_285
        0x23 -> :sswitch_275
        0x24 -> :sswitch_269
        0x25 -> :sswitch_259
        0x26 -> :sswitch_249
        0x27 -> :sswitch_239
        0x28 -> :sswitch_225
        0x29 -> :sswitch_211
        0x2a -> :sswitch_201
        0x2b -> :sswitch_1ed
        0x2c -> :sswitch_1d9
        0x2d -> :sswitch_1c9
        0x2e -> :sswitch_1bd
        0x2f -> :sswitch_1a9
        0x30 -> :sswitch_195
        0x31 -> :sswitch_181
        0x32 -> :sswitch_171
        0x33 -> :sswitch_15d
        0x34 -> :sswitch_14d
        0x35 -> :sswitch_139
        0x36 -> :sswitch_129
        0x37 -> :sswitch_119
        0x38 -> :sswitch_105
        0x39 -> :sswitch_f5
        0x3a -> :sswitch_e5
        0x3b -> :sswitch_d1
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

    .line 1533
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1561
    const-string v0, "android.hardware.radio@1.4::IRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1562
    return-object p0

    .line 1564
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

    .line 1568
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1569
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 1523
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1555
    const/4 v0, 0x1

    return v0
.end method
