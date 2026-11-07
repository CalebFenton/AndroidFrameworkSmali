.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;


# instance fields
.field public blacklist apnTypeBitmask:I

.field public blacklist elapsedTimeInMillis:J

.field public blacklist handoverAttempted:Z

.field public blacklist networkType:I

.field public blacklist networkValidationCount:I

.field public blacklist signalStrength:I

.field public blacklist validationResult:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10698
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10699
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;
    .registers 2

    .line 10666
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    if-nez v0, :cond_17

    .line 10667
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 10669
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 10670
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 10672
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 10674
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10831
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 10825
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;
    .registers 4

    const/4 v0, 0x0

    .line 10703
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->networkType:I

    .line 10704
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->apnTypeBitmask:I

    .line 10705
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->signalStrength:I

    .line 10706
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->validationResult:I

    const-wide/16 v1, 0x0

    .line 10707
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->elapsedTimeInMillis:J

    .line 10708
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->handoverAttempted:Z

    .line 10709
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->networkValidationCount:I

    const/4 v0, 0x0

    .line 10710
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 10711
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 10744
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 10745
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->networkType:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 10747
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10749
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->apnTypeBitmask:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 10751
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10753
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->signalStrength:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 10755
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10757
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->validationResult:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 10759
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10761
    :cond_2c
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->elapsedTimeInMillis:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3a

    const/4 v3, 0x5

    .line 10763
    invoke-static {v3, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10765
    :cond_3a
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->handoverAttempted:Z

    if-eqz v1, :cond_44

    const/4 v2, 0x6

    .line 10767
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10769
    :cond_44
    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->networkValidationCount:I

    if-eqz p0, :cond_4e

    const/4 v1, 0x7

    .line 10771
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_4e
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10781
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_5a

    const/16 v1, 0x8

    if-eq v0, v1, :cond_53

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4c

    const/16 v1, 0x18

    if-eq v0, v1, :cond_45

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3e

    const/16 v1, 0x28

    if-eq v0, v1, :cond_37

    const/16 v1, 0x30

    if-eq v0, v1, :cond_30

    const/16 v1, 0x38

    if-eq v0, v1, :cond_29

    .line 10786
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_5a

    .line 10816
    :cond_29
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->networkValidationCount:I

    goto :goto_0

    .line 10812
    :cond_30
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->handoverAttempted:Z

    goto :goto_0

    .line 10808
    :cond_37
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->elapsedTimeInMillis:J

    goto :goto_0

    .line 10804
    :cond_3e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->validationResult:I

    goto :goto_0

    .line 10800
    :cond_45
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->signalStrength:I

    goto :goto_0

    .line 10796
    :cond_4c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->apnTypeBitmask:I

    goto :goto_0

    .line 10792
    :cond_53
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->networkType:I

    goto :goto_0

    :cond_5a
    :goto_5a
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

    .line 10660
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

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

    .line 10718
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->networkType:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 10719
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10721
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->apnTypeBitmask:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 10722
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10724
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->signalStrength:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 10725
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10727
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->validationResult:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 10728
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10730
    :cond_20
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->elapsedTimeInMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2c

    const/4 v2, 0x5

    .line 10731
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 10733
    :cond_2c
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->handoverAttempted:Z

    if-eqz v0, :cond_34

    const/4 v1, 0x6

    .line 10734
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10736
    :cond_34
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->networkValidationCount:I

    if-eqz v0, :cond_3c

    const/4 v1, 0x7

    .line 10737
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10739
    :cond_3c
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
