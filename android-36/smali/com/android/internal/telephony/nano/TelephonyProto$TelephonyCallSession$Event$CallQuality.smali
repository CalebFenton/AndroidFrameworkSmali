.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallQuality"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality$CallQualityLevel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;


# instance fields
.field public blacklist averageRelativeJitterMillis:I

.field public blacklist averageRoundTripTime:I

.field public blacklist codecType:I

.field public blacklist downlinkLevel:I

.field public blacklist durationInSeconds:I

.field public blacklist maxPlayoutDelayMillis:J

.field public blacklist maxRelativeJitterMillis:I

.field public blacklist minPlayoutDelayMillis:J

.field public blacklist noDataFrames:I

.field public blacklist rtpDroppedPackets:I

.field public blacklist rtpDuplicatePackets:I

.field public blacklist rtpInactivityDetected:Z

.field public blacklist rtpPacketsNotReceived:I

.field public blacklist rtpPacketsReceived:I

.field public blacklist rtpPacketsTransmitted:I

.field public blacklist rtpPacketsTransmittedLost:I

.field public blacklist rxRtpSidPackets:I

.field public blacklist rxSilenceDetected:Z

.field public blacklist txSilenceDetected:Z

.field public blacklist uplinkLevel:I

.field public blacklist voiceFrames:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 6121
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6122
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;
    .registers 2

    .line 6047
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    if-nez v0, :cond_17

    .line 6048
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 6050
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 6051
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 6053
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 6055
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6469
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 6463
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;
    .registers 4

    const/4 v0, 0x0

    .line 6126
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->downlinkLevel:I

    .line 6127
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->uplinkLevel:I

    .line 6128
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->durationInSeconds:I

    .line 6129
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpPacketsTransmitted:I

    .line 6130
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpPacketsReceived:I

    .line 6131
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpPacketsTransmittedLost:I

    .line 6132
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpPacketsNotReceived:I

    .line 6133
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->averageRelativeJitterMillis:I

    .line 6134
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->maxRelativeJitterMillis:I

    .line 6135
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->averageRoundTripTime:I

    .line 6136
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->codecType:I

    .line 6137
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpInactivityDetected:Z

    .line 6138
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rxSilenceDetected:Z

    .line 6139
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->txSilenceDetected:Z

    .line 6140
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->voiceFrames:I

    .line 6141
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->noDataFrames:I

    .line 6142
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpDroppedPackets:I

    const-wide/16 v1, 0x0

    .line 6143
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->minPlayoutDelayMillis:J

    .line 6144
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->maxPlayoutDelayMillis:J

    .line 6145
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rxRtpSidPackets:I

    .line 6146
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpDuplicatePackets:I

    const/4 v0, 0x0

    .line 6147
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 6148
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 6223
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 6224
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->downlinkLevel:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 6226
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6228
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->uplinkLevel:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 6230
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6232
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->durationInSeconds:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 6234
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6236
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpPacketsTransmitted:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 6238
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6240
    :cond_2c
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpPacketsReceived:I

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 6242
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6244
    :cond_36
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpPacketsTransmittedLost:I

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 6246
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6248
    :cond_40
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpPacketsNotReceived:I

    if-eqz v1, :cond_4a

    const/4 v2, 0x7

    .line 6250
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6252
    :cond_4a
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->averageRelativeJitterMillis:I

    if-eqz v1, :cond_55

    const/16 v2, 0x8

    .line 6254
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6256
    :cond_55
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->maxRelativeJitterMillis:I

    if-eqz v1, :cond_60

    const/16 v2, 0x9

    .line 6258
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6260
    :cond_60
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->averageRoundTripTime:I

    if-eqz v1, :cond_6b

    const/16 v2, 0xa

    .line 6262
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6264
    :cond_6b
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->codecType:I

    if-eqz v1, :cond_76

    const/16 v2, 0xb

    .line 6266
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6268
    :cond_76
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpInactivityDetected:Z

    if-eqz v1, :cond_81

    const/16 v2, 0xc

    .line 6270
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6272
    :cond_81
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rxSilenceDetected:Z

    if-eqz v1, :cond_8c

    const/16 v2, 0xd

    .line 6274
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6276
    :cond_8c
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->txSilenceDetected:Z

    if-eqz v1, :cond_97

    const/16 v2, 0xe

    .line 6278
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6280
    :cond_97
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->voiceFrames:I

    if-eqz v1, :cond_a2

    const/16 v2, 0xf

    .line 6282
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6284
    :cond_a2
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->noDataFrames:I

    if-eqz v1, :cond_ad

    const/16 v2, 0x10

    .line 6286
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6288
    :cond_ad
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpDroppedPackets:I

    if-eqz v1, :cond_b8

    const/16 v2, 0x11

    .line 6290
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6292
    :cond_b8
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->minPlayoutDelayMillis:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_c7

    const/16 v5, 0x12

    .line 6294
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6296
    :cond_c7
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->maxPlayoutDelayMillis:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_d4

    const/16 v3, 0x13

    .line 6298
    invoke-static {v3, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6300
    :cond_d4
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rxRtpSidPackets:I

    if-eqz v1, :cond_df

    const/16 v2, 0x14

    .line 6302
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6304
    :cond_df
    iget p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpDuplicatePackets:I

    if-eqz p0, :cond_ea

    const/16 v1, 0x15

    .line 6306
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_ea
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6316
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_b8

    .line 6321
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_b6

    .line 6454
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpDuplicatePackets:I

    goto :goto_0

    .line 6450
    :sswitch_16
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rxRtpSidPackets:I

    goto :goto_0

    .line 6446
    :sswitch_1d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->maxPlayoutDelayMillis:J

    goto :goto_0

    .line 6442
    :sswitch_24
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->minPlayoutDelayMillis:J

    goto :goto_0

    .line 6438
    :sswitch_2b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpDroppedPackets:I

    goto :goto_0

    .line 6434
    :sswitch_32
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->noDataFrames:I

    goto :goto_0

    .line 6430
    :sswitch_39
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->voiceFrames:I

    goto :goto_0

    .line 6426
    :sswitch_40
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->txSilenceDetected:Z

    goto :goto_0

    .line 6422
    :sswitch_47
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rxSilenceDetected:Z

    goto :goto_0

    .line 6418
    :sswitch_4e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpInactivityDetected:Z

    goto :goto_0

    .line 6389
    :sswitch_55
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_112

    goto :goto_0

    .line 6412
    :pswitch_5d
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->codecType:I

    goto :goto_0

    .line 6385
    :sswitch_60
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->averageRoundTripTime:I

    goto :goto_0

    .line 6381
    :sswitch_67
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->maxRelativeJitterMillis:I

    goto :goto_0

    .line 6377
    :sswitch_6e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->averageRelativeJitterMillis:I

    goto :goto_0

    .line 6373
    :sswitch_75
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpPacketsNotReceived:I

    goto :goto_0

    .line 6369
    :sswitch_7c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpPacketsTransmittedLost:I

    goto/16 :goto_0

    .line 6365
    :sswitch_84
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpPacketsReceived:I

    goto/16 :goto_0

    .line 6361
    :sswitch_8c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpPacketsTransmitted:I

    goto/16 :goto_0

    .line 6357
    :sswitch_94
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->durationInSeconds:I

    goto/16 :goto_0

    .line 6342
    :sswitch_9c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_140

    goto/16 :goto_0

    .line 6351
    :pswitch_a5
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->uplinkLevel:I

    goto/16 :goto_0

    .line 6327
    :sswitch_a9
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_152

    goto/16 :goto_0

    .line 6336
    :pswitch_b2
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->downlinkLevel:I

    goto/16 :goto_0

    :goto_b6
    :sswitch_b6
    return-object p0

    nop

    :sswitch_data_b8
    .sparse-switch
        0x0 -> :sswitch_b6
        0x8 -> :sswitch_a9
        0x10 -> :sswitch_9c
        0x18 -> :sswitch_94
        0x20 -> :sswitch_8c
        0x28 -> :sswitch_84
        0x30 -> :sswitch_7c
        0x38 -> :sswitch_75
        0x40 -> :sswitch_6e
        0x48 -> :sswitch_67
        0x50 -> :sswitch_60
        0x58 -> :sswitch_55
        0x60 -> :sswitch_4e
        0x68 -> :sswitch_47
        0x70 -> :sswitch_40
        0x78 -> :sswitch_39
        0x80 -> :sswitch_32
        0x88 -> :sswitch_2b
        0x90 -> :sswitch_24
        0x98 -> :sswitch_1d
        0xa0 -> :sswitch_16
        0xa8 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
    .end packed-switch

    :pswitch_data_140
    .packed-switch 0x0
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
    .end packed-switch

    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
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

    .line 6030
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6155
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->downlinkLevel:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 6156
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6158
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->uplinkLevel:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 6159
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6161
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->durationInSeconds:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 6162
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6164
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpPacketsTransmitted:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 6165
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6167
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpPacketsReceived:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 6168
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6170
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpPacketsTransmittedLost:I

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 6171
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6173
    :cond_30
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpPacketsNotReceived:I

    if-eqz v0, :cond_38

    const/4 v1, 0x7

    .line 6174
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6176
    :cond_38
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->averageRelativeJitterMillis:I

    if-eqz v0, :cond_41

    const/16 v1, 0x8

    .line 6177
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6179
    :cond_41
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->maxRelativeJitterMillis:I

    if-eqz v0, :cond_4a

    const/16 v1, 0x9

    .line 6180
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6182
    :cond_4a
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->averageRoundTripTime:I

    if-eqz v0, :cond_53

    const/16 v1, 0xa

    .line 6183
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6185
    :cond_53
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->codecType:I

    if-eqz v0, :cond_5c

    const/16 v1, 0xb

    .line 6186
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6188
    :cond_5c
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpInactivityDetected:Z

    if-eqz v0, :cond_65

    const/16 v1, 0xc

    .line 6189
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 6191
    :cond_65
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rxSilenceDetected:Z

    if-eqz v0, :cond_6e

    const/16 v1, 0xd

    .line 6192
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 6194
    :cond_6e
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->txSilenceDetected:Z

    if-eqz v0, :cond_77

    const/16 v1, 0xe

    .line 6195
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 6197
    :cond_77
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->voiceFrames:I

    if-eqz v0, :cond_80

    const/16 v1, 0xf

    .line 6198
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6200
    :cond_80
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->noDataFrames:I

    if-eqz v0, :cond_89

    const/16 v1, 0x10

    .line 6201
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6203
    :cond_89
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpDroppedPackets:I

    if-eqz v0, :cond_92

    const/16 v1, 0x11

    .line 6204
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6206
    :cond_92
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->minPlayoutDelayMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9f

    const/16 v4, 0x12

    .line 6207
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 6209
    :cond_9f
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->maxPlayoutDelayMillis:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_aa

    const/16 v2, 0x13

    .line 6210
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 6212
    :cond_aa
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rxRtpSidPackets:I

    if-eqz v0, :cond_b3

    const/16 v1, 0x14

    .line 6213
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6215
    :cond_b3
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;->rtpDuplicatePackets:I

    if-eqz v0, :cond_bc

    const/16 v1, 0x15

    .line 6216
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6218
    :cond_bc
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
