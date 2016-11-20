.class public final Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImsCapabilities"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;


# instance fields
.field private bitField0_:I

.field private utOverLte_:Z

.field private utOverWifi_:Z

.field private videoOverLte_:Z

.field private videoOverWifi_:Z

.field private voiceOverLte_:Z

.field private voiceOverWifi_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2408
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    #@3
    .line 2409
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->clear()Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@6
    .line 2408
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 2

    #@0
    .prologue
    .line 2279
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 2280
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 2282
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 2283
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@e
    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 2287
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@13
    return-object v0

    #@14
    .line 2280
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2536
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 2530
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2413
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@3
    .line 2414
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverLte_:Z

    #@5
    .line 2415
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverWifi_:Z

    #@7
    .line 2416
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverLte_:Z

    #@9
    .line 2417
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverWifi_:Z

    #@b
    .line 2418
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverLte_:Z

    #@d
    .line 2419
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverWifi_:Z

    #@f
    .line 2420
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@12
    .line 2421
    const/4 v0, -0x1

    #@13
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->cachedSize:I

    #@15
    .line 2422
    return-object p0
.end method

.method public clearUtOverLte()Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1

    #@0
    .prologue
    .line 2382
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverLte_:Z

    #@3
    .line 2383
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x11

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@9
    .line 2384
    return-object p0
.end method

.method public clearUtOverWifi()Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1

    #@0
    .prologue
    .line 2401
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverWifi_:Z

    #@3
    .line 2402
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x21

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@9
    .line 2403
    return-object p0
.end method

.method public clearVideoOverLte()Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1

    #@0
    .prologue
    .line 2344
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverLte_:Z

    #@3
    .line 2345
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x5

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@9
    .line 2346
    return-object p0
.end method

.method public clearVideoOverWifi()Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1

    #@0
    .prologue
    .line 2363
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverWifi_:Z

    #@3
    .line 2364
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x9

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@9
    .line 2365
    return-object p0
.end method

.method public clearVoiceOverLte()Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1

    #@0
    .prologue
    .line 2306
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverLte_:Z

    #@3
    .line 2307
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x2

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@9
    .line 2308
    return-object p0
.end method

.method public clearVoiceOverWifi()Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1

    #@0
    .prologue
    .line 2325
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverWifi_:Z

    #@3
    .line 2326
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x3

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@9
    .line 2327
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    #@0
    .prologue
    .line 2451
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 2452
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@6
    and-int/lit8 v1, v1, 0x1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2454
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverLte_:Z

    #@c
    const/4 v2, 0x1

    #@d
    .line 2453
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@10
    move-result v1

    #@11
    add-int/2addr v0, v1

    #@12
    .line 2456
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@14
    and-int/lit8 v1, v1, 0x2

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 2458
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverWifi_:Z

    #@1a
    const/4 v2, 0x2

    #@1b
    .line 2457
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@1e
    move-result v1

    #@1f
    add-int/2addr v0, v1

    #@20
    .line 2460
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@22
    and-int/lit8 v1, v1, 0x4

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 2462
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverLte_:Z

    #@28
    const/4 v2, 0x3

    #@29
    .line 2461
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@2c
    move-result v1

    #@2d
    add-int/2addr v0, v1

    #@2e
    .line 2464
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@30
    and-int/lit8 v1, v1, 0x8

    #@32
    if-eqz v1, :cond_3

    #@34
    .line 2466
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverWifi_:Z

    #@36
    const/4 v2, 0x4

    #@37
    .line 2465
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@3a
    move-result v1

    #@3b
    add-int/2addr v0, v1

    #@3c
    .line 2468
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@3e
    and-int/lit8 v1, v1, 0x10

    #@40
    if-eqz v1, :cond_4

    #@42
    .line 2470
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverLte_:Z

    #@44
    const/4 v2, 0x5

    #@45
    .line 2469
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@48
    move-result v1

    #@49
    add-int/2addr v0, v1

    #@4a
    .line 2472
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@4c
    and-int/lit8 v1, v1, 0x20

    #@4e
    if-eqz v1, :cond_5

    #@50
    .line 2474
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverWifi_:Z

    #@52
    const/4 v2, 0x6

    #@53
    .line 2473
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@56
    move-result v1

    #@57
    add-int/2addr v0, v1

    #@58
    .line 2476
    :cond_5
    return v0
.end method

.method public getUtOverLte()Z
    .locals 1

    #@0
    .prologue
    .line 2371
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverLte_:Z

    #@2
    return v0
.end method

.method public getUtOverWifi()Z
    .locals 1

    #@0
    .prologue
    .line 2390
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverWifi_:Z

    #@2
    return v0
.end method

.method public getVideoOverLte()Z
    .locals 1

    #@0
    .prologue
    .line 2333
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverLte_:Z

    #@2
    return v0
