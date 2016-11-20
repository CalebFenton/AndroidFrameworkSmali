.class public final Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto$SmsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event$Format;,
        Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event$Tech;,
        Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;


# instance fields
.field private bitField0_:I

.field public dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

.field private delay_:I

.field private errorCode_:I

.field private error_:I

.field private format_:I

.field public imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

.field public imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

.field private rilRequestId_:I

.field public serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

.field public settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

.field private tech_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 5772
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    #@3
    .line 5773
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->clear()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@6
    .line 5772
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 2

    #@0
    .prologue
    .line 5609
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 5610
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 5612
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 5613
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@e
    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 5617
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@13
    return-object v0

    #@14
    .line 5610
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 6122
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 6116
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 5777
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@4
    .line 5778
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->type_:I

    #@6
    .line 5779
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->delay_:I

    #@8
    .line 5780
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@a
    .line 5781
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@c
    .line 5782
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@e
    .line 5783
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@10
    .line 5784
    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@16
    .line 5785
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->format_:I

    #@18
    .line 5786
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->tech_:I

    #@1a
    .line 5787
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->errorCode_:I

    #@1c
    .line 5788
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->error_:I

    #@1e
    .line 5789
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->rilRequestId_:I

    #@20
    .line 5790
    iput-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@22
    .line 5791
    const/4 v0, -0x1

    #@23
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->cachedSize:I

    #@25
    .line 5792
    return-object p0
.end method

.method public clearDelay()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1

    #@0
    .prologue
    .line 5655
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->delay_:I

    #@3
    .line 5656
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x3

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@9
    .line 5657
    return-object p0
.end method

.method public clearError()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1

    #@0
    .prologue
    .line 5746
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->error_:I

    #@3
    .line 5747
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x21

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@9
    .line 5748
    return-object p0
.end method

.method public clearErrorCode()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1

    #@0
    .prologue
    .line 5727
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->errorCode_:I

    #@3
    .line 5728
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x11

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@9
    .line 5729
    return-object p0
.end method

.method public clearFormat()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1

    #@0
    .prologue
    .line 5689
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->format_:I

    #@3
    .line 5690
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x5

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@9
    .line 5691
    return-object p0
.end method

.method public clearRilRequestId()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1

    #@0
    .prologue
    .line 5765
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->rilRequestId_:I

    #@3
    .line 5766
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x41

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@9
    .line 5767
    return-object p0
.end method

.method public clearTech()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1

    #@0
    .prologue
    .line 5708
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->tech_:I

    #@3
    .line 5709
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x9

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@9
    .line 5710
    return-object p0
.end method

