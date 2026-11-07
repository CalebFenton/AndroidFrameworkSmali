.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;


# instance fields
.field public blacklist carrierId:I

.field public blacklist dataRat:I

.field public blacklist dataRoamingType:I

.field public blacklist foldState:I

.field public blacklist isDataEnabled:Z

.field public blacklist isEmergencyOnly:Z

.field public blacklist isEndc:Z

.field public blacklist isInternetPdnUp:Z

.field public blacklist isIwlanCrossSim:Z

.field public blacklist isMultiSim:Z

.field public blacklist isNbIotNtn:Z

.field public blacklist isNtn:Z

.field public blacklist isOpportunistic:Z

.field public blacklist lastUsedMillis:J

.field public blacklist overrideVoiceService:Z

.field public blacklist simSlotIndex:I

.field public blacklist totalTimeMillis:J

.field public blacklist voiceRat:I

.field public blacklist voiceRoamingType:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4730
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4731
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;
    .registers 2

    .line 4662
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    if-nez v0, :cond_17

    .line 4663
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4665
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 4666
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 4668
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 4670
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5007
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 5001
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;
    .registers 4

    const/4 v0, 0x0

    .line 4735
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRat:I

    .line 4736
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    .line 4737
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRoamingType:I

    .line 4738
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRoamingType:I

    .line 4739
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEndc:Z

    .line 4740
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->simSlotIndex:I

    .line 4741
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    .line 4742
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    const-wide/16 v1, 0x0

    .line 4743
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->totalTimeMillis:J

    .line 4744
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEmergencyOnly:Z

    .line 4745
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isInternetPdnUp:Z

    .line 4746
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->foldState:I

    .line 4747
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->overrideVoiceService:Z

    .line 4748
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isDataEnabled:Z

    .line 4749
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isIwlanCrossSim:Z

    .line 4750
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNtn:Z

    .line 4751
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNbIotNtn:Z

    .line 4752
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isOpportunistic:Z

    .line 4753
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->lastUsedMillis:J

    const/4 v0, 0x0

    .line 4754
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 4755
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 4824
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4825
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRat:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 4827
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4829
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 4831
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4833
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRoamingType:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 4835
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4837
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRoamingType:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 4839
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4841
    :cond_2c
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEndc:Z

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 4843
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4845
    :cond_36
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->simSlotIndex:I

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 4847
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4849
    :cond_40
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    if-eqz v1, :cond_4a

    const/4 v2, 0x7

    .line 4851
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4853
    :cond_4a
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    if-eqz v1, :cond_55

    const/16 v2, 0x8

    .line 4855
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4857
    :cond_55
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->totalTimeMillis:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_64

    const/16 v5, 0x9

    .line 4859
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4861
    :cond_64
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEmergencyOnly:Z

    if-eqz v1, :cond_6f

    const/16 v2, 0xa

    .line 4863
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4865
    :cond_6f
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isInternetPdnUp:Z

    if-eqz v1, :cond_7a

    const/16 v2, 0xb

    .line 4867
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4869
    :cond_7a
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->foldState:I

    if-eqz v1, :cond_85

    const/16 v2, 0xc

    .line 4871
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4873
    :cond_85
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->overrideVoiceService:Z

    if-eqz v1, :cond_90

    const/16 v2, 0xd

    .line 4875
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4877
    :cond_90
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isDataEnabled:Z

    if-eqz v1, :cond_9b

    const/16 v2, 0xe

    .line 4879
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4881
    :cond_9b
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isIwlanCrossSim:Z

    if-eqz v1, :cond_a6

    const/16 v2, 0xf

    .line 4883
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4885
    :cond_a6
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNtn:Z

    if-eqz v1, :cond_b1

    const/16 v2, 0x10

    .line 4887
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4889
    :cond_b1
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNbIotNtn:Z

    if-eqz v1, :cond_bc

    const/16 v2, 0x11

    .line 4891
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4893
    :cond_bc
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isOpportunistic:Z

    if-eqz v1, :cond_c7

    const/16 v2, 0x12

    .line 4895
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4897
    :cond_c7
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->lastUsedMillis:J

    cmp-long p0, v1, v3

    if-eqz p0, :cond_d4

    const/16 p0, 0x2711

    .line 4899
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_d4
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4909
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_98

    .line 4914
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_97

    .line 4992
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->lastUsedMillis:J

    goto :goto_0

    .line 4988
    :sswitch_16
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isOpportunistic:Z

    goto :goto_0

    .line 4984
    :sswitch_1d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNbIotNtn:Z

    goto :goto_0

    .line 4980
    :sswitch_24
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNtn:Z

    goto :goto_0

    .line 4976
    :sswitch_2b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isIwlanCrossSim:Z

    goto :goto_0

    .line 4972
    :sswitch_32
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isDataEnabled:Z

    goto :goto_0

    .line 4968
    :sswitch_39
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->overrideVoiceService:Z

    goto :goto_0

    .line 4964
    :sswitch_40
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->foldState:I

    goto :goto_0

    .line 4960
    :sswitch_47
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isInternetPdnUp:Z

    goto :goto_0

    .line 4956
    :sswitch_4e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEmergencyOnly:Z

    goto :goto_0

    .line 4952
    :sswitch_55
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->totalTimeMillis:J

    goto :goto_0

    .line 4948
    :sswitch_5c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    goto :goto_0

    .line 4944
    :sswitch_63
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    goto :goto_0

    .line 4940
    :sswitch_6a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->simSlotIndex:I

    goto :goto_0

    .line 4936
    :sswitch_71
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEndc:Z

    goto :goto_0

    .line 4932
    :sswitch_78
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRoamingType:I

    goto :goto_0

    .line 4928
    :sswitch_7f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRoamingType:I

    goto/16 :goto_0

    .line 4924
    :sswitch_87
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    goto/16 :goto_0

    .line 4920
    :sswitch_8f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRat:I

    goto/16 :goto_0

    :goto_97
    :sswitch_97
    return-object p0

    :sswitch_data_98
    .sparse-switch
        0x0 -> :sswitch_97
        0x8 -> :sswitch_8f
        0x10 -> :sswitch_87
        0x18 -> :sswitch_7f
        0x20 -> :sswitch_78
        0x28 -> :sswitch_71
        0x30 -> :sswitch_6a
        0x38 -> :sswitch_63
        0x40 -> :sswitch_5c
        0x48 -> :sswitch_55
        0x50 -> :sswitch_4e
        0x58 -> :sswitch_47
        0x60 -> :sswitch_40
        0x68 -> :sswitch_39
        0x70 -> :sswitch_32
        0x78 -> :sswitch_2b
        0x80 -> :sswitch_24
        0x88 -> :sswitch_1d
        0x90 -> :sswitch_16
        0x13888 -> :sswitch_f
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

    .line 4656
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

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

    .line 4762
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRat:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 4763
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4765
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 4766
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4768
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRoamingType:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 4769
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4771
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRoamingType:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 4772
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4774
    :cond_20
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEndc:Z

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 4775
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4777
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->simSlotIndex:I

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 4778
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4780
    :cond_30
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    if-eqz v0, :cond_38

    const/4 v1, 0x7

    .line 4781
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4783
    :cond_38
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    if-eqz v0, :cond_41

    const/16 v1, 0x8

    .line 4784
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4786
    :cond_41
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->totalTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4e

    const/16 v4, 0x9

    .line 4787
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4789
    :cond_4e
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEmergencyOnly:Z

    if-eqz v0, :cond_57

    const/16 v1, 0xa

    .line 4790
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4792
    :cond_57
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isInternetPdnUp:Z

    if-eqz v0, :cond_60

    const/16 v1, 0xb

    .line 4793
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4795
    :cond_60
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->foldState:I

    if-eqz v0, :cond_69

    const/16 v1, 0xc

    .line 4796
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4798
    :cond_69
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->overrideVoiceService:Z

    if-eqz v0, :cond_72

    const/16 v1, 0xd

    .line 4799
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4801
    :cond_72
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isDataEnabled:Z

    if-eqz v0, :cond_7b

    const/16 v1, 0xe

    .line 4802
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4804
    :cond_7b
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isIwlanCrossSim:Z

    if-eqz v0, :cond_84

    const/16 v1, 0xf

    .line 4805
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4807
    :cond_84
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNtn:Z

    if-eqz v0, :cond_8d

    const/16 v1, 0x10

    .line 4808
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4810
    :cond_8d
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNbIotNtn:Z

    if-eqz v0, :cond_96

    const/16 v1, 0x11

    .line 4811
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4813
    :cond_96
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isOpportunistic:Z

    if-eqz v0, :cond_9f

    const/16 v1, 0x12

    .line 4814
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4816
    :cond_9f
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->lastUsedMillis:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_aa

    const/16 v2, 0x2711

    .line 4817
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4819
    :cond_aa
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
