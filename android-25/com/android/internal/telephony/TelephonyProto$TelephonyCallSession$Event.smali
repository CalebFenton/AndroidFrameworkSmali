.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$CallState;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$ImsCommand;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$PhoneState;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilRequest;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilSrvccState;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;


# instance fields
.field private bitField0_:I

.field private callIndex_:I

.field private callState_:I

.field public calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

.field public dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

.field private delay_:I

.field private error_:I

.field public imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

.field private imsCommand_:I

.field public imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

.field private mergedCallIndex_:I

.field private nitzTimestampMillis_:J

.field private phoneState_:I

.field public reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

.field private rilRequestId_:I

.field private rilRequest_:I

.field public serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

.field public settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

.field private srcAccessTech_:I

.field private srvccState_:I

.field private targetAccessTech_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 4737
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    #@3
    .line 4738
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@6
    .line 4737
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 2

    #@0
    .prologue
    .line 4435
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 4436
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 4438
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 4439
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@e
    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 4443
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@13
    return-object v0

    #@14
    .line 4436
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 5359
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 5353
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 4742
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@4
    .line 4743
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    #@6
    .line 4744
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    #@8
    .line 4745
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@a
    .line 4746
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@c
    .line 4747
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@e
    .line 4748
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@10
    .line 4749
    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@16
    .line 4750
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    #@18
    .line 4751
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    #@1a
    .line 4752
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    #@1c
    .line 4753
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    #@1e
    .line 4754
    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@24
    .line 4755
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    #@26
    .line 4756
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    #@28
    .line 4757
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    #@2a
    .line 4758
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    #@2c
    .line 4759
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    #@2e
    .line 4760
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@30
    .line 4761
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    #@32
    .line 4762
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    #@34
    .line 4763
    const-wide/16 v0, 0x0

    #@36
    iput-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    #@38
    .line 4764
    iput-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@3a
    .line 4765
    const/4 v0, -0x1

    #@3b
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->cachedSize:I

    #@3d
    .line 4766
    return-object p0
.end method

.method public clearCallIndex()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    #@0
    .prologue
    .line 4553
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    #@3
    .line 4554
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x11

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@9
    .line 4555
    return-object p0
.end method

.method public clearCallState()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    #@0
    .prologue
    .line 4534
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    #@3
    .line 4535
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x9

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@9
    .line 4536
    return-object p0
.end method

.method public clearDelay()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    #@0
    .prologue
    .line 4481
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    #@3
    .line 4482
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x3

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@9
    .line 4483
    return-object p0
.end method

.method public clearError()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    #@0
    .prologue
    .line 4594
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    #@3
    .line 4595
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x41

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@9
    .line 4596
    return-object p0
.end method

.method public clearImsCommand()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    #@0
    .prologue
    .line 4670
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    #@3
    .line 4671
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@5
    and-int/lit16 v0, v0, -0x401

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@9
    .line 4672
    return-object p0
.end method

.method public clearMergedCallIndex()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    #@0
    .prologue
    .line 4572
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    #@3
    .line 4573
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x21

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@9
    .line 4574
    return-object p0
.end method

.method public clearNitzTimestampMillis()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 2

    #@0
    .prologue
    .line 4730
    const-wide/16 v0, 0x0

    #@2
    iput-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    #@4
    .line 4731
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@6
    and-int/lit16 v0, v0, -0x2001

    #@8
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@a
    .line 4732
    return-object p0
.end method

.method public clearPhoneState()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    #@0
    .prologue
    .line 4515
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    #@3
    .line 4516
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x5

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@9
    .line 4517
    return-object p0
.end method

.method public clearRilRequest()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    #@0
    .prologue
    .line 4613
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    #@3
    .line 4614
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@5
    and-int/lit16 v0, v0, -0x81

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@9
    .line 4615
    return-object p0
.end method

.method public clearRilRequestId()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    #@0
    .prologue
    .line 4632
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    #@3
    .line 4633
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@5
    and-int/lit16 v0, v0, -0x101

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@9
    .line 4634
    return-object p0
.end method

.method public clearSrcAccessTech()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    #@0
    .prologue
    .line 4692
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    #@3
    .line 4693
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@5
    and-int/lit16 v0, v0, -0x801

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@9
    .line 4694
    return-object p0
.end method

.method public clearSrvccState()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    #@0
    .prologue
    .line 4651
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    #@3
    .line 4652
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@5
    and-int/lit16 v0, v0, -0x201

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@9
    .line 4653
    return-object p0
