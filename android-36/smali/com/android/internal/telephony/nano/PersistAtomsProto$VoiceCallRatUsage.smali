.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;


# instance fields
.field public blacklist callCount:J

.field public blacklist carrierId:I

.field public blacklist rat:I

.field public blacklist totalDurationMillis:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 3092
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3093
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;
    .registers 2

    .line 3069
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    if-nez v0, :cond_17

    .line 3070
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3072
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 3073
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 3075
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 3077
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3189
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 3183
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;
    .registers 3

    const/4 v0, 0x0

    .line 3097
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->carrierId:I

    .line 3098
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->rat:I

    const-wide/16 v0, 0x0

    .line 3099
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->totalDurationMillis:J

    .line 3100
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->callCount:J

    const/4 v0, 0x0

    .line 3101
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 3102
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 3126
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3127
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->carrierId:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 3129
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3131
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->rat:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 3133
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3135
    :cond_18
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->totalDurationMillis:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_26

    const/4 v5, 0x3

    .line 3137
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3139
    :cond_26
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->callCount:J

    cmp-long p0, v1, v3

    if-eqz p0, :cond_32

    const/4 p0, 0x4

    .line 3141
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_32
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3151
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_39

    const/16 v1, 0x8

    if-eq v0, v1, :cond_32

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x18

    if-eq v0, v1, :cond_24

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1d

    .line 3156
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_39

    .line 3174
    :cond_1d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->callCount:J

    goto :goto_0

    .line 3170
    :cond_24
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->totalDurationMillis:J

    goto :goto_0

    .line 3166
    :cond_2b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->rat:I

    goto :goto_0

    .line 3162
    :cond_32
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->carrierId:I

    goto :goto_0

    :cond_39
    :goto_39
    return-object p0
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

    .line 3063
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

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

    .line 3109
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->carrierId:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 3110
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3112
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->rat:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 3113
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3115
    :cond_10
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->totalDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1c

    const/4 v4, 0x3

    .line 3116
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3118
    :cond_1c
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->callCount:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_26

    const/4 v2, 0x4

    .line 3119
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3121
    :cond_26
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
