.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$Type;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$PhoneState;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallState;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilRequest;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilSrvccState;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$ImsCommand;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$AudioCodec;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;


# instance fields
.field public blacklist audioCodec:I

.field public blacklist callIndex:I

.field public blacklist callQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

.field public blacklist callQualitySummaryDl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

.field public blacklist callQualitySummaryUl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

.field public blacklist callState:I

.field public blacklist calls:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

.field public blacklist dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

.field public blacklist delay:I

.field public blacklist emergencyNumberDatabaseVersion:I

.field public blacklist error:I

.field public blacklist imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

.field public blacklist imsCommand:I

.field public blacklist imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

.field public blacklist imsEmergencyNumberInfo:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

.field public blacklist isImsEmergencyCall:Z

.field public blacklist mergedCallIndex:I

.field public blacklist nitzTimestampMillis:J

.field public blacklist phoneState:I

.field public blacklist reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

.field public blacklist rilRequest:I

.field public blacklist rilRequestId:I

.field public blacklist serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

.field public blacklist settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

.field public blacklist srcAccessTech:I

.field public blacklist srvccState:I

.field public blacklist targetAccessTech:I

.field public blacklist type:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 6848
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6849
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    .registers 2

    .line 6753
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    if-nez v0, :cond_17

    .line 6754
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 6756
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 6757
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 6759
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 6761
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7565
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 7559
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    .registers 6

    const/4 v0, 0x0

    .line 6853
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    .line 6854
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->delay:I

    const/4 v1, 0x0

    .line 6855
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 6856
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 6857
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 6858
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 6859
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 6860
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->phoneState:I

    .line 6861
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callState:I

    .line 6862
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callIndex:I

    .line 6863
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex:I

    .line 6864
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 6865
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->error:I

    .line 6866
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->rilRequest:I

    .line 6867
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->rilRequestId:I

    .line 6868
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->srvccState:I

    .line 6869
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCommand:I

    .line 6870
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    const/4 v2, -0x1

    .line 6871
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech:I

    .line 6872
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech:I

    const-wide/16 v3, 0x0

    .line 6873
    iput-wide v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis:J

    .line 6874
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->audioCodec:I

    .line 6875
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    .line 6876
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryDl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    .line 6877
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryUl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    .line 6878
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->isImsEmergencyCall:Z

    .line 6879
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsEmergencyNumberInfo:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    .line 6880
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->emergencyNumberDatabaseVersion:I

    .line 6881
    iput-object v1, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    .line 6882
    iput v2, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 6988
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 6989
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 6991
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6993
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->delay:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 6995
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6997
    :cond_18
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 6999
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7001
    :cond_22
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 7003
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7005
    :cond_2c
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 7007
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7009
    :cond_36
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 7011
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7013
    :cond_40
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    const/4 v2, 0x0

    if-eqz v1, :cond_5b

    array-length v1, v1

    if-lez v1, :cond_5b

    move v1, v2

    .line 7014
    :goto_49
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    array-length v4, v3

    if-ge v1, v4, :cond_5b

    .line 7015
    aget-object v3, v3, v1

    if-eqz v3, :cond_58

    const/4 v4, 0x7

    .line 7018
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 7022
    :cond_5b
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->phoneState:I

    if-eqz v1, :cond_66

    const/16 v3, 0x8

    .line 7024
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7026
    :cond_66
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callState:I

    if-eqz v1, :cond_71

    const/16 v3, 0x9

    .line 7028
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7030
    :cond_71
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callIndex:I

    if-eqz v1, :cond_7c

    const/16 v3, 0xa

    .line 7032
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7034
    :cond_7c
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex:I

    if-eqz v1, :cond_87

    const/16 v3, 0xb

    .line 7036
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7038
    :cond_87
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-eqz v1, :cond_a1

    array-length v1, v1

    if-lez v1, :cond_a1

    .line 7039
    :goto_8e
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    array-length v3, v1

    if-ge v2, v3, :cond_a1

    .line 7040
    aget-object v1, v1, v2

    if-eqz v1, :cond_9e

    const/16 v3, 0xc

    .line 7043
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8e

    .line 7047
    :cond_a1
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->error:I

    if-eqz v1, :cond_ac

    const/16 v2, 0xd

    .line 7049
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7051
    :cond_ac
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->rilRequest:I

    if-eqz v1, :cond_b7

    const/16 v2, 0xe

    .line 7053
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7055
    :cond_b7
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->rilRequestId:I

    if-eqz v1, :cond_c2

    const/16 v2, 0xf

    .line 7057
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7059
    :cond_c2
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->srvccState:I

    if-eqz v1, :cond_cd

    const/16 v2, 0x10

    .line 7061
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7063
    :cond_cd
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCommand:I

    if-eqz v1, :cond_d8

    const/16 v2, 0x11

    .line 7065
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7067
    :cond_d8
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    if-eqz v1, :cond_e3

    const/16 v2, 0x12

    .line 7069
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7071
    :cond_e3
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_ef

    const/16 v3, 0x13

    .line 7073
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7075
    :cond_ef
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech:I

    if-eq v1, v2, :cond_fa

    const/16 v2, 0x14

    .line 7077
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7079
    :cond_fa
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_109

    const/16 v3, 0x15

    .line 7081
    invoke-static {v3, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7083
    :cond_109
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->audioCodec:I

    if-eqz v1, :cond_114

    const/16 v2, 0x16

    .line 7085
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7087
    :cond_114
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    if-eqz v1, :cond_11f

    const/16 v2, 0x17

    .line 7089
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7091
    :cond_11f
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryDl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    if-eqz v1, :cond_12a

    const/16 v2, 0x18

    .line 7093
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7095
    :cond_12a
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryUl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    if-eqz v1, :cond_135

    const/16 v2, 0x19

    .line 7097
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7099
    :cond_135
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->isImsEmergencyCall:Z

    if-eqz v1, :cond_140

    const/16 v2, 0x1a

    .line 7101
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7103
    :cond_140
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsEmergencyNumberInfo:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    if-eqz v1, :cond_14b

    const/16 v2, 0x1b

    .line 7105
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7107
    :cond_14b
    iget p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->emergencyNumberDatabaseVersion:I

    if-eqz p0, :cond_156

    const/16 v1, 0x1c

    .line 7109
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_156
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7119
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_1ea

    .line 7124
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1e8

    .line 7550
    :sswitch_13
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->emergencyNumberDatabaseVersion:I

    goto :goto_0

    .line 7543
    :sswitch_1a
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsEmergencyNumberInfo:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    if-nez v0, :cond_25

    .line 7544
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsEmergencyNumberInfo:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    .line 7546
    :cond_25
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsEmergencyNumberInfo:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7539
    :sswitch_2b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->isImsEmergencyCall:Z

    goto :goto_0

    .line 7532
    :sswitch_32
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryUl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    if-nez v0, :cond_3d

    .line 7533
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryUl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    .line 7535
    :cond_3d
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryUl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7525
    :sswitch_43
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryDl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    if-nez v0, :cond_4e

    .line 7526
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryDl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    .line 7528
    :cond_4e
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryDl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7518
    :sswitch_54
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    if-nez v0, :cond_5f

    .line 7519
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    .line 7521
    :cond_5f
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7489
    :sswitch_65
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_260

    goto :goto_0

    .line 7512
    :pswitch_6d
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->audioCodec:I

    goto :goto_0

    .line 7485
    :sswitch_70
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis:J

    goto :goto_0

    .line 7455
    :sswitch_77
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_28e

    goto :goto_0

    .line 7479
    :pswitch_7f
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech:I

    goto/16 :goto_0

    .line 7425
    :sswitch_83
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_2be

    goto/16 :goto_0

    .line 7449
    :pswitch_8c
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech:I

    goto/16 :goto_0

    .line 7418
    :sswitch_90
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    if-nez v0, :cond_9b

    .line 7419
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    .line 7421
    :cond_9b
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7398
    :sswitch_a2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_2ee

    goto/16 :goto_0

    .line 7412
    :pswitch_ab
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCommand:I

    goto/16 :goto_0

    .line 7385
    :sswitch_af
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_c0

    if-eq v0, v4, :cond_c0

    if-eq v0, v2, :cond_c0

    if-eq v0, v1, :cond_c0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c0

    goto/16 :goto_0

    .line 7392
    :cond_c0
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->srvccState:I

    goto/16 :goto_0

    .line 7381
    :sswitch_c4
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->rilRequestId:I

    goto/16 :goto_0

    .line 7365
    :sswitch_cc
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_30a

    goto/16 :goto_0

    .line 7375
    :pswitch_d5
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->rilRequest:I

    goto/16 :goto_0

    .line 7296
    :sswitch_d9
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_31e

    packed-switch v0, :pswitch_data_35c

    goto/16 :goto_0

    .line 7359
    :pswitch_e5
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->error:I

    goto/16 :goto_0

    :sswitch_e9
    const/16 v0, 0x62

    .line 7277
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 7278
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-nez v1, :cond_f5

    move v2, v3

    goto :goto_f6

    :cond_f5
    array-length v2, v1

    :goto_f6
    add-int/2addr v0, v2

    .line 7279
    new-array v4, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-eqz v2, :cond_fe

    .line 7282
    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_fe
    :goto_fe
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_112

    .line 7285
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    aput-object v1, v4, v2

    .line 7286
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 7287
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_fe

    .line 7290
    :cond_112
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    aput-object v0, v4, v2

    .line 7291
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 7292
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    goto/16 :goto_0

    .line 7272
    :sswitch_120
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex:I

    goto/16 :goto_0

    .line 7268
    :sswitch_128
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callIndex:I

    goto/16 :goto_0

    .line 7250
    :sswitch_130
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_3a0

    goto/16 :goto_0

    .line 7262
    :pswitch_139
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callState:I

    goto/16 :goto_0

    .line 7238
    :sswitch_13d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_14b

    if-eq v0, v4, :cond_14b

    if-eq v0, v2, :cond_14b

    if-eq v0, v1, :cond_14b

    goto/16 :goto_0

    .line 7244
    :cond_14b
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->phoneState:I

    goto/16 :goto_0

    :sswitch_14f
    const/16 v0, 0x3a

    .line 7219
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 7220
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-nez v1, :cond_15b

    move v2, v3

    goto :goto_15c

    :cond_15b
    array-length v2, v1

    :goto_15c
    add-int/2addr v0, v2

    .line 7221
    new-array v4, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-eqz v2, :cond_164

    .line 7224
    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_164
    :goto_164
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_178

    .line 7227
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    aput-object v1, v4, v2

    .line 7228
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 7229
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_164

    .line 7232
    :cond_178
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    aput-object v0, v4, v2

    .line 7233
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 7234
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    goto/16 :goto_0

    .line 7211
    :sswitch_186
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-nez v0, :cond_191

    .line 7212
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 7214
    :cond_191
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7204
    :sswitch_198
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-nez v0, :cond_1a3

    .line 7205
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 7207
    :cond_1a3
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7197
    :sswitch_1aa
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-nez v0, :cond_1b5

    .line 7198
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 7200
    :cond_1b5
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7190
    :sswitch_1bc
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-nez v0, :cond_1c7

    .line 7191
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 7193
    :cond_1c7
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7162
    :sswitch_1ce
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_3b8

    goto/16 :goto_0

    .line 7184
    :pswitch_1d7
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->delay:I

    goto/16 :goto_0

    .line 7130
    :sswitch_1db
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_3e4

    goto/16 :goto_0

    .line 7156
    :pswitch_1e4
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    goto/16 :goto_0

    :goto_1e8
    :sswitch_1e8
    return-object p0

    nop

    :sswitch_data_1ea
    .sparse-switch
        0x0 -> :sswitch_1e8
        0x8 -> :sswitch_1db
        0x10 -> :sswitch_1ce
        0x1a -> :sswitch_1bc
        0x22 -> :sswitch_1aa
        0x2a -> :sswitch_198
        0x32 -> :sswitch_186
        0x3a -> :sswitch_14f
        0x40 -> :sswitch_13d
        0x48 -> :sswitch_130
        0x50 -> :sswitch_128
        0x58 -> :sswitch_120
        0x62 -> :sswitch_e9
        0x68 -> :sswitch_d9
        0x70 -> :sswitch_cc
        0x78 -> :sswitch_c4
        0x80 -> :sswitch_af
        0x88 -> :sswitch_a2
        0x92 -> :sswitch_90
        0x98 -> :sswitch_83
        0xa0 -> :sswitch_77
        0xa8 -> :sswitch_70
        0xb0 -> :sswitch_65
        0xba -> :sswitch_54
        0xc2 -> :sswitch_43
        0xca -> :sswitch_32
        0xd0 -> :sswitch_2b
        0xda -> :sswitch_1a
        0xe0 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_260
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
    .end packed-switch

    :pswitch_data_28e
    .packed-switch -0x1
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
    .end packed-switch

    :pswitch_data_2be
    .packed-switch -0x1
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
    .end packed-switch

    :pswitch_data_2ee
    .packed-switch 0x0
        :pswitch_ab
        :pswitch_ab
        :pswitch_ab
        :pswitch_ab
        :pswitch_ab
        :pswitch_ab
        :pswitch_ab
        :pswitch_ab
        :pswitch_ab
        :pswitch_ab
        :pswitch_ab
        :pswitch_ab
    .end packed-switch

    :pswitch_data_30a
    .packed-switch 0x0
        :pswitch_d5
        :pswitch_d5
        :pswitch_d5
        :pswitch_d5
        :pswitch_d5
        :pswitch_d5
        :pswitch_d5
        :pswitch_d5
    .end packed-switch

    :pswitch_data_31e
    .packed-switch 0x0
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
    .end packed-switch

    :pswitch_data_35c
    .packed-switch 0x24
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
        :pswitch_e5
    .end packed-switch

    :pswitch_data_3a0
    .packed-switch 0x0
        :pswitch_139
        :pswitch_139
        :pswitch_139
        :pswitch_139
        :pswitch_139
        :pswitch_139
        :pswitch_139
        :pswitch_139
        :pswitch_139
        :pswitch_139
    .end packed-switch

    :pswitch_data_3b8
    .packed-switch 0x0
        :pswitch_1d7
        :pswitch_1d7
        :pswitch_1d7
        :pswitch_1d7
        :pswitch_1d7
        :pswitch_1d7
        :pswitch_1d7
        :pswitch_1d7
        :pswitch_1d7
        :pswitch_1d7
        :pswitch_1d7
        :pswitch_1d7
        :pswitch_1d7
        :pswitch_1d7
        :pswitch_1d7
        :pswitch_1d7
        :pswitch_1d7
        :pswitch_1d7
        :pswitch_1d7
        :pswitch_1d7
    .end packed-switch

    :pswitch_data_3e4
    .packed-switch 0x0
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_1e4
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

    .line 5594
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

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

    .line 6889
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 6890
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6892
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->delay:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 6893
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6895
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 6896
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6898
    :cond_18
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 6899
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6901
    :cond_20
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 6902
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6904
    :cond_28
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 6905
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6907
    :cond_30
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    array-length v0, v0

    if-lez v0, :cond_49

    move v0, v1

    .line 6908
    :goto_39
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    array-length v3, v2

    if-ge v0, v3, :cond_49

    .line 6909
    aget-object v2, v2, v0

    if-eqz v2, :cond_46

    const/4 v3, 0x7

    .line 6911
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 6915
    :cond_49
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->phoneState:I

    if-eqz v0, :cond_52

    const/16 v2, 0x8

    .line 6916
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6918
    :cond_52
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callState:I

    if-eqz v0, :cond_5b

    const/16 v2, 0x9

    .line 6919
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6921
    :cond_5b
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callIndex:I

    if-eqz v0, :cond_64

    const/16 v2, 0xa

    .line 6922
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6924
    :cond_64
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex:I

    if-eqz v0, :cond_6d

    const/16 v2, 0xb

    .line 6925
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6927
    :cond_6d
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-eqz v0, :cond_85

    array-length v0, v0

    if-lez v0, :cond_85

    .line 6928
    :goto_74
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    array-length v2, v0

    if-ge v1, v2, :cond_85

    .line 6929
    aget-object v0, v0, v1

    if-eqz v0, :cond_82

    const/16 v2, 0xc

    .line 6931
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_82
    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    .line 6935
    :cond_85
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->error:I

    if-eqz v0, :cond_8e

    const/16 v1, 0xd

    .line 6936
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6938
    :cond_8e
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->rilRequest:I

    if-eqz v0, :cond_97

    const/16 v1, 0xe

    .line 6939
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6941
    :cond_97
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->rilRequestId:I

    if-eqz v0, :cond_a0

    const/16 v1, 0xf

    .line 6942
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6944
    :cond_a0
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->srvccState:I

    if-eqz v0, :cond_a9

    const/16 v1, 0x10

    .line 6945
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6947
    :cond_a9
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCommand:I

    if-eqz v0, :cond_b2

    const/16 v1, 0x11

    .line 6948
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6950
    :cond_b2
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    if-eqz v0, :cond_bb

    const/16 v1, 0x12

    .line 6951
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6953
    :cond_bb
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c5

    const/16 v2, 0x13

    .line 6954
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6956
    :cond_c5
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech:I

    if-eq v0, v1, :cond_ce

    const/16 v1, 0x14

    .line 6957
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6959
    :cond_ce
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_db

    const/16 v2, 0x15

    .line 6960
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 6962
    :cond_db
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->audioCodec:I

    if-eqz v0, :cond_e4

    const/16 v1, 0x16

    .line 6963
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6965
    :cond_e4
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    if-eqz v0, :cond_ed

    const/16 v1, 0x17

    .line 6966
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6968
    :cond_ed
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryDl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    if-eqz v0, :cond_f6

    const/16 v1, 0x18

    .line 6969
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6971
    :cond_f6
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryUl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    if-eqz v0, :cond_ff

    const/16 v1, 0x19

    .line 6972
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6974
    :cond_ff
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->isImsEmergencyCall:Z

    if-eqz v0, :cond_108

    const/16 v1, 0x1a

    .line 6975
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 6977
    :cond_108
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsEmergencyNumberInfo:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    if-eqz v0, :cond_111

    const/16 v1, 0x1b

    .line 6978
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6980
    :cond_111
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->emergencyNumberDatabaseVersion:I

    if-eqz v0, :cond_11a

    const/16 v1, 0x1c

    .line 6981
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6983
    :cond_11a
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