.end method

.method public getVideoOverWifi()Z
    .locals 1

    #@0
    .prologue
    .line 2352
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverWifi_:Z

    #@2
    return v0
.end method

.method public getVoiceOverLte()Z
    .locals 1

    #@0
    .prologue
    .line 2295
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverLte_:Z

    #@2
    return v0
.end method

.method public getVoiceOverWifi()Z
    .locals 1

    #@0
    .prologue
    .line 2314
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverWifi_:Z

    #@2
    return v0
.end method

.method public hasUtOverLte()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2379
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x10

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasUtOverWifi()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2398
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x20

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasVideoOverLte()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2341
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x4

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasVideoOverWifi()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2360
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x8

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasVoiceOverLte()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2303
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasVoiceOverWifi()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2322
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x2

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2480
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2484
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v0

    #@4
    .line 2485
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 2489
    invoke-super {p0, p1, v0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 2490
    return-object p0

    #@e
    .line 2487
    :sswitch_0
    return-object p0

    #@f
    .line 2495
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@12
    move-result v1

    #@13
    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverLte_:Z

    #@15
    .line 2496
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@17
    or-int/lit8 v1, v1, 0x1

    #@19
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@1b
    goto :goto_0

    #@1c
    .line 2500
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@1f
    move-result v1

    #@20
    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverWifi_:Z

    #@22
    .line 2501
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@24
    or-int/lit8 v1, v1, 0x2

    #@26
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@28
    goto :goto_0

    #@29
    .line 2505
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@2c
    move-result v1

    #@2d
    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverLte_:Z

    #@2f
    .line 2506
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@31
    or-int/lit8 v1, v1, 0x4

    #@33
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@35
    goto :goto_0

    #@36
    .line 2510
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@39
    move-result v1

    #@3a
    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverWifi_:Z

    #@3c
    .line 2511
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@3e
    or-int/lit8 v1, v1, 0x8

    #@40
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@42
    goto :goto_0

    #@43
    .line 2515
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@46
    move-result v1

    #@47
    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverLte_:Z

    #@49
    .line 2516
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@4b
    or-int/lit8 v1, v1, 0x10

    #@4d
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@4f
    goto :goto_0

    #@50
    .line 2520
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@53
    move-result v1

    #@54
    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverWifi_:Z

    #@56
    .line 2521
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@58
    or-int/lit8 v1, v1, 0x20

    #@5a
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@5c
    goto :goto_0

    #@5d
    .line 2485
    nop

    #@5e
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public setUtOverLte(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 2374
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverLte_:Z

    #@2
    .line 2375
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x10

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@8
    .line 2376
    return-object p0
.end method

.method public setUtOverWifi(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 2393
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverWifi_:Z

    #@2
    .line 2394
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x20

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@8
    .line 2395
    return-object p0
.end method

.method public setVideoOverLte(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 2336
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverLte_:Z

    #@2
    .line 2337
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x4

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@8
    .line 2338
    return-object p0
.end method

.method public setVideoOverWifi(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 2355
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverWifi_:Z

    #@2
    .line 2356
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x8

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@8
    .line 2357
    return-object p0
.end method

.method public setVoiceOverLte(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 2298
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverLte_:Z

    #@2
    .line 2299
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@8
    .line 2300
    return-object p0
.end method

.method public setVoiceOverWifi(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 2317
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverWifi_:Z

    #@2
    .line 2318
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x2

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@8
    .line 2319
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2428
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@2
    and-int/lit8 v0, v0, 0x1

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2429
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverLte_:Z

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@c
    .line 2431
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@e
    and-int/lit8 v0, v0, 0x2

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 2432
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->voiceOverWifi_:Z

    #@14
    const/4 v1, 0x2

    #@15
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@18
    .line 2434
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@1a
    and-int/lit8 v0, v0, 0x4

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 2435
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverLte_:Z

    #@20
    const/4 v1, 0x3

    #@21
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@24
    .line 2437
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@26
    and-int/lit8 v0, v0, 0x8

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 2438
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->videoOverWifi_:Z

    #@2c
    const/4 v1, 0x4

    #@2d
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@30
    .line 2440
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@32
    and-int/lit8 v0, v0, 0x10

    #@34
    if-eqz v0, :cond_4

    #@36
    .line 2441
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverLte_:Z

    #@38
    const/4 v1, 0x5

    #@39
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@3c
    .line 2443
    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->bitField0_:I

    #@3e
    and-int/lit8 v0, v0, 0x20

    #@40
    if-eqz v0, :cond_5

    #@42
    .line 2444
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->utOverWifi_:Z

    #@44
    const/4 v1, 0x6

    #@45
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@48
    .line 2446
    :cond_5
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    #@4b
    .line 2427
    return-void
.end method
