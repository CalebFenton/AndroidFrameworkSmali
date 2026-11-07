.class public final Landroid/aconfig/nano/Aconfig$flag_value;
.super Landroid/internal/framework/protobuf/nano/MessageNano;
.source "Aconfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/aconfig/nano/Aconfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "flag_value"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/aconfig/nano/Aconfig$flag_value;


# instance fields
.field public blacklist name:Ljava/lang/String;

.field public blacklist package_:Ljava/lang/String;

.field public blacklist permission:I

.field public blacklist state:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 486
    invoke-direct {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;-><init>()V

    .line 487
    invoke-virtual {p0}, Landroid/aconfig/nano/Aconfig$flag_value;->clear()Landroid/aconfig/nano/Aconfig$flag_value;

    .line 488
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/aconfig/nano/Aconfig$flag_value;
    .registers 2

    .line 463
    sget-object v0, Landroid/aconfig/nano/Aconfig$flag_value;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_value;

    if-nez v0, :cond_15

    .line 464
    sget-object v0, Landroid/internal/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 466
    :try_start_7
    sget-object v1, Landroid/aconfig/nano/Aconfig$flag_value;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_value;

    if-nez v1, :cond_10

    .line 467
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/aconfig/nano/Aconfig$flag_value;

    sput-object v1, Landroid/aconfig/nano/Aconfig$flag_value;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_value;

    .line 469
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 471
    :cond_15
    :goto_15
    sget-object v0, Landroid/aconfig/nano/Aconfig$flag_value;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_value;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_value;
    .registers 2
    .param p0, "input"    # Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 594
    new-instance v0, Landroid/aconfig/nano/Aconfig$flag_value;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$flag_value;-><init>()V

    invoke-virtual {v0, p0}, Landroid/aconfig/nano/Aconfig$flag_value;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_value;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/aconfig/nano/Aconfig$flag_value;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 588
    new-instance v0, Landroid/aconfig/nano/Aconfig$flag_value;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$flag_value;-><init>()V

    invoke-static {v0, p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->mergeFrom(Landroid/internal/framework/protobuf/nano/MessageNano;[B)Landroid/internal/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/aconfig/nano/Aconfig$flag_value;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/aconfig/nano/Aconfig$flag_value;
    .registers 2

    .line 491
    const-string v0, ""

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_value;->package_:Ljava/lang/String;

    .line 492
    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_value;->name:Ljava/lang/String;

    .line 493
    const/4 v0, 0x1

    iput v0, p0, Landroid/aconfig/nano/Aconfig$flag_value;->state:I

    .line 494
    iput v0, p0, Landroid/aconfig/nano/Aconfig$flag_value;->permission:I

    .line 495
    const/4 v0, -0x1

    iput v0, p0, Landroid/aconfig/nano/Aconfig$flag_value;->cachedSize:I

    .line 496
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 5

    .line 519
    invoke-super {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 520
    .local v0, "size":I
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_value;->package_:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_16

    .line 521
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_value;->package_:Ljava/lang/String;

    .line 522
    invoke-static {v3, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 524
    :cond_16
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_value;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 525
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_value;->name:Ljava/lang/String;

    .line 526
    const/4 v2, 0x2

    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 528
    :cond_26
    iget v1, p0, Landroid/aconfig/nano/Aconfig$flag_value;->state:I

    if-eq v1, v3, :cond_32

    .line 529
    iget v1, p0, Landroid/aconfig/nano/Aconfig$flag_value;->state:I

    .line 530
    const/4 v2, 0x3

    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 532
    :cond_32
    iget v1, p0, Landroid/aconfig/nano/Aconfig$flag_value;->permission:I

    if-eq v1, v3, :cond_3e

    .line 533
    iget v1, p0, Landroid/aconfig/nano/Aconfig$flag_value;->permission:I

    .line 534
    const/4 v2, 0x4

    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 536
    :cond_3e
    return v0
.end method

.method public blacklist mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_value;
    .registers 4
    .param p1, "input"    # Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    nop

    :goto_1
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 545
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_36

    .line 549
    invoke-static {p1, v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_34

    .line 550
    return-object p0

    .line 573
    :sswitch_f
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 574
    .local v1, "value":I
    packed-switch v1, :pswitch_data_4c

    goto :goto_19

    .line 577
    :pswitch_17
    iput v1, p0, Landroid/aconfig/nano/Aconfig$flag_value;->permission:I

    .line 580
    :goto_19
    goto :goto_34

    .line 563
    .end local v1    # "value":I
    :sswitch_1a
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 564
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_54

    goto :goto_24

    .line 567
    :pswitch_22
    iput v1, p0, Landroid/aconfig/nano/Aconfig$flag_value;->state:I

    .line 570
    :goto_24
    goto :goto_34

    .line 559
    .end local v1    # "value":I
    :sswitch_25
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_value;->name:Ljava/lang/String;

    .line 560
    goto :goto_34

    .line 555
    :sswitch_2c
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_value;->package_:Ljava/lang/String;

    .line 556
    goto :goto_34

    .line 547
    :sswitch_33
    return-object p0

    .line 583
    .end local v0    # "tag":I
    :cond_34
    :goto_34
    goto :goto_1

    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_33
        0xa -> :sswitch_2c
        0x12 -> :sswitch_25
        0x18 -> :sswitch_1a
        0x20 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/internal/framework/protobuf/nano/MessageNano;
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

    .line 457
    invoke-virtual {p0, p1}, Landroid/aconfig/nano/Aconfig$flag_value;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_value;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .param p1, "output"    # Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_value;->package_:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    .line 503
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_value;->package_:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 505
    :cond_10
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_value;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 506
    const/4 v0, 0x2

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_value;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 508
    :cond_1e
    iget v0, p0, Landroid/aconfig/nano/Aconfig$flag_value;->state:I

    if-eq v0, v2, :cond_28

    .line 509
    const/4 v0, 0x3

    iget v1, p0, Landroid/aconfig/nano/Aconfig$flag_value;->state:I

    invoke-virtual {p1, v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 511
    :cond_28
    iget v0, p0, Landroid/aconfig/nano/Aconfig$flag_value;->permission:I

    if-eq v0, v2, :cond_32

    .line 512
    const/4 v0, 0x4

    iget v1, p0, Landroid/aconfig/nano/Aconfig$flag_value;->permission:I

    invoke-virtual {p1, v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 514
    :cond_32
    invoke-super {p0, p1}, Landroid/internal/framework/protobuf/nano/MessageNano;->writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 515
    return-void
.end method
