.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;


# instance fields
.field public blacklist bandwidthEstimatorStats:Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

.field public blacklist callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

.field public blacklist endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

.field public blacklist events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

.field public blacklist eventsDropped:Z

.field public blacklist hardwareRevision:Ljava/lang/String;

.field public blacklist histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

.field public blacklist lastActiveSubscriptionInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

.field public blacklist modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

.field public blacklist smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

.field public blacklist startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 209
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
    .registers 2

    .line 165
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    if-nez v0, :cond_17

    .line 166
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 169
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 171
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 173
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 526
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
    .registers 3

    .line 214
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    .line 215
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    .line 216
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    .line 217
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->eventsDropped:Z

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    .line 220
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    .line 221
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    .line 222
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->hardwareRevision:Ljava/lang/String;

    .line 223
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->lastActiveSubscriptionInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    .line 224
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->bandwidthEstimatorStats:Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    .line 225
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 226
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 296
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 297
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    array-length v1, v1

    if-lez v1, :cond_1f

    move v1, v2

    .line 298
    :goto_d
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    array-length v4, v3

    if-ge v1, v4, :cond_1f

    .line 299
    aget-object v3, v3, v1

    if-eqz v3, :cond_1c

    const/4 v4, 0x1

    .line 302
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 306
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    if-eqz v1, :cond_39

    array-length v1, v1

    if-lez v1, :cond_39

    move v1, v2

    .line 307
    :goto_27
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    array-length v4, v3

    if-ge v1, v4, :cond_39

    .line 308
    aget-object v3, v3, v1

    if-eqz v3, :cond_36

    const/4 v4, 0x2

    .line 311
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 315
    :cond_39
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    if-eqz v1, :cond_53

    array-length v1, v1

    if-lez v1, :cond_53

    move v1, v2

    .line 316
    :goto_41
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    array-length v4, v3

    if-ge v1, v4, :cond_53

    .line 317
    aget-object v3, v3, v1

    if-eqz v3, :cond_50

    const/4 v4, 0x3

    .line 320
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 324
    :cond_53
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    if-eqz v1, :cond_6d

    array-length v1, v1

    if-lez v1, :cond_6d

    move v1, v2

    .line 325
    :goto_5b
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    array-length v4, v3

    if-ge v1, v4, :cond_6d

    .line 326
    aget-object v3, v3, v1

    if-eqz v3, :cond_6a

    const/4 v4, 0x4

    .line 329
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 333
    :cond_6d
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->eventsDropped:Z

    if-eqz v1, :cond_77

    const/4 v3, 0x5

    .line 335
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 337
    :cond_77
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    if-eqz v1, :cond_81

    const/4 v3, 0x6

    .line 339
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 341
    :cond_81
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    if-eqz v1, :cond_8b

    const/4 v3, 0x7

    .line 343
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 345
    :cond_8b
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    if-eqz v1, :cond_96

    const/16 v3, 0x8

    .line 347
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 349
    :cond_96
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->hardwareRevision:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a9

    const/16 v1, 0x9

    .line 350
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->hardwareRevision:Ljava/lang/String;

    .line 351
    invoke-static {v1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 353
    :cond_a9
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->lastActiveSubscriptionInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    if-eqz v1, :cond_c3

    array-length v1, v1

    if-lez v1, :cond_c3

    .line 354
    :goto_b0
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->lastActiveSubscriptionInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    array-length v3, v1

    if-ge v2, v3, :cond_c3

    .line 355
    aget-object v1, v1, v2

    if-eqz v1, :cond_c0

    const/16 v3, 0xa

    .line 358
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c0
    add-int/lit8 v2, v2, 0x1

    goto :goto_b0

    .line 362
    :cond_c3
    iget-object p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->bandwidthEstimatorStats:Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    if-eqz p0, :cond_ce

    const/16 v1, 0xb

    .line 364
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_ce
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_178

    .line 379
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_176

    .line 514
    :sswitch_10
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->bandwidthEstimatorStats:Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    if-nez v0, :cond_1b

    .line 515
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->bandwidthEstimatorStats:Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    .line 517
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->bandwidthEstimatorStats:Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_21
    const/16 v0, 0x52

    .line 495
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 496
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->lastActiveSubscriptionInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    if-nez v2, :cond_2d

    move v3, v1

    goto :goto_2e

    :cond_2d
    array-length v3, v2

    :goto_2e
    add-int/2addr v0, v3

    .line 497
    new-array v4, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    if-eqz v3, :cond_36

    .line 500
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_36
    :goto_36
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4a

    .line 503
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;-><init>()V

    aput-object v1, v4, v3

    .line 504
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 505
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 508
    :cond_4a
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;-><init>()V

    aput-object v0, v4, v3

    .line 509
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 510
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->lastActiveSubscriptionInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    goto :goto_0

    .line 490
    :sswitch_57
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->hardwareRevision:Ljava/lang/String;

    goto :goto_0

    .line 483
    :sswitch_5e
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    if-nez v0, :cond_69

    .line 484
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    .line 486
    :cond_69
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 476
    :sswitch_6f
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    if-nez v0, :cond_7a

    .line 477
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    .line 479
    :cond_7a
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 469
    :sswitch_80
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    if-nez v0, :cond_8b

    .line 470
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    .line 472
    :cond_8b
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 465
    :sswitch_92
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->eventsDropped:Z

    goto/16 :goto_0

    :sswitch_9a
    const/16 v0, 0x22

    .line 446
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 447
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    if-nez v2, :cond_a6

    move v3, v1

    goto :goto_a7

    :cond_a6
    array-length v3, v2

    :goto_a7
    add-int/2addr v0, v3

    .line 448
    new-array v4, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    if-eqz v3, :cond_af

    .line 451
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_af
    :goto_af
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_c3

    .line 454
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;-><init>()V

    aput-object v1, v4, v3

    .line 455
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 456
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_af

    .line 459
    :cond_c3
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;-><init>()V

    aput-object v0, v4, v3

    .line 460
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 461
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    goto/16 :goto_0

    :sswitch_d1
    const/16 v0, 0x1a

    .line 426
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 427
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    if-nez v2, :cond_dd

    move v3, v1

    goto :goto_de

    :cond_dd
    array-length v3, v2

    :goto_de
    add-int/2addr v0, v3

    .line 428
    new-array v4, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    if-eqz v3, :cond_e6

    .line 431
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e6
    :goto_e6
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_fa

    .line 434
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;-><init>()V

    aput-object v1, v4, v3

    .line 435
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 436
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_e6

    .line 439
    :cond_fa
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;-><init>()V

    aput-object v0, v4, v3

    .line 440
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 441
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    goto/16 :goto_0

    :sswitch_108
    const/16 v0, 0x12

    .line 406
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 407
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    if-nez v2, :cond_114

    move v3, v1

    goto :goto_115

    :cond_114
    array-length v3, v2

    :goto_115
    add-int/2addr v0, v3

    .line 408
    new-array v4, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    if-eqz v3, :cond_11d

    .line 411
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11d
    :goto_11d
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_131

    .line 414
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;-><init>()V

    aput-object v1, v4, v3

    .line 415
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 416
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_11d

    .line 419
    :cond_131
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;-><init>()V

    aput-object v0, v4, v3

    .line 420
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 421
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    goto/16 :goto_0

    :sswitch_13f
    const/16 v0, 0xa

    .line 386
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 387
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    if-nez v2, :cond_14b

    move v3, v1

    goto :goto_14c

    :cond_14b
    array-length v3, v2

    :goto_14c
    add-int/2addr v0, v3

    .line 388
    new-array v4, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    if-eqz v3, :cond_154

    .line 391
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_154
    :goto_154
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_168

    .line 394
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;-><init>()V

    aput-object v1, v4, v3

    .line 395
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 396
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_154

    .line 399
    :cond_168
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;-><init>()V

    aput-object v0, v4, v3

    .line 400
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 401
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    goto/16 :goto_0

    :goto_176
    :sswitch_176
    return-object p0

    nop

    :sswitch_data_178
    .sparse-switch
        0x0 -> :sswitch_176
        0xa -> :sswitch_13f
        0x12 -> :sswitch_108
        0x1a -> :sswitch_d1
        0x22 -> :sswitch_9a
        0x28 -> :sswitch_92
        0x32 -> :sswitch_80
        0x3a -> :sswitch_6f
        0x42 -> :sswitch_5e
        0x4a -> :sswitch_57
        0x52 -> :sswitch_21
        0x5a -> :sswitch_10
    .end sparse-switch
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

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

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

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    array-length v0, v0

    if-lez v0, :cond_19

    move v0, v1

    .line 234
    :goto_9
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    array-length v3, v2

    if-ge v0, v3, :cond_19

    .line 235
    aget-object v2, v2, v0

    if-eqz v2, :cond_16

    const/4 v3, 0x1

    .line 237
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 241
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    if-eqz v0, :cond_31

    array-length v0, v0

    if-lez v0, :cond_31

    move v0, v1

    .line 242
    :goto_21
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    array-length v3, v2

    if-ge v0, v3, :cond_31

    .line 243
    aget-object v2, v2, v0

    if-eqz v2, :cond_2e

    const/4 v3, 0x2

    .line 245
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 249
    :cond_31
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    if-eqz v0, :cond_49

    array-length v0, v0

    if-lez v0, :cond_49

    move v0, v1

    .line 250
    :goto_39
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    array-length v3, v2

    if-ge v0, v3, :cond_49

    .line 251
    aget-object v2, v2, v0

    if-eqz v2, :cond_46

    const/4 v3, 0x3

    .line 253
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 257
    :cond_49
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    if-eqz v0, :cond_61

    array-length v0, v0

    if-lez v0, :cond_61

    move v0, v1

    .line 258
    :goto_51
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    array-length v3, v2

    if-ge v0, v3, :cond_61

    .line 259
    aget-object v2, v2, v0

    if-eqz v2, :cond_5e

    const/4 v3, 0x4

    .line 261
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 265
    :cond_61
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->eventsDropped:Z

    if-eqz v0, :cond_69

    const/4 v2, 0x5

    .line 266
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 268
    :cond_69
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    if-eqz v0, :cond_71

    const/4 v2, 0x6

    .line 269
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 271
    :cond_71
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    if-eqz v0, :cond_79

    const/4 v2, 0x7

    .line 272
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 274
    :cond_79
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    if-eqz v0, :cond_82

    const/16 v2, 0x8

    .line 275
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 277
    :cond_82
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->hardwareRevision:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    const/16 v0, 0x9

    .line 278
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->hardwareRevision:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 280
    :cond_93
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->lastActiveSubscriptionInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    if-eqz v0, :cond_ab

    array-length v0, v0

    if-lez v0, :cond_ab

    .line 281
    :goto_9a
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->lastActiveSubscriptionInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    array-length v2, v0

    if-ge v1, v2, :cond_ab

    .line 282
    aget-object v0, v0, v1

    if-eqz v0, :cond_a8

    const/16 v2, 0xa

    .line 284
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_a8
    add-int/lit8 v1, v1, 0x1

    goto :goto_9a

    .line 288
    :cond_ab
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->bandwidthEstimatorStats:Lcom/android/internal/telephony/nano/TelephonyProto$BandwidthEstimatorStats;

    if-eqz v0, :cond_b4

    const/16 v1, 0xb

    .line 289
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 291
    :cond_b4
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
