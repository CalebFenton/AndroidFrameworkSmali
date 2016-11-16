.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModemRestart"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;


# instance fields
.field private basebandVersion_:Ljava/lang/String;

.field private bitField0_:I

.field private reason_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3542
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    #@3
    .line 3543
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    #@6
    .line 3542
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;
    .locals 2

    #@0
    .prologue
    .line 3483
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 3484
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 3486
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 3487
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    #@e
    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 3491
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    #@13
    return-object v0

    #@14
    .line 3484
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3618
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 3612
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;
    .locals 1

    #@0
    .prologue
    .line 3547
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    #@3
    .line 3548
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->basebandVersion_:Ljava/lang/String;

    #@8
    .line 3549
    const-string/jumbo v0, ""

    #@b
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->reason_:Ljava/lang/String;

    #@d
    .line 3550
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@10
    .line 3551
    const/4 v0, -0x1

    #@11
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->cachedSize:I

    #@13
    .line 3552
    return-object p0
.end method

.method public clearBasebandVersion()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;
    .locals 1

    #@0
    .prologue
    .line 3513
    const-string/jumbo v0, ""

    #@3
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->basebandVersion_:Ljava/lang/String;

    #@5
    .line 3514
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    #@7
    and-int/lit8 v0, v0, -0x2

    #@9
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    #@b
    .line 3515
    return-object p0
.end method

.method public clearReason()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;
    .locals 1

    #@0
    .prologue
    .line 3535
    const-string/jumbo v0, ""

    #@3
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->reason_:Ljava/lang/String;

    #@5
    .line 3536
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    #@7
    and-int/lit8 v0, v0, -0x3

    #@9
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    #@b
    .line 3537
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    #@0
    .prologue
    .line 3569
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 3570
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    #@6
    and-int/lit8 v1, v1, 0x1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 3572
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->basebandVersion_:Ljava/lang/String;

    #@c
    const/4 v2, 0x1

    #@d
    .line 3571
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    #@10
    move-result v1

    #@11
    add-int/2addr v0, v1

    #@12
    .line 3574
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    #@14
    and-int/lit8 v1, v1, 0x2

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 3576
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->reason_:Ljava/lang/String;

    #@1a
    const/4 v2, 0x2

    #@1b
    .line 3575
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    #@1e
    move-result v1

    #@1f
    add-int/2addr v0, v1

    #@20
    .line 3578
    :cond_1
    return v0
.end method

.method public getBasebandVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3499
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->basebandVersion_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3521
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->reason_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hasBasebandVersion()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3510
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

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
    .line 3532
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

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
    .line 3582
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3586
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v0

    #@4
    .line 3587
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 3591
    invoke-super {p0, p1, v0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 3592
    return-object p0

    #@e
    .line 3589
    :sswitch_0
    return-object p0

    #@f
    .line 3597
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->basebandVersion_:Ljava/lang/String;

    #@15
    .line 3598
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    #@17
    or-int/lit8 v1, v1, 0x1

    #@19
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    #@1b
    goto :goto_0

    #@1c
    .line 3602
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->reason_:Ljava/lang/String;

    #@22
    .line 3603
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    #@24
    or-int/lit8 v1, v1, 0x2

    #@26
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    #@28
    goto :goto_0

    #@29
    .line 3587
    nop

    #@2a
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setBasebandVersion(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3502
    if-nez p1, :cond_0

    #@2
    .line 3503
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 3505
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->basebandVersion_:Ljava/lang/String;

    #@a
    .line 3506
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    #@c
    or-int/lit8 v0, v0, 0x1

    #@e
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    #@10
    .line 3507
    return-object p0
.end method

.method public setReason(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3524
    if-nez p1, :cond_0

    #@2
    .line 3525
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 3527
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->reason_:Ljava/lang/String;

    #@a
    .line 3528
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    #@c
    or-int/lit8 v0, v0, 0x2

    #@e
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    #@10
    .line 3529
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
    .line 3558
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    #@2
    and-int/lit8 v0, v0, 0x1

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3559
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->basebandVersion_:Ljava/lang/String;

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    #@c
    .line 3561
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->bitField0_:I

    #@e
    and-int/lit8 v0, v0, 0x2

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 3562
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$ModemRestart;->reason_:Ljava/lang/String;

    #@14
    const/4 v1, 0x2

    #@15
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    #@18
    .line 3564
    :cond_1
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    #@1b
    .line 3557
    return-void
.end method