.end method

.method public clearTargetAccessTech()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    #@0
    .prologue
    .line 4711
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    #@3
    .line 4712
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@5
    and-int/lit16 v0, v0, -0x1001

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@9
    .line 4713
    return-object p0
.end method

.method public clearType()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    #@0
    .prologue
    .line 4462
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    #@3
    .line 4463
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x2

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@9
    .line 4464
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    #@0
    .prologue
    .line 4850
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    #@3
    move-result v3

    #@4
    .line 4851
    .local v3, "size":I
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@6
    and-int/lit8 v4, v4, 0x1

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 4853
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    #@c
    const/4 v5, 0x1

    #@d
    .line 4852
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@10
    move-result v4

    #@11
    add-int/2addr v3, v4

    #@12
    .line 4855
    :cond_0
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@14
    and-int/lit8 v4, v4, 0x2

    #@16
    if-eqz v4, :cond_1

    #@18
    .line 4857
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    #@1a
    const/4 v5, 0x2

    #@1b
    .line 4856
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1e
    move-result v4

    #@1f
    add-int/2addr v3, v4

    #@20
    .line 4859
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@22
    if-eqz v4, :cond_2

    #@24
    .line 4861
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@26
    const/4 v5, 0x3

    #@27
    .line 4860
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@2a
    move-result v4

    #@2b
    add-int/2addr v3, v4

    #@2c
    .line 4863
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@2e
    if-eqz v4, :cond_3

    #@30
    .line 4865
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@32
    const/4 v5, 0x4

    #@33
    .line 4864
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@36
    move-result v4

    #@37
    add-int/2addr v3, v4

    #@38
    .line 4867
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@3a
    if-eqz v4, :cond_4

    #@3c
    .line 4869
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@3e
    const/4 v5, 0x5

    #@3f
    .line 4868
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@42
    move-result v4

    #@43
    add-int/2addr v3, v4

    #@44
    .line 4871
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@46
    if-eqz v4, :cond_5

    #@48
    .line 4873
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@4a
    const/4 v5, 0x6

    #@4b
    .line 4872
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@4e
    move-result v4

    #@4f
    add-int/2addr v3, v4

    #@50
    .line 4875
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@52
    if-eqz v4, :cond_7

    #@54
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@56
    array-length v4, v4

    #@57
    if-lez v4, :cond_7

    #@59
    .line 4876
    const/4 v2, 0x0

    #@5a
    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@5c
    array-length v4, v4

    #@5d
    if-ge v2, v4, :cond_7

    #@5f
    .line 4877
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@61
    aget-object v0, v4, v2

    #@63
    .line 4878
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v0, :cond_6

    #@65
    .line 4880
    const/4 v4, 0x7

    #@66
    .line 4879
    invoke-static {v4, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@69
    move-result v4

    #@6a
    add-int/2addr v3, v4

    #@6b
    .line 4876
    :cond_6
    add-int/lit8 v2, v2, 0x1

    #@6d
    goto :goto_0

    #@6e
    .line 4884
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .end local v2    # "i":I
    :cond_7
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@70
    and-int/lit8 v4, v4, 0x4

    #@72
    if-eqz v4, :cond_8

    #@74
    .line 4886
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    #@76
    const/16 v5, 0x8

    #@78
    .line 4885
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@7b
    move-result v4

    #@7c
    add-int/2addr v3, v4

    #@7d
    .line 4888
    :cond_8
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@7f
    and-int/lit8 v4, v4, 0x8

    #@81
    if-eqz v4, :cond_9

    #@83
    .line 4890
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    #@85
    const/16 v5, 0x9

    #@87
    .line 4889
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@8a
    move-result v4

    #@8b
    add-int/2addr v3, v4

    #@8c
    .line 4892
    :cond_9
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@8e
    and-int/lit8 v4, v4, 0x10

    #@90
    if-eqz v4, :cond_a

    #@92
    .line 4894
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    #@94
    const/16 v5, 0xa

    #@96
    .line 4893
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@99
    move-result v4

    #@9a
    add-int/2addr v3, v4

    #@9b
    .line 4896
    :cond_a
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@9d
    and-int/lit8 v4, v4, 0x20

    #@9f
    if-eqz v4, :cond_b

    #@a1
    .line 4898
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    #@a3
    const/16 v5, 0xb

    #@a5
    .line 4897
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@a8
    move-result v4

    #@a9
    add-int/2addr v3, v4

    #@aa
    .line 4900
    :cond_b
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@ac
    if-eqz v4, :cond_d

    #@ae
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@b0
    array-length v4, v4

    #@b1
    if-lez v4, :cond_d

    #@b3
    .line 4901
    const/4 v2, 0x0

    #@b4
    .restart local v2    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@b6
    array-length v4, v4

    #@b7
    if-ge v2, v4, :cond_d

    #@b9
    .line 4902
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@bb
    aget-object v1, v4, v2

    #@bd
    .line 4903
    .local v1, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    if-eqz v1, :cond_c

    #@bf
    .line 4905
    const/16 v4, 0xc

    #@c1
    .line 4904
    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@c4
    move-result v4

    #@c5
    add-int/2addr v3, v4

    #@c6
    .line 4901
    :cond_c
    add-int/lit8 v2, v2, 0x1

    #@c8
    goto :goto_1

    #@c9
    .line 4909
    .end local v1    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .end local v2    # "i":I
    :cond_d
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@cb
    and-int/lit8 v4, v4, 0x40

    #@cd
    if-eqz v4, :cond_e

    #@cf
    .line 4911
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    #@d1
    const/16 v5, 0xd

    #@d3
    .line 4910
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@d6
    move-result v4

    #@d7
    add-int/2addr v3, v4

    #@d8
    .line 4913
    :cond_e
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@da
    and-int/lit16 v4, v4, 0x80

    #@dc
    if-eqz v4, :cond_f

    #@de
    .line 4915
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    #@e0
    const/16 v5, 0xe

    #@e2
    .line 4914
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@e5
    move-result v4

    #@e6
    add-int/2addr v3, v4

    #@e7
    .line 4917
    :cond_f
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@e9
    and-int/lit16 v4, v4, 0x100

    #@eb
    if-eqz v4, :cond_10

    #@ed
    .line 4919
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    #@ef
    const/16 v5, 0xf

    #@f1
    .line 4918
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@f4
    move-result v4

    #@f5
    add-int/2addr v3, v4

    #@f6
    .line 4921
    :cond_10
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@f8
    and-int/lit16 v4, v4, 0x200

    #@fa
    if-eqz v4, :cond_11

    #@fc
    .line 4923
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    #@fe
    const/16 v5, 0x10

    #@100
    .line 4922
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@103
    move-result v4

    #@104
    add-int/2addr v3, v4

    #@105
    .line 4925
    :cond_11
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@107
    and-int/lit16 v4, v4, 0x400

    #@109
    if-eqz v4, :cond_12

    #@10b
    .line 4927
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    #@10d
    const/16 v5, 0x11

    #@10f
    .line 4926
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@112
    move-result v4

    #@113
    add-int/2addr v3, v4

    #@114
    .line 4929
    :cond_12
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@116
    if-eqz v4, :cond_13

    #@118
    .line 4931
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@11a
    const/16 v5, 0x12

    #@11c
    .line 4930
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@11f
    move-result v4

    #@120
    add-int/2addr v3, v4

    #@121
    .line 4933
    :cond_13
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@123
    and-int/lit16 v4, v4, 0x800

    #@125
    if-eqz v4, :cond_14

    #@127
    .line 4935
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    #@129
    const/16 v5, 0x13

    #@12b
    .line 4934
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@12e
    move-result v4

    #@12f
    add-int/2addr v3, v4

    #@130
    .line 4937
    :cond_14
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@132
    and-int/lit16 v4, v4, 0x1000

    #@134
    if-eqz v4, :cond_15

    #@136
    .line 4939
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    #@138
    const/16 v5, 0x14

    #@13a
    .line 4938
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@13d
    move-result v4

    #@13e
    add-int/2addr v3, v4

    #@13f
    .line 4941
    :cond_15
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@141
    and-int/lit16 v4, v4, 0x2000

    #@143
    if-eqz v4, :cond_16

    #@145
    .line 4943
    iget-wide v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    #@147
    const/16 v6, 0x15

    #@149
    .line 4942
    invoke-static {v6, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    #@14c
    move-result v4

    #@14d
    add-int/2addr v3, v4

    #@14e
    .line 4945
    :cond_16
    return v3
.end method

.method public getCallIndex()I
    .locals 1

    #@0
    .prologue
    .line 4542
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    #@2
    return v0
.end method

.method public getCallState()I
    .locals 1

    #@0
    .prologue
    .line 4523
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    #@2
    return v0
.end method

.method public getDelay()I
    .locals 1

    #@0
    .prologue
    .line 4470
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    #@2
    return v0
.end method

.method public getError()I
    .locals 1

    #@0
    .prologue
    .line 4583
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    #@2
    return v0
.end method

.method public getImsCommand()I
    .locals 1

    #@0
    .prologue
    .line 4659
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    #@2
    return v0
.end method

.method public getMergedCallIndex()I
    .locals 1

    #@0
    .prologue
    .line 4561
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    #@2
    return v0
.end method

.method public getNitzTimestampMillis()J
    .locals 2

    #@0
    .prologue
    .line 4719
    iget-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    #@2
    return-wide v0
.end method

.method public getPhoneState()I
    .locals 1

    #@0
    .prologue
    .line 4504
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    #@2
    return v0
.end method

.method public getRilRequest()I
    .locals 1

    #@0
    .prologue
    .line 4602
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    #@2
    return v0
.end method

.method public getRilRequestId()I
    .locals 1

    #@0
    .prologue
    .line 4621
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    #@2
    return v0
.end method

.method public getSrcAccessTech()I
    .locals 1

    #@0
    .prologue
    .line 4681
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    #@2
    return v0
.end method

.method public getSrvccState()I
    .locals 1

    #@0
    .prologue
    .line 4640
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    #@2
    return v0
.end method

.method public getTargetAccessTech()I
    .locals 1

    #@0
    .prologue
    .line 4700
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    #@2
    return v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 4451
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    #@2
    return v0
.end method

.method public hasCallIndex()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4550
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

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

.method public hasCallState()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4531
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

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

.method public hasDelay()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4478
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

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

.method public hasError()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4591
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x40

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasImsCommand()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4667
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@3
    and-int/lit16 v1, v1, 0x400

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasMergedCallIndex()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4569
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

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

.method public hasNitzTimestampMillis()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4727
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@3
    and-int/lit16 v1, v1, 0x2000

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasPhoneState()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4512
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

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

.method public hasRilRequest()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4610
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@3
    and-int/lit16 v1, v1, 0x80

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasRilRequestId()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4629
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@3
    and-int/lit16 v1, v1, 0x100

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasSrcAccessTech()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4689
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@3
    and-int/lit16 v1, v1, 0x800

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasSrvccState()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4648
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@3
    and-int/lit16 v1, v1, 0x200

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasTargetAccessTech()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4708
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@3
    and-int/lit16 v1, v1, 0x1000

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
    .line 4459
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

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
    .line 4949
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 10
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 4953
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@4
    move-result v5

    #@5
    .line 4954
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    #@8
    .line 4958
    invoke-super {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@b
    move-result v8

    #@c
    if-nez v8, :cond_0

    #@e
    .line 4959
    return-object p0

    #@f
    .line 4956
    :sswitch_0
    return-object p0

    #@10
    .line 4964
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@13
    move-result v2

    #@14
    .line 4965
    .local v2, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@17
    move-result v6

    #@18
    .line 4966
    .local v6, "value":I
    packed-switch v6, :pswitch_data_0

    #@1b
    .line 4993
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@1e
    .line 4994
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@21
    goto :goto_0

    #@22
    .line 4989
    :pswitch_0
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    #@24
    .line 4990
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@26
    or-int/lit8 v8, v8, 0x1

    #@28
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@2a
    goto :goto_0

    #@2b
    .line 5000
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@2e
    move-result v2

    #@2f
    .line 5001
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@32
    move-result v6

    #@33
    .line 5002
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_1

    #@36
    .line 5027
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@39
    .line 5028
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@3c
    goto :goto_0

    #@3d
    .line 5023
    :pswitch_1
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    #@3f
    .line 5024
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@41
    or-int/lit8 v8, v8, 0x2

    #@43
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@45
    goto :goto_0

    #@46
    .line 5034
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_3
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@48
    if-nez v8, :cond_1

    #@4a
    .line 5035
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@4c
    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;-><init>()V

    #@4f
    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@51
    .line 5037
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@53
    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@56
    goto :goto_0

    #@57
    .line 5041
    :sswitch_4
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@59
    if-nez v8, :cond_2

    #@5b
    .line 5042
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@5d
    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;-><init>()V

    #@60
    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@62
    .line 5044
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@64
    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@67
    goto :goto_0

    #@68
    .line 5048
    :sswitch_5
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@6a
    if-nez v8, :cond_3

    #@6c
    .line 5049
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@6e
    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;-><init>()V

    #@71
    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@73
    .line 5051
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@75
    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@78
    goto :goto_0

    #@79
    .line 5055
    :sswitch_6
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@7b
    if-nez v8, :cond_4

    #@7d
    .line 5056
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@7f
    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;-><init>()V

    #@82
    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@84
    .line 5058
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@86
    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@89
    goto/16 :goto_0

    #@8b
    .line 5063
    :sswitch_7
    const/16 v8, 0x3a

    #@8d
    .line 5062
    invoke-static {p1, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    #@90
    move-result v0

    #@91
    .line 5064
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@93
    if-nez v8, :cond_6

    #@95
    move v1, v7

    #@96
    .line 5066
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    #@98
    new-array v3, v8, [Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@9a
    .line 5067
    .local v3, "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v1, :cond_5

    #@9c
    .line 5068
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@9e
    invoke-static {v8, v7, v3, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@a1
    .line 5070
    :cond_5
    :goto_2
    array-length v8, v3

    #@a2
    add-int/lit8 v8, v8, -0x1

    #@a4
    if-ge v1, v8, :cond_7

    #@a6
    .line 5071
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@a8
    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    #@ab
    aput-object v8, v3, v1

    #@ad
    .line 5072
    aget-object v8, v3, v1

    #@af
    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@b2
    .line 5073
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@b5
    .line 5070
    add-int/lit8 v1, v1, 0x1

    #@b7
    goto :goto_2

    #@b8
    .line 5064
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@ba
    array-length v1, v8

    #@bb
    goto :goto_1

    #@bc
    .line 5076
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :cond_7
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@be
    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    #@c1
    aput-object v8, v3, v1

    #@c3
    .line 5077
    aget-object v8, v3, v1

    #@c5
    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@c8
    .line 5078
    iput-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@ca
    goto/16 :goto_0

    #@cc
    .line 5082
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@cf
    move-result v2

    #@d0
    .line 5083
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@d3
    move-result v6

    #@d4
    .line 5084
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_2

    #@d7
    .line 5093
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@da
    .line 5094
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@dd
    goto/16 :goto_0

    #@df
    .line 5089
    :pswitch_2
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    #@e1
    .line 5090
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@e3
    or-int/lit8 v8, v8, 0x4

    #@e5
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@e7
    goto/16 :goto_0

    #@e9
    .line 5100
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@ec
    move-result v2

    #@ed
    .line 5101
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@f0
    move-result v6

    #@f1
    .line 5102
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_3

    #@f4
    .line 5117
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@f7
    .line 5118
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@fa
    goto/16 :goto_0

    #@fc
    .line 5113
    :pswitch_3
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    #@fe
    .line 5114
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@100
    or-int/lit8 v8, v8, 0x8

    #@102
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@104
    goto/16 :goto_0

    #@106
    .line 5124
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@109
    move-result v8

    #@10a
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    #@10c
    .line 5125
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@10e
    or-int/lit8 v8, v8, 0x10

    #@110
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@112
    goto/16 :goto_0

    #@114
    .line 5129
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@117
    move-result v8

    #@118
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    #@11a
    .line 5130
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@11c
    or-int/lit8 v8, v8, 0x20

    #@11e
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@120
    goto/16 :goto_0

    #@122
    .line 5135
    :sswitch_c
    const/16 v8, 0x62

    #@124
    .line 5134
    invoke-static {p1, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    #@127
    move-result v0

    #@128
    .line 5136
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@12a
    if-nez v8, :cond_9

    #@12c
    move v1, v7

    #@12d
    .line 5138
    .restart local v1    # "i":I
    :goto_3
    add-int v8, v1, v0

    #@12f
    new-array v4, v8, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@131
    .line 5139
    .local v4, "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    if-eqz v1, :cond_8

    #@133
    .line 5140
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@135
    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@138
    .line 5142
    :cond_8
    :goto_4
    array-length v8, v4

    #@139
    add-int/lit8 v8, v8, -0x1

    #@13b
    if-ge v1, v8, :cond_a

    #@13d
    .line 5143
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@13f
    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    #@142
    aput-object v8, v4, v1

    #@144
    .line 5144
    aget-object v8, v4, v1

    #@146
    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@149
    .line 5145
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@14c
    .line 5142
    add-int/lit8 v1, v1, 0x1

    #@14e
    goto :goto_4

    #@14f
    .line 5136
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    :cond_9
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@151
    array-length v1, v8

    #@152
    goto :goto_3

    #@153
    .line 5148
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    :cond_a
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@155
    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    #@158
    aput-object v8, v4, v1

    #@15a
    .line 5149
    aget-object v8, v4, v1

    #@15c
    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@15f
    .line 5150
    iput-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@161
    goto/16 :goto_0

    #@163
    .line 5154
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    :sswitch_d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@166
    move-result v2

    #@167
    .line 5155
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@16a
    move-result v6

    #@16b
    .line 5156
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_4

    #@16e
    .line 5191
    :pswitch_4
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@171
    .line 5192
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@174
    goto/16 :goto_0

    #@176
    .line 5187
    :pswitch_5
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    #@178
    .line 5188
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@17a
    or-int/lit8 v8, v8, 0x40

    #@17c
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@17e
    goto/16 :goto_0

    #@180
    .line 5198
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@183
    move-result v2

    #@184
    .line 5199
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@187
    move-result v6

    #@188
    .line 5200
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_5

    #@18b
    .line 5213
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@18e
    .line 5214
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@191
    goto/16 :goto_0

    #@193
    .line 5209
    :pswitch_6
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    #@195
    .line 5210
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@197
    or-int/lit16 v8, v8, 0x80

    #@199
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@19b
    goto/16 :goto_0

    #@19d
    .line 5220
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@1a0
    move-result v8

    #@1a1
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    #@1a3
    .line 5221
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@1a5
    or-int/lit16 v8, v8, 0x100

    #@1a7
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@1a9
    goto/16 :goto_0

    #@1ab
    .line 5225
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@1ae
    move-result v2

    #@1af
    .line 5226
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@1b2
    move-result v6

    #@1b3
    .line 5227
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_6

    #@1b6
    .line 5237
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@1b9
    .line 5238
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@1bc
    goto/16 :goto_0

    #@1be
    .line 5233
    :pswitch_7
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    #@1c0
    .line 5234
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@1c2
    or-int/lit16 v8, v8, 0x200

    #@1c4
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@1c6
    goto/16 :goto_0

    #@1c8
    .line 5244
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_11
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@1cb
    move-result v2

    #@1cc
    .line 5245
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@1cf
    move-result v6

    #@1d0
    .line 5246
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_7

    #@1d3
    .line 5263
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@1d6
    .line 5264
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@1d9
    goto/16 :goto_0

    #@1db
    .line 5259
    :pswitch_8
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    #@1dd
    .line 5260
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@1df
    or-int/lit16 v8, v8, 0x400

    #@1e1
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@1e3
    goto/16 :goto_0

    #@1e5
    .line 5270
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_12
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@1e7
    if-nez v8, :cond_b

    #@1e9
    .line 5271
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@1eb
    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;-><init>()V

    #@1ee
    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@1f0
    .line 5273
    :cond_b
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@1f2
    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@1f5
    goto/16 :goto_0

    #@1f7
    .line 5277
    :sswitch_13
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@1fa
    move-result v2

    #@1fb
    .line 5278
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@1fe
    move-result v6

    #@1ff
    .line 5279
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_8

    #@202
    .line 5303
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@205
    .line 5304
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@208
    goto/16 :goto_0

    #@20a
    .line 5299
    :pswitch_9
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    #@20c
    .line 5300
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@20e
    or-int/lit16 v8, v8, 0x800

    #@210
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@212
    goto/16 :goto_0

    #@214
    .line 5310
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_14
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@217
    move-result v2

    #@218
    .line 5311
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@21b
    move-result v6

    #@21c
    .line 5312
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_9

    #@21f
    .line 5336
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@222
    .line 5337
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@225
    goto/16 :goto_0

    #@227
    .line 5332
    :pswitch_a
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    #@229
    .line 5333
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@22b
    or-int/lit16 v8, v8, 0x1000

    #@22d
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@22f
    goto/16 :goto_0

    #@231
    .line 5343
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_15
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    #@234
    move-result-wide v8

    #@235
    iput-wide v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    #@237
    .line 5344
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@239
    or-int/lit16 v8, v8, 0x2000

    #@23b
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@23d
    goto/16 :goto_0

    #@23f
    .line 4954
    nop

    #@240
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x62 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x80 -> :sswitch_10
        0x88 -> :sswitch_11
        0x92 -> :sswitch_12
        0x98 -> :sswitch_13
        0xa0 -> :sswitch_14
        0xa8 -> :sswitch_15
    .end sparse-switch

    #@29a
    .line 4966
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

    #@2ca
    .line 5002
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    #@2f6
    .line 5084
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    #@302
    .line 5102
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    #@31a
    .line 5156
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch

    #@368
    .line 5200
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    #@37c
    .line 5227
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    #@38a
    .line 5246
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    #@3a6
    .line 5279
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    #@3d0
    .line 5312
    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public setCallIndex(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 4545
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    #@2
    .line 4546
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x10

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@8
    .line 4547
    return-object p0
.end method

.method public setCallState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 4526
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    #@2
    .line 4527
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x8

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@8
    .line 4528
    return-object p0
.end method

.method public setDelay(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 4473
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    #@2
    .line 4474
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x2

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@8
    .line 4475
    return-object p0
.end method

.method public setError(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 4586
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    #@2
    .line 4587
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x40

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@8
    .line 4588
    return-object p0
.end method

.method public setImsCommand(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 4662
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    #@2
    .line 4663
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@4
    or-int/lit16 v0, v0, 0x400

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@8
    .line 4664
    return-object p0
.end method

.method public setMergedCallIndex(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 4564
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    #@2
    .line 4565
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x20

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@8
    .line 4566
    return-object p0
.end method

.method public setNitzTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 4722
    iput-wide p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    #@2
    .line 4723
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@4
    or-int/lit16 v0, v0, 0x2000

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@8
    .line 4724
    return-object p0
.end method

.method public setPhoneState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 4507
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    #@2
    .line 4508
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x4

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@8
    .line 4509
    return-object p0
.end method

.method public setRilRequest(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 4605
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    #@2
    .line 4606
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@4
    or-int/lit16 v0, v0, 0x80

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@8
    .line 4607
    return-object p0
.end method

.method public setRilRequestId(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 4624
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    #@2
    .line 4625
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@4
    or-int/lit16 v0, v0, 0x100

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@8
    .line 4626
    return-object p0
.end method

.method public setSrcAccessTech(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 4684
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    #@2
    .line 4685
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@4
    or-int/lit16 v0, v0, 0x800

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@8
    .line 4686
    return-object p0
.end method

.method public setSrvccState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 4643
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    #@2
    .line 4644
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@4
    or-int/lit16 v0, v0, 0x200

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@8
    .line 4645
    return-object p0
.end method

.method public setTargetAccessTech(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 4703
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    #@2
    .line 4704
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@4
    or-int/lit16 v0, v0, 0x1000

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@8
    .line 4705
    return-object p0
.end method

.method public setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 4454
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    #@2
    .line 4455
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@8
    .line 4456
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 4772
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@2
    and-int/lit8 v3, v3, 0x1

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 4773
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    #@8
    const/4 v4, 0x1

    #@9
    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@c
    .line 4775
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@e
    and-int/lit8 v3, v3, 0x2

    #@10
    if-eqz v3, :cond_1

    #@12
    .line 4776
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    #@14
    const/4 v4, 0x2

    #@15
    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@18
    .line 4778
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@1a
    if-eqz v3, :cond_2

    #@1c
    .line 4779
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@1e
    const/4 v4, 0x3

    #@1f
    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@22
    .line 4781
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@24
    if-eqz v3, :cond_3

    #@26
    .line 4782
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@28
    const/4 v4, 0x4

    #@29
    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@2c
    .line 4784
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@2e
    if-eqz v3, :cond_4

    #@30
    .line 4785
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@32
    const/4 v4, 0x5

    #@33
    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@36
    .line 4787
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@38
    if-eqz v3, :cond_5

    #@3a
    .line 4788
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@3c
    const/4 v4, 0x6

    #@3d
    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@40
    .line 4790
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@42
    if-eqz v3, :cond_7

    #@44
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@46
    array-length v3, v3

    #@47
    if-lez v3, :cond_7

    #@49
    .line 4791
    const/4 v2, 0x0

    #@4a
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@4c
    array-length v3, v3

    #@4d
    if-ge v2, v3, :cond_7

    #@4f
    .line 4792
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@51
    aget-object v0, v3, v2

    #@53
    .line 4793
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v0, :cond_6

    #@55
    .line 4794
    const/4 v3, 0x7

    #@56
    invoke-virtual {p1, v3, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@59
    .line 4791
    :cond_6
    add-int/lit8 v2, v2, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 4798
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .end local v2    # "i":I
    :cond_7
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@5e
    and-int/lit8 v3, v3, 0x4

    #@60
    if-eqz v3, :cond_8

    #@62
    .line 4799
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    #@64
    const/16 v4, 0x8

    #@66
    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@69
    .line 4801
    :cond_8
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@6b
    and-int/lit8 v3, v3, 0x8

    #@6d
    if-eqz v3, :cond_9

    #@6f
    .line 4802
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    #@71
    const/16 v4, 0x9

    #@73
    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@76
    .line 4804
    :cond_9
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@78
    and-int/lit8 v3, v3, 0x10

    #@7a
    if-eqz v3, :cond_a

    #@7c
    .line 4805
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    #@7e
    const/16 v4, 0xa

    #@80
    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@83
    .line 4807
    :cond_a
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@85
    and-int/lit8 v3, v3, 0x20

    #@87
    if-eqz v3, :cond_b

    #@89
    .line 4808
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    #@8b
    const/16 v4, 0xb

    #@8d
    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@90
    .line 4810
    :cond_b
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@92
    if-eqz v3, :cond_d

    #@94
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@96
    array-length v3, v3

    #@97
    if-lez v3, :cond_d

    #@99
    .line 4811
    const/4 v2, 0x0

    #@9a
    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@9c
    array-length v3, v3

    #@9d
    if-ge v2, v3, :cond_d

    #@9f
    .line 4812
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@a1
    aget-object v1, v3, v2

    #@a3
    .line 4813
    .local v1, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    if-eqz v1, :cond_c

    #@a5
    .line 4814
    const/16 v3, 0xc

    #@a7
    invoke-virtual {p1, v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@aa
    .line 4811
    :cond_c
    add-int/lit8 v2, v2, 0x1

    #@ac
    goto :goto_1

    #@ad
    .line 4818
    .end local v1    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .end local v2    # "i":I
    :cond_d
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@af
    and-int/lit8 v3, v3, 0x40

    #@b1
    if-eqz v3, :cond_e

    #@b3
    .line 4819
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    #@b5
    const/16 v4, 0xd

    #@b7
    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@ba
    .line 4821
    :cond_e
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@bc
    and-int/lit16 v3, v3, 0x80

    #@be
    if-eqz v3, :cond_f

    #@c0
    .line 4822
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    #@c2
    const/16 v4, 0xe

    #@c4
    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@c7
    .line 4824
    :cond_f
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@c9
    and-int/lit16 v3, v3, 0x100

    #@cb
    if-eqz v3, :cond_10

    #@cd
    .line 4825
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    #@cf
    const/16 v4, 0xf

    #@d1
    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@d4
    .line 4827
    :cond_10
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@d6
    and-int/lit16 v3, v3, 0x200

    #@d8
    if-eqz v3, :cond_11

    #@da
    .line 4828
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    #@dc
    const/16 v4, 0x10

    #@de
    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@e1
    .line 4830
    :cond_11
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@e3
    and-int/lit16 v3, v3, 0x400

    #@e5
    if-eqz v3, :cond_12

    #@e7
    .line 4831
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    #@e9
    const/16 v4, 0x11

    #@eb
    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@ee
    .line 4833
    :cond_12
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@f0
    if-eqz v3, :cond_13

    #@f2
    .line 4834
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@f4
    const/16 v4, 0x12

    #@f6
    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@f9
    .line 4836
    :cond_13
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@fb
    and-int/lit16 v3, v3, 0x800

    #@fd
    if-eqz v3, :cond_14

    #@ff
    .line 4837
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    #@101
    const/16 v4, 0x13

    #@103
    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@106
    .line 4839
    :cond_14
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@108
    and-int/lit16 v3, v3, 0x1000

    #@10a
    if-eqz v3, :cond_15

    #@10c
    .line 4840
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    #@10e
    const/16 v4, 0x14

    #@110
    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@113
    .line 4842
    :cond_15
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    #@115
    and-int/lit16 v3, v3, 0x2000

    #@117
    if-eqz v3, :cond_16

    #@119
    .line 4843
    iget-wide v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    #@11b
    const/16 v3, 0x15

    #@11d
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    #@120
    .line 4845
    :cond_16
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    #@123
    .line 4771
    return-void
.end method
