.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RilSetupDataCallResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse$RilDataCallFailCause;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;


# instance fields
.field private bitField0_:I

.field public call:Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

.field private status_:I

.field private suggestedRetryTimeMillis_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3152
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    #@3
    .line 3153
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    #@6
    .line 3152
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    .locals 2

    #@0
    .prologue
    .line 3096
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 3097
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 3099
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 3100
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    #@e
    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 3104
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    #@13
    return-object v0

    #@14
    .line 3097
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3313
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 3307
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 3157
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    #@4
    .line 3158
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->status_:I

    #@6
    .line 3159
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->suggestedRetryTimeMillis_:I

    #@8
    .line 3160
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->call:Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@a
    .line 3161
    iput-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@c
    .line 3162
    const/4 v0, -0x1

    #@d
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->cachedSize:I

    #@f
    .line 3163
    return-object p0
.end method

.method public clearStatus()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    .locals 1

    #@0
    .prologue
    .line 3123
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->status_:I

    #@3
    .line 3124
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x2

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    #@9
    .line 3125
    return-object p0
.end method

.method public clearSuggestedRetryTimeMillis()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    .locals 1

    #@0
    .prologue
    .line 3142
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->suggestedRetryTimeMillis_:I

    #@3
    .line 3143
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x3

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    #@9
    .line 3144
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    #@0
    .prologue
    .line 3183
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 3184
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    #@6
    and-int/lit8 v1, v1, 0x1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 3186
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->status_:I

    #@c
    const/4 v2, 0x1

    #@d
    .line 3185
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@10
    move-result v1

    #@11
    add-int/2addr v0, v1

    #@12
    .line 3188
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    #@14
    and-int/lit8 v1, v1, 0x2

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 3190
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->suggestedRetryTimeMillis_:I

    #@1a
    const/4 v2, 0x2

    #@1b
    .line 3189
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1e
    move-result v1

    #@1f
    add-int/2addr v0, v1

    #@20
    .line 3192
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->call:Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@22
    if-eqz v1, :cond_2

    #@24
    .line 3194
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->call:Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@26
    const/4 v2, 0x3

    #@27
    .line 3193
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@2a
    move-result v1

    #@2b
    add-int/2addr v0, v1

    #@2c
    .line 3196
    :cond_2
    return v0
.end method

.method public getStatus()I
    .locals 1

    #@0
    .prologue
    .line 3112
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->status_:I

    #@2
    return v0
.end method

.method public getSuggestedRetryTimeMillis()I
    .locals 1

    #@0
    .prologue
    .line 3131
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->suggestedRetryTimeMillis_:I

    #@2
    return v0
.end method

.method public hasStatus()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3120
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

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

.method public hasSuggestedRetryTimeMillis()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3139
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

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
    .line 3200
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    .locals 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3204
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v1

    #@4
    .line 3205
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    #@7
    .line 3209
    invoke-super {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 3210
    return-object p0

    #@e
    .line 3207
    :sswitch_0
    return-object p0

    #@f
    .line 3215
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@12
    move-result v0

    #@13
    .line 3216
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@16
    move-result v2

    #@17
    .line 3217
    .local v2, "value":I
    sparse-switch v2, :sswitch_data_1

    #@1a
    .line 3283
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@1d
    .line 3284
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@20
    goto :goto_0

    #@21
    .line 3279
    :sswitch_2
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->status_:I

    #@23
    .line 3280
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    #@25
    or-int/lit8 v3, v3, 0x1

    #@27
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    #@29
    goto :goto_0

    #@2a
    .line 3290
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@2d
    move-result v3

    #@2e
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->suggestedRetryTimeMillis_:I

    #@30
    .line 3291
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    #@32
    or-int/lit8 v3, v3, 0x2

    #@34
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    #@36
    goto :goto_0

    #@37
    .line 3295
    :sswitch_4
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->call:Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@39
    if-nez v3, :cond_1

    #@3b
    .line 3296
    new-instance v3, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@3d
    invoke-direct {v3}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    #@40
    iput-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->call:Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@42
    .line 3298
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->call:Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@44
    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@47
    goto :goto_0

    #@48
    .line 3205
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_3
        0x1a -> :sswitch_4
    .end sparse-switch

    #@5a
    .line 3217
    :sswitch_data_1
    .sparse-switch
        -0x6 -> :sswitch_2
        -0x5 -> :sswitch_2
        -0x4 -> :sswitch_2
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_2
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0x8 -> :sswitch_2
        0xe -> :sswitch_2
        0x19 -> :sswitch_2
        0x1a -> :sswitch_2
        0x1b -> :sswitch_2
        0x1c -> :sswitch_2
        0x1d -> :sswitch_2
        0x1e -> :sswitch_2
        0x1f -> :sswitch_2
        0x20 -> :sswitch_2
        0x21 -> :sswitch_2
        0x22 -> :sswitch_2
        0x23 -> :sswitch_2
        0x24 -> :sswitch_2
        0x25 -> :sswitch_2
        0x26 -> :sswitch_2
        0x27 -> :sswitch_2
        0x28 -> :sswitch_2
        0x29 -> :sswitch_2
        0x2a -> :sswitch_2
        0x2b -> :sswitch_2
        0x2c -> :sswitch_2
        0x2d -> :sswitch_2
        0x2e -> :sswitch_2
        0x32 -> :sswitch_2
        0x33 -> :sswitch_2
        0x34 -> :sswitch_2
        0x35 -> :sswitch_2
        0x36 -> :sswitch_2
        0x37 -> :sswitch_2
        0x41 -> :sswitch_2
        0x42 -> :sswitch_2
        0x51 -> :sswitch_2
        0x5f -> :sswitch_2
        0x60 -> :sswitch_2
        0x61 -> :sswitch_2
        0x62 -> :sswitch_2
        0x63 -> :sswitch_2
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x6f -> :sswitch_2
        0x70 -> :sswitch_2
        0x71 -> :sswitch_2
        0x72 -> :sswitch_2
        0x73 -> :sswitch_2
        0x74 -> :sswitch_2
        0x75 -> :sswitch_2
        0x76 -> :sswitch_2
        0x77 -> :sswitch_2
        0x78 -> :sswitch_2
        0x79 -> :sswitch_2
        0x7a -> :sswitch_2
        0xffff -> :sswitch_2
    .end sparse-switch
.end method

.method public setStatus(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 3115
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->status_:I

    #@2
    .line 3116
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    #@8
    .line 3117
    return-object p0
.end method

.method public setSuggestedRetryTimeMillis(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 3134
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->suggestedRetryTimeMillis_:I

    #@2
    .line 3135
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x2

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    #@8
    .line 3136
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3169
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    #@2
    and-int/lit8 v0, v0, 0x1

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3170
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->status_:I

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@c
    .line 3172
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->bitField0_:I

    #@e
    and-int/lit8 v0, v0, 0x2

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 3173
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->suggestedRetryTimeMillis_:I

    #@14
    const/4 v1, 0x2

    #@15
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@18
    .line 3175
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->call:Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 3176
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->call:Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@1e
    const/4 v1, 0x3

    #@1f
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@22
    .line 3178
    :cond_2
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    #@25
    .line 3168
    return-void
.end method
