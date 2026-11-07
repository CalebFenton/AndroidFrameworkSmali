.class public final Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CBMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;


# instance fields
.field public blacklist deliveredTimestampMillis:J

.field public blacklist msgFormat:I

.field public blacklist msgPriority:I

.field public blacklist msgType:I

.field public blacklist serialNumber:I

.field public blacklist serviceCategory:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 7819
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7820
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;
    .registers 2

    .line 7790
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    if-nez v0, :cond_17

    .line 7791
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 7793
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 7794
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 7796
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 7798
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7964
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 7958
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;
    .registers 3

    const/4 v0, 0x0

    .line 7824
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->msgFormat:I

    .line 7825
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->msgPriority:I

    .line 7826
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->msgType:I

    .line 7827
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->serviceCategory:I

    .line 7828
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->serialNumber:I

    const-wide/16 v0, 0x0

    .line 7829
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->deliveredTimestampMillis:J

    const/4 v0, 0x0

    .line 7830
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 7831
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 7861
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 7862
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->msgFormat:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 7864
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7866
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->msgPriority:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 7868
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7870
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->msgType:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 7872
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7874
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->serviceCategory:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 7876
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7878
    :cond_2c
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->serialNumber:I

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 7880
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7882
    :cond_36
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->deliveredTimestampMillis:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_44

    const/4 p0, 0x6

    .line 7884
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_44
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7894
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_6e

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_60

    const/16 v1, 0x10

    const/4 v4, 0x3

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3d

    const/16 v1, 0x20

    if-eq v0, v1, :cond_36

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2f

    const/16 v1, 0x30

    if-eq v0, v1, :cond_28

    .line 7899
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_6e

    .line 7949
    :cond_28
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->deliveredTimestampMillis:J

    goto :goto_0

    .line 7945
    :cond_2f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->serialNumber:I

    goto :goto_0

    .line 7941
    :cond_36
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->serviceCategory:I

    goto :goto_0

    .line 7929
    :cond_3d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_4a

    if-eq v0, v3, :cond_4a

    if-eq v0, v2, :cond_4a

    if-eq v0, v4, :cond_4a

    goto :goto_0

    .line 7935
    :cond_4a
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->msgType:I

    goto :goto_0

    .line 7916
    :cond_4d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_5d

    if-eq v0, v3, :cond_5d

    if-eq v0, v2, :cond_5d

    if-eq v0, v4, :cond_5d

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5d

    goto :goto_0

    .line 7923
    :cond_5d
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->msgPriority:I

    goto :goto_0

    .line 7905
    :cond_60
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_6b

    if-eq v0, v3, :cond_6b

    if-eq v0, v2, :cond_6b

    goto :goto_0

    .line 7910
    :cond_6b
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->msgFormat:I

    goto :goto_0

    :cond_6e
    :goto_6e
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

    .line 7784
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

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

    .line 7838
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->msgFormat:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 7839
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7841
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->msgPriority:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 7842
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7844
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->msgType:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 7845
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7847
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->serviceCategory:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 7848
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7850
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->serialNumber:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 7851
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7853
    :cond_28
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->deliveredTimestampMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_34

    const/4 v2, 0x6

    .line 7854
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 7856
    :cond_34
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
