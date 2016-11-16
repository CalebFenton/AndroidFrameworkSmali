.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonyOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;


# instance fields
.field private alphaLong_:Ljava/lang/String;

.field private alphaShort_:Ljava/lang/String;

.field private bitField0_:I

.field private numeric_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1538
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    #@3
    .line 1539
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@6
    .line 1538
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .locals 2

    #@0
    .prologue
    .line 1457
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 1458
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 1460
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1461
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@e
    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 1465
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@13
    return-object v0

    #@14
    .line 1458
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1627
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 1621
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .locals 1

    #@0
    .prologue
    .line 1543
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@3
    .line 1544
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong_:Ljava/lang/String;

    #@8
    .line 1545
    const-string/jumbo v0, ""

    #@b
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort_:Ljava/lang/String;

    #@d
    .line 1546
    const-string/jumbo v0, ""

    #@10
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric_:Ljava/lang/String;

    #@12
    .line 1547
    const/4 v0, 0x0

    #@13
    iput-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@15
    .line 1548
    const/4 v0, -0x1

    #@16
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->cachedSize:I

    #@18
    .line 1549
    return-object p0
.end method

.method public clearAlphaLong()Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .locals 1

    #@0
    .prologue
    .line 1487
    const-string/jumbo v0, ""

    #@3
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong_:Ljava/lang/String;

    #@5
    .line 1488
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@7
    and-int/lit8 v0, v0, -0x2

    #@9
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@b
    .line 1489
    return-object p0
.end method

.method public clearAlphaShort()Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .locals 1

    #@0
    .prologue
    .line 1509
    const-string/jumbo v0, ""

    #@3
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort_:Ljava/lang/String;

    #@5
    .line 1510
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@7
    and-int/lit8 v0, v0, -0x3

    #@9
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@b
    .line 1511
    return-object p0
.end method

.method public clearNumeric()Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .locals 1

    #@0
    .prologue
    .line 1531
    const-string/jumbo v0, ""

    #@3
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric_:Ljava/lang/String;

    #@5
    .line 1532
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@7
    and-int/lit8 v0, v0, -0x5

    #@9
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@b
    .line 1533
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    #@0
    .prologue
    .line 1569
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 1570
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@6
    and-int/lit8 v1, v1, 0x1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1572
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong_:Ljava/lang/String;

    #@c
    const/4 v2, 0x1

    #@d
    .line 1571
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    #@10
    move-result v1

    #@11
    add-int/2addr v0, v1

    #@12
    .line 1574
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@14
    and-int/lit8 v1, v1, 0x2

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 1576
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort_:Ljava/lang/String;

    #@1a
    const/4 v2, 0x2

    #@1b
    .line 1575
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    #@1e
    move-result v1

    #@1f
    add-int/2addr v0, v1

    #@20
    .line 1578
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@22
    and-int/lit8 v1, v1, 0x4

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 1580
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric_:Ljava/lang/String;

    #@28
    const/4 v2, 0x3

    #@29
    .line 1579
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    #@2c
    move-result v1

    #@2d
    add-int/2addr v0, v1

    #@2e
    .line 1582
    :cond_2
    return v0
.end method

.method public getAlphaLong()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1473
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAlphaShort()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1495
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNumeric()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1517
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hasAlphaLong()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1484
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

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

.method public hasAlphaShort()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1506
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

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

.method public hasNumeric()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1528
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

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
    .line 1586
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1590
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v0

    #@4
    .line 1591
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 1595
    invoke-super {p0, p1, v0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 1596
    return-object p0

    #@e
    .line 1593
    :sswitch_0
    return-object p0

    #@f
    .line 1601
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong_:Ljava/lang/String;

    #@15
    .line 1602
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@17
    or-int/lit8 v1, v1, 0x1

    #@19
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@1b
    goto :goto_0

    #@1c
    .line 1606
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort_:Ljava/lang/String;

    #@22
    .line 1607
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@24
    or-int/lit8 v1, v1, 0x2

    #@26
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@28
    goto :goto_0

    #@29
    .line 1611
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric_:Ljava/lang/String;

    #@2f
    .line 1612
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@31
    or-int/lit8 v1, v1, 0x4

    #@33
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@35
    goto :goto_0

    #@36
    .line 1591
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setAlphaLong(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1476
    if-nez p1, :cond_0

    #@2
    .line 1477
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1479
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong_:Ljava/lang/String;

    #@a
    .line 1480
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@c
    or-int/lit8 v0, v0, 0x1

    #@e
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@10
    .line 1481
    return-object p0
.end method

.method public setAlphaShort(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1498
    if-nez p1, :cond_0

    #@2
    .line 1499
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1501
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort_:Ljava/lang/String;

    #@a
    .line 1502
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@c
    or-int/lit8 v0, v0, 0x2

    #@e
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@10
    .line 1503
    return-object p0
.end method

.method public setNumeric(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1520
    if-nez p1, :cond_0

    #@2
    .line 1521
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1523
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric_:Ljava/lang/String;

    #@a
    .line 1524
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@c
    or-int/lit8 v0, v0, 0x4

    #@e
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@10
    .line 1525
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
    .line 1555
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@2
    and-int/lit8 v0, v0, 0x1

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1556
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong_:Ljava/lang/String;

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    #@c
    .line 1558
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@e
    and-int/lit8 v0, v0, 0x2

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1559
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort_:Ljava/lang/String;

    #@14
    const/4 v1, 0x2

    #@15
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    #@18
    .line 1561
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->bitField0_:I

    #@1a
    and-int/lit8 v0, v0, 0x4

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 1562
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric_:Ljava/lang/String;

    #@20
    const/4 v1, 0x3

    #@21
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    #@24
    .line 1564
    :cond_2
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    #@27
    .line 1554
    return-void
.end method
