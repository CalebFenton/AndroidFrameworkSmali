.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonyEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;


# instance fields
.field private bitField0_:I

.field public dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

.field private dataStallAction_:I

.field public deactivateDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

.field private error_:I

.field public imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

.field public imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

.field public modemRestart:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

.field private nitzTimestampMillis_:J

.field private phoneId_:I

.field public serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

.field public settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

.field public setupDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

.field public setupDataCallResponse:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

.field private timestampMillis_:J

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3781
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    #@3
    .line 3782
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@6
    .line 3781
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 2

    #@0
    .prologue
    .line 3625
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 3626
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 3628
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 3629
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@e
    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 3633
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@13
    return-object v0

    #@14
    .line 3626
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 4128
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 4122
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    .line 3786
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@6
    .line 3787
    iput-wide v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->timestampMillis_:J

    #@8
    .line 3788
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->phoneId_:I

    #@a
    .line 3789
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->type_:I

    #@c
    .line 3790
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@e
    .line 3791
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@10
    .line 3792
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@12
    .line 3793
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@14
    .line 3794
    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@1a
    .line 3795
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->error_:I

    #@1c
    .line 3796
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    #@1e
    .line 3797
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    #@20
    .line 3798
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    #@22
    .line 3799
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataStallAction_:I

    #@24
    .line 3800
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    #@26
    .line 3801
    iput-wide v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->nitzTimestampMillis_:J

    #@28
    .line 3802
    iput-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@2a
    .line 3803
    const/4 v0, -0x1

    #@2b
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->cachedSize:I

    #@2d
    .line 3804
    return-object p0
.end method

.method public clearDataStallAction()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1

    #@0
    .prologue
    .line 3752
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataStallAction_:I

    #@3
    .line 3753
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x11

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@9
    .line 3754
    return-object p0
.end method

.method public clearError()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1

    #@0
    .prologue
    .line 3724
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->error_:I

    #@3
    .line 3725
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x9

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@9
    .line 3726
    return-object p0
.end method

.method public clearNitzTimestampMillis()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 2

    #@0
    .prologue
    .line 3774
    const-wide/16 v0, 0x0

    #@2
    iput-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->nitzTimestampMillis_:J

    #@4
    .line 3775
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@6
    and-int/lit8 v0, v0, -0x21

    #@8
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@a
    .line 3776
    return-object p0
.end method

.method public clearPhoneId()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1

    #@0
    .prologue
    .line 3671
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->phoneId_:I

    #@3
    .line 3672
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x3

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@9
    .line 3673
    return-object p0
.end method

.method public clearTimestampMillis()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 2

    #@0
    .prologue
    .line 3652
    const-wide/16 v0, 0x0

    #@2
    iput-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->timestampMillis_:J

    #@4
    .line 3653
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@6
    and-int/lit8 v0, v0, -0x2

    #@8
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@a
    .line 3654
    return-object p0
.end method

