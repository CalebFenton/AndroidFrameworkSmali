.class public final Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImsConnectionState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;


# instance fields
.field private bitField0_:I

.field public reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

.field private state_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2176
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    #@3
    .line 2177
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->clear()Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@6
    .line 2176
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    .locals 2

    #@0
    .prologue
    .line 2139
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 2140
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 2142
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 2143
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@e
    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 2147
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@13
    return-object v0

    #@14
    .line 2140
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2269
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 2263
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 2181
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->bitField0_:I

    #@4
    .line 2182
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->state_:I

    #@6
    .line 2183
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@8
    .line 2184
    iput-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@a
    .line 2185
    const/4 v0, -0x1

    #@b
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->cachedSize:I

    #@d
    .line 2186
    return-object p0
.end method

.method public clearState()Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    .locals 1

    #@0
    .prologue
    .line 2166
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->state_:I

    #@3
    .line 2167
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x2

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->bitField0_:I

    #@9
    .line 2168
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    #@0
    .prologue
    .line 2203
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 2204
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->bitField0_:I

    #@6
    and-int/lit8 v1, v1, 0x1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2206
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->state_:I

    #@c
    const/4 v2, 0x1

    #@d
    .line 2205
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@10
    move-result v1

    #@11
    add-int/2addr v0, v1

    #@12
    .line 2208
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 2210
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@18
    const/4 v2, 0x2

    #@19
    .line 2209
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@1c
    move-result v1

    #@1d
    add-int/2addr v0, v1

    #@1e
    .line 2212
    :cond_1
    return v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 2155
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->state_:I

    #@2
    return v0
.end method

.method public hasState()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2163
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->bitField0_:I

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
    .line 2216
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    .locals 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2220
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v1

    #@4
    .line 2221
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    #@7
    .line 2225
    invoke-super {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 2226
    return-object p0

    #@e
    .line 2223
    :sswitch_0
    return-object p0

    #@f
    .line 2231
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@12
    move-result v0

    #@13
    .line 2232
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@16
    move-result v2

    #@17
    .line 2233
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    #@1a
    .line 2244
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@1d
    .line 2245
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@20
    goto :goto_0

    #@21
    .line 2240
    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->state_:I

    #@23
    .line 2241
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->bitField0_:I

    #@25
    or-int/lit8 v3, v3, 0x1

    #@27
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->bitField0_:I

    #@29
    goto :goto_0

    #@2a
    .line 2251
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@2c
    if-nez v3, :cond_1

    #@2e
    .line 2252
    new-instance v3, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@30
    invoke-direct {v3}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;-><init>()V

    #@33
    iput-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@35
    .line 2254
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@37
    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@3a
    goto :goto_0

    #@3b
    .line 2221
    nop

    #@3c
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    #@4a
    .line 2233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setState(I)Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 2158
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->state_:I

    #@2
    .line 2159
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->bitField0_:I

    #@8
    .line 2160
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
    .line 2192
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->bitField0_:I

    #@2
    and-int/lit8 v0, v0, 0x1

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2193
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->state_:I

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@c
    .line 2195
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 2196
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@12
    const/4 v1, 0x2

    #@13
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@16
    .line 2198
    :cond_1
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    #@19
    .line 2191
    return-void
.end method
