.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RilDeactivateDataCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall$DeactivateReason;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;


# instance fields
.field private bitField0_:I

.field private cid_:I

.field private reason_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3384
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    #@3
    .line 3385
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    #@6
    .line 3384
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;
    .locals 2

    #@0
    .prologue
    .line 3331
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 3332
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 3334
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 3335
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    #@e
    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 3339
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    #@13
    return-object v0

    #@14
    .line 3332
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3473
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 3467
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3389
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->bitField0_:I

    #@3
    .line 3390
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->cid_:I

    #@5
    .line 3391
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason_:I

    #@7
    .line 3392
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@a
    .line 3393
    const/4 v0, -0x1

    #@b
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->cachedSize:I

    #@d
    .line 3394
    return-object p0
.end method

.method public clearCid()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;
    .locals 1

    #@0
    .prologue
    .line 3358
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->cid_:I

    #@3
    .line 3359
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x2

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->bitField0_:I

    #@9
    .line 3360
    return-object p0
.end method

.method public clearReason()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;
    .locals 1

    #@0
    .prologue
    .line 3377
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason_:I

    #@3
    .line 3378
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x3

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->bitField0_:I

    #@9
    .line 3379
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    #@0
    .prologue
    .line 3411
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 3412
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->bitField0_:I

    #@6
    and-int/lit8 v1, v1, 0x1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 3414
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->cid_:I

    #@c
    const/4 v2, 0x1

    #@d
    .line 3413
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@10
    move-result v1

    #@11
    add-int/2addr v0, v1

    #@12
    .line 3416
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->bitField0_:I

    #@14
    and-int/lit8 v1, v1, 0x2

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 3418
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason_:I

    #@1a
    const/4 v2, 0x2

    #@1b
    .line 3417
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1e
    move-result v1

    #@1f
    add-int/2addr v0, v1

    #@20
    .line 3420
    :cond_1
    return v0
.end method

.method public getCid()I
    .locals 1

    #@0
    .prologue
    .line 3347
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->cid_:I

    #@2
    return v0
.end method

.method public getReason()I
    .locals 1

    #@0
    .prologue
    .line 3366
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason_:I

    #@2
    return v0
.end method

.method public hasCid()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3355
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->bitField0_:I

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

.method public hasReason()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3374
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->bitField0_:I

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
    .line 3424
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;
    .locals 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3428
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v1

    #@4
    .line 3429
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    #@7
    .line 3433
    invoke-super {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 3434
    return-object p0

    #@e
    .line 3431
    :sswitch_0
    return-object p0

    #@f
    .line 3439
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@12
    move-result v3

    #@13
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->cid_:I

    #@15
    .line 3440
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->bitField0_:I

    #@17
    or-int/lit8 v3, v3, 0x1

    #@19
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->bitField0_:I

    #@1b
    goto :goto_0

    #@1c
    .line 3444
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@1f
    move-result v0

    #@20
    .line 3445
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@23
    move-result v2

    #@24
    .line 3446
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    #@27
    .line 3455
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@2a
    .line 3456
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@2d
    goto :goto_0

    #@2e
    .line 3451
    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason_:I

    #@30
    .line 3452
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->bitField0_:I

    #@32
    or-int/lit8 v3, v3, 0x2

    #@34
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->bitField0_:I

    #@36
    goto :goto_0

    #@37
    .line 3429
    nop

    #@38
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    #@46
    .line 3446
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCid(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 3350
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->cid_:I

    #@2
    .line 3351
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->bitField0_:I

    #@8
    .line 3352
    return-object p0
.end method

.method public setReason(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 3369
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason_:I

    #@2
    .line 3370
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x2

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->bitField0_:I

    #@8
    .line 3371
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
    .line 3400
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->bitField0_:I

    #@2
    and-int/lit8 v0, v0, 0x1

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3401
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->cid_:I

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@c
    .line 3403
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->bitField0_:I

    #@e
    and-int/lit8 v0, v0, 0x2

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 3404
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason_:I

    #@14
    const/4 v1, 0x2

    #@15
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@18
    .line 3406
    :cond_1
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    #@1b
    .line 3399
    return-void
.end method
