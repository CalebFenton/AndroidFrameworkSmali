.class public final Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
.super Ljava/lang/Object;
.source "CodedOutputByteBufferNano.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;
    }
.end annotation


# static fields
.field public static final blacklist LITTLE_ENDIAN_32_SIZE:I = 0x4

.field public static final blacklist LITTLE_ENDIAN_64_SIZE:I = 0x8

.field private static final blacklist MAX_UTF8_EXPANSION:I = 0x3


# instance fields
.field private final blacklist buffer:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    .line 65
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 66
    return-void
.end method

.method private constructor blacklist <init>([BII)V
    .registers 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 60
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;-><init>(Ljava/nio/ByteBuffer;)V

    .line 61
    return-void
.end method

.method public static blacklist computeBoolSize(IZ)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Z

    .line 621
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSizeNoTag(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeBoolSizeNoTag(Z)I
    .registers 2
    .param p0, "value"    # Z

    .line 803
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist computeBytesSize(I[B)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # [B

    .line 657
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSizeNoTag([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeBytesSizeNoTag([B)I
    .registers 3
    .param p0, "value"    # [B

    .line 837
    array-length v0, p0

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    array-length v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeDoubleSize(ID)I
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # D

    .line 562
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSizeNoTag(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeDoubleSizeNoTag(D)I
    .registers 3
    .param p0, "value"    # D

    .line 742
    const/16 v0, 0x8

    return v0
.end method

.method public static blacklist computeEnumSize(II)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .line 674
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeEnumSizeNoTag(I)I
    .registers 2
    .param p0, "value"    # I

    .line 853
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method static blacklist computeFieldSize(IILjava/lang/Object;)I
    .registers 6
    .param p0, "number"    # I
    .param p1, "type"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 1092
    packed-switch p1, :pswitch_data_e4

    .line 1130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1120
    :pswitch_1c
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64Size(IJ)I

    move-result v0

    return v0

    .line 1112
    :pswitch_28
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    move-result v0

    return v0

    .line 1124
    :pswitch_34
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed64Size(IJ)I

    move-result v0

    return v0

    .line 1114
    :pswitch_40
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32Size(II)I

    move-result v0

    return v0

    .line 1104
    :pswitch_4c
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSize(II)I

    move-result v0

    return v0

    .line 1110
    :pswitch_58
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v0

    return v0

    .line 1096
    :pswitch_64
    move-object v0, p2

    check-cast v0, [B

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v0

    return v0

    .line 1126
    :pswitch_6c
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v0

    return v0

    .line 1128
    :pswitch_74
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v0

    return v0

    .line 1098
    :pswitch_7c
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    return v0

    .line 1094
    :pswitch_84
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v0

    return v0

    .line 1106
    :pswitch_90
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v0

    return v0

    .line 1122
    :pswitch_9c
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v0

    return v0

    .line 1108
    :pswitch_a8
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    return v0

    .line 1118
    :pswitch_b4
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v0

    return v0

    .line 1116
    :pswitch_c0
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v0

    return v0

    .line 1100
    :pswitch_cc
    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v0

    return v0

    .line 1102
    :pswitch_d8
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v0

    return v0

    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_d8
        :pswitch_cc
        :pswitch_c0
        :pswitch_b4
        :pswitch_a8
        :pswitch_9c
        :pswitch_90
        :pswitch_84
        :pswitch_7c
        :pswitch_74
        :pswitch_6c
        :pswitch_64
        :pswitch_58
        :pswitch_4c
        :pswitch_40
        :pswitch_34
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist computeFixed32Size(II)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .line 612
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeFixed32SizeNoTag(I)I
    .registers 2
    .param p0, "value"    # I

    .line 795
    const/4 v0, 0x4

    return v0
.end method

.method public static blacklist computeFixed64Size(IJ)I
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    .line 603
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeFixed64SizeNoTag(J)I
    .registers 3
    .param p0, "value"    # J

    .line 787
    const/16 v0, 0x8

    return v0
.end method

.method public static blacklist computeFloatSize(IF)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # F

    .line 570
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSizeNoTag(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeFloatSizeNoTag(F)I
    .registers 2
    .param p0, "value"    # F

    .line 750
    const/4 v0, 0x4

    return v0
.end method

.method public static blacklist computeGroupSize(ILcom/android/framework/protobuf/nano/MessageNano;)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lcom/android/framework/protobuf/nano/MessageNano;

    .line 639
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSizeNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeGroupSizeNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)I
    .registers 2
    .param p0, "value"    # Lcom/android/framework/protobuf/nano/MessageNano;

    .line 820
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method public static blacklist computeInt32Size(II)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .line 594
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeInt32SizeNoTag(I)I
    .registers 2
    .param p0, "value"    # I

    .line 774
    if-ltz p0, :cond_7

    .line 775
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    return v0

    .line 778
    :cond_7
    const/16 v0, 0xa

    return v0
.end method

.method public static blacklist computeInt64Size(IJ)I
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    .line 586
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeInt64SizeNoTag(J)I
    .registers 3
    .param p0, "value"    # J

    .line 766
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method public static blacklist computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lcom/android/framework/protobuf/nano/MessageNano;

    .line 648
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSizeNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeMessageSizeNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)I
    .registers 3
    .param p0, "value"    # Lcom/android/framework/protobuf/nano/MessageNano;

    .line 828
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 829
    .local v0, "size":I
    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public static blacklist computeRawVarint32Size(I)I
    .registers 2
    .param p0, "value"    # I

    .line 1007
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 1008
    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 v0, 0x2

    return v0

    .line 1009
    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 v0, 0x3

    return v0

    .line 1010
    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_1a

    const/4 v0, 0x4

    return v0

    .line 1011
    :cond_1a
    const/4 v0, 0x5

    return v0
.end method

.method public static blacklist computeRawVarint64Size(J)I
    .registers 6
    .param p0, "value"    # J

    .line 1029
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    return v0

    .line 1030
    :cond_b
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/4 v0, 0x2

    return v0

    .line 1031
    :cond_14
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    const/4 v0, 0x3

    return v0

    .line 1032
    :cond_1e
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    const/4 v0, 0x4

    return v0

    .line 1033
    :cond_28
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    const/4 v0, 0x5

    return v0

    .line 1034
    :cond_34
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_40

    const/4 v0, 0x6

    return v0

    .line 1035
    :cond_40
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_49

    const/4 v0, 0x7

    return v0

    .line 1036
    :cond_49
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_53

    const/16 v0, 0x8

    return v0

    .line 1037
    :cond_53
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5d

    const/16 v0, 0x9

    return v0

    .line 1038
    :cond_5d
    const/16 v0, 0xa

    return v0
.end method

.method public static blacklist computeSFixed32Size(II)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .line 683
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeSFixed32SizeNoTag(I)I
    .registers 2
    .param p0, "value"    # I

    .line 861
    const/4 v0, 0x4

    return v0
.end method

.method public static blacklist computeSFixed64Size(IJ)I
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    .line 692
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeSFixed64SizeNoTag(J)I
    .registers 3
    .param p0, "value"    # J

    .line 869
    const/16 v0, 0x8

    return v0
.end method

.method public static blacklist computeSInt32Size(II)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .line 700
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeSInt32SizeNoTag(I)I
    .registers 2
    .param p0, "value"    # I

    .line 877
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag32(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static blacklist computeSInt64Size(IJ)I
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    .line 708
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeSInt64SizeNoTag(J)I
    .registers 4
    .param p0, "value"    # J

    .line 885
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method public static blacklist computeStringSize(ILjava/lang/String;)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/lang/String;

    .line 630
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeStringSizeNoTag(Ljava/lang/String;)I
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .line 811
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v0

    .line 812
    .local v0, "length":I
    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public static blacklist computeTagSize(I)I
    .registers 2
    .param p0, "fieldNumber"    # I

    .line 982
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static blacklist computeUInt32Size(II)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .line 665
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeUInt32SizeNoTag(I)I
    .registers 2
    .param p0, "value"    # I

    .line 845
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static blacklist computeUInt64Size(IJ)I
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    .line 578
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist computeUInt64SizeNoTag(J)I
    .registers 3
    .param p0, "value"    # J

    .line 758
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method private static blacklist encode(Ljava/lang/CharSequence;[BII)I
    .registers 14
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 457
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 458
    .local v0, "utf16Length":I
    move v1, p2

    .line 459
    .local v1, "j":I
    const/4 v2, 0x0

    .line 460
    .local v2, "i":I
    add-int v3, p2, p3

    .line 463
    .local v3, "limit":I
    :goto_8
    const/16 v4, 0x80

    if-ge v2, v0, :cond_1f

    add-int v5, v2, v1

    if-ge v5, v3, :cond_1f

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    move v6, v5

    .local v6, "c":C
    if-ge v5, v4, :cond_1f

    .line 464
    add-int v4, v1, v2

    int-to-byte v5, v6

    aput-byte v5, p1, v4

    .line 463
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 466
    .end local v6    # "c":C
    :cond_1f
    if-ne v2, v0, :cond_24

    .line 467
    add-int v4, v1, v0

    return v4

    .line 469
    :cond_24
    add-int/2addr v1, v2

    .line 470
    :goto_25
    if-ge v2, v0, :cond_101

    .line 471
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 472
    .local v5, "c":C
    if-ge v5, v4, :cond_37

    if-ge v1, v3, :cond_37

    .line 473
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "j":I
    .local v6, "j":I
    int-to-byte v7, v5

    aput-byte v7, p1, v1

    move v1, v6

    goto/16 :goto_bf

    .line 474
    .end local v6    # "j":I
    .restart local v1    # "j":I
    :cond_37
    const/16 v6, 0x800

    if-ge v5, v6, :cond_51

    add-int/lit8 v6, v3, -0x2

    if-gt v1, v6, :cond_51

    .line 475
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "j":I
    .restart local v6    # "j":I
    ushr-int/lit8 v7, v5, 0x6

    or-int/lit16 v7, v7, 0x3c0

    int-to-byte v7, v7

    aput-byte v7, p1, v1

    .line 476
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "j":I
    .restart local v1    # "j":I
    and-int/lit8 v7, v5, 0x3f

    or-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    goto :goto_bf

    .line 477
    :cond_51
    const v6, 0xd800

    if-lt v5, v6, :cond_5b

    const v6, 0xdfff

    if-ge v6, v5, :cond_7c

    :cond_5b
    add-int/lit8 v6, v3, -0x3

    if-gt v1, v6, :cond_7c

    .line 479
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "j":I
    .restart local v6    # "j":I
    ushr-int/lit8 v7, v5, 0xc

    or-int/lit16 v7, v7, 0x1e0

    int-to-byte v7, v7

    aput-byte v7, p1, v1

    .line 480
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "j":I
    .restart local v1    # "j":I
    ushr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 481
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "j":I
    .restart local v6    # "j":I
    and-int/lit8 v7, v5, 0x3f

    or-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, p1, v1

    move v1, v6

    goto :goto_bf

    .line 482
    .end local v6    # "j":I
    .restart local v1    # "j":I
    :cond_7c
    add-int/lit8 v6, v3, -0x4

    if-gt v1, v6, :cond_de

    .line 485
    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-eq v6, v7, :cond_c3

    add-int/lit8 v2, v2, 0x1

    .line 486
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v7, v6

    .local v7, "low":C
    invoke-static {v5, v6}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_c3

    .line 489
    invoke-static {v5, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    .line 490
    .local v6, "codePoint":I
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "j":I
    .local v8, "j":I
    ushr-int/lit8 v9, v6, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, p1, v1

    .line 491
    add-int/lit8 v1, v8, 0x1

    .end local v8    # "j":I
    .restart local v1    # "j":I
    ushr-int/lit8 v9, v6, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, p1, v8

    .line 492
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "j":I
    .restart local v8    # "j":I
    ushr-int/lit8 v9, v6, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, p1, v1

    .line 493
    add-int/lit8 v1, v8, 0x1

    .end local v8    # "j":I
    .restart local v1    # "j":I
    and-int/lit8 v9, v6, 0x3f

    or-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, p1, v8

    .line 494
    .end local v6    # "codePoint":I
    .end local v7    # "low":C
    nop

    .line 470
    :goto_bf
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_25

    .line 487
    :cond_c3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unpaired surrogate at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 495
    :cond_de
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed writing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 498
    .end local v5    # "c":C
    :cond_101
    return v1
.end method

.method private static blacklist encode(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 408
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 410
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 412
    nop

    .line 413
    :try_start_d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 414
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 415
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 412
    invoke-static {p0, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v0

    .line 416
    .local v0, "encoded":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_2b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d .. :try_end_2b} :catch_2d

    .line 421
    nop

    .end local v0    # "encoded":I
    goto :goto_3a

    .line 417
    :catch_2d
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    .line 419
    .local v1, "boe":Ljava/nio/BufferOverflowException;
    invoke-virtual {v1, v0}, Ljava/nio/BufferOverflowException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 420
    throw v1

    .line 423
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v1    # "boe":Ljava/nio/BufferOverflowException;
    :cond_37
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encodeDirect(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 425
    :goto_3a
    return-void

    .line 409
    :cond_3b
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method private static blacklist encodeDirect(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 9
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 428
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 429
    .local v0, "utf16Length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_a7

    .line 430
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 431
    .local v2, "c":C
    const/16 v3, 0x80

    if-ge v2, v3, :cond_15

    .line 432
    int-to-byte v3, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_a3

    .line 433
    :cond_15
    const/16 v4, 0x800

    if-ge v2, v4, :cond_2a

    .line 434
    ushr-int/lit8 v4, v2, 0x6

    or-int/lit16 v4, v4, 0x3c0

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 435
    and-int/lit8 v4, v2, 0x3f

    or-int/2addr v3, v4

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_a3

    .line 436
    :cond_2a
    const v4, 0xd800

    if-lt v2, v4, :cond_8b

    const v4, 0xdfff

    if-ge v4, v2, :cond_35

    goto :goto_8b

    .line 443
    :cond_35
    add-int/lit8 v4, v1, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_70

    add-int/lit8 v1, v1, 0x1

    .line 444
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    move v5, v4

    .local v5, "low":C
    invoke-static {v2, v4}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 447
    invoke-static {v2, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    .line 448
    .local v4, "codePoint":I
    ushr-int/lit8 v6, v4, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 449
    ushr-int/lit8 v6, v4, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 450
    ushr-int/lit8 v6, v4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 451
    and-int/lit8 v6, v4, 0x3f

    or-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_a3

    .line 445
    .end local v4    # "codePoint":I
    .end local v5    # "low":C
    :cond_70
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unpaired surrogate at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 438
    :cond_8b
    :goto_8b
    ushr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0x1e0

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 439
    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 440
    and-int/lit8 v4, v2, 0x3f

    or-int/2addr v3, v4

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 429
    .end local v2    # "c":C
    :goto_a3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 454
    .end local v1    # "i":I
    :cond_a7
    return-void
.end method

.method public static blacklist encodeZigZag32(I)I
    .registers 3
    .param p0, "n"    # I

    .line 1073
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method public static blacklist encodeZigZag64(J)J
    .registers 6
    .param p0, "n"    # J

    .line 1088
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private static blacklist encodedLength(Ljava/lang/CharSequence;)I
    .registers 10
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .line 340
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 341
    .local v0, "utf16Length":I
    move v1, v0

    .line 342
    .local v1, "utf8Length":I
    const/4 v2, 0x0

    .line 345
    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_13

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_13

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 350
    :cond_13
    :goto_13
    if-ge v2, v0, :cond_2b

    .line 351
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 352
    .local v3, "c":C
    const/16 v4, 0x800

    if-ge v3, v4, :cond_25

    .line 353
    rsub-int/lit8 v4, v3, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v1, v4

    .line 350
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 355
    .restart local v3    # "c":C
    :cond_25
    invoke-static {p0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    move-result v4

    add-int/2addr v1, v4

    .line 356
    nop

    .line 360
    .end local v3    # "c":C
    :cond_2b
    if-lt v1, v0, :cond_2e

    .line 365
    return v1

    .line 362
    :cond_2e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UTF-8 length does not fit in int: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-long v5, v1

    const-wide v7, 0x100000000L

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static blacklist encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .registers 10
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I

    .line 369
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 370
    .local v0, "utf16Length":I
    const/4 v1, 0x0

    .line 371
    .local v1, "utf8Length":I
    move v2, p1

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_49

    .line 372
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 373
    .local v3, "c":C
    const/16 v4, 0x800

    if-ge v3, v4, :cond_16

    .line 374
    rsub-int/lit8 v4, v3, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v1, v4

    goto :goto_46

    .line 376
    :cond_16
    add-int/lit8 v1, v1, 0x2

    .line 378
    const v4, 0xd800

    if-gt v4, v3, :cond_46

    const v4, 0xdfff

    if-gt v3, v4, :cond_46

    .line 380
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 381
    .local v4, "cp":I
    const/high16 v5, 0x10000

    if-lt v4, v5, :cond_2d

    .line 384
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 382
    :cond_2d
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unpaired surrogate at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 371
    .end local v3    # "c":C
    .end local v4    # "cp":I
    :cond_46
    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 388
    .end local v2    # "i":I
    :cond_49
    return v1
.end method

.method public static blacklist newInstance([B)Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .registers 3
    .param p0, "flatArray"    # [B

    .line 75
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->newInstance([BII)Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newInstance([BII)Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .registers 4
    .param p0, "flatArray"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 87
    new-instance v0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public blacklist checkNoSpaceLeft()V
    .registers 3

    .line 906
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->spaceLeft()I

    move-result v0

    if-nez v0, :cond_7

    .line 910
    return-void

    .line 907
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist position()I
    .registers 2

    .line 916
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public blacklist reset()V
    .registers 2

    .line 926
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 927
    return-void
.end method

.method public blacklist spaceLeft()I
    .registers 2

    .line 895
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public blacklist writeBool(IZ)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 145
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    .line 146
    return-void
.end method

.method public blacklist writeBoolNoTag(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 293
    return-void
.end method

.method public blacklist writeBytes(I[B)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 174
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBytesNoTag([B)V

    .line 175
    return-void
.end method

.method public blacklist writeBytesNoTag([B)V
    .registers 3
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 518
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    .line 519
    return-void
.end method

.method public blacklist writeDouble(ID)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 96
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    .line 97
    return-void
.end method

.method public blacklist writeDoubleNoTag(D)V
    .registers 5
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian64(J)V

    .line 253
    return-void
.end method

.method public blacklist writeEnum(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 191
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V

    .line 192
    return-void
.end method

.method public blacklist writeEnumNoTag(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 532
    return-void
.end method

.method blacklist writeField(IILjava/lang/Object;)V
    .registers 7
    .param p1, "number"    # I
    .param p2, "type"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1136
    packed-switch p2, :pswitch_data_da

    .line 1210
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1198
    :pswitch_1c
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    .line 1199
    .local v0, "sint64Value":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64(IJ)V

    .line 1200
    goto/16 :goto_d9

    .line 1194
    .end local v0    # "sint64Value":Ljava/lang/Long;
    :pswitch_28
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    .line 1195
    .local v0, "sint32Value":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32(II)V

    .line 1196
    goto/16 :goto_d9

    .line 1190
    .end local v0    # "sint32Value":Ljava/lang/Integer;
    :pswitch_34
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    .line 1191
    .local v0, "sfixed64Value":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64(IJ)V

    .line 1192
    goto/16 :goto_d9

    .line 1186
    .end local v0    # "sfixed64Value":Ljava/lang/Long;
    :pswitch_40
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    .line 1187
    .local v0, "sfixed32Value":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32(II)V

    .line 1188
    goto/16 :goto_d9

    .line 1182
    .end local v0    # "sfixed32Value":Ljava/lang/Integer;
    :pswitch_4c
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    .line 1183
    .local v0, "enumValue":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeEnum(II)V

    .line 1184
    goto/16 :goto_d9

    .line 1178
    .end local v0    # "enumValue":Ljava/lang/Integer;
    :pswitch_58
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    .line 1179
    .local v0, "uint32Value":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1180
    goto/16 :goto_d9

    .line 1174
    .end local v0    # "uint32Value":Ljava/lang/Integer;
    :pswitch_64
    move-object v0, p3

    check-cast v0, [B

    .line 1175
    .local v0, "bytesValue":[B
    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 1176
    goto/16 :goto_d9

    .line 1202
    .end local v0    # "bytesValue":[B
    :pswitch_6c
    move-object v0, p3

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 1203
    .local v0, "messageValue":Lcom/android/framework/protobuf/nano/MessageNano;
    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1204
    goto :goto_d9

    .line 1206
    .end local v0    # "messageValue":Lcom/android/framework/protobuf/nano/MessageNano;
    :pswitch_73
    move-object v0, p3

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 1207
    .local v0, "groupValue":Lcom/android/framework/protobuf/nano/MessageNano;
    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeGroup(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1208
    goto :goto_d9

    .line 1170
    .end local v0    # "groupValue":Lcom/android/framework/protobuf/nano/MessageNano;
    :pswitch_7a
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    .line 1171
    .local v0, "stringValue":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1172
    goto :goto_d9

    .line 1166
    .end local v0    # "stringValue":Ljava/lang/String;
    :pswitch_81
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    .line 1167
    .local v0, "boolValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1168
    goto :goto_d9

    .line 1162
    .end local v0    # "boolValue":Ljava/lang/Boolean;
    :pswitch_8c
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    .line 1163
    .local v0, "fixed32Value":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32(II)V

    .line 1164
    goto :goto_d9

    .line 1158
    .end local v0    # "fixed32Value":Ljava/lang/Integer;
    :pswitch_97
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    .line 1159
    .local v0, "fixed64Value":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 1160
    goto :goto_d9

    .line 1154
    .end local v0    # "fixed64Value":Ljava/lang/Long;
    :pswitch_a2
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    .line 1155
    .local v0, "int32Value":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1156
    goto :goto_d9

    .line 1150
    .end local v0    # "int32Value":Ljava/lang/Integer;
    :pswitch_ad
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    .line 1151
    .local v0, "uint64Value":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1152
    goto :goto_d9

    .line 1146
    .end local v0    # "uint64Value":Ljava/lang/Long;
    :pswitch_b8
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    .line 1147
    .local v0, "int64Value":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1148
    goto :goto_d9

    .line 1142
    .end local v0    # "int64Value":Ljava/lang/Long;
    :pswitch_c3
    move-object v0, p3

    check-cast v0, Ljava/lang/Float;

    .line 1143
    .local v0, "floatValue":Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1144
    goto :goto_d9

    .line 1138
    .end local v0    # "floatValue":Ljava/lang/Float;
    :pswitch_ce
    move-object v0, p3

    check-cast v0, Ljava/lang/Double;

    .line 1139
    .local v0, "doubleValue":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1140
    nop

    .line 1212
    .end local v0    # "doubleValue":Ljava/lang/Double;
    :goto_d9
    return-void

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_ce
        :pswitch_c3
        :pswitch_b8
        :pswitch_ad
        :pswitch_a2
        :pswitch_97
        :pswitch_8c
        :pswitch_81
        :pswitch_7a
        :pswitch_73
        :pswitch_6c
        :pswitch_64
        :pswitch_58
        :pswitch_4c
        :pswitch_40
        :pswitch_34
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method

.method public blacklist writeFixed32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 138
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    .line 139
    return-void
.end method

.method public blacklist writeFixed32NoTag(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian32(I)V

    .line 288
    return-void
.end method

.method public blacklist writeFixed64(IJ)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 131
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    .line 132
    return-void
.end method

.method public blacklist writeFixed64NoTag(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian64(J)V

    .line 283
    return-void
.end method

.method public blacklist writeFloat(IF)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 103
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    .line 104
    return-void
.end method

.method public blacklist writeFloatNoTag(F)V
    .registers 3
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian32(I)V

    .line 258
    return-void
.end method

.method public blacklist writeGroup(ILcom/android/framework/protobuf/nano/MessageNano;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/android/framework/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 159
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeGroupNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 160
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 161
    return-void
.end method

.method public blacklist writeGroupNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)V
    .registers 2
    .param p1, "value"    # Lcom/android/framework/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    invoke-virtual {p1, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 507
    return-void
.end method

.method public blacklist writeInt32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 124
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    .line 125
    return-void
.end method

.method public blacklist writeInt32NoTag(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    if-ltz p1, :cond_6

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    goto :goto_a

    .line 276
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    .line 278
    :goto_a
    return-void
.end method

.method public blacklist writeInt64(IJ)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 117
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    .line 118
    return-void
.end method

.method public blacklist writeInt64NoTag(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    .line 268
    return-void
.end method

.method public blacklist writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/android/framework/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 167
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessageNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 168
    return-void
.end method

.method public blacklist writeMessageNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)V
    .registers 3
    .param p1, "value"    # Lcom/android/framework/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/MessageNano;->getCachedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 512
    invoke-virtual {p1, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 513
    return-void
.end method

.method public blacklist writeRawByte(B)V
    .registers 5
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 945
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 950
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 951
    return-void

    .line 947
    :cond_e
    new-instance v0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0
.end method

.method public blacklist writeRawByte(I)V
    .registers 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 955
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(B)V

    .line 956
    return-void
.end method

.method public blacklist writeRawBytes([B)V
    .registers 4
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 960
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([BII)V

    .line 961
    return-void
.end method

.method public blacklist writeRawBytes([BII)V
    .registers 7
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 966
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p3, :cond_e

    .line 967
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 972
    return-void

    .line 970
    :cond_e
    new-instance v0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0
.end method

.method public blacklist writeRawLittleEndian32(I)V
    .registers 5
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1043
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_f

    .line 1046
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1047
    return-void

    .line 1044
    :cond_f
    new-instance v0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0
.end method

.method public blacklist writeRawLittleEndian64(J)V
    .registers 6
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1053
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_10

    .line 1056
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1057
    return-void

    .line 1054
    :cond_10
    new-instance v0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0
.end method

.method public blacklist writeRawVarint32(I)V
    .registers 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 991
    nop

    :goto_1
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_9

    .line 992
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 993
    return-void

    .line 995
    :cond_9
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 996
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1
.end method

.method public blacklist writeRawVarint64(J)V
    .registers 7
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1017
    nop

    :goto_1
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 1018
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 1019
    return-void

    .line 1021
    :cond_f
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 1022
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_1
.end method

.method public blacklist writeSFixed32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 198
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    .line 199
    return-void
.end method

.method public blacklist writeSFixed32NoTag(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian32(I)V

    .line 537
    return-void
.end method

.method public blacklist writeSFixed64(IJ)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 205
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    .line 206
    return-void
.end method

.method public blacklist writeSFixed64NoTag(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian64(J)V

    .line 542
    return-void
.end method

.method public blacklist writeSInt32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 212
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    .line 213
    return-void
.end method

.method public blacklist writeSInt32NoTag(I)V
    .registers 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 547
    return-void
.end method

.method public blacklist writeSInt64(IJ)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 219
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V

    .line 220
    return-void
.end method

.method public blacklist writeSInt64NoTag(J)V
    .registers 5
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    .line 552
    return-void
.end method

.method public blacklist writeString(ILjava/lang/String;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 152
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public blacklist writeStringNoTag(Ljava/lang/String;)V
    .registers 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    .line 302
    .local v0, "minLengthVarIntSize":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    .line 303
    .local v1, "maxLengthVarIntSize":I
    if-ne v0, v1, :cond_54

    .line 304
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 308
    .local v2, "oldPosition":I
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lt v3, v0, :cond_46

    .line 311
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    add-int v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 312
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encode(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 313
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 314
    .local v3, "newPosition":I
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 315
    sub-int v4, v3, v2

    sub-int/2addr v4, v0

    invoke-virtual {p0, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 316
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 317
    nop

    .end local v2    # "oldPosition":I
    .end local v3    # "newPosition":I
    goto :goto_60

    .line 309
    .restart local v2    # "oldPosition":I
    :cond_46
    new-instance v3, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    add-int v4, v2, v0

    iget-object v5, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    .end local p0    # "this":Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .end local p1    # "value":Ljava/lang/String;
    throw v3

    .line 318
    .end local v2    # "oldPosition":I
    .restart local p0    # "this":Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .restart local p1    # "value":Ljava/lang/String;
    :cond_54
    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 319
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encode(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_60
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_60} :catch_62

    .line 326
    .end local v0    # "minLengthVarIntSize":I
    .end local v1    # "maxLengthVarIntSize":I
    :goto_60
    nop

    .line 327
    return-void

    .line 321
    :catch_62
    move-exception v0

    .line 322
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    .line 323
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    .line 324
    .local v1, "outOfSpaceException":Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;
    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 325
    throw v1
.end method

.method public blacklist writeTag(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "wireType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 977
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 978
    return-void
.end method

.method public blacklist writeUInt32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 181
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    .line 182
    return-void
.end method

.method public blacklist writeUInt32NoTag(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 524
    return-void
.end method

.method public blacklist writeUInt64(IJ)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 110
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    .line 111
    return-void
.end method

.method public blacklist writeUInt64NoTag(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    .line 263
    return-void
.end method
