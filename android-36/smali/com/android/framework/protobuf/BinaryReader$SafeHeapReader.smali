.class final Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;
.super Lcom/android/framework/protobuf/BinaryReader;
.source "BinaryReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/BinaryReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeHeapReader"
.end annotation


# instance fields
.field private final blacklist buffer:[B

.field private final blacklist bufferIsImmutable:Z

.field private blacklist endGroupTag:I

.field private final blacklist initialPos:I

.field private blacklist limit:I

.field private blacklist pos:I

.field private blacklist tag:I


# direct methods
.method public constructor blacklist <init>(Ljava/nio/ByteBuffer;Z)V
    .registers 5
    .param p1, "bytebuf"    # Ljava/nio/ByteBuffer;
    .param p2, "bufferIsImmutable"    # Z

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader;-><init>(Lcom/android/framework/protobuf/BinaryReader$1;)V

    .line 102
    iput-boolean p2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->bufferIsImmutable:Z

    .line 103
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 104
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->initialPos:I

    .line 105
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 106
    return-void
.end method

.method private blacklist isAtEnd()Z
    .registers 3

    .line 109
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private blacklist readByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1625
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-eq v0, v1, :cond_11

    .line 1628
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    aget-byte v0, v0, v1

    return v0

    .line 1626
    :cond_11
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist readField(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 6
    .param p1, "fieldType"    # Lcom/android/framework/protobuf/WireFormat$FieldType;
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1466
    .local p2, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/android/framework/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_a2

    .line 1502
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unsupported field type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1500
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1498
    :pswitch_1d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1496
    :pswitch_26
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1494
    :pswitch_2b
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1492
    :pswitch_34
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1490
    :pswitch_3d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1488
    :pswitch_46
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1486
    :pswitch_4f
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readMessage(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1484
    :pswitch_54
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1482
    :pswitch_5d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1480
    :pswitch_66
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 1478
    :pswitch_6f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1476
    :pswitch_78
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1474
    :pswitch_81
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1472
    :pswitch_8a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 1470
    :pswitch_93
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 1468
    :pswitch_98
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_98
        :pswitch_93
        :pswitch_8a
        :pswitch_81
        :pswitch_78
        :pswitch_6f
        :pswitch_66
        :pswitch_5d
        :pswitch_54
        :pswitch_4f
        :pswitch_46
        :pswitch_3d
        :pswitch_34
        :pswitch_2b
        :pswitch_26
        :pswitch_1d
        :pswitch_14
    .end packed-switch
.end method

.method private blacklist readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    .local p1, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    invoke-interface {p1}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 298
    .local v0, "newInstance":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->mergeGroupField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 299
    invoke-interface {p1, v0}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 300
    return-object v0
.end method

.method private blacklist readLittleEndian32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1632
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1633
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v0

    return v0
.end method

.method private blacklist readLittleEndian32_NoCheck()I
    .registers 5

    .line 1642
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1643
    .local v0, "p":I
    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 1644
    .local v1, "buffer":[B
    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1645
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    return v2
.end method

.method private blacklist readLittleEndian64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1637
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1638
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist readLittleEndian64_NoCheck()J
    .registers 10

    .line 1652
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1653
    .local v0, "p":I
    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 1654
    .local v1, "buffer":[B
    add-int/lit8 v2, v0, 0x8

    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1655
    aget-byte v2, v1, v0

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x4

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x5

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x6

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x7

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method private blacklist readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    .local p1, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    invoke-interface {p1}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 252
    .local v0, "newInstance":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->mergeMessageField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 253
    invoke-interface {p1, v0}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 254
    return-object v0
.end method

.method private blacklist readVarint32()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1509
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1511
    .local v0, "i":I
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-eq v1, v2, :cond_99

    .line 1516
    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    aget-byte v0, v1, v0

    move v1, v0

    .local v1, "x":I
    if-ltz v0, :cond_14

    .line 1517
    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1518
    return v1

    .line 1519
    :cond_14
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    sub-int/2addr v0, v2

    const/16 v3, 0x9

    if-ge v0, v3, :cond_21

    .line 1520
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64SlowPath()J

    move-result-wide v3

    long-to-int v0, v3

    return v0

    .line 1521
    :cond_21
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-byte v0, v0, v2

    shl-int/lit8 v0, v0, 0x7

    xor-int/2addr v0, v1

    move v1, v0

    if-gez v0, :cond_31

    .line 1522
    xor-int/lit8 v0, v1, -0x80

    .end local v1    # "x":I
    .local v0, "x":I
    goto/16 :goto_96

    .line 1523
    .end local v0    # "x":I
    .restart local v1    # "x":I
    :cond_31
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v0, v0, v3

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v1

    move v1, v0

    if-ltz v0, :cond_41

    .line 1524
    xor-int/lit16 v0, v1, 0x3f80

    move v3, v2

    .end local v1    # "x":I
    .restart local v0    # "x":I
    goto :goto_96

    .line 1525
    .end local v0    # "x":I
    .restart local v1    # "x":I
    :cond_41
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aget-byte v0, v0, v2

    shl-int/lit8 v0, v0, 0x15

    xor-int/2addr v0, v1

    move v1, v0

    if-gez v0, :cond_52

    .line 1526
    const v0, -0x1fc080

    xor-int/2addr v0, v1

    .end local v1    # "x":I
    .restart local v0    # "x":I
    goto :goto_96

    .line 1528
    .end local v0    # "x":I
    .restart local v1    # "x":I
    :cond_52
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v0, v0, v3

    .line 1529
    .local v0, "y":I
    shl-int/lit8 v3, v0, 0x1c

    xor-int/2addr v1, v3

    .line 1530
    const v3, 0xfe03f80

    xor-int/2addr v1, v3

    .line 1531
    if-gez v0, :cond_94

    iget-object v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    aget-byte v2, v3, v2

    if-gez v2, :cond_91

    iget-object v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v2, v2, v4

    if-gez v2, :cond_8f

    iget-object v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget-byte v2, v2, v3

    if-gez v2, :cond_91

    iget-object v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v2, v2, v4

    if-gez v2, :cond_8f

    iget-object v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget-byte v2, v2, v3

    if-ltz v2, :cond_8a

    goto :goto_91

    .line 1537
    :cond_8a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1531
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_8f
    move v0, v1

    goto :goto_96

    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_91
    :goto_91
    move v0, v1

    move v3, v4

    goto :goto_96

    .end local v4    # "i":I
    .restart local v2    # "i":I
    :cond_94
    move v0, v1

    move v3, v2

    .line 1540
    .end local v1    # "x":I
    .end local v2    # "i":I
    .local v0, "x":I
    .restart local v3    # "i":I
    :goto_96
    iput v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1541
    return v0

    .line 1512
    .end local v3    # "i":I
    .local v0, "i":I
    :cond_99
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method private blacklist readVarint64SlowPath()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1613
    const-wide/16 v0, 0x0

    .line 1614
    .local v0, "result":J
    const/4 v2, 0x0

    .local v2, "shift":I
    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    .line 1615
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readByte()B

    move-result v3

    .line 1616
    .local v3, "b":B
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 1617
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_15

    .line 1618
    return-wide v0

    .line 1614
    .end local v3    # "b":B
    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    .line 1621
    .end local v2    # "shift":I
    :cond_18
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method private blacklist requireBytes(I)V
    .registers 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1709
    if-ltz p1, :cond_a

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_a

    .line 1712
    return-void

    .line 1710
    :cond_a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist requirePosition(I)V
    .registers 3
    .param p1, "expectedPosition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1737
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ne v0, p1, :cond_5

    .line 1740
    return-void

    .line 1738
    :cond_5
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist requireWireType(I)V
    .registers 3
    .param p1, "requiredWireType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1715
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-ne v0, p1, :cond_9

    .line 1718
    return-void

    .line 1716
    :cond_9
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method private blacklist skipBytes(I)V
    .registers 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1689
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1691
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1692
    return-void
.end method

.method private blacklist skipGroup()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1695
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 1696
    .local v0, "prevEndGroupTag":I
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 1698
    :cond_f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->getFieldNumber()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1f

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipField()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1699
    nop

    .line 1702
    :cond_1f
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-ne v1, v2, :cond_28

    .line 1705
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 1706
    return-void

    .line 1703
    :cond_28
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method private blacklist skipVarint()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1666
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1d

    .line 1667
    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 1668
    .local v0, "buffer":[B
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1669
    .local v2, "p":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v1, :cond_1d

    .line 1670
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "p":I
    .local v4, "p":I
    aget-byte v2, v0, v2

    if-ltz v2, :cond_19

    .line 1671
    iput v4, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1672
    return-void

    .line 1669
    :cond_19
    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_e

    .line 1676
    .end local v0    # "buffer":[B
    .end local v3    # "i":I
    .end local v4    # "p":I
    :cond_1d
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipVarintSlowPath()V

    .line 1677
    return-void
.end method

.method private blacklist skipVarintSlowPath()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1680
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 1681
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readByte()B

    move-result v1

    if-ltz v1, :cond_c

    .line 1682
    return-void

    .line 1680
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1685
    .end local v0    # "i":I
    :cond_f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist verifyPackedFixed32Length(I)V
    .registers 3
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1729
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1730
    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_8

    .line 1734
    return-void

    .line 1732
    :cond_8
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist verifyPackedFixed64Length(I)V
    .registers 3
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1721
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1722
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_8

    .line 1726
    return-void

    .line 1724
    :cond_8
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public blacklist getFieldNumber()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_a

    .line 120
    return v1

    .line 122
    :cond_a
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    .line 123
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-ne v0, v2, :cond_17

    .line 124
    return v1

    .line 126
    :cond_17
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 131
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    return v0
.end method

.method public blacklist getTotalBytesRead()I
    .registers 3

    .line 114
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->initialPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist mergeGroupField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 307
    .local v0, "prevEndGroupTag":I
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 310
    :try_start_f
    invoke-interface {p2, p1, p0, p3}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 311
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_21

    if-ne v1, v2, :cond_1c

    .line 316
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 317
    nop

    .line 318
    return-void

    .line 312
    :cond_1c
    :try_start_1c
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    .end local v0    # "prevEndGroupTag":I
    .end local p0    # "this":Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;
    .end local p1    # "target":Ljava/lang/Object;, "TT;"
    .end local p2    # "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    .end local p3    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    throw v1
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_21

    .line 316
    .restart local v0    # "prevEndGroupTag":I
    .restart local p0    # "this":Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;
    .restart local p1    # "target":Ljava/lang/Object;, "TT;"
    .restart local p2    # "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    .restart local p3    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    :catchall_21
    move-exception v1

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 317
    throw v1
.end method

.method public blacklist mergeMessageField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 261
    .local v0, "size":I
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 264
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 265
    .local v1, "prevLimit":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v0

    .line 266
    .local v2, "newLimit":I
    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 269
    :try_start_e
    invoke-interface {p2, p1, p0, p3}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 270
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_1e

    if-ne v3, v2, :cond_19

    .line 275
    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 276
    nop

    .line 277
    return-void

    .line 271
    :cond_19
    :try_start_19
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local v0    # "size":I
    .end local v1    # "prevLimit":I
    .end local v2    # "newLimit":I
    .end local p0    # "this":Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;
    .end local p1    # "target":Ljava/lang/Object;, "TT;"
    .end local p2    # "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    .end local p3    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    throw v3
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_1e

    .line 275
    .restart local v0    # "size":I
    .restart local v1    # "prevLimit":I
    .restart local v2    # "newLimit":I
    .restart local p0    # "this":Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;
    .restart local p1    # "target":Ljava/lang/Object;, "TT;"
    .restart local p2    # "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    .restart local p3    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    :catchall_1e
    move-exception v3

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 276
    throw v3
.end method

.method public blacklist readBool()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 206
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public blacklist readBoolList(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 823
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/BooleanArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_50

    .line 824
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/BooleanArrayList;

    .line 825
    .local v0, "plist":Lcom/android/framework/protobuf/BooleanArrayList;
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v3}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_a0

    .line 851
    :pswitch_12
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 827
    :pswitch_17
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v3

    .line 828
    .local v3, "bytes":I
    iget v4, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v4, v3

    .line 829
    .local v4, "fieldEndPos":I
    :goto_1e
    iget v5, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v4, :cond_2f

    .line 830
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    if-eqz v5, :cond_2a

    move v5, v1

    goto :goto_2b

    :cond_2a
    move v5, v2

    :goto_2b
    invoke-virtual {v0, v5}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    goto :goto_1e

    .line 832
    :cond_2f
    invoke-direct {p0, v4}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    .line 833
    nop

    .line 853
    .end local v0    # "plist":Lcom/android/framework/protobuf/BooleanArrayList;
    .end local v3    # "bytes":I
    .end local v4    # "fieldEndPos":I
    goto :goto_7e

    .line 836
    .restart local v0    # "plist":Lcom/android/framework/protobuf/BooleanArrayList;
    :goto_34
    :pswitch_34
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readBool()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 838
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 839
    return-void

    .line 841
    :cond_42
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 842
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 843
    .local v2, "nextTag":I
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_4f

    .line 846
    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 847
    return-void

    .line 849
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_4f
    goto :goto_34

    .line 854
    .end local v0    # "plist":Lcom/android/framework/protobuf/BooleanArrayList;
    :cond_50
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_aa

    .line 880
    :pswitch_59
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 856
    :pswitch_5e
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 857
    .local v0, "bytes":I
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v3, v0

    .line 858
    .local v3, "fieldEndPos":I
    :goto_65
    iget v4, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v4, v3, :cond_7a

    .line 859
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v4

    if-eqz v4, :cond_71

    move v4, v1

    goto :goto_72

    :cond_71
    move v4, v2

    :goto_72
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 861
    :cond_7a
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    .line 862
    nop

    .line 883
    .end local v0    # "bytes":I
    .end local v3    # "fieldEndPos":I
    :goto_7e
    return-void

    .line 865
    :goto_7f
    :pswitch_7f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 868
    return-void

    .line 870
    :cond_91
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 871
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 872
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_9e

    .line 875
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 876
    return-void

    .line 878
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_9e
    goto :goto_7f

    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_34
        :pswitch_12
        :pswitch_17
    .end packed-switch

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_59
        :pswitch_5e
    .end packed-switch
.end method

.method public blacklist readBytes()Lcom/android/framework/protobuf/ByteString;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 323
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 324
    .local v0, "size":I
    if-nez v0, :cond_d

    .line 325
    sget-object v1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    return-object v1

    .line 328
    :cond_d
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 330
    iget-boolean v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->bufferIsImmutable:Z

    if-eqz v1, :cond_1d

    .line 331
    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-static {v1, v2, v0}, Lcom/android/framework/protobuf/ByteString;->wrap([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    goto :goto_25

    .line 332
    :cond_1d
    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-static {v1, v2, v0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    :goto_25
    nop

    .line 333
    .local v1, "bytes":Lcom/android/framework/protobuf/ByteString;
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 334
    return-object v1
.end method

.method public blacklist readBytesList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1007
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/framework/protobuf/ByteString;>;"
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    .line 1012
    :goto_9
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1014
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1015
    return-void

    .line 1017
    :cond_17
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1018
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1019
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_24

    .line 1022
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1023
    return-void

    .line 1025
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_24
    goto :goto_9

    .line 1008
    :cond_25
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 164
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readDoubleList(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/DoubleArrayList;

    if-eqz v0, :cond_4c

    .line 376
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/DoubleArrayList;

    .line 377
    .local v0, "plist":Lcom/android/framework/protobuf/DoubleArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_9a

    .line 403
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 379
    :pswitch_15
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 380
    .local v1, "bytes":I
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 381
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 382
    .local v2, "fieldEndPos":I
    :goto_1f
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_2f

    .line 383
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    goto :goto_1f

    .line 405
    .end local v0    # "plist":Lcom/android/framework/protobuf/DoubleArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    :cond_2f
    goto :goto_78

    .line 388
    .restart local v0    # "plist":Lcom/android/framework/protobuf/DoubleArrayList;
    :goto_30
    :pswitch_30
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    .line 390
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 391
    return-void

    .line 393
    :cond_3e
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 394
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 395
    .local v2, "nextTag":I
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_4b

    .line 398
    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 399
    return-void

    .line 401
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_4b
    goto :goto_30

    .line 406
    .end local v0    # "plist":Lcom/android/framework/protobuf/DoubleArrayList;
    :cond_4c
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_a2

    .line 432
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 408
    :pswitch_5a
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 409
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 410
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 411
    .local v1, "fieldEndPos":I
    :goto_64
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_78

    .line 412
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_64

    .line 435
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_78
    :goto_78
    return-void

    .line 417
    :goto_79
    :pswitch_79
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 420
    return-void

    .line 422
    :cond_8b
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 423
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 424
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_98

    .line 427
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 428
    return-void

    .line 430
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_98
    goto :goto_79

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_30
        :pswitch_15
    .end packed-switch

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_79
        :pswitch_5a
    .end packed-switch
.end method

.method public blacklist readEnum()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 346
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    return v0
.end method

.method public blacklist readEnumList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1092
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_45

    .line 1093
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    .line 1094
    .local v0, "plist":Lcom/android/framework/protobuf/IntArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_8c

    .line 1119
    :pswitch_10
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 1096
    :pswitch_15
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1097
    .local v1, "bytes":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 1098
    .local v2, "fieldEndPos":I
    :goto_1c
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_28

    .line 1099
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_1c

    .line 1121
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    :cond_28
    goto :goto_6a

    .line 1104
    .restart local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    :goto_29
    :pswitch_29
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readEnum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 1106
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1107
    return-void

    .line 1109
    :cond_37
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1110
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1111
    .local v2, "nextTag":I
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_44

    .line 1114
    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1115
    return-void

    .line 1117
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_44
    goto :goto_29

    .line 1122
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    :cond_45
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_96

    .line 1147
    :pswitch_4e
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1124
    :pswitch_53
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1125
    .local v0, "bytes":I
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1126
    .local v1, "fieldEndPos":I
    :goto_5a
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_6a

    .line 1127
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 1150
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_6a
    :goto_6a
    return-void

    .line 1132
    :goto_6b
    :pswitch_6b
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1135
    return-void

    .line 1137
    :cond_7d
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1138
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1139
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_8a

    .line 1142
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1143
    return-void

    .line 1145
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_8a
    goto :goto_6b

    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_10
        :pswitch_15
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_4e
        :pswitch_53
    .end packed-switch
.end method

.method public blacklist readFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 200
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32()I

    move-result v0

    return v0
.end method

.method public blacklist readFixed32List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 759
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_48

    .line 760
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    .line 761
    .local v0, "plist":Lcom/android/framework/protobuf/IntArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_92

    .line 787
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 772
    :goto_15
    :sswitch_15
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFixed32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 774
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 775
    return-void

    .line 777
    :cond_23
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 778
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 779
    .local v2, "nextTag":I
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_30

    .line 782
    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 783
    return-void

    .line 785
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_30
    goto :goto_15

    .line 763
    :sswitch_31
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 764
    .local v1, "bytes":I
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 765
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 766
    .local v2, "fieldEndPos":I
    :goto_3b
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_47

    .line 767
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_3b

    .line 789
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    :cond_47
    goto :goto_90

    .line 790
    :cond_48
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_9c

    .line 816
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 801
    :goto_56
    :sswitch_56
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 804
    return-void

    .line 806
    :cond_68
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 807
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 808
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_75

    .line 811
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 812
    return-void

    .line 814
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_75
    goto :goto_56

    .line 792
    :sswitch_76
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 793
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 794
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 795
    .local v1, "fieldEndPos":I
    :goto_80
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_90

    .line 796
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    .line 819
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_90
    :goto_90
    return-void

    nop

    :sswitch_data_92
    .sparse-switch
        0x2 -> :sswitch_31
        0x5 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_9c
    .sparse-switch
        0x2 -> :sswitch_76
        0x5 -> :sswitch_56
    .end sparse-switch
.end method

.method public blacklist readFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 194
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readFixed64List(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 695
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_48

    .line 696
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    .line 697
    .local v0, "plist":Lcom/android/framework/protobuf/LongArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_92

    .line 723
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 699
    :pswitch_15
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 700
    .local v1, "bytes":I
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 701
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 702
    .local v2, "fieldEndPos":I
    :goto_1f
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_2b

    .line 703
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_1f

    .line 725
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    :cond_2b
    goto :goto_70

    .line 708
    .restart local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :goto_2c
    :pswitch_2c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 710
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 711
    return-void

    .line 713
    :cond_3a
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 714
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 715
    .local v2, "nextTag":I
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_47

    .line 718
    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 719
    return-void

    .line 721
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_47
    goto :goto_2c

    .line 726
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :cond_48
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_9a

    .line 752
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 728
    :pswitch_56
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 729
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 730
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 731
    .local v1, "fieldEndPos":I
    :goto_60
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_70

    .line 732
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 755
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_70
    :goto_70
    return-void

    .line 737
    :goto_71
    :pswitch_71
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 740
    return-void

    .line 742
    :cond_83
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 743
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 744
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_90

    .line 747
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 748
    return-void

    .line 750
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_90
    goto :goto_71

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_15
    .end packed-switch

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_71
        :pswitch_56
    .end packed-switch
.end method

.method public blacklist readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 170
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public blacklist readFloatList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/FloatArrayList;

    if-eqz v0, :cond_4c

    .line 440
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/FloatArrayList;

    .line 441
    .local v0, "plist":Lcom/android/framework/protobuf/FloatArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_9a

    .line 467
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 452
    :goto_15
    :sswitch_15
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    .line 454
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 455
    return-void

    .line 457
    :cond_23
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 458
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 459
    .local v2, "nextTag":I
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_30

    .line 462
    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 463
    return-void

    .line 465
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_30
    goto :goto_15

    .line 443
    :sswitch_31
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 444
    .local v1, "bytes":I
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 445
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 446
    .local v2, "fieldEndPos":I
    :goto_3b
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_4b

    .line 447
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    goto :goto_3b

    .line 469
    .end local v0    # "plist":Lcom/android/framework/protobuf/FloatArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    :cond_4b
    goto :goto_98

    .line 470
    :cond_4c
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_a4

    .line 496
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 481
    :goto_5a
    :sswitch_5a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 484
    return-void

    .line 486
    :cond_6c
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 487
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 488
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_79

    .line 491
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 492
    return-void

    .line 494
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_79
    goto :goto_5a

    .line 472
    :sswitch_7a
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 473
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 474
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 475
    .local v1, "fieldEndPos":I
    :goto_84
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_98

    .line 476
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 499
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_98
    :goto_98
    return-void

    nop

    :sswitch_data_9a
    .sparse-switch
        0x2 -> :sswitch_31
        0x5 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_a4
    .sparse-switch
        0x2 -> :sswitch_7a
        0x5 -> :sswitch_5a
    .end sparse-switch
.end method

.method public blacklist readGroup(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 283
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 284
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readGroupBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    .local p1, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 292
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readGroupList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 984
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    .line 987
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    .line 989
    .local v0, "listTag":I
    :goto_b
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 991
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 992
    return-void

    .line 994
    :cond_19
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 995
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 996
    .local v2, "nextTag":I
    if-eq v2, v0, :cond_24

    .line 999
    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1000
    return-void

    .line 1002
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_24
    goto :goto_b

    .line 985
    .end local v0    # "listTag":I
    :cond_25
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readGroupList(Ljava/util/List;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 975
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    .line 976
    .local v0, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readGroupList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 977
    return-void
.end method

.method public blacklist readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 188
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    return v0
.end method

.method public blacklist readInt32List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 631
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_49

    .line 632
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    .line 633
    .local v0, "plist":Lcom/android/framework/protobuf/IntArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_94

    .line 659
    :pswitch_10
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 635
    :pswitch_15
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 636
    .local v1, "bytes":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 637
    .local v2, "fieldEndPos":I
    :goto_1c
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_28

    .line 638
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_1c

    .line 640
    :cond_28
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    .line 641
    nop

    .line 661
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    goto :goto_72

    .line 644
    .restart local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    :goto_2d
    :pswitch_2d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readInt32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 646
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 647
    return-void

    .line 649
    :cond_3b
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 650
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 651
    .local v2, "nextTag":I
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_48

    .line 654
    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 655
    return-void

    .line 657
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_48
    goto :goto_2d

    .line 662
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    :cond_49
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_9e

    .line 688
    :pswitch_52
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 664
    :pswitch_57
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 665
    .local v0, "bytes":I
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 666
    .local v1, "fieldEndPos":I
    :goto_5e
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_6e

    .line 667
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 669
    :cond_6e
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    .line 670
    nop

    .line 691
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :goto_72
    return-void

    .line 673
    :goto_73
    :pswitch_73
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 676
    return-void

    .line 678
    :cond_85
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 679
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 680
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_92

    .line 683
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 684
    return-void

    .line 686
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_92
    goto :goto_73

    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_10
        :pswitch_15
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_73
        :pswitch_52
        :pswitch_57
    .end packed-switch
.end method

.method public blacklist readInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 182
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readInt64List(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 567
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_49

    .line 568
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    .line 569
    .local v0, "plist":Lcom/android/framework/protobuf/LongArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_94

    .line 595
    :pswitch_10
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 571
    :pswitch_15
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 572
    .local v1, "bytes":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 573
    .local v2, "fieldEndPos":I
    :goto_1c
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_28

    .line 574
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_1c

    .line 576
    :cond_28
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    .line 577
    nop

    .line 597
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    goto :goto_72

    .line 580
    .restart local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :goto_2d
    :pswitch_2d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 582
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 583
    return-void

    .line 585
    :cond_3b
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 586
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 587
    .local v2, "nextTag":I
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_48

    .line 590
    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 591
    return-void

    .line 593
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_48
    goto :goto_2d

    .line 598
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :cond_49
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_9e

    .line 624
    :pswitch_52
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 600
    :pswitch_57
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 601
    .local v0, "bytes":I
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 602
    .local v1, "fieldEndPos":I
    :goto_5e
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_6e

    .line 603
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 605
    :cond_6e
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    .line 606
    nop

    .line 627
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :goto_72
    return-void

    .line 609
    :goto_73
    :pswitch_73
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 612
    return-void

    .line 614
    :cond_85
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 615
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 616
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_92

    .line 619
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 620
    return-void

    .line 622
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_92
    goto :goto_73

    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_10
        :pswitch_15
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_73
        :pswitch_52
        :pswitch_57
    .end packed-switch
.end method

.method public blacklist readMap(Ljava/util/Map;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 13
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1411
    .local p1, "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "metadata":Lcom/android/framework/protobuf/MapEntryLite$Metadata;, "Lcom/android/framework/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 1412
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1413
    .local v0, "size":I
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1416
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 1417
    .local v1, "prevLimit":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v0

    .line 1418
    .local v2, "newLimit":I
    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 1421
    :try_start_12
    iget-object v3, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 1422
    .local v3, "key":Ljava/lang/Object;, "TK;"
    iget-object v4, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1424
    .local v4, "value":Ljava/lang/Object;, "TV;"
    :goto_16
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->getFieldNumber()I

    move-result v5

    .line 1425
    .local v5, "number":I
    const v6, 0x7fffffff

    if-ne v5, v6, :cond_28

    .line 1426
    nop

    .line 1454
    .end local v5    # "number":I
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_61

    .line 1457
    nop

    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 1458
    nop

    .line 1459
    return-void

    .line 1429
    .restart local v3    # "key":Ljava/lang/Object;, "TK;"
    .restart local v4    # "value":Ljava/lang/Object;, "TV;"
    .restart local v5    # "number":I
    :cond_28
    const-string v6, "Unable to parse map entry."

    packed-switch v5, :pswitch_data_66

    .line 1442
    :try_start_2d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipField()Z

    move-result v7

    goto :goto_4b

    .line 1434
    :pswitch_32
    iget-object v7, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    iget-object v8, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1438
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 1436
    invoke-direct {p0, v7, v8, p3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readField(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 1440
    goto :goto_4d

    .line 1431
    :pswitch_40
    iget-object v7, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8, v8}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readField(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 1432
    goto :goto_4d

    .line 1447
    :catch_49
    move-exception v7

    goto :goto_54

    .line 1442
    :goto_4b
    if-eqz v7, :cond_4e

    .line 1452
    :goto_4d
    goto :goto_5a

    .line 1443
    :cond_4e
    new-instance v7, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {v7, v6}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .end local v0    # "size":I
    .end local v1    # "prevLimit":I
    .end local v2    # "newLimit":I
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    .end local v5    # "number":I
    .end local p0    # "this":Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;
    .end local p1    # "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local p2    # "metadata":Lcom/android/framework/protobuf/MapEntryLite$Metadata;, "Lcom/android/framework/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .end local p3    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    throw v7
    :try_end_54
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_2d .. :try_end_54} :catch_49
    .catchall {:try_start_2d .. :try_end_54} :catchall_61

    .line 1449
    .restart local v0    # "size":I
    .restart local v1    # "prevLimit":I
    .restart local v2    # "newLimit":I
    .restart local v3    # "key":Ljava/lang/Object;, "TK;"
    .restart local v4    # "value":Ljava/lang/Object;, "TV;"
    .restart local v5    # "number":I
    .local v7, "ignore":Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .restart local p0    # "this":Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;
    .restart local p1    # "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .restart local p2    # "metadata":Lcom/android/framework/protobuf/MapEntryLite$Metadata;, "Lcom/android/framework/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .restart local p3    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    :goto_54
    :try_start_54
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipField()Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 1453
    .end local v5    # "number":I
    .end local v7    # "ignore":Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :goto_5a
    goto :goto_16

    .line 1450
    .restart local v5    # "number":I
    .restart local v7    # "ignore":Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :cond_5b
    new-instance v8, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {v8, v6}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .end local v0    # "size":I
    .end local v1    # "prevLimit":I
    .end local v2    # "newLimit":I
    .end local p0    # "this":Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;
    .end local p1    # "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local p2    # "metadata":Lcom/android/framework/protobuf/MapEntryLite$Metadata;, "Lcom/android/framework/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .end local p3    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    throw v8
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_61

    .line 1457
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    .end local v5    # "number":I
    .end local v7    # "ignore":Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .restart local v0    # "size":I
    .restart local v1    # "prevLimit":I
    .restart local v2    # "newLimit":I
    .restart local p0    # "this":Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;
    .restart local p1    # "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .restart local p2    # "metadata":Lcom/android/framework/protobuf/MapEntryLite$Metadata;, "Lcom/android/framework/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .restart local p3    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    :catchall_61
    move-exception v3

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 1458
    throw v3

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_40
        :pswitch_32
    .end packed-switch
.end method

.method public blacklist readMessage(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 239
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readMessageBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    .local p1, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 246
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readMessageList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 949
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    .line 952
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    .line 954
    .local v0, "listTag":I
    :goto_b
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 957
    return-void

    .line 959
    :cond_19
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 960
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 961
    .local v2, "nextTag":I
    if-eq v2, v0, :cond_24

    .line 964
    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 965
    return-void

    .line 967
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_24
    goto :goto_b

    .line 950
    .end local v0    # "listTag":I
    :cond_25
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readMessageList(Ljava/util/List;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 941
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    .line 942
    .local v0, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readMessageList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 943
    return-void
.end method

.method public blacklist readSFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 352
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32()I

    move-result v0

    return v0
.end method

.method public blacklist readSFixed32List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1154
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_48

    .line 1155
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    .line 1156
    .local v0, "plist":Lcom/android/framework/protobuf/IntArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_92

    .line 1182
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 1167
    :goto_15
    :sswitch_15
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSFixed32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 1169
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1170
    return-void

    .line 1172
    :cond_23
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1173
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1174
    .local v2, "nextTag":I
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_30

    .line 1177
    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1178
    return-void

    .line 1180
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_30
    goto :goto_15

    .line 1158
    :sswitch_31
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1159
    .local v1, "bytes":I
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 1160
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 1161
    .local v2, "fieldEndPos":I
    :goto_3b
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_47

    .line 1162
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_3b

    .line 1184
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    :cond_47
    goto :goto_90

    .line 1185
    :cond_48
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_9c

    .line 1211
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1196
    :goto_56
    :sswitch_56
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1198
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1199
    return-void

    .line 1201
    :cond_68
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1202
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1203
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_75

    .line 1206
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1207
    return-void

    .line 1209
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_75
    goto :goto_56

    .line 1187
    :sswitch_76
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1188
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 1189
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1190
    .local v1, "fieldEndPos":I
    :goto_80
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_90

    .line 1191
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    .line 1214
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_90
    :goto_90
    return-void

    nop

    :sswitch_data_92
    .sparse-switch
        0x2 -> :sswitch_31
        0x5 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_9c
    .sparse-switch
        0x2 -> :sswitch_76
        0x5 -> :sswitch_56
    .end sparse-switch
.end method

.method public blacklist readSFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 358
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readSFixed64List(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1218
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_48

    .line 1219
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    .line 1220
    .local v0, "plist":Lcom/android/framework/protobuf/LongArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_92

    .line 1246
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 1222
    :pswitch_15
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1223
    .local v1, "bytes":I
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 1224
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 1225
    .local v2, "fieldEndPos":I
    :goto_1f
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_2b

    .line 1226
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_1f

    .line 1248
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    :cond_2b
    goto :goto_70

    .line 1231
    .restart local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :goto_2c
    :pswitch_2c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 1233
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1234
    return-void

    .line 1236
    :cond_3a
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1237
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1238
    .local v2, "nextTag":I
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_47

    .line 1241
    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1242
    return-void

    .line 1244
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_47
    goto :goto_2c

    .line 1249
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :cond_48
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_9a

    .line 1275
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1251
    :pswitch_56
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1252
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 1253
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1254
    .local v1, "fieldEndPos":I
    :goto_60
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_70

    .line 1255
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 1278
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_70
    :goto_70
    return-void

    .line 1260
    :goto_71
    :pswitch_71
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1263
    return-void

    .line 1265
    :cond_83
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1266
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1267
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_90

    .line 1270
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1271
    return-void

    .line 1273
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_90
    goto :goto_71

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_15
    .end packed-switch

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_71
        :pswitch_56
    .end packed-switch
.end method

.method public blacklist readSInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 364
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public blacklist readSInt32List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1282
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_49

    .line 1283
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    .line 1284
    .local v0, "plist":Lcom/android/framework/protobuf/IntArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_94

    .line 1309
    :pswitch_10
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 1286
    :pswitch_15
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1287
    .local v1, "bytes":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 1288
    .local v2, "fieldEndPos":I
    :goto_1c
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_2c

    .line 1289
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_1c

    .line 1311
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    :cond_2c
    goto :goto_72

    .line 1294
    .restart local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    :goto_2d
    :pswitch_2d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSInt32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 1296
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1297
    return-void

    .line 1299
    :cond_3b
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1300
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1301
    .local v2, "nextTag":I
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_48

    .line 1304
    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1305
    return-void

    .line 1307
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_48
    goto :goto_2d

    .line 1312
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    :cond_49
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_9e

    .line 1337
    :pswitch_52
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1314
    :pswitch_57
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1315
    .local v0, "bytes":I
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1316
    .local v1, "fieldEndPos":I
    :goto_5e
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_72

    .line 1317
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 1340
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_72
    :goto_72
    return-void

    .line 1322
    :goto_73
    :pswitch_73
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1324
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1325
    return-void

    .line 1327
    :cond_85
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1328
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1329
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_92

    .line 1332
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1333
    return-void

    .line 1335
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_92
    goto :goto_73

    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_10
        :pswitch_15
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_73
        :pswitch_52
        :pswitch_57
    .end packed-switch
.end method

.method public blacklist readSInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 370
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readSInt64List(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1344
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_49

    .line 1345
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    .line 1346
    .local v0, "plist":Lcom/android/framework/protobuf/LongArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_94

    .line 1371
    :pswitch_10
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 1348
    :pswitch_15
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1349
    .local v1, "bytes":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 1350
    .local v2, "fieldEndPos":I
    :goto_1c
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_2c

    .line 1351
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_1c

    .line 1373
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    :cond_2c
    goto :goto_72

    .line 1356
    .restart local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :goto_2d
    :pswitch_2d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 1358
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1359
    return-void

    .line 1361
    :cond_3b
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1362
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1363
    .local v2, "nextTag":I
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_48

    .line 1366
    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1367
    return-void

    .line 1369
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_48
    goto :goto_2d

    .line 1374
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :cond_49
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_9e

    .line 1399
    :pswitch_52
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1376
    :pswitch_57
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1377
    .local v0, "bytes":I
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1378
    .local v1, "fieldEndPos":I
    :goto_5e
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_72

    .line 1379
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 1402
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_72
    :goto_72
    return-void

    .line 1384
    :goto_73
    :pswitch_73
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1386
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1387
    return-void

    .line 1389
    :cond_85
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1390
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1391
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_92

    .line 1394
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1395
    return-void

    .line 1397
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_92
    goto :goto_73

    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_10
        :pswitch_15
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_73
        :pswitch_52
        :pswitch_57
    .end packed-switch
.end method

.method public blacklist readString()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readStringInternal(Z)Ljava/lang/String;
    .registers 7
    .param p1, "requireUtf8"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 221
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 222
    .local v0, "size":I
    if-nez v0, :cond_d

    .line 223
    const-string v1, ""

    return-object v1

    .line 226
    :cond_d
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 227
    if-eqz p1, :cond_25

    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_25

    .line 228
    :cond_20
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 230
    :cond_25
    :goto_25
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    sget-object v4, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 231
    .local v1, "result":Ljava/lang/String;
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 232
    return-object v1
.end method

.method public blacklist readStringList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 887
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readStringListInternal(Ljava/util/List;Z)V

    .line 888
    return-void
.end method

.method public blacklist readStringListInternal(Ljava/util/List;Z)V
    .registers 7
    .param p2, "requireUtf8"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 897
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4a

    .line 901
    instance-of v0, p1, Lcom/android/framework/protobuf/LazyStringList;

    if-eqz v0, :cond_2e

    if-nez p2, :cond_2e

    .line 902
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LazyStringList;

    .line 904
    .local v0, "lazyList":Lcom/android/framework/protobuf/LazyStringList;
    :goto_12
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/LazyStringList;->add(Lcom/android/framework/protobuf/ByteString;)V

    .line 906
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 907
    return-void

    .line 909
    :cond_20
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 910
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 911
    .local v2, "nextTag":I
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_2d

    .line 914
    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 915
    return-void

    .line 917
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_2d
    goto :goto_12

    .line 920
    .end local v0    # "lazyList":Lcom/android/framework/protobuf/LazyStringList;
    :cond_2e
    :goto_2e
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 923
    return-void

    .line 925
    :cond_3c
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 926
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 927
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_49

    .line 930
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 931
    return-void

    .line 933
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_49
    goto :goto_2e

    .line 898
    :cond_4a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readStringListRequireUtf8(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 892
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readStringListInternal(Ljava/util/List;Z)V

    .line 893
    return-void
.end method

.method public blacklist readStringRequireUtf8()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readUInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 340
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    return v0
.end method

.method public blacklist readUInt32List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1030
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_45

    .line 1031
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    .line 1032
    .local v0, "plist":Lcom/android/framework/protobuf/IntArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_8c

    .line 1057
    :pswitch_10
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 1034
    :pswitch_15
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1035
    .local v1, "bytes":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 1036
    .local v2, "fieldEndPos":I
    :goto_1c
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_28

    .line 1037
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_1c

    .line 1059
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    :cond_28
    goto :goto_6a

    .line 1042
    .restart local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    :goto_29
    :pswitch_29
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readUInt32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 1044
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1045
    return-void

    .line 1047
    :cond_37
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1048
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1049
    .local v2, "nextTag":I
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_44

    .line 1052
    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1053
    return-void

    .line 1055
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_44
    goto :goto_29

    .line 1060
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    :cond_45
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_96

    .line 1085
    :pswitch_4e
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1062
    :pswitch_53
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1063
    .local v0, "bytes":I
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1064
    .local v1, "fieldEndPos":I
    :goto_5a
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_6a

    .line 1065
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 1088
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_6a
    :goto_6a
    return-void

    .line 1070
    :goto_6b
    :pswitch_6b
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1072
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1073
    return-void

    .line 1075
    :cond_7d
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1076
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1077
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_8a

    .line 1080
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1081
    return-void

    .line 1083
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_8a
    goto :goto_6b

    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_10
        :pswitch_15
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_4e
        :pswitch_53
    .end packed-switch
.end method

.method public blacklist readUInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 176
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readUInt64List(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_49

    .line 504
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    .line 505
    .local v0, "plist":Lcom/android/framework/protobuf/LongArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_94

    .line 531
    :pswitch_10
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 507
    :pswitch_15
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 508
    .local v1, "bytes":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 509
    .local v2, "fieldEndPos":I
    :goto_1c
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_28

    .line 510
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_1c

    .line 512
    :cond_28
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    .line 513
    nop

    .line 533
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    goto :goto_72

    .line 516
    .restart local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :goto_2d
    :pswitch_2d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readUInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 518
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 519
    return-void

    .line 521
    :cond_3b
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 522
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 523
    .local v2, "nextTag":I
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_48

    .line 526
    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 527
    return-void

    .line 529
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_48
    goto :goto_2d

    .line 534
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :cond_49
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_9e

    .line 560
    :pswitch_52
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 536
    :pswitch_57
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 537
    .local v0, "bytes":I
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 538
    .local v1, "fieldEndPos":I
    :goto_5e
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_6e

    .line 539
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 541
    :cond_6e
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    .line 542
    nop

    .line 563
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :goto_72
    return-void

    .line 545
    :goto_73
    :pswitch_73
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 548
    return-void

    .line 550
    :cond_85
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 551
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 552
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_92

    .line 555
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 556
    return-void

    .line 558
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_92
    goto :goto_73

    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_10
        :pswitch_15
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_73
        :pswitch_52
        :pswitch_57
    .end packed-switch
.end method

.method public blacklist readVarint64()J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1556
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1558
    .local v0, "i":I
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-eq v1, v0, :cond_cc

    .line 1562
    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 1565
    .local v1, "buffer":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    aget-byte v0, v1, v0

    move v3, v0

    .local v3, "y":I
    if-ltz v0, :cond_13

    .line 1566
    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1567
    int-to-long v4, v3

    return-wide v4

    .line 1568
    :cond_13
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    sub-int/2addr v0, v2

    const/16 v4, 0x9

    if-ge v0, v4, :cond_1f

    .line 1569
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64SlowPath()J

    move-result-wide v4

    return-wide v4

    .line 1570
    :cond_1f
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .restart local v0    # "i":I
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v3

    move v3, v2

    if-gez v2, :cond_2e

    .line 1571
    xor-int/lit8 v2, v3, -0x80

    int-to-long v4, v2

    .local v4, "x":J
    goto/16 :goto_c9

    .line 1572
    .end local v4    # "x":J
    :cond_2e
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    aget-byte v0, v1, v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v3

    move v3, v0

    if-ltz v0, :cond_3e

    .line 1573
    xor-int/lit16 v0, v3, 0x3f80

    int-to-long v4, v0

    move v0, v2

    .restart local v4    # "x":J
    goto/16 :goto_c9

    .line 1574
    .end local v4    # "x":J
    :cond_3e
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .restart local v0    # "i":I
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v2, v3

    move v3, v2

    if-gez v2, :cond_4f

    .line 1575
    const v2, -0x1fc080

    xor-int/2addr v2, v3

    int-to-long v4, v2

    .restart local v4    # "x":J
    goto/16 :goto_c9

    .line 1576
    .end local v4    # "x":J
    :cond_4f
    int-to-long v4, v3

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    aget-byte v0, v1, v0

    int-to-long v6, v0

    const/16 v0, 0x1c

    shl-long/2addr v6, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    .local v6, "x":J
    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-ltz v0, :cond_66

    .line 1577
    const-wide/32 v4, 0xfe03f80

    xor-long/2addr v4, v6

    move v0, v2

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_c9

    .line 1578
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_66
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .restart local v0    # "i":I
    aget-byte v2, v1, v2

    int-to-long v4, v2

    const/16 v2, 0x23

    shl-long/2addr v4, v2

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v2, v4, v8

    if-gez v2, :cond_7b

    .line 1579
    const-wide v4, -0x7f01fc080L

    xor-long/2addr v4, v6

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_c9

    .line 1580
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_7b
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    aget-byte v0, v1, v0

    int-to-long v4, v0

    const/16 v0, 0x2a

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v0, v4, v8

    if-ltz v0, :cond_91

    .line 1581
    const-wide v4, 0x3f80fe03f80L

    xor-long/2addr v4, v6

    move v0, v2

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_c9

    .line 1582
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_91
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .restart local v0    # "i":I
    aget-byte v2, v1, v2

    int-to-long v4, v2

    const/16 v2, 0x31

    shl-long/2addr v4, v2

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v2, v4, v8

    if-gez v2, :cond_a6

    .line 1583
    const-wide v4, -0x1fc07f01fc080L

    xor-long/2addr v4, v6

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_c9

    .line 1592
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_a6
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    aget-byte v0, v1, v0

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    .line 1593
    .end local v6    # "x":J
    .restart local v4    # "x":J
    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v4, v6

    .line 1602
    cmp-long v0, v4, v8

    if-gez v0, :cond_c8

    .line 1603
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .restart local v0    # "i":I
    aget-byte v2, v1, v2

    int-to-long v6, v2

    cmp-long v2, v6, v8

    if-ltz v2, :cond_c3

    goto :goto_c9

    .line 1604
    :cond_c3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1602
    .end local v0    # "i":I
    .restart local v2    # "i":I
    :cond_c8
    move v0, v2

    .line 1608
    .end local v2    # "i":I
    .restart local v0    # "i":I
    :goto_c9
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1609
    return-wide v4

    .line 1559
    .end local v1    # "buffer":[B
    .end local v3    # "y":I
    .end local v4    # "x":J
    :cond_cc
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public blacklist skipField()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-nez v0, :cond_37

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-ne v0, v1, :cond_d

    goto :goto_37

    .line 140
    :cond_d
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_3a

    .line 157
    :pswitch_17
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 151
    :pswitch_1c
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipBytes(I)V

    .line 152
    return v1

    .line 154
    :pswitch_21
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipGroup()V

    .line 155
    return v1

    .line 148
    :pswitch_25
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipBytes(I)V

    .line 149
    return v1

    .line 145
    :pswitch_2d
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipBytes(I)V

    .line 146
    return v1

    .line 142
    :pswitch_33
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipVarint()V

    .line 143
    return v1

    .line 137
    :cond_37
    :goto_37
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_33
        :pswitch_2d
        :pswitch_25
        :pswitch_21
        :pswitch_17
        :pswitch_1c
    .end packed-switch
.end method