.method public clearType()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1

    #@0
    .prologue
    .line 5636
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->type_:I

    #@3
    .line 5637
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x2

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@9
    .line 5638
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    #@0
    .prologue
    .line 5844
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    #@3
    move-result v2

    #@4
    .line 5845
    .local v2, "size":I
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@6
    and-int/lit8 v3, v3, 0x1

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 5847
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->type_:I

    #@c
    const/4 v4, 0x1

    #@d
    .line 5846
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@10
    move-result v3

    #@11
    add-int/2addr v2, v3

    #@12
    .line 5849
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@14
    and-int/lit8 v3, v3, 0x2

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 5851
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->delay_:I

    #@1a
    const/4 v4, 0x2

    #@1b
    .line 5850
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1e
    move-result v3

    #@1f
    add-int/2addr v2, v3

    #@20
    .line 5853
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@22
    if-eqz v3, :cond_2

    #@24
    .line 5855
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@26
    const/4 v4, 0x3

    #@27
    .line 5854
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@2a
    move-result v3

    #@2b
    add-int/2addr v2, v3

    #@2c
    .line 5857
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@2e
    if-eqz v3, :cond_3

    #@30
    .line 5859
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@32
    const/4 v4, 0x4

    #@33
    .line 5858
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@36
    move-result v3

    #@37
    add-int/2addr v2, v3

    #@38
    .line 5861
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@3a
    if-eqz v3, :cond_4

    #@3c
    .line 5863
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@3e
    const/4 v4, 0x5

    #@3f
    .line 5862
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@42
    move-result v3

    #@43
    add-int/2addr v2, v3

    #@44
    .line 5865
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@46
    if-eqz v3, :cond_5

    #@48
    .line 5867
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@4a
    const/4 v4, 0x6

    #@4b
    .line 5866
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@4e
    move-result v3

    #@4f
    add-int/2addr v2, v3

    #@50
    .line 5869
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@52
    if-eqz v3, :cond_7

    #@54
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@56
    array-length v3, v3

    #@57
    if-lez v3, :cond_7

    #@59
    .line 5870
    const/4 v1, 0x0

    #@5a
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@5c
    array-length v3, v3

    #@5d
    if-ge v1, v3, :cond_7

    #@5f
    .line 5871
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@61
    aget-object v0, v3, v1

    #@63
    .line 5872
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v0, :cond_6

    #@65
    .line 5874
    const/4 v3, 0x7

    #@66
    .line 5873
    invoke-static {v3, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@69
    move-result v3

    #@6a
    add-int/2addr v2, v3

    #@6b
    .line 5870
    :cond_6
    add-int/lit8 v1, v1, 0x1

    #@6d
    goto :goto_0

    #@6e
    .line 5878
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .end local v1    # "i":I
    :cond_7
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@70
    and-int/lit8 v3, v3, 0x4

    #@72
    if-eqz v3, :cond_8

    #@74
    .line 5880
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->format_:I

    #@76
    const/16 v4, 0x8

    #@78
    .line 5879
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@7b
    move-result v3

    #@7c
    add-int/2addr v2, v3

    #@7d
    .line 5882
    :cond_8
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@7f
    and-int/lit8 v3, v3, 0x8

    #@81
    if-eqz v3, :cond_9

    #@83
    .line 5884
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->tech_:I

    #@85
    const/16 v4, 0x9

    #@87
    .line 5883
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@8a
    move-result v3

    #@8b
    add-int/2addr v2, v3

    #@8c
    .line 5886
    :cond_9
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@8e
    and-int/lit8 v3, v3, 0x10

    #@90
    if-eqz v3, :cond_a

    #@92
    .line 5888
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->errorCode_:I

    #@94
    const/16 v4, 0xa

    #@96
    .line 5887
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@99
    move-result v3

    #@9a
    add-int/2addr v2, v3

    #@9b
    .line 5890
    :cond_a
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@9d
    and-int/lit8 v3, v3, 0x20

    #@9f
    if-eqz v3, :cond_b

    #@a1
    .line 5892
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->error_:I

    #@a3
    const/16 v4, 0xb

    #@a5
    .line 5891
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@a8
    move-result v3

    #@a9
    add-int/2addr v2, v3

    #@aa
    .line 5894
    :cond_b
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@ac
    and-int/lit8 v3, v3, 0x40

    #@ae
    if-eqz v3, :cond_c

    #@b0
    .line 5896
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->rilRequestId_:I

    #@b2
    const/16 v4, 0xc

    #@b4
    .line 5895
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@b7
    move-result v3

    #@b8
    add-int/2addr v2, v3

    #@b9
    .line 5898
    :cond_c
    return v2
.end method

.method public getDelay()I
    .locals 1

    #@0
    .prologue
    .line 5644
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->delay_:I

    #@2
    return v0
.end method

.method public getError()I
    .locals 1

    #@0
    .prologue
    .line 5735
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->error_:I

    #@2
    return v0
.end method

.method public getErrorCode()I
    .locals 1

    #@0
    .prologue
    .line 5716
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->errorCode_:I

    #@2
    return v0
.end method

.method public getFormat()I
    .locals 1

    #@0
    .prologue
    .line 5678
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->format_:I

    #@2
    return v0
.end method

.method public getRilRequestId()I
    .locals 1

    #@0
    .prologue
    .line 5754
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->rilRequestId_:I

    #@2
    return v0
.end method

.method public getTech()I
    .locals 1

    #@0
    .prologue
    .line 5697
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->tech_:I

    #@2
    return v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 5625
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->type_:I

    #@2
    return v0
.end method

.method public hasDelay()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5652
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

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
    .line 5743
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

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

.method public hasErrorCode()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5724
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

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

.method public hasFormat()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5686
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

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

.method public hasRilRequestId()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5762
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

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

.method public hasTech()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5705
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5633
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

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
    .line 5902
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 8
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
    .line 5906
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@4
    move-result v4

    #@5
    .line 5907
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    #@8
    .line 5911
    invoke-super {p0, p1, v4}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@b
    move-result v7

    #@c
    if-nez v7, :cond_0

    #@e
    .line 5912
    return-object p0

    #@f
    .line 5909
    :sswitch_0
    return-object p0

    #@10
    .line 5917
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@13
    move-result v2

    #@14
    .line 5918
    .local v2, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@17
    move-result v5

    #@18
    .line 5919
    .local v5, "value":I
    packed-switch v5, :pswitch_data_0

    #@1b
    .line 5933
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@1e
    .line 5934
    invoke-virtual {p0, p1, v4}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@21
    goto :goto_0

    #@22
    .line 5929
    :pswitch_0
    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->type_:I

    #@24
    .line 5930
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@26
    or-int/lit8 v7, v7, 0x1

    #@28
    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@2a
    goto :goto_0

    #@2b
    .line 5940
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@2e
    move-result v2

    #@2f
    .line 5941
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@32
    move-result v5

    #@33
    .line 5942
    .restart local v5    # "value":I
    packed-switch v5, :pswitch_data_1

    #@36
    .line 5967
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@39
    .line 5968
    invoke-virtual {p0, p1, v4}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@3c
    goto :goto_0

    #@3d
    .line 5963
    :pswitch_1
    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->delay_:I

    #@3f
    .line 5964
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@41
    or-int/lit8 v7, v7, 0x2

    #@43
    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@45
    goto :goto_0

    #@46
    .line 5974
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_3
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@48
    if-nez v7, :cond_1

    #@4a
    .line 5975
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@4c
    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;-><init>()V

    #@4f
    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@51
    .line 5977
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@53
    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@56
    goto :goto_0

    #@57
    .line 5981
    :sswitch_4
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@59
    if-nez v7, :cond_2

    #@5b
    .line 5982
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@5d
    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;-><init>()V

    #@60
    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@62
    .line 5984
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@64
    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@67
    goto :goto_0

    #@68
    .line 5988
    :sswitch_5
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@6a
    if-nez v7, :cond_3

    #@6c
    .line 5989
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@6e
    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;-><init>()V

    #@71
    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@73
    .line 5991
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@75
    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@78
    goto :goto_0

    #@79
    .line 5995
    :sswitch_6
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@7b
    if-nez v7, :cond_4

    #@7d
    .line 5996
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@7f
    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;-><init>()V

    #@82
    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@84
    .line 5998
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@86
    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@89
    goto/16 :goto_0

    #@8b
    .line 6003
    :sswitch_7
    const/16 v7, 0x3a

    #@8d
    .line 6002
    invoke-static {p1, v7}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    #@90
    move-result v0

    #@91
    .line 6004
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@93
    if-nez v7, :cond_6

    #@95
    move v1, v6

    #@96
    .line 6006
    .local v1, "i":I
    :goto_1
    add-int v7, v1, v0

    #@98
    new-array v3, v7, [Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@9a
    .line 6007
    .local v3, "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v1, :cond_5

    #@9c
    .line 6008
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@9e
    invoke-static {v7, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@a1
    .line 6010
    :cond_5
    :goto_2
    array-length v7, v3

    #@a2
    add-int/lit8 v7, v7, -0x1

    #@a4
    if-ge v1, v7, :cond_7

    #@a6
    .line 6011
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@a8
    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    #@ab
    aput-object v7, v3, v1

    #@ad
    .line 6012
    aget-object v7, v3, v1

    #@af
    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@b2
    .line 6013
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@b5
    .line 6010
    add-int/lit8 v1, v1, 0x1

    #@b7
    goto :goto_2

    #@b8
    .line 6004
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@ba
    array-length v1, v7

    #@bb
    goto :goto_1

    #@bc
    .line 6016
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :cond_7
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@be
    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    #@c1
    aput-object v7, v3, v1

    #@c3
    .line 6017
    aget-object v7, v3, v1

    #@c5
    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@c8
    .line 6018
    iput-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@ca
    goto/16 :goto_0

    #@cc
    .line 6022
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@cf
    move-result v2

    #@d0
    .line 6023
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@d3
    move-result v5

    #@d4
    .line 6024
    .restart local v5    # "value":I
    packed-switch v5, :pswitch_data_2

    #@d7
    .line 6032
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@da
    .line 6033
    invoke-virtual {p0, p1, v4}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@dd
    goto/16 :goto_0

    #@df
    .line 6028
    :pswitch_2
    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->format_:I

    #@e1
    .line 6029
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@e3
    or-int/lit8 v7, v7, 0x4

    #@e5
    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@e7
    goto/16 :goto_0

    #@e9
    .line 6039
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@ec
    move-result v2

    #@ed
    .line 6040
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@f0
    move-result v5

    #@f1
    .line 6041
    .restart local v5    # "value":I
    packed-switch v5, :pswitch_data_3

    #@f4
    .line 6050
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@f7
    .line 6051
    invoke-virtual {p0, p1, v4}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@fa
    goto/16 :goto_0

    #@fc
    .line 6046
    :pswitch_3
    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->tech_:I

    #@fe
    .line 6047
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@100
    or-int/lit8 v7, v7, 0x8

    #@102
    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@104
    goto/16 :goto_0

    #@106
    .line 6057
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@109
    move-result v7

    #@10a
    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->errorCode_:I

    #@10c
    .line 6058
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@10e
    or-int/lit8 v7, v7, 0x10

    #@110
    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@112
    goto/16 :goto_0

    #@114
    .line 6062
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@117
    move-result v2

    #@118
    .line 6063
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@11b
    move-result v5

    #@11c
    .line 6064
    .restart local v5    # "value":I
    packed-switch v5, :pswitch_data_4

    #@11f
    .line 6099
    :pswitch_4
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@122
    .line 6100
    invoke-virtual {p0, p1, v4}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@125
    goto/16 :goto_0

    #@127
    .line 6095
    :pswitch_5
    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->error_:I

    #@129
    .line 6096
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@12b
    or-int/lit8 v7, v7, 0x20

    #@12d
    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@12f
    goto/16 :goto_0

    #@131
    .line 6106
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@134
    move-result v7

    #@135
    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->rilRequestId_:I

    #@137
    .line 6107
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@139
    or-int/lit8 v7, v7, 0x40

    #@13b
    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@13d
    goto/16 :goto_0

    #@13f
    .line 5907
    nop

    #@140
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
        0x60 -> :sswitch_c
    .end sparse-switch

    #@176
    .line 5919
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
    .end packed-switch

    #@18c
    .line 5942
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

    #@1b8
    .line 6024
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    #@1c2
    .line 6041
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    #@1ce
    .line 6064
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
.end method

.method public setDelay(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 5647
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->delay_:I

    #@2
    .line 5648
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x2

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@8
    .line 5649
    return-object p0
.end method

.method public setError(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 5738
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->error_:I

    #@2
    .line 5739
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x20

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@8
    .line 5740
    return-object p0
.end method

.method public setErrorCode(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 5719
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->errorCode_:I

    #@2
    .line 5720
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x10

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@8
    .line 5721
    return-object p0
.end method

.method public setFormat(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 5681
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->format_:I

    #@2
    .line 5682
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x4

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@8
    .line 5683
    return-object p0
.end method

.method public setRilRequestId(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 5757
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->rilRequestId_:I

    #@2
    .line 5758
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x40

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@8
    .line 5759
    return-object p0
.end method

.method public setTech(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 5700
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->tech_:I

    #@2
    .line 5701
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x8

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@8
    .line 5702
    return-object p0
.end method

.method public setType(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 5628
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->type_:I

    #@2
    .line 5629
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@8
    .line 5630
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 5798
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@2
    and-int/lit8 v2, v2, 0x1

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 5799
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->type_:I

    #@8
    const/4 v3, 0x1

    #@9
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@c
    .line 5801
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@e
    and-int/lit8 v2, v2, 0x2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 5802
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->delay_:I

    #@14
    const/4 v3, 0x2

    #@15
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@18
    .line 5804
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@1a
    if-eqz v2, :cond_2

    #@1c
    .line 5805
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@1e
    const/4 v3, 0x3

    #@1f
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@22
    .line 5807
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@24
    if-eqz v2, :cond_3

    #@26
    .line 5808
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@28
    const/4 v3, 0x4

    #@29
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@2c
    .line 5810
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@2e
    if-eqz v2, :cond_4

    #@30
    .line 5811
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@32
    const/4 v3, 0x5

    #@33
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@36
    .line 5813
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@38
    if-eqz v2, :cond_5

    #@3a
    .line 5814
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@3c
    const/4 v3, 0x6

    #@3d
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@40
    .line 5816
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@42
    if-eqz v2, :cond_7

    #@44
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@46
    array-length v2, v2

    #@47
    if-lez v2, :cond_7

    #@49
    .line 5817
    const/4 v1, 0x0

    #@4a
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@4c
    array-length v2, v2

    #@4d
    if-ge v1, v2, :cond_7

    #@4f
    .line 5818
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@51
    aget-object v0, v2, v1

    #@53
    .line 5819
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v0, :cond_6

    #@55
    .line 5820
    const/4 v2, 0x7

    #@56
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@59
    .line 5817
    :cond_6
    add-int/lit8 v1, v1, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 5824
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .end local v1    # "i":I
    :cond_7
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@5e
    and-int/lit8 v2, v2, 0x4

    #@60
    if-eqz v2, :cond_8

    #@62
    .line 5825
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->format_:I

    #@64
    const/16 v3, 0x8

    #@66
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@69
    .line 5827
    :cond_8
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@6b
    and-int/lit8 v2, v2, 0x8

    #@6d
    if-eqz v2, :cond_9

    #@6f
    .line 5828
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->tech_:I

    #@71
    const/16 v3, 0x9

    #@73
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@76
    .line 5830
    :cond_9
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@78
    and-int/lit8 v2, v2, 0x10

    #@7a
    if-eqz v2, :cond_a

    #@7c
    .line 5831
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->errorCode_:I

    #@7e
    const/16 v3, 0xa

    #@80
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@83
    .line 5833
    :cond_a
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@85
    and-int/lit8 v2, v2, 0x20

    #@87
    if-eqz v2, :cond_b

    #@89
    .line 5834
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->error_:I

    #@8b
    const/16 v3, 0xb

    #@8d
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@90
    .line 5836
    :cond_b
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    #@92
    and-int/lit8 v2, v2, 0x40

    #@94
    if-eqz v2, :cond_c

    #@96
    .line 5837
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->rilRequestId_:I

    #@98
    const/16 v3, 0xc

    #@9a
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@9d
    .line 5839
    :cond_c
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    #@a0
    .line 5797
    return-void
.end method
