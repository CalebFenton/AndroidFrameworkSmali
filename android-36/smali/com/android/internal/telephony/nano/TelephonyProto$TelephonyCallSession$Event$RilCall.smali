.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RilCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;


# instance fields
.field public blacklist callEndReason:I

.field public blacklist emergencyNumberDatabaseVersion:I

.field public blacklist emergencyNumberInfo:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

.field public blacklist index:I

.field public blacklist isEmergencyCall:Z

.field public blacklist isMultiparty:Z

.field public blacklist preciseDisconnectCause:I

.field public blacklist state:I

.field public blacklist type:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5760
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5761
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .registers 2

    .line 5722
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-nez v0, :cond_17

    .line 5723
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 5725
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 5726
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 5728
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 5730
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5941
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 5935
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .registers 3

    const/4 v0, 0x0

    .line 5765
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->index:I

    .line 5766
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    .line 5767
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->type:I

    .line 5768
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason:I

    .line 5769
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty:Z

    .line 5770
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->preciseDisconnectCause:I

    .line 5771
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->isEmergencyCall:Z

    const/4 v1, 0x0

    .line 5772
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->emergencyNumberInfo:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    .line 5773
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->emergencyNumberDatabaseVersion:I

    .line 5774
    iput-object v1, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 5775
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 5814
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5815
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->index:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 5817
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5819
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 5821
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5823
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->type:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 5825
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5827
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 5829
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5831
    :cond_2c
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty:Z

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 5833
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5835
    :cond_36
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->preciseDisconnectCause:I

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 5837
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5839
    :cond_40
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->isEmergencyCall:Z

    if-eqz v1, :cond_4a

    const/4 v2, 0x7

    .line 5841
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5843
    :cond_4a
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->emergencyNumberInfo:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    if-eqz v1, :cond_55

    const/16 v2, 0x8

    .line 5845
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5847
    :cond_55
    iget p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->emergencyNumberDatabaseVersion:I

    if-eqz p0, :cond_60

    const/16 v1, 0x9

    .line 5849
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_60
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5859
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_88

    const/16 v1, 0x8

    if-eq v0, v1, :cond_80

    const/16 v1, 0x10

    if-eq v0, v1, :cond_75

    const/16 v1, 0x18

    if-eq v0, v1, :cond_65

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5e

    const/16 v1, 0x28

    if-eq v0, v1, :cond_57

    const/16 v1, 0x30

    if-eq v0, v1, :cond_50

    const/16 v1, 0x38

    if-eq v0, v1, :cond_49

    const/16 v1, 0x42

    if-eq v0, v1, :cond_38

    const/16 v1, 0x48

    if-eq v0, v1, :cond_31

    .line 5864
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_88

    .line 5926
    :cond_31
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->emergencyNumberDatabaseVersion:I

    goto :goto_0

    .line 5919
    :cond_38
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->emergencyNumberInfo:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    if-nez v0, :cond_43

    .line 5920
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->emergencyNumberInfo:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    .line 5922
    :cond_43
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->emergencyNumberInfo:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5915
    :cond_49
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->isEmergencyCall:Z

    goto :goto_0

    .line 5911
    :cond_50
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->preciseDisconnectCause:I

    goto :goto_0

    .line 5907
    :cond_57
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty:Z

    goto :goto_0

    .line 5903
    :cond_5e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason:I

    goto :goto_0

    .line 5892
    :cond_65
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_72

    const/4 v1, 0x1

    if-eq v0, v1, :cond_72

    const/4 v1, 0x2

    if-eq v0, v1, :cond_72

    goto :goto_0

    .line 5897
    :cond_72
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->type:I

    goto :goto_0

    .line 5874
    :cond_75
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_8a

    goto :goto_0

    .line 5886
    :pswitch_7d
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    goto :goto_0

    .line 5870
    :cond_80
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->index:I

    goto/16 :goto_0

    :cond_88
    :goto_88
    return-object p0

    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
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

    .line 5709
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5782
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->index:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 5783
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5785
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 5786
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5788
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->type:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 5789
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5791
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 5792
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5794
    :cond_20
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty:Z

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 5795
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5797
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->preciseDisconnectCause:I

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 5798
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5800
    :cond_30
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->isEmergencyCall:Z

    if-eqz v0, :cond_38

    const/4 v1, 0x7

    .line 5801
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5803
    :cond_38
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->emergencyNumberInfo:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    if-eqz v0, :cond_41

    const/16 v1, 0x8

    .line 5804
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 5806
    :cond_41
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->emergencyNumberDatabaseVersion:I

    if-eqz v0, :cond_4a

    const/16 v1, 0x9

    .line 5807
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5809
    :cond_4a
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
