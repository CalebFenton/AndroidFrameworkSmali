.class public final Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "InferenceInfo.java"


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;


# instance fields
.field public blacklist endTimeMs:J

.field public blacklist startTimeMs:J

.field public blacklist suspendedTimeMs:J

.field public blacklist uid:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->clear()Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    .line 37
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;
    .registers 2

    .line 12
    sget-object v0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->_emptyArray:[Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    if-nez v0, :cond_15

    .line 13
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_7
    sget-object v1, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->_emptyArray:[Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    if-nez v1, :cond_10

    .line 16
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    sput-object v1, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->_emptyArray:[Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    .line 18
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 20
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->_emptyArray:[Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    new-instance v0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    invoke-direct {v0}, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    invoke-direct {v0}, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;
    .registers 3

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->uid:I

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->startTimeMs:J

    .line 42
    iput-wide v0, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->endTimeMs:J

    .line 43
    iput-wide v0, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->suspendedTimeMs:J

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->cachedSize:I

    .line 45
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 68
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 69
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->uid:I

    if-eqz v1, :cond_10

    .line 70
    iget v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->uid:I

    .line 71
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_10
    iget-wide v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->startTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_20

    .line 74
    iget-wide v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->startTimeMs:J

    .line 75
    const/4 v5, 0x2

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_20
    iget-wide v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->endTimeMs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2e

    .line 78
    iget-wide v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->endTimeMs:J

    .line 79
    const/4 v5, 0x3

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_2e
    iget-wide v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->suspendedTimeMs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3c

    .line 82
    iget-wide v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->suspendedTimeMs:J

    .line 83
    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_3c
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
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

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;
    .registers 5
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 94
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_2e

    .line 98
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 99
    return-object p0

    .line 116
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->suspendedTimeMs:J

    goto :goto_2c

    .line 112
    :sswitch_16
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->endTimeMs:J

    .line 113
    goto :goto_2c

    .line 108
    :sswitch_1d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->startTimeMs:J

    .line 109
    goto :goto_2c

    .line 104
    :sswitch_24
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->uid:I

    .line 105
    goto :goto_2c

    .line 96
    :sswitch_2b
    return-object p0

    .line 120
    .end local v0    # "tag":I
    :cond_2c
    :goto_2c
    goto :goto_1

    nop

    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_2b
        0x8 -> :sswitch_24
        0x10 -> :sswitch_1d
        0x18 -> :sswitch_16
        0x20 -> :sswitch_f
    .end sparse-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 8
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget v0, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->uid:I

    if-eqz v0, :cond_a

    .line 52
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->uid:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 54
    :cond_a
    iget-wide v0, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->startTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    .line 55
    const/4 v0, 0x2

    iget-wide v4, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->startTimeMs:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 57
    :cond_18
    iget-wide v0, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->endTimeMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_24

    .line 58
    const/4 v0, 0x3

    iget-wide v4, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->endTimeMs:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 60
    :cond_24
    iget-wide v0, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->suspendedTimeMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_30

    .line 61
    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->suspendedTimeMs:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 63
    :cond_30
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 64
    return-void
.end method
