.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RilCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;


# instance fields
.field private bitField0_:I

.field private index_:I

.field private state_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 4308
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    #@3
    .line 4309
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@6
    .line 4308
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 2

    #@0
    .prologue
    .line 4236
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 4237
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 4239
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 4240
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@e
    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 4244
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@13
    return-object v0

    #@14
    .line 4237
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 4428
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 4422
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4313
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@3
    .line 4314
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    #@5
    .line 4315
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    #@7
    .line 4316
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    #@9
    .line 4317
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@c
    .line 4318
    const/4 v0, -0x1

    #@d
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->cachedSize:I

    #@f
    .line 4319
    return-object p0
.end method

.method public clearIndex()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1

    #@0
    .prologue
    .line 4263
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    #@3
    .line 4264
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x2

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@9
    .line 4265
    return-object p0
.end method

.method public clearState()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1

    #@0
    .prologue
    .line 4282
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    #@3
    .line 4283
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x3

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@9
    .line 4284
    return-object p0
.end method

.method public clearType()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1

    #@0
    .prologue
    .line 4301
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    #@3
    .line 4302
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x5

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@9
    .line 4303
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    #@0
    .prologue
    .line 4339
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 4340
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@6
    and-int/lit8 v1, v1, 0x1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 4342
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    #@c
    const/4 v2, 0x1

    #@d
    .line 4341
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@10
    move-result v1

    #@11
    add-int/2addr v0, v1

    #@12
    .line 4344
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@14
    and-int/lit8 v1, v1, 0x2

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 4346
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    #@1a
    const/4 v2, 0x2

    #@1b
    .line 4345
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1e
    move-result v1

    #@1f
    add-int/2addr v0, v1

    #@20
    .line 4348
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@22
    and-int/lit8 v1, v1, 0x4

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 4350
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    #@28
    const/4 v2, 0x3

    #@29
    .line 4349
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@2c
    move-result v1

    #@2d
    add-int/2addr v0, v1

    #@2e
    .line 4352
    :cond_2
    return v0
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 4252
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    #@2
    return v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 4271
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    #@2
    return v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 4290
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    #@2
    return v0
.end method

.method public hasIndex()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4260
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

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

.method public hasState()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4279
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4298
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

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
    .line 4356
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 4360
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v1

    #@4
    .line 4361
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    #@7
    .line 4365
    invoke-super {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 4366
    return-object p0

    #@e
    .line 4363
    :sswitch_0
    return-object p0

    #@f
    .line 4371
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@12
    move-result v3

    #@13
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    #@15
    .line 4372
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@17
    or-int/lit8 v3, v3, 0x1

    #@19
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@1b
    goto :goto_0

    #@1c
    .line 4376
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@1f
    move-result v0

    #@20
    .line 4377
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@23
    move-result v2

    #@24
    .line 4378
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    #@27
    .line 4393
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@2a
    .line 4394
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@2d
    goto :goto_0

    #@2e
    .line 4389
    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    #@30
    .line 4390
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@32
    or-int/lit8 v3, v3, 0x2

    #@34
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@36
    goto :goto_0

    #@37
    .line 4400
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@3a
    move-result v0

    #@3b
    .line 4401
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@3e
    move-result v2

    #@3f
    .line 4402
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_1

    #@42
    .line 4410
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@45
    .line 4411
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@48
    goto :goto_0

    #@49
    .line 4406
    :pswitch_1
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    #@4b
    .line 4407
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@4d
    or-int/lit8 v3, v3, 0x4

    #@4f
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@51
    goto :goto_0

    #@52
    .line 4361
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    #@64
    .line 4378
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
    .end packed-switch

    #@7c
    .line 4402
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setIndex(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 4255
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    #@2
    .line 4256
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@8
    .line 4257
    return-object p0
.end method

.method public setState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 4274
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    #@2
    .line 4275
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x2

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@8
    .line 4276
    return-object p0
.end method

.method public setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 4293
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    #@2
    .line 4294
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x4

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@8
    .line 4295
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
    .line 4325
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@2
    and-int/lit8 v0, v0, 0x1

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 4326
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@c
    .line 4328
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@e
    and-int/lit8 v0, v0, 0x2

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 4329
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    #@14
    const/4 v1, 0x2

    #@15
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@18
    .line 4331
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    #@1a
    and-int/lit8 v0, v0, 0x4

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 4332
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    #@20
    const/4 v1, 0x3

    #@21
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@24
    .line 4334
    :cond_2
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    #@27
    .line 4324
    return-void
.end method
