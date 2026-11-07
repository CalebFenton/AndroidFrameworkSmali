.class public final Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "CriticalEventProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/criticalevents/nano/CriticalEventProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JavaCrash"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;


# instance fields
.field public blacklist exceptionClass:Ljava/lang/String;

.field public blacklist pid:I

.field public blacklist process:Ljava/lang/String;

.field public blacklist processClass:I

.field public blacklist uid:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 580
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 581
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    .line 582
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;
    .registers 2

    .line 554
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    if-nez v0, :cond_15

    .line 555
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 557
    :try_start_7
    sget-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    if-nez v1, :cond_10

    .line 558
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    sput-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    .line 560
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 562
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 696
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 690
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;
    .registers 2

    .line 585
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->exceptionClass:Ljava/lang/String;

    .line 586
    iput-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->process:Ljava/lang/String;

    .line 587
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->pid:I

    .line 588
    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    .line 589
    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    .line 590
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->cachedSize:I

    .line 591
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 5

    .line 617
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 618
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->exceptionClass:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 619
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->exceptionClass:Ljava/lang/String;

    .line 620
    const/4 v3, 0x1

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 622
    :cond_16
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->process:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 623
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->process:Ljava/lang/String;

    .line 624
    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 626
    :cond_26
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->pid:I

    if-eqz v1, :cond_32

    .line 627
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->pid:I

    .line 628
    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 630
    :cond_32
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    if-eqz v1, :cond_3e

    .line 631
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    .line 632
    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 634
    :cond_3e
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    if-eqz v1, :cond_4a

    .line 635
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    .line 636
    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 638
    :cond_4a
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
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

    .line 548
    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;
    .registers 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 647
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_38

    .line 651
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_37

    .line 652
    return-object p0

    .line 673
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 674
    .local v1, "value":I
    packed-switch v1, :pswitch_data_52

    goto :goto_19

    .line 679
    :pswitch_17
    iput v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    .line 682
    :goto_19
    goto :goto_37

    .line 669
    .end local v1    # "value":I
    :sswitch_1a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    .line 670
    goto :goto_37

    .line 665
    :sswitch_21
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->pid:I

    .line 666
    goto :goto_37

    .line 661
    :sswitch_28
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->process:Ljava/lang/String;

    .line 662
    goto :goto_37

    .line 657
    :sswitch_2f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->exceptionClass:Ljava/lang/String;

    .line 658
    goto :goto_37

    .line 649
    :sswitch_36
    return-object p0

    .line 685
    .end local v0    # "tag":I
    :cond_37
    :goto_37
    goto :goto_1

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_36
        0xa -> :sswitch_2f
        0x12 -> :sswitch_28
        0x18 -> :sswitch_21
        0x20 -> :sswitch_1a
        0x28 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->exceptionClass:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 598
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->exceptionClass:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 600
    :cond_10
    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->process:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 601
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->process:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 603
    :cond_1e
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->pid:I

    if-eqz v0, :cond_28

    .line 604
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->pid:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 606
    :cond_28
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    if-eqz v0, :cond_32

    .line 607
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 609
    :cond_32
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    if-eqz v0, :cond_3c

    .line 610
    const/4 v0, 0x5

    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 612
    :cond_3c
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 613
    return-void
.end method
