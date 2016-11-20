.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonyCallSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;


# instance fields
.field private bitField0_:I

.field public events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

.field private eventsDropped_:Z

.field private phoneId_:I

.field private startTimeMinutes_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 5441
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    #@3
    .line 5442
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@6
    .line 5441
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .locals 2

    #@0
    .prologue
    .line 5366
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 5367
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 5369
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 5370
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@e
    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 5374
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@13
    return-object v0

    #@14
    .line 5367
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 5568
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 5562
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5446
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@3
    .line 5447
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->startTimeMinutes_:I

    #@5
    .line 5448
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->phoneId_:I

    #@7
    .line 5449
    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@d
    .line 5450
    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->eventsDropped_:Z

    #@f
    .line 5451
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@12
    .line 5452
    const/4 v0, -0x1

    #@13
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->cachedSize:I

    #@15
    .line 5453
    return-object p0
.end method

.method public clearEventsDropped()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .locals 1

    #@0
    .prologue
    .line 5434
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->eventsDropped_:Z

    #@3
    .line 5435
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x5

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@9
    .line 5436
    return-object p0
.end method

.method public clearPhoneId()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .locals 1

    #@0
    .prologue
    .line 5412
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->phoneId_:I

    #@3
    .line 5413
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x3

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@9
    .line 5414
    return-object p0
.end method

