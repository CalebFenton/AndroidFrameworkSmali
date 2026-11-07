.class public final Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;


# instance fields
.field public blacklist apnTypeBitmask:I

.field public blacklist cid:I

.field public blacklist ifname:Ljava/lang/String;

.field public blacklist state:I

.field public blacklist type:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2307
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2308
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    .registers 2

    .line 2281
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-nez v0, :cond_17

    .line 2282
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2284
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 2285
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 2287
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 2289
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2434
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 2428
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    .registers 3

    const/4 v0, 0x0

    .line 2312
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->cid:I

    .line 2313
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->type:I

    .line 2314
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->ifname:Ljava/lang/String;

    .line 2315
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->state:I

    .line 2316
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->apnTypeBitmask:I

    const/4 v0, 0x0

    .line 2317
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 2318
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 2345
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2346
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->cid:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 2348
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2350
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->type:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 2352
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2354
    :cond_18
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->ifname:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const/4 v1, 0x3

    .line 2355
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->ifname:Ljava/lang/String;

    .line 2356
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2358
    :cond_2a
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->state:I

    if-eqz v1, :cond_34

    const/4 v2, 0x4

    .line 2360
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2362
    :cond_34
    iget p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->apnTypeBitmask:I

    if-eqz p0, :cond_3e

    const/4 v1, 0x5

    .line 2364
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_3e
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2374
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_51

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4a

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3f

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_38

    const/16 v1, 0x20

    if-eq v0, v1, :cond_28

    const/16 v1, 0x28

    if-eq v0, v1, :cond_21

    .line 2379
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_51

    .line 2419
    :cond_21
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->apnTypeBitmask:I

    goto :goto_0

    .line 2408
    :cond_28
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_35

    const/4 v1, 0x1

    if-eq v0, v1, :cond_35

    const/4 v1, 0x2

    if-eq v0, v1, :cond_35

    goto :goto_0

    .line 2413
    :cond_35
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->state:I

    goto :goto_0

    .line 2404
    :cond_38
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->ifname:Ljava/lang/String;

    goto :goto_0

    .line 2389
    :cond_3f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_52

    goto :goto_0

    .line 2398
    :pswitch_47
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->type:I

    goto :goto_0

    .line 2385
    :cond_4a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->cid:I

    goto :goto_0

    :cond_51
    :goto_51
    return-object p0

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
    .end packed-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2268
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2325
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->cid:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 2326
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2328
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->type:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 2329
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2331
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->ifname:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x3

    .line 2332
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->ifname:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2334
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->state:I

    if-eqz v0, :cond_28

    const/4 v1, 0x4

    .line 2335
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2337
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->apnTypeBitmask:I

    if-eqz v0, :cond_30

    const/4 v1, 0x5

    .line 2338
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2340
    :cond_30
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