.method public clearType()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1

    #@0
    .prologue
    .line 3690
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->type_:I

    #@3
    .line 3691
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x5

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@9
    .line 3692
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    #@0
    .prologue
    .line 3865
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    #@3
    move-result v2

    #@4
    .line 3866
    .local v2, "size":I
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@6
    and-int/lit8 v3, v3, 0x1

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 3868
    iget-wide v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->timestampMillis_:J

    #@c
    const/4 v3, 0x1

    #@d
    .line 3867
    invoke-static {v3, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    #@10
    move-result v3

    #@11
    add-int/2addr v2, v3

    #@12
    .line 3870
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@14
    and-int/lit8 v3, v3, 0x2

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 3872
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->phoneId_:I

    #@1a
    const/4 v4, 0x2

    #@1b
    .line 3871
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1e
    move-result v3

    #@1f
    add-int/2addr v2, v3

    #@20
    .line 3874
    :cond_1
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@22
    and-int/lit8 v3, v3, 0x4

    #@24
    if-eqz v3, :cond_2

    #@26
    .line 3876
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->type_:I

    #@28
    const/4 v4, 0x3

    #@29
    .line 3875
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@2c
    move-result v3

    #@2d
    add-int/2addr v2, v3

    #@2e
    .line 3878
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@30
    if-eqz v3, :cond_3

    #@32
    .line 3880
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@34
    const/4 v4, 0x4

    #@35
    .line 3879
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@38
    move-result v3

    #@39
    add-int/2addr v2, v3

    #@3a
    .line 3882
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@3c
    if-eqz v3, :cond_4

    #@3e
    .line 3884
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@40
    const/4 v4, 0x5

    #@41
    .line 3883
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@44
    move-result v3

    #@45
    add-int/2addr v2, v3

    #@46
    .line 3886
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@48
    if-eqz v3, :cond_5

    #@4a
    .line 3888
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@4c
    const/4 v4, 0x6

    #@4d
    .line 3887
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@50
    move-result v3

    #@51
    add-int/2addr v2, v3

    #@52
    .line 3890
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@54
    if-eqz v3, :cond_6

    #@56
    .line 3892
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@58
    const/4 v4, 0x7

    #@59
    .line 3891
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@5c
    move-result v3

    #@5d
    add-int/2addr v2, v3

    #@5e
    .line 3894
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@60
    if-eqz v3, :cond_8

    #@62
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@64
    array-length v3, v3

    #@65
    if-lez v3, :cond_8

    #@67
    .line 3895
    const/4 v1, 0x0

    #@68
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@6a
    array-length v3, v3

    #@6b
    if-ge v1, v3, :cond_8

    #@6d
    .line 3896
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@6f
    aget-object v0, v3, v1

    #@71
    .line 3897
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v0, :cond_7

    #@73
    .line 3899
    const/16 v3, 0x8

    #@75
    .line 3898
    invoke-static {v3, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@78
    move-result v3

    #@79
    add-int/2addr v2, v3

    #@7a
    .line 3895
    :cond_7
    add-int/lit8 v1, v1, 0x1

    #@7c
    goto :goto_0

    #@7d
    .line 3903
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .end local v1    # "i":I
    :cond_8
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@7f
    and-int/lit8 v3, v3, 0x8

    #@81
    if-eqz v3, :cond_9

    #@83
    .line 3905
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->error_:I

    #@85
    const/16 v4, 0x9

    #@87
    .line 3904
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@8a
    move-result v3

    #@8b
    add-int/2addr v2, v3

    #@8c
    .line 3907
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    #@8e
    if-eqz v3, :cond_a

    #@90
    .line 3909
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    #@92
    const/16 v4, 0xa

    #@94
    .line 3908
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@97
    move-result v3

    #@98
    add-int/2addr v2, v3

    #@99
    .line 3911
    :cond_a
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    #@9b
    if-eqz v3, :cond_b

    #@9d
    .line 3913
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    #@9f
    const/16 v4, 0xb

    #@a1
    .line 3912
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@a4
    move-result v3

    #@a5
    add-int/2addr v2, v3

    #@a6
    .line 3915
    :cond_b
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    #@a8
    if-eqz v3, :cond_c

    #@aa
    .line 3917
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    #@ac
    const/16 v4, 0xc

    #@ae
    .line 3916
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@b1
    move-result v3

    #@b2
    add-int/2addr v2, v3

    #@b3
    .line 3919
    :cond_c
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@b5
    and-int/lit8 v3, v3, 0x10

    #@b7
    if-eqz v3, :cond_d

    #@b9
    .line 3921
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataStallAction_:I

    #@bb
    const/16 v4, 0xd

    #@bd
    .line 3920
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@c0
    move-result v3

    #@c1
    add-int/2addr v2, v3

    #@c2
    .line 3923
    :cond_d
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    #@c4
    if-eqz v3, :cond_e

    #@c6
    .line 3925
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    #@c8
    const/16 v4, 0xe

    #@ca
    .line 3924
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@cd
    move-result v3

    #@ce
    add-int/2addr v2, v3

    #@cf
    .line 3927
    :cond_e
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@d1
    and-int/lit8 v3, v3, 0x20

    #@d3
    if-eqz v3, :cond_f

    #@d5
    .line 3929
    iget-wide v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->nitzTimestampMillis_:J

    #@d7
    const/16 v3, 0xf

    #@d9
    .line 3928
    invoke-static {v3, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    #@dc
    move-result v3

    #@dd
    add-int/2addr v2, v3

    #@de
    .line 3931
    :cond_f
    return v2
.end method

.method public getDataStallAction()I
    .locals 1

    #@0
    .prologue
    .line 3741
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataStallAction_:I

    #@2
    return v0
.end method

.method public getError()I
    .locals 1

    #@0
    .prologue
    .line 3713
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->error_:I

    #@2
    return v0
.end method

.method public getNitzTimestampMillis()J
    .locals 2

    #@0
    .prologue
    .line 3763
    iget-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->nitzTimestampMillis_:J

    #@2
    return-wide v0
.end method

.method public getPhoneId()I
    .locals 1

    #@0
    .prologue
    .line 3660
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->phoneId_:I

    #@2
    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    #@0
    .prologue
    .line 3641
    iget-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->timestampMillis_:J

    #@2
    return-wide v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 3679
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->type_:I

    #@2
    return v0
.end method

.method public hasDataStallAction()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3749
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x10

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasError()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3721
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x8

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasNitzTimestampMillis()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3771
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x20

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasPhoneId()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3668
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x2

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasTimestampMillis()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3649
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasType()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3687
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x4

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3935
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 10
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3939
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@4
    move-result v4

    #@5
    .line 3940
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    #@8
    .line 3944
    invoke-super {p0, p1, v4}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@b
    move-result v7

    #@c
    if-nez v7, :cond_0

    #@e
    .line 3945
    return-object p0

    #@f
    .line 3942
    :sswitch_0
    return-object p0

    #@10
    .line 3950
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    #@13
    move-result-wide v8

    #@14
    iput-wide v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->timestampMillis_:J

    #@16
    .line 3951
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@18
    or-int/lit8 v7, v7, 0x1

    #@1a
    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@1c
    goto :goto_0

    #@1d
    .line 3955
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@20
    move-result v7

    #@21
    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->phoneId_:I

    #@23
    .line 3956
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@25
    or-int/lit8 v7, v7, 0x2

    #@27
    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@29
    goto :goto_0

    #@2a
    .line 3960
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@2d
    move-result v2

    #@2e
    .line 3961
    .local v2, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@31
    move-result v5

    #@32
    .line 3962
    .local v5, "value":I
    packed-switch v5, :pswitch_data_0

    #@35
    .line 3980
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@38
    .line 3981
    invoke-virtual {p0, p1, v4}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@3b
    goto :goto_0

    #@3c
    .line 3976
    :pswitch_0
    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->type_:I

    #@3e
    .line 3977
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@40
    or-int/lit8 v7, v7, 0x4

    #@42
    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@44
    goto :goto_0

    #@45
    .line 3987
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_4
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@47
    if-nez v7, :cond_1

    #@49
    .line 3988
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@4b
    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;-><init>()V

    #@4e
    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@50
    .line 3990
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@52
    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@55
    goto :goto_0

    #@56
    .line 3994
    :sswitch_5
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@58
    if-nez v7, :cond_2

    #@5a
    .line 3995
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@5c
    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;-><init>()V

    #@5f
    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@61
    .line 3997
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@63
    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@66
    goto :goto_0

    #@67
    .line 4001
    :sswitch_6
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@69
    if-nez v7, :cond_3

    #@6b
    .line 4002
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@6d
    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;-><init>()V

    #@70
    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@72
    .line 4004
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@74
    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@77
    goto :goto_0

    #@78
    .line 4008
    :sswitch_7
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@7a
    if-nez v7, :cond_4

    #@7c
    .line 4009
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@7e
    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;-><init>()V

    #@81
    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@83
    .line 4011
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@85
    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@88
    goto/16 :goto_0

    #@8a
    .line 4016
    :sswitch_8
    const/16 v7, 0x42

    #@8c
    .line 4015
    invoke-static {p1, v7}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    #@8f
    move-result v0

    #@90
    .line 4017
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@92
    if-nez v7, :cond_6

    #@94
    move v1, v6

    #@95
    .line 4019
    .local v1, "i":I
    :goto_1
    add-int v7, v1, v0

    #@97
    new-array v3, v7, [Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@99
    .line 4020
    .local v3, "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v1, :cond_5

    #@9b
    .line 4021
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@9d
    invoke-static {v7, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@a0
    .line 4023
    :cond_5
    :goto_2
    array-length v7, v3

    #@a1
    add-int/lit8 v7, v7, -0x1

    #@a3
    if-ge v1, v7, :cond_7

    #@a5
    .line 4024
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@a7
    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    #@aa
    aput-object v7, v3, v1

    #@ac
    .line 4025
    aget-object v7, v3, v1

    #@ae
    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@b1
    .line 4026
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@b4
    .line 4023
    add-int/lit8 v1, v1, 0x1

    #@b6
    goto :goto_2

    #@b7
    .line 4017
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@b9
    array-length v1, v7

    #@ba
    goto :goto_1

    #@bb
    .line 4029
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :cond_7
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@bd
    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    #@c0
    aput-object v7, v3, v1

    #@c2
    .line 4030
    aget-object v7, v3, v1

    #@c4
    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@c7
    .line 4031
    iput-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@c9
    goto/16 :goto_0

    #@cb
    .line 4035
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@ce
    move-result v2

    #@cf
    .line 4036
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@d2
    move-result v5

    #@d3
    .line 4037
    .restart local v5    # "value":I
    packed-switch v5, :pswitch_data_1

    #@d6
    .line 4072
    :pswitch_1
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@d9
    .line 4073
    invoke-virtual {p0, p1, v4}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@dc
    goto/16 :goto_0

    #@de
    .line 4068
    :pswitch_2
    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->error_:I

    #@e0
    .line 4069
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@e2
    or-int/lit8 v7, v7, 0x8

    #@e4
    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@e6
    goto/16 :goto_0

    #@e8
    .line 4079
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_a
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    #@ea
    if-nez v7, :cond_8

    #@ec
    .line 4080
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    #@ee
    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;-><init>()V

    #@f1
    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    #@f3
    .line 4082
    :cond_8
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    #@f5
    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@f8
    goto/16 :goto_0

    #@fa
    .line 4086
    :sswitch_b
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    #@fc
    if-nez v7, :cond_9

    #@fe
    .line 4087
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    #@100
    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;-><init>()V

    #@103
    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    #@105
    .line 4089
    :cond_9
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    #@107
    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@10a
    goto/16 :goto_0

    #@10c
    .line 4093
    :sswitch_c
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    #@10e
    if-nez v7, :cond_a

    #@110
    .line 4094
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    #@112
    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;-><init>()V

    #@115
    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    #@117
    .line 4096
    :cond_a
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    #@119
    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@11c
    goto/16 :goto_0

    #@11e
    .line 4100
    :sswitch_d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@121
    move-result v7

    #@122
    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataStallAction_:I

    #@124
    .line 4101
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@126
    or-int/lit8 v7, v7, 0x10

    #@128
    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@12a
    goto/16 :goto_0

    #@12c
    .line 4105
    :sswitch_e
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    #@12e
    if-nez v7, :cond_b

    #@130
    .line 4106
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    #@132
    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;-><init>()V

    #@135
    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    #@137
    .line 4108
    :cond_b
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    #@139
    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@13c
    goto/16 :goto_0

    #@13e
    .line 4112
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    #@141
    move-result-wide v8

    #@142
    iput-wide v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->nitzTimestampMillis_:J

    #@144
    .line 4113
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@146
    or-int/lit8 v7, v7, 0x20

    #@148
    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@14a
    goto/16 :goto_0

    #@14c
    .line 3940
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x68 -> :sswitch_d
        0x72 -> :sswitch_e
        0x78 -> :sswitch_f
    .end sparse-switch

    #@18e
    .line 3962
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    #@1ac
    .line 4037
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDataStallAction(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 3744
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataStallAction_:I

    #@2
    .line 3745
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x10

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@8
    .line 3746
    return-object p0
.end method

.method public setError(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 3716
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->error_:I

    #@2
    .line 3717
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x8

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@8
    .line 3718
    return-object p0
.end method

.method public setNitzTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 3766
    iput-wide p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->nitzTimestampMillis_:J

    #@2
    .line 3767
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x20

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@8
    .line 3768
    return-object p0
.end method

.method public setPhoneId(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 3663
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->phoneId_:I

    #@2
    .line 3664
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x2

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@8
    .line 3665
    return-object p0
.end method

.method public setTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 3644
    iput-wide p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->timestampMillis_:J

    #@2
    .line 3645
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@8
    .line 3646
    return-object p0
.end method

.method public setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 3682
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->type_:I

    #@2
    .line 3683
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x4

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@8
    .line 3684
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3810
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@2
    and-int/lit8 v2, v2, 0x1

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 3811
    iget-wide v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->timestampMillis_:J

    #@8
    const/4 v4, 0x1

    #@9
    invoke-virtual {p1, v4, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    #@c
    .line 3813
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@e
    and-int/lit8 v2, v2, 0x2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 3814
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->phoneId_:I

    #@14
    const/4 v3, 0x2

    #@15
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@18
    .line 3816
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@1a
    and-int/lit8 v2, v2, 0x4

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 3817
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->type_:I

    #@20
    const/4 v3, 0x3

    #@21
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@24
    .line 3819
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@26
    if-eqz v2, :cond_3

    #@28
    .line 3820
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@2a
    const/4 v3, 0x4

    #@2b
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@2e
    .line 3822
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@30
    if-eqz v2, :cond_4

    #@32
    .line 3823
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@34
    const/4 v3, 0x5

    #@35
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@38
    .line 3825
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@3a
    if-eqz v2, :cond_5

    #@3c
    .line 3826
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@3e
    const/4 v3, 0x6

    #@3f
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@42
    .line 3828
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@44
    if-eqz v2, :cond_6

    #@46
    .line 3829
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@48
    const/4 v3, 0x7

    #@49
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@4c
    .line 3831
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@4e
    if-eqz v2, :cond_8

    #@50
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@52
    array-length v2, v2

    #@53
    if-lez v2, :cond_8

    #@55
    .line 3832
    const/4 v1, 0x0

    #@56
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@58
    array-length v2, v2

    #@59
    if-ge v1, v2, :cond_8

    #@5b
    .line 3833
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@5d
    aget-object v0, v2, v1

    #@5f
    .line 3834
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v0, :cond_7

    #@61
    .line 3835
    const/16 v2, 0x8

    #@63
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@66
    .line 3832
    :cond_7
    add-int/lit8 v1, v1, 0x1

    #@68
    goto :goto_0

    #@69
    .line 3839
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .end local v1    # "i":I
    :cond_8
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@6b
    and-int/lit8 v2, v2, 0x8

    #@6d
    if-eqz v2, :cond_9

    #@6f
    .line 3840
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->error_:I

    #@71
    const/16 v3, 0x9

    #@73
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@76
    .line 3842
    :cond_9
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    #@78
    if-eqz v2, :cond_a

    #@7a
    .line 3843
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    #@7c
    const/16 v3, 0xa

    #@7e
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@81
    .line 3845
    :cond_a
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    #@83
    if-eqz v2, :cond_b

    #@85
    .line 3846
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    #@87
    const/16 v3, 0xb

    #@89
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@8c
    .line 3848
    :cond_b
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    #@8e
    if-eqz v2, :cond_c

    #@90
    .line 3849
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    #@92
    const/16 v3, 0xc

    #@94
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@97
    .line 3851
    :cond_c
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@99
    and-int/lit8 v2, v2, 0x10

    #@9b
    if-eqz v2, :cond_d

    #@9d
    .line 3852
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataStallAction_:I

    #@9f
    const/16 v3, 0xd

    #@a1
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@a4
    .line 3854
    :cond_d
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    #@a6
    if-eqz v2, :cond_e

    #@a8
    .line 3855
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    #@aa
    const/16 v3, 0xe

    #@ac
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@af
    .line 3857
    :cond_e
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->bitField0_:I

    #@b1
    and-int/lit8 v2, v2, 0x20

    #@b3
    if-eqz v2, :cond_f

    #@b5
    .line 3858
    iget-wide v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->nitzTimestampMillis_:J

    #@b7
    const/16 v4, 0xf

    #@b9
    invoke-virtual {p1, v4, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    #@bc
    .line 3860
    :cond_f
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    #@bf
    .line 3809
    return-void
.end method
