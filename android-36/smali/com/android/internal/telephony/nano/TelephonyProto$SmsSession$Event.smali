.class public final Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$Type;,
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$Format;,
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$Tech;,
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;,
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;,
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$SmsType;,
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBPriority;,
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessageType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;


# instance fields
.field public blacklist blocked:Z

.field public blacklist cellBroadcastMessage:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

.field public blacklist dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

.field public blacklist delay:I

.field public blacklist error:I

.field public blacklist errorCode:I

.field public blacklist format:I

.field public blacklist imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

.field public blacklist imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

.field public blacklist imsError:I

.field public blacklist incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

.field public blacklist messageId:J

.field public blacklist rilRequestId:I

.field public blacklist serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

.field public blacklist settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

.field public blacklist smsType:I

.field public blacklist tech:I

.field public blacklist type:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8136
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8137
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
    .registers 2

    .line 8071
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    if-nez v0, :cond_17

    .line 8072
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 8074
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 8075
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 8077
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 8079
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8582
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 8576
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
    .registers 5

    const/4 v0, 0x0

    .line 8141
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    .line 8142
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->delay:I

    const/4 v1, 0x0

    .line 8143
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 8144
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 8145
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 8146
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 8147
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 8148
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->format:I

    .line 8149
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->tech:I

    .line 8150
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->errorCode:I

    .line 8151
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->error:I

    .line 8152
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->rilRequestId:I

    .line 8153
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->cellBroadcastMessage:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    .line 8154
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsError:I

    .line 8155
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    .line 8156
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->smsType:I

    .line 8157
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->blocked:Z

    const-wide/16 v2, 0x0

    .line 8158
    iput-wide v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->messageId:J

    .line 8159
    iput-object v1, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 8160
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 8231
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8232
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 8234
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8236
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->delay:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 8238
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8240
    :cond_18
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 8242
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8244
    :cond_22
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 8246
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8248
    :cond_2c
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 8250
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8252
    :cond_36
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 8254
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8256
    :cond_40
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-eqz v1, :cond_5a

    array-length v1, v1

    if-lez v1, :cond_5a

    const/4 v1, 0x0

    .line 8257
    :goto_48
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    array-length v3, v2

    if-ge v1, v3, :cond_5a

    .line 8258
    aget-object v2, v2, v1

    if-eqz v2, :cond_57

    const/4 v3, 0x7

    .line 8261
    invoke-static {v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 8265
    :cond_5a
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->format:I

    if-eqz v1, :cond_65

    const/16 v2, 0x8

    .line 8267
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8269
    :cond_65
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->tech:I

    if-eqz v1, :cond_70

    const/16 v2, 0x9

    .line 8271
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8273
    :cond_70
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->errorCode:I

    if-eqz v1, :cond_7b

    const/16 v2, 0xa

    .line 8275
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8277
    :cond_7b
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->error:I

    if-eqz v1, :cond_86

    const/16 v2, 0xb

    .line 8279
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8281
    :cond_86
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->rilRequestId:I

    if-eqz v1, :cond_91

    const/16 v2, 0xc

    .line 8283
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8285
    :cond_91
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->cellBroadcastMessage:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    if-eqz v1, :cond_9c

    const/16 v2, 0xd

    .line 8287
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8289
    :cond_9c
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsError:I

    if-eqz v1, :cond_a7

    const/16 v2, 0xe

    .line 8291
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8293
    :cond_a7
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    if-eqz v1, :cond_b2

    const/16 v2, 0xf

    .line 8295
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8297
    :cond_b2
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->smsType:I

    if-eqz v1, :cond_bd

    const/16 v2, 0x10

    .line 8299
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8301
    :cond_bd
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->blocked:Z

    if-eqz v1, :cond_c8

    const/16 v2, 0x11

    .line 8303
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8305
    :cond_c8
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->messageId:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_d7

    const/16 p0, 0x12

    .line 8307
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_d7
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8317
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_142

    .line 8322
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_140

    .line 8567
    :sswitch_13
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->messageId:J

    goto :goto_0

    .line 8563
    :sswitch_1a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->blocked:Z

    goto :goto_0

    .line 8550
    :sswitch_21
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_30

    if-eq v0, v4, :cond_30

    if-eq v0, v3, :cond_30

    if-eq v0, v2, :cond_30

    if-eq v0, v1, :cond_30

    goto :goto_0

    .line 8557
    :cond_30
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->smsType:I

    goto :goto_0

    .line 8543
    :sswitch_33
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    if-nez v0, :cond_3e

    .line 8544
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    .line 8546
    :cond_3e
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8530
    :sswitch_44
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_53

    if-eq v0, v4, :cond_53

    if-eq v0, v3, :cond_53

    if-eq v0, v2, :cond_53

    if-eq v0, v1, :cond_53

    goto :goto_0

    .line 8537
    :cond_53
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsError:I

    goto :goto_0

    .line 8523
    :sswitch_56
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->cellBroadcastMessage:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    if-nez v0, :cond_61

    .line 8524
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->cellBroadcastMessage:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    .line 8526
    :cond_61
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->cellBroadcastMessage:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8519
    :sswitch_67
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->rilRequestId:I

    goto :goto_0

    .line 8450
    :sswitch_6e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_190

    packed-switch v0, :pswitch_data_1ce

    goto :goto_0

    .line 8513
    :pswitch_79
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->error:I

    goto :goto_0

    .line 8446
    :sswitch_7c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->errorCode:I

    goto/16 :goto_0

    .line 8434
    :sswitch_84
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_92

    if-eq v0, v4, :cond_92

    if-eq v0, v3, :cond_92

    if-eq v0, v2, :cond_92

    goto/16 :goto_0

    .line 8440
    :cond_92
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->tech:I

    goto/16 :goto_0

    .line 8423
    :sswitch_96
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_a2

    if-eq v0, v4, :cond_a2

    if-eq v0, v3, :cond_a2

    goto/16 :goto_0

    .line 8428
    :cond_a2
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->format:I

    goto/16 :goto_0

    :sswitch_a6
    const/16 v0, 0x3a

    .line 8404
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 8405
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    const/4 v2, 0x0

    if-nez v1, :cond_b3

    move v3, v2

    goto :goto_b4

    :cond_b3
    array-length v3, v1

    :goto_b4
    add-int/2addr v0, v3

    .line 8406
    new-array v4, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-eqz v3, :cond_bc

    .line 8409
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_bc
    :goto_bc
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_d0

    .line 8412
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    aput-object v1, v4, v3

    .line 8413
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 8414
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_bc

    .line 8417
    :cond_d0
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    aput-object v0, v4, v3

    .line 8418
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 8419
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    goto/16 :goto_0

    .line 8396
    :sswitch_de
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-nez v0, :cond_e9

    .line 8397
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 8399
    :cond_e9
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 8389
    :sswitch_f0
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-nez v0, :cond_fb

    .line 8390
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 8392
    :cond_fb
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 8382
    :sswitch_102
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-nez v0, :cond_10d

    .line 8383
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 8385
    :cond_10d
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 8375
    :sswitch_114
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-nez v0, :cond_11f

    .line 8376
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 8378
    :cond_11f
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 8347
    :sswitch_126
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_212

    goto/16 :goto_0

    .line 8369
    :pswitch_12f
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->delay:I

    goto/16 :goto_0

    .line 8328
    :sswitch_133
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_23e

    goto/16 :goto_0

    .line 8341
    :pswitch_13c
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    goto/16 :goto_0

    :goto_140
    :sswitch_140
    return-object p0

    nop

    :sswitch_data_142
    .sparse-switch
        0x0 -> :sswitch_140
        0x8 -> :sswitch_133
        0x10 -> :sswitch_126
        0x1a -> :sswitch_114
        0x22 -> :sswitch_102
        0x2a -> :sswitch_f0
        0x32 -> :sswitch_de
        0x3a -> :sswitch_a6
        0x40 -> :sswitch_96
        0x48 -> :sswitch_84
        0x50 -> :sswitch_7c
        0x58 -> :sswitch_6e
        0x60 -> :sswitch_67
        0x6a -> :sswitch_56
        0x70 -> :sswitch_44
        0x7a -> :sswitch_33
        0x80 -> :sswitch_21
        0x88 -> :sswitch_1a
        0x90 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_190
    .packed-switch 0x0
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
    .end packed-switch

    :pswitch_data_1ce
    .packed-switch 0x24
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
    .end packed-switch

    :pswitch_data_212
    .packed-switch 0x0
        :pswitch_12f
        :pswitch_12f
        :pswitch_12f
        :pswitch_12f
        :pswitch_12f
        :pswitch_12f
        :pswitch_12f
        :pswitch_12f
        :pswitch_12f
        :pswitch_12f
        :pswitch_12f
        :pswitch_12f
        :pswitch_12f
        :pswitch_12f
        :pswitch_12f
        :pswitch_12f
        :pswitch_12f
        :pswitch_12f
        :pswitch_12f
        :pswitch_12f
    .end packed-switch

    :pswitch_data_23e
    .packed-switch 0x0
        :pswitch_13c
        :pswitch_13c
        :pswitch_13c
        :pswitch_13c
        :pswitch_13c
        :pswitch_13c
        :pswitch_13c
        :pswitch_13c
        :pswitch_13c
        :pswitch_13c
        :pswitch_13c
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

    .line 7725
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8167
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 8168
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8170
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->delay:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 8171
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8173
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 8174
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 8176
    :cond_18
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 8177
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 8179
    :cond_20
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 8180
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 8182
    :cond_28
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 8183
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 8185
    :cond_30
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-eqz v0, :cond_48

    array-length v0, v0

    if-lez v0, :cond_48

    const/4 v0, 0x0

    .line 8186
    :goto_38
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    array-length v2, v1

    if-ge v0, v2, :cond_48

    .line 8187
    aget-object v1, v1, v0

    if-eqz v1, :cond_45

    const/4 v2, 0x7

    .line 8189
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 8193
    :cond_48
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->format:I

    if-eqz v0, :cond_51

    const/16 v1, 0x8

    .line 8194
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8196
    :cond_51
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->tech:I

    if-eqz v0, :cond_5a

    const/16 v1, 0x9

    .line 8197
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8199
    :cond_5a
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->errorCode:I

    if-eqz v0, :cond_63

    const/16 v1, 0xa

    .line 8200
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8202
    :cond_63
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->error:I

    if-eqz v0, :cond_6c

    const/16 v1, 0xb

    .line 8203
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8205
    :cond_6c
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->rilRequestId:I

    if-eqz v0, :cond_75

    const/16 v1, 0xc

    .line 8206
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8208
    :cond_75
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->cellBroadcastMessage:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    if-eqz v0, :cond_7e

    const/16 v1, 0xd

    .line 8209
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 8211
    :cond_7e
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsError:I

    if-eqz v0, :cond_87

    const/16 v1, 0xe

    .line 8212
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8214
    :cond_87
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    if-eqz v0, :cond_90

    const/16 v1, 0xf

    .line 8215
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 8217
    :cond_90
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->smsType:I

    if-eqz v0, :cond_99

    const/16 v1, 0x10

    .line 8218
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8220
    :cond_99
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->blocked:Z

    if-eqz v0, :cond_a2

    const/16 v1, 0x11

    .line 8221
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 8223
    :cond_a2
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->messageId:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_af

    const/16 v2, 0x12

    .line 8224
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8226
    :cond_af
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
