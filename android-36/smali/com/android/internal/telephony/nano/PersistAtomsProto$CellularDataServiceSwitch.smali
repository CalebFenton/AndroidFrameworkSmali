.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;


# instance fields
.field public blacklist carrierId:I

.field public blacklist isMultiSim:Z

.field public blacklist isOpportunistic:Z

.field public blacklist lastUsedMillis:J

.field public blacklist ratFrom:I

.field public blacklist ratTo:I

.field public blacklist simSlotIndex:I

.field public blacklist switchCount:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5052
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5053
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;
    .registers 2

    .line 5017
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    if-nez v0, :cond_17

    .line 5018
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 5020
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 5021
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 5023
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 5025
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5197
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 5191
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;
    .registers 3

    const/4 v0, 0x0

    .line 5057
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratFrom:I

    .line 5058
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratTo:I

    .line 5059
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->simSlotIndex:I

    .line 5060
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isMultiSim:Z

    .line 5061
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->carrierId:I

    .line 5062
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->switchCount:I

    .line 5063
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isOpportunistic:Z

    const-wide/16 v0, 0x0

    .line 5064
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->lastUsedMillis:J

    const/4 v0, 0x0

    .line 5065
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 5066
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 5102
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5103
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratFrom:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 5105
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5107
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratTo:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 5109
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5111
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->simSlotIndex:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 5113
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5115
    :cond_22
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isMultiSim:Z

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 5117
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5119
    :cond_2c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->carrierId:I

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 5121
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5123
    :cond_36
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->switchCount:I

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 5125
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5127
    :cond_40
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isOpportunistic:Z

    if-eqz v1, :cond_4a

    const/4 v2, 0x7

    .line 5129
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5131
    :cond_4a
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->lastUsedMillis:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_59

    const/16 p0, 0x2711

    .line 5133
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_59
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5143
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_66

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5f

    const/16 v1, 0x10

    if-eq v0, v1, :cond_58

    const/16 v1, 0x18

    if-eq v0, v1, :cond_51

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4a

    const/16 v1, 0x28

    if-eq v0, v1, :cond_43

    const/16 v1, 0x30

    if-eq v0, v1, :cond_3c

    const/16 v1, 0x38

    if-eq v0, v1, :cond_35

    const v1, 0x13888

    if-eq v0, v1, :cond_2e

    .line 5148
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_66

    .line 5182
    :cond_2e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->lastUsedMillis:J

    goto :goto_0

    .line 5178
    :cond_35
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isOpportunistic:Z

    goto :goto_0

    .line 5174
    :cond_3c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->switchCount:I

    goto :goto_0

    .line 5170
    :cond_43
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->carrierId:I

    goto :goto_0

    .line 5166
    :cond_4a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isMultiSim:Z

    goto :goto_0

    .line 5162
    :cond_51
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->simSlotIndex:I

    goto :goto_0

    .line 5158
    :cond_58
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratTo:I

    goto :goto_0

    .line 5154
    :cond_5f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratFrom:I

    goto :goto_0

    :cond_66
    :goto_66
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

    .line 5011
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

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

    .line 5073
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratFrom:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 5074
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5076
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratTo:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 5077
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5079
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->simSlotIndex:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 5080
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5082
    :cond_18
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isMultiSim:Z

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 5083
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5085
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->carrierId:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 5086
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5088
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->switchCount:I

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 5089
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5091
    :cond_30
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isOpportunistic:Z

    if-eqz v0, :cond_38

    const/4 v1, 0x7

    .line 5092
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5094
    :cond_38
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->lastUsedMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_45

    const/16 v2, 0x2711

    .line 5095
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5097
    :cond_45
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