.method public clearStartTimeMinutes()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .locals 1

    #@0
    .prologue
    .line 5393
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->startTimeMinutes_:I

    #@3
    .line 5394
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x2

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@9
    .line 5395
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    #@0
    .prologue
    .line 5481
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    #@3
    move-result v2

    #@4
    .line 5482
    .local v2, "size":I
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@6
    and-int/lit8 v3, v3, 0x1

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 5484
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->startTimeMinutes_:I

    #@c
    const/4 v4, 0x1

    #@d
    .line 5483
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@10
    move-result v3

    #@11
    add-int/2addr v2, v3

    #@12
    .line 5486
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@14
    and-int/lit8 v3, v3, 0x2

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 5488
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->phoneId_:I

    #@1a
    const/4 v4, 0x2

    #@1b
    .line 5487
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1e
    move-result v3

    #@1f
    add-int/2addr v2, v3

    #@20
    .line 5490
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@22
    if-eqz v3, :cond_3

    #@24
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@26
    array-length v3, v3

    #@27
    if-lez v3, :cond_3

    #@29
    .line 5491
    const/4 v1, 0x0

    #@2a
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@2c
    array-length v3, v3

    #@2d
    if-ge v1, v3, :cond_3

    #@2f
    .line 5492
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@31
    aget-object v0, v3, v1

    #@33
    .line 5493
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    if-eqz v0, :cond_2

    #@35
    .line 5495
    const/4 v3, 0x3

    #@36
    .line 5494
    invoke-static {v3, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@39
    move-result v3

    #@3a
    add-int/2addr v2, v3

    #@3b
    .line 5491
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 5499
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .end local v1    # "i":I
    :cond_3
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@40
    and-int/lit8 v3, v3, 0x4

    #@42
    if-eqz v3, :cond_4

    #@44
    .line 5501
    iget-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->eventsDropped_:Z

    #@46
    const/4 v4, 0x4

    #@47
    .line 5500
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@4a
    move-result v3

    #@4b
    add-int/2addr v2, v3

    #@4c
    .line 5503
    :cond_4
    return v2
.end method

.method public getEventsDropped()Z
    .locals 1

    #@0
    .prologue
    .line 5423
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->eventsDropped_:Z

    #@2
    return v0
.end method

.method public getPhoneId()I
    .locals 1

    #@0
    .prologue
    .line 5401
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->phoneId_:I

    #@2
    return v0
.end method

.method public getStartTimeMinutes()I
    .locals 1

    #@0
    .prologue
    .line 5382
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->startTimeMinutes_:I

    #@2
    return v0
.end method

.method public hasEventsDropped()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5431
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

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

.method public hasPhoneId()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5409
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

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

.method public hasStartTimeMinutes()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5390
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

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
    .line 5507
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .locals 6
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 5511
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@4
    move-result v3

    #@5
    .line 5512
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    #@8
    .line 5516
    invoke-super {p0, p1, v3}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@b
    move-result v5

    #@c
    if-nez v5, :cond_0

    #@e
    .line 5517
    return-object p0

    #@f
    .line 5514
    :sswitch_0
    return-object p0

    #@10
    .line 5522
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@13
    move-result v5

    #@14
    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->startTimeMinutes_:I

    #@16
    .line 5523
    iget v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@18
    or-int/lit8 v5, v5, 0x1

    #@1a
    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@1c
    goto :goto_0

    #@1d
    .line 5527
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@20
    move-result v5

    #@21
    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->phoneId_:I

    #@23
    .line 5528
    iget v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@25
    or-int/lit8 v5, v5, 0x2

    #@27
    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@29
    goto :goto_0

    #@2a
    .line 5533
    :sswitch_3
    const/16 v5, 0x1a

    #@2c
    .line 5532
    invoke-static {p1, v5}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    #@2f
    move-result v0

    #@30
    .line 5534
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@32
    if-nez v5, :cond_2

    #@34
    move v1, v4

    #@35
    .line 5536
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    #@37
    new-array v2, v5, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@39
    .line 5537
    .local v2, "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    if-eqz v1, :cond_1

    #@3b
    .line 5538
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@3d
    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@40
    .line 5540
    :cond_1
    :goto_2
    array-length v5, v2

    #@41
    add-int/lit8 v5, v5, -0x1

    #@43
    if-ge v1, v5, :cond_3

    #@45
    .line 5541
    new-instance v5, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@47
    invoke-direct {v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    #@4a
    aput-object v5, v2, v1

    #@4c
    .line 5542
    aget-object v5, v2, v1

    #@4e
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@51
    .line 5543
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@54
    .line 5540
    add-int/lit8 v1, v1, 0x1

    #@56
    goto :goto_2

    #@57
    .line 5534
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@59
    array-length v1, v5

    #@5a
    goto :goto_1

    #@5b
    .line 5546
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@5d
    invoke-direct {v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    #@60
    aput-object v5, v2, v1

    #@62
    .line 5547
    aget-object v5, v2, v1

    #@64
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@67
    .line 5548
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@69
    goto :goto_0

    #@6a
    .line 5552
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@6d
    move-result v5

    #@6e
    iput-boolean v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->eventsDropped_:Z

    #@70
    .line 5553
    iget v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@72
    or-int/lit8 v5, v5, 0x4

    #@74
    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@76
    goto :goto_0

    #@77
    .line 5512
    nop

    #@78
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public setEventsDropped(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 5426
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->eventsDropped_:Z

    #@2
    .line 5427
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x4

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@8
    .line 5428
    return-object p0
.end method

.method public setPhoneId(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 5404
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->phoneId_:I

    #@2
    .line 5405
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x2

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@8
    .line 5406
    return-object p0
.end method

.method public setStartTimeMinutes(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 5385
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->startTimeMinutes_:I

    #@2
    .line 5386
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@8
    .line 5387
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
    .line 5459
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@2
    and-int/lit8 v2, v2, 0x1

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 5460
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->startTimeMinutes_:I

    #@8
    const/4 v3, 0x1

    #@9
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@c
    .line 5462
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@e
    and-int/lit8 v2, v2, 0x2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 5463
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->phoneId_:I

    #@14
    const/4 v3, 0x2

    #@15
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@18
    .line 5465
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@1a
    if-eqz v2, :cond_3

    #@1c
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@1e
    array-length v2, v2

    #@1f
    if-lez v2, :cond_3

    #@21
    .line 5466
    const/4 v1, 0x0

    #@22
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@24
    array-length v2, v2

    #@25
    if-ge v1, v2, :cond_3

    #@27
    .line 5467
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@29
    aget-object v0, v2, v1

    #@2b
    .line 5468
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    if-eqz v0, :cond_2

    #@2d
    .line 5469
    const/4 v2, 0x3

    #@2e
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@31
    .line 5466
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_0

    #@34
    .line 5473
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .end local v1    # "i":I
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->bitField0_:I

    #@36
    and-int/lit8 v2, v2, 0x4

    #@38
    if-eqz v2, :cond_4

    #@3a
    .line 5474
    iget-boolean v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->eventsDropped_:Z

    #@3c
    const/4 v3, 0x4

    #@3d
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@40
    .line 5476
    :cond_4
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    #@43
    .line 5458
    return-void
.end method
