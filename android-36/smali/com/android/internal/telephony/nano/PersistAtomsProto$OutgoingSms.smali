.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;


# instance fields
.field public blacklist carrierId:I

.field public blacklist count:I

.field public blacklist errorCode:I

.field public blacklist hashCode:I

.field public blacklist intervalMillis:J

.field public blacklist isEmergency:Z

.field public blacklist isEsim:Z

.field public blacklist isFromDefaultApp:Z

.field public blacklist isManagedProfile:Z

.field public blacklist isMtSmsPolling:Z

.field public blacklist isMultiSim:Z

.field public blacklist isNbIotNtn:Z

.field public blacklist isNtn:Z

.field public blacklist isRoaming:Z

.field public blacklist messageId:J

.field public blacklist networkErrorCode:I

.field public blacklist rat:I

.field public blacklist retryId:I

.field public blacklist sendErrorCode:I

.field public blacklist sendResult:I

.field public blacklist simSlotIndex:I

.field public blacklist smsFormat:I

.field public blacklist smsTech:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 3649
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3650
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;
    .registers 2

    .line 3569
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    if-nez v0, :cond_17

    .line 3570
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3572
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 3573
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 3575
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 3577
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3974
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 3968
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;
    .registers 4

    const/4 v0, 0x0

    .line 3654
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsFormat:I

    .line 3655
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsTech:I

    .line 3656
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->rat:I

    .line 3657
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    .line 3658
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    .line 3659
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isRoaming:Z

    .line 3660
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isFromDefaultApp:Z

    .line 3661
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->simSlotIndex:I

    .line 3662
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMultiSim:Z

    .line 3663
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEsim:Z

    .line 3664
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->carrierId:I

    const-wide/16 v1, 0x0

    .line 3665
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->messageId:J

    .line 3666
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    .line 3667
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->intervalMillis:J

    .line 3668
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->count:I

    .line 3669
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendErrorCode:I

    .line 3670
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->networkErrorCode:I

    .line 3671
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isManagedProfile:Z

    .line 3672
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEmergency:Z

    .line 3673
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNtn:Z

    .line 3674
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMtSmsPolling:Z

    .line 3675
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNbIotNtn:Z

    .line 3676
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->hashCode:I

    const/4 v0, 0x0

    .line 3677
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 3678
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 3759
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3760
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsFormat:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 3762
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3764
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsTech:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 3766
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3768
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->rat:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 3770
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3772
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 3774
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3776
    :cond_2c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 3778
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3780
    :cond_36
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isRoaming:Z

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 3782
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3784
    :cond_40
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isFromDefaultApp:Z

    if-eqz v1, :cond_4a

    const/4 v2, 0x7

    .line 3786
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3788
    :cond_4a
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->simSlotIndex:I

    if-eqz v1, :cond_55

    const/16 v2, 0x8

    .line 3790
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3792
    :cond_55
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMultiSim:Z

    if-eqz v1, :cond_60

    const/16 v2, 0x9

    .line 3794
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3796
    :cond_60
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEsim:Z

    if-eqz v1, :cond_6b

    const/16 v2, 0xa

    .line 3798
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3800
    :cond_6b
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->carrierId:I

    if-eqz v1, :cond_76

    const/16 v2, 0xb

    .line 3802
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3804
    :cond_76
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->messageId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_85

    const/16 v5, 0xc

    .line 3806
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3808
    :cond_85
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    if-eqz v1, :cond_90

    const/16 v2, 0xd

    .line 3810
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3812
    :cond_90
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->intervalMillis:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_9d

    const/16 v3, 0xe

    .line 3814
    invoke-static {v3, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3816
    :cond_9d
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->count:I

    if-eqz v1, :cond_a8

    const/16 v2, 0xf

    .line 3818
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3820
    :cond_a8
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendErrorCode:I

    if-eqz v1, :cond_b3

    const/16 v2, 0x10

    .line 3822
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3824
    :cond_b3
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->networkErrorCode:I

    if-eqz v1, :cond_be

    const/16 v2, 0x11

    .line 3826
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3828
    :cond_be
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isManagedProfile:Z

    if-eqz v1, :cond_c9

    const/16 v2, 0x12

    .line 3830
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3832
    :cond_c9
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEmergency:Z

    if-eqz v1, :cond_d4

    const/16 v2, 0x13

    .line 3834
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3836
    :cond_d4
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNtn:Z

    if-eqz v1, :cond_df

    const/16 v2, 0x14

    .line 3838
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3840
    :cond_df
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMtSmsPolling:Z

    if-eqz v1, :cond_ea

    const/16 v2, 0x15

    .line 3842
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3844
    :cond_ea
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNbIotNtn:Z

    if-eqz v1, :cond_f5

    const/16 v2, 0x16

    .line 3846
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3848
    :cond_f5
    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->hashCode:I

    if-eqz p0, :cond_100

    const/16 v1, 0x2711

    .line 3850
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_100
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3860
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_b8

    .line 3865
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_b7

    .line 3959
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->hashCode:I

    goto :goto_0

    .line 3955
    :sswitch_16
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNbIotNtn:Z

    goto :goto_0

    .line 3951
    :sswitch_1d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMtSmsPolling:Z

    goto :goto_0

    .line 3947
    :sswitch_24
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNtn:Z

    goto :goto_0

    .line 3943
    :sswitch_2b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEmergency:Z

    goto :goto_0

    .line 3939
    :sswitch_32
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isManagedProfile:Z

    goto :goto_0

    .line 3935
    :sswitch_39
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->networkErrorCode:I

    goto :goto_0

    .line 3931
    :sswitch_40
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendErrorCode:I

    goto :goto_0

    .line 3927
    :sswitch_47
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->count:I

    goto :goto_0

    .line 3923
    :sswitch_4e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->intervalMillis:J

    goto :goto_0

    .line 3919
    :sswitch_55
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    goto :goto_0

    .line 3915
    :sswitch_5c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->messageId:J

    goto :goto_0

    .line 3911
    :sswitch_63
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->carrierId:I

    goto :goto_0

    .line 3907
    :sswitch_6a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEsim:Z

    goto :goto_0

    .line 3903
    :sswitch_71
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMultiSim:Z

    goto :goto_0

    .line 3899
    :sswitch_78
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->simSlotIndex:I

    goto :goto_0

    .line 3895
    :sswitch_7f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isFromDefaultApp:Z

    goto/16 :goto_0

    .line 3891
    :sswitch_87
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isRoaming:Z

    goto/16 :goto_0

    .line 3887
    :sswitch_8f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    goto/16 :goto_0

    .line 3883
    :sswitch_97
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    goto/16 :goto_0

    .line 3879
    :sswitch_9f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->rat:I

    goto/16 :goto_0

    .line 3875
    :sswitch_a7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsTech:I

    goto/16 :goto_0

    .line 3871
    :sswitch_af
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsFormat:I

    goto/16 :goto_0

    :goto_b7
    :sswitch_b7
    return-object p0

    :sswitch_data_b8
    .sparse-switch
        0x0 -> :sswitch_b7
        0x8 -> :sswitch_af
        0x10 -> :sswitch_a7
        0x18 -> :sswitch_9f
        0x20 -> :sswitch_97
        0x28 -> :sswitch_8f
        0x30 -> :sswitch_87
        0x38 -> :sswitch_7f
        0x40 -> :sswitch_78
        0x48 -> :sswitch_71
        0x50 -> :sswitch_6a
        0x58 -> :sswitch_63
        0x60 -> :sswitch_5c
        0x68 -> :sswitch_55
        0x70 -> :sswitch_4e
        0x78 -> :sswitch_47
        0x80 -> :sswitch_40
        0x88 -> :sswitch_39
        0x90 -> :sswitch_32
        0x98 -> :sswitch_2b
        0xa0 -> :sswitch_24
        0xa8 -> :sswitch_1d
        0xb0 -> :sswitch_16
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

    .line 3563
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

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

    .line 3685
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsFormat:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 3686
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3688
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsTech:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 3689
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3691
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->rat:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 3692
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3694
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 3695
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3697
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 3698
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3700
    :cond_28
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isRoaming:Z

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 3701
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3703
    :cond_30
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isFromDefaultApp:Z

    if-eqz v0, :cond_38

    const/4 v1, 0x7

    .line 3704
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3706
    :cond_38
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->simSlotIndex:I

    if-eqz v0, :cond_41

    const/16 v1, 0x8

    .line 3707
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3709
    :cond_41
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMultiSim:Z

    if-eqz v0, :cond_4a

    const/16 v1, 0x9

    .line 3710
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3712
    :cond_4a
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEsim:Z

    if-eqz v0, :cond_53

    const/16 v1, 0xa

    .line 3713
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3715
    :cond_53
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->carrierId:I

    if-eqz v0, :cond_5c

    const/16 v1, 0xb

    .line 3716
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3718
    :cond_5c
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->messageId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_69

    const/16 v4, 0xc

    .line 3719
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3721
    :cond_69
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    if-eqz v0, :cond_72

    const/16 v1, 0xd

    .line 3722
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3724
    :cond_72
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->intervalMillis:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_7d

    const/16 v2, 0xe

    .line 3725
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3727
    :cond_7d
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->count:I

    if-eqz v0, :cond_86

    const/16 v1, 0xf

    .line 3728
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3730
    :cond_86
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendErrorCode:I

    if-eqz v0, :cond_8f

    const/16 v1, 0x10

    .line 3731
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3733
    :cond_8f
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->networkErrorCode:I

    if-eqz v0, :cond_98

    const/16 v1, 0x11

    .line 3734
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3736
    :cond_98
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isManagedProfile:Z

    if-eqz v0, :cond_a1

    const/16 v1, 0x12

    .line 3737
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3739
    :cond_a1
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEmergency:Z

    if-eqz v0, :cond_aa

    const/16 v1, 0x13

    .line 3740
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3742
    :cond_aa
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNtn:Z

    if-eqz v0, :cond_b3

    const/16 v1, 0x14

    .line 3743
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3745
    :cond_b3
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMtSmsPolling:Z

    if-eqz v0, :cond_bc

    const/16 v1, 0x15

    .line 3746
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3748
    :cond_bc
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNbIotNtn:Z

    if-eqz v0, :cond_c5

    const/16 v1, 0x16

    .line 3749
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3751
    :cond_c5
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->hashCode:I

    if-eqz v0, :cond_ce

    const/16 v1, 0x2711

    .line 3752
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3754
    :cond_ce
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
