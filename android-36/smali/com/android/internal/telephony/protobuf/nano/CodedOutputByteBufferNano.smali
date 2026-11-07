.class public final Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;
.super Ljava/lang/Object;
.source "CodedOutputByteBufferNano.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;
    }
.end annotation


# static fields
.field public static final blacklist LITTLE_ENDIAN_32_SIZE:I = 0x4

.field public static final blacklist LITTLE_ENDIAN_64_SIZE:I = 0x8


# instance fields
.field private final blacklist buffer:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    .line 65
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private constructor blacklist <init>([BII)V
    .registers 4

    .line 60
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static blacklist computeBoolSize(IZ)I
    .registers 2

    .line 621
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSizeNoTag(Z)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeBoolSizeNoTag(Z)I
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist computeBytesSize(I[B)I
    .registers 2

    .line 657
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSizeNoTag([B)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeBytesSizeNoTag([B)I
    .registers 2

    .line 837
    array-length v0, p0

    invoke-static {v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    array-length p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static blacklist computeDoubleSize(ID)I
    .registers 3

    .line 562
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSizeNoTag(D)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeDoubleSizeNoTag(D)I
    .registers 2

    .line 0
    const/16 p0, 0x8

    return p0
.end method

.method public static blacklist computeEnumSize(II)I
    .registers 2

    .line 674
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeEnumSizeNoTag(I)I
    .registers 1

    .line 853
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method static blacklist computeFieldSize(IILjava/lang/Object;)I
    .registers 4

    packed-switch p1, :pswitch_data_d0

    .line 1130
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1120
    :pswitch_1a
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64Size(IJ)I

    move-result p0

    return p0

    .line 1112
    :pswitch_25
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    move-result p0

    return p0

    .line 1124
    :pswitch_30
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed64Size(IJ)I

    move-result p0

    return p0

    .line 1114
    :pswitch_3b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32Size(II)I

    move-result p0

    return p0

    .line 1104
    :pswitch_46
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSize(II)I

    move-result p0

    return p0

    .line 1110
    :pswitch_51
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result p0

    return p0

    .line 1096
    :pswitch_5c
    check-cast p2, [B

    invoke-static {p0, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result p0

    return p0

    .line 1126
    :pswitch_63
    check-cast p2, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result p0

    return p0

    .line 1128
    :pswitch_6a
    check-cast p2, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result p0

    return p0

    .line 1098
    :pswitch_71
    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result p0

    return p0

    .line 1094
    :pswitch_78
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    return p0

    .line 1106
    :pswitch_83
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result p0

    return p0

    .line 1122
    :pswitch_8e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result p0

    return p0

    .line 1108
    :pswitch_99
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    return p0

    .line 1118
    :pswitch_a4
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result p0

    return p0

    .line 1116
    :pswitch_af
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    return p0

    .line 1100
    :pswitch_ba
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result p0

    return p0

    .line 1102
    :pswitch_c5
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result p0

    return p0

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_c5
        :pswitch_ba
        :pswitch_af
        :pswitch_a4
        :pswitch_99
        :pswitch_8e
        :pswitch_83
        :pswitch_78
        :pswitch_71
        :pswitch_6a
        :pswitch_63
        :pswitch_5c
        :pswitch_51
        :pswitch_46
        :pswitch_3b
        :pswitch_30
        :pswitch_25
        :pswitch_1a
    .end packed-switch
.end method

.method public static blacklist computeFixed32Size(II)I
    .registers 2

    .line 612
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeFixed32SizeNoTag(I)I
    .registers 1

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public static blacklist computeFixed64Size(IJ)I
    .registers 3

    .line 603
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeFixed64SizeNoTag(J)I
    .registers 2

    .line 0
    const/16 p0, 0x8

    return p0
.end method

.method public static blacklist computeFloatSize(IF)I
    .registers 2

    .line 570
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSizeNoTag(F)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeFloatSizeNoTag(F)I
    .registers 1

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public static blacklist computeGroupSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I
    .registers 2

    .line 639
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSizeNoTag(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeGroupSizeNoTag(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)I
    .registers 1

    .line 820
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result p0

    return p0
.end method

.method public static blacklist computeInt32Size(II)I
    .registers 2

    .line 594
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeInt32SizeNoTag(I)I
    .registers 1

    if-ltz p0, :cond_7

    .line 775
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result p0

    return p0

    :cond_7
    const/16 p0, 0xa

    return p0
.end method

.method public static blacklist computeInt64Size(IJ)I
    .registers 3

    .line 586
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeInt64SizeNoTag(J)I
    .registers 2

    .line 766
    invoke-static {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint64Size(J)I

    move-result p0

    return p0
.end method

.method public static blacklist computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I
    .registers 2

    .line 648
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSizeNoTag(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeMessageSizeNoTag(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)I
    .registers 2

    .line 828
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result p0

    .line 829
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static blacklist computeRawVarint32Size(I)I
    .registers 2

    .line 0
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 p0, 0x3

    return p0

    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    const/4 p0, 0x4

    return p0

    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method public static blacklist computeRawVarint64Size(J)I
    .registers 6

    .line 0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/4 p0, 0x2

    return p0

    :cond_14
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    const/4 p0, 0x3

    return p0

    :cond_1e
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    const/4 p0, 0x4

    return p0

    :cond_28
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    const/4 p0, 0x5

    return p0

    :cond_34
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_40

    const/4 p0, 0x6

    return p0

    :cond_40
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_49

    const/4 p0, 0x7

    return p0

    :cond_49
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_53

    const/16 p0, 0x8

    return p0

    :cond_53
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_5d

    const/16 p0, 0x9

    return p0

    :cond_5d
    const/16 p0, 0xa

    return p0
.end method

.method public static blacklist computeSFixed32Size(II)I
    .registers 2

    .line 683
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeSFixed32SizeNoTag(I)I
    .registers 1

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public static blacklist computeSFixed64Size(IJ)I
    .registers 3

    .line 692
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeSFixed64SizeNoTag(J)I
    .registers 2

    .line 0
    const/16 p0, 0x8

    return p0
.end method

.method public static blacklist computeSInt32Size(II)I
    .registers 2

    .line 700
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeSInt32SizeNoTag(I)I
    .registers 1

    .line 877
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag32(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method public static blacklist computeSInt64Size(IJ)I
    .registers 3

    .line 708
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeSInt64SizeNoTag(J)I
    .registers 2

    .line 885
    invoke-static {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag64(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint64Size(J)I

    move-result p0

    return p0
.end method

.method public static blacklist computeStringSize(ILjava/lang/String;)I
    .registers 2

    .line 630
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeStringSizeNoTag(Ljava/lang/String;)I
    .registers 2

    .line 811
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->encodedLength(Ljava/lang/CharSequence;)I

    move-result p0

    .line 812
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static blacklist computeTagSize(I)I
    .registers 2

    const/4 v0, 0x0

    .line 982
    invoke-static {p0, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method public static blacklist computeUInt32Size(II)I
    .registers 2

    .line 665
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeUInt32SizeNoTag(I)I
    .registers 1

    .line 845
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method public static blacklist computeUInt64Size(IJ)I
    .registers 3

    .line 578
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeUInt64SizeNoTag(J)I
    .registers 2

    .line 758
    invoke-static {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint64Size(J)I

    move-result p0

    return p0
.end method

.method private static blacklist encode(Ljava/lang/CharSequence;[BII)I
    .registers 11

    .line 457
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr p3, p2

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0x80

    if-ge v1, v0, :cond_1a

    add-int v3, v1, p2

    if-ge v3, p3, :cond_1a

    .line 463
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v2, :cond_1a

    int-to-byte v2, v4

    .line 464
    aput-byte v2, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    if-ne v1, v0, :cond_1e

    add-int/2addr p2, v0

    return p2

    :cond_1e
    add-int/2addr p2, v1

    :goto_1f
    if-ge v1, v0, :cond_f2

    .line 471
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ge v3, v2, :cond_31

    if-ge p2, p3, :cond_31

    add-int/lit8 v4, p2, 0x1

    int-to-byte v3, v3

    .line 473
    aput-byte v3, p1, p2

    move p2, v4

    goto/16 :goto_b5

    :cond_31
    const/16 v4, 0x800

    if-ge v3, v4, :cond_4b

    add-int/lit8 v4, p3, -0x2

    if-gt p2, v4, :cond_4b

    add-int/lit8 v4, p2, 0x1

    ushr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    .line 475
    aput-byte v5, p1, p2

    add-int/lit8 p2, p2, 0x2

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 476
    aput-byte v3, p1, v4

    goto :goto_b5

    :cond_4b
    const v4, 0xd800

    if-lt v3, v4, :cond_55

    const v4, 0xdfff

    if-ge v4, v3, :cond_75

    :cond_55
    add-int/lit8 v4, p3, -0x3

    if-gt p2, v4, :cond_75

    add-int/lit8 v4, p2, 0x1

    ushr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    .line 479
    aput-byte v5, p1, p2

    add-int/lit8 v5, p2, 0x2

    ushr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v2

    int-to-byte v6, v6

    .line 480
    aput-byte v6, p1, v4

    add-int/lit8 p2, p2, 0x3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 481
    aput-byte v3, p1, v5

    goto :goto_b5

    :cond_75
    add-int/lit8 v4, p3, -0x4

    if-gt p2, v4, :cond_d3

    add-int/lit8 v4, v1, 0x1

    .line 485
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_ba

    .line 486
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 489
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    add-int/lit8 v3, p2, 0x1

    ushr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    .line 490
    aput-byte v5, p1, p2

    add-int/lit8 v5, p2, 0x2

    ushr-int/lit8 v6, v1, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v2

    int-to-byte v6, v6

    .line 491
    aput-byte v6, p1, v3

    add-int/lit8 v3, p2, 0x3

    ushr-int/lit8 v6, v1, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v2

    int-to-byte v6, v6

    .line 492
    aput-byte v6, p1, v5

    add-int/lit8 p2, p2, 0x4

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 493
    aput-byte v1, p1, v3

    move v1, v4

    :goto_b5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1f

    :cond_b9
    move v1, v4

    .line 487
    :cond_ba
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unpaired surrogate at index "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 495
    :cond_d3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed writing "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, " at index "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f2
    return p2
.end method

.method private static blacklist encode(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 408
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_38

    .line 410
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 413
    :try_start_c
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
    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->encode(Ljava/lang/CharSequence;[BII)I

    move-result p0

    .line 416
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_29
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p0

    .line 418
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    .line 419
    invoke-virtual {p1, p0}, Ljava/nio/BufferOverflowException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 420
    throw p1

    .line 423
    :cond_34
    invoke-static {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->encodeDirect(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    return-void

    .line 409
    :cond_38
    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method private static blacklist encodeDirect(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 8

    .line 428
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_a4

    .line 430
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_15

    int-to-byte v2, v2

    .line 432
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_a0

    :cond_15
    const/16 v4, 0x800

    if-ge v2, v4, :cond_2a

    ushr-int/lit8 v4, v2, 0x6

    or-int/lit16 v4, v4, 0x3c0

    int-to-byte v4, v4

    .line 434
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 435
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_a0

    :cond_2a
    const v4, 0xd800

    if-lt v2, v4, :cond_88

    const v4, 0xdfff

    if-ge v4, v2, :cond_35

    goto :goto_88

    :cond_35
    add-int/lit8 v4, v1, 0x1

    .line 443
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_6f

    .line 444
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 447
    invoke-static {v2, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    ushr-int/lit8 v2, v1, 0x12

    or-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    .line 448
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v2, v1, 0xc

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 449
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 450
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    .line 451
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move v1, v4

    goto :goto_a0

    :cond_6e
    move v1, v4

    .line 445
    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unpaired surrogate at index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_88
    :goto_88
    ushr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0x1e0

    int-to-byte v4, v4

    .line 438
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    .line 439
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 440
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_a0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_a4
    return-void
.end method

.method public static blacklist encodeZigZag32(I)I
    .registers 2

    .line 0
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static blacklist encodeZigZag64(J)J
    .registers 5

    .line 0
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private static blacklist encodedLength(Ljava/lang/CharSequence;)I
    .registers 6

    .line 340
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_12

    .line 345
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_12

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    move v2, v0

    :goto_13
    if-ge v1, v0, :cond_2a

    .line 351
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x800

    if-ge v3, v4, :cond_25

    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 355
    :cond_25
    invoke-static {p0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    move-result p0

    add-int/2addr v2, p0

    :cond_2a
    if-lt v2, v0, :cond_2d

    return v2

    .line 362
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UTF-8 length does not fit in int: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, v2

    const-wide v3, 0x100000000L

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .registers 6

    .line 369
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge p1, v0, :cond_46

    .line 372
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x800

    if-ge v2, v3, :cond_15

    rsub-int/lit8 v2, v2, 0x7f

    ushr-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    goto :goto_43

    :cond_15
    add-int/lit8 v1, v1, 0x2

    const v3, 0xd800

    if-gt v3, v2, :cond_43

    const v3, 0xdfff

    if-gt v2, v3, :cond_43

    .line 380
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_2c

    add-int/lit8 p1, p1, 0x1

    goto :goto_43

    .line 382
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unpaired surrogate at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_43
    :goto_43
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_46
    return v1
.end method

.method public static blacklist newInstance([B)Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;
    .registers 3

    .line 75
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->newInstance([BII)Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist newInstance([BII)Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;
    .registers 4

    .line 87
    new-instance v0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public blacklist checkNoSpaceLeft()V
    .registers 2

    .line 906
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->spaceLeft()I

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 907
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Did not write as much data as expected."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist position()I
    .registers 1

    .line 916
    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    return p0
.end method

.method public blacklist reset()V
    .registers 1

    .line 926
    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public blacklist spaceLeft()I
    .registers 1

    .line 895
    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    return p0
.end method

.method public blacklist writeBool(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 145
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    return-void
.end method

.method public blacklist writeBoolNoTag(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    return-void
.end method

.method public blacklist writeBytes(I[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 173
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 174
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBytesNoTag([B)V

    return-void
.end method

.method public blacklist writeBytesNoTag([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 518
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    return-void
.end method

.method public blacklist writeDouble(ID)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 96
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    return-void
.end method

.method public blacklist writeDoubleNoTag(D)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian64(J)V

    return-void
.end method

.method public blacklist writeEnum(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 191
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V

    return-void
.end method

.method public blacklist writeEnumNoTag(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    return-void
.end method

.method blacklist writeField(IILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p2, :pswitch_data_be

    .line 1210
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown type: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1198
    :pswitch_1a
    check-cast p3, Ljava/lang/Long;

    .line 1199
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64(IJ)V

    return-void

    .line 1194
    :pswitch_24
    check-cast p3, Ljava/lang/Integer;

    .line 1195
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32(II)V

    return-void

    .line 1190
    :pswitch_2e
    check-cast p3, Ljava/lang/Long;

    .line 1191
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64(IJ)V

    return-void

    .line 1186
    :pswitch_38
    check-cast p3, Ljava/lang/Integer;

    .line 1187
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32(II)V

    return-void

    .line 1182
    :pswitch_42
    check-cast p3, Ljava/lang/Integer;

    .line 1183
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeEnum(II)V

    return-void

    .line 1178
    :pswitch_4c
    check-cast p3, Ljava/lang/Integer;

    .line 1179
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    return-void

    .line 1174
    :pswitch_56
    check-cast p3, [B

    .line 1175
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    return-void

    .line 1202
    :pswitch_5c
    check-cast p3, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    .line 1203
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    return-void

    .line 1206
    :pswitch_62
    check-cast p3, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    .line 1207
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeGroup(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    return-void

    .line 1170
    :pswitch_68
    check-cast p3, Ljava/lang/String;

    .line 1171
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    return-void

    .line 1166
    :pswitch_6e
    check-cast p3, Ljava/lang/Boolean;

    .line 1167
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    return-void

    .line 1162
    :pswitch_78
    check-cast p3, Ljava/lang/Integer;

    .line 1163
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32(II)V

    return-void

    .line 1158
    :pswitch_82
    check-cast p3, Ljava/lang/Long;

    .line 1159
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    return-void

    .line 1154
    :pswitch_8c
    check-cast p3, Ljava/lang/Integer;

    .line 1155
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    return-void

    .line 1150
    :pswitch_96
    check-cast p3, Ljava/lang/Long;

    .line 1151
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    return-void

    .line 1146
    :pswitch_a0
    check-cast p3, Ljava/lang/Long;

    .line 1147
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    return-void

    .line 1142
    :pswitch_aa
    check-cast p3, Ljava/lang/Float;

    .line 1143
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    return-void

    .line 1138
    :pswitch_b4
    check-cast p3, Ljava/lang/Double;

    .line 1139
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    return-void

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_b4
        :pswitch_aa
        :pswitch_a0
        :pswitch_96
        :pswitch_8c
        :pswitch_82
        :pswitch_78
        :pswitch_6e
        :pswitch_68
        :pswitch_62
        :pswitch_5c
        :pswitch_56
        :pswitch_4c
        :pswitch_42
        :pswitch_38
        :pswitch_2e
        :pswitch_24
        :pswitch_1a
    .end packed-switch
.end method

.method public blacklist writeFixed32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 138
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    return-void
.end method

.method public blacklist writeFixed32NoTag(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian32(I)V

    return-void
.end method

.method public blacklist writeFixed64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 130
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 131
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    return-void
.end method

.method public blacklist writeFixed64NoTag(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian64(J)V

    return-void
.end method

.method public blacklist writeFloat(IF)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 103
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    return-void
.end method

.method public blacklist writeFloatNoTag(F)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian32(I)V

    return-void
.end method

.method public blacklist writeGroup(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 158
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 159
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeGroupNoTag(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    const/4 p2, 0x4

    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    return-void
.end method

.method public blacklist writeGroupNoTag(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method

.method public blacklist writeInt32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 124
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    return-void
.end method

.method public blacklist writeInt32NoTag(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_6

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    return-void

    :cond_6
    int-to-long v0, p1

    .line 276
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    return-void
.end method

.method public blacklist writeInt64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 117
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    return-void
.end method

.method public blacklist writeInt64NoTag(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    return-void
.end method

.method public blacklist writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 166
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 167
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessageNoTag(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    return-void
.end method

.method public blacklist writeMessageNoTag(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->getCachedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 512
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method

.method public blacklist writeRawByte(B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 945
    iget-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 950
    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    .line 947
    :cond_e
    new-instance p1, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-direct {p1, v0, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw p1
.end method

.method public blacklist writeRawByte(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 955
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(B)V

    return-void
.end method

.method public blacklist writeRawBytes([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 960
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([BII)V

    return-void
.end method

.method public blacklist writeRawBytes([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 966
    iget-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p3, :cond_e

    .line 967
    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void

    .line 970
    :cond_e
    new-instance p1, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object p2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-direct {p1, p2, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw p1
.end method

.method public blacklist writeRawLittleEndian32(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1043
    iget-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_f

    .line 1046
    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void

    .line 1044
    :cond_f
    new-instance p1, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-direct {p1, v0, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw p1
.end method

.method public blacklist writeRawLittleEndian64(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1053
    iget-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_10

    .line 1056
    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-void

    .line 1054
    :cond_10
    new-instance p1, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object p2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-direct {p1, p2, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw p1
.end method

.method public blacklist writeRawVarint32(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8

    .line 992
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    return-void

    :cond_8
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 995
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public blacklist writeRawVarint64(J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    long-to-int p1, p1

    .line 1018
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    return-void

    :cond_e
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 1021
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public blacklist writeSFixed32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 197
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 198
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    return-void
.end method

.method public blacklist writeSFixed32NoTag(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian32(I)V

    return-void
.end method

.method public blacklist writeSFixed64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 204
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 205
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    return-void
.end method

.method public blacklist writeSFixed64NoTag(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian64(J)V

    return-void
.end method

.method public blacklist writeSInt32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 212
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    return-void
.end method

.method public blacklist writeSInt32NoTag(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag32(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    return-void
.end method

.method public blacklist writeSInt64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 219
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V

    return-void
.end method

.method public blacklist writeSInt64NoTag(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    invoke-static {p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag64(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    return-void
.end method

.method public blacklist writeString(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 151
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 152
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist writeStringNoTag(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    .line 302
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    if-ne v0, v1, :cond_54

    .line 304
    iget-object v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 308
    iget-object v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v0, :cond_47

    .line 311
    iget-object v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    add-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 312
    iget-object v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->encode(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 313
    iget-object p1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    .line 314
    iget-object v2, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v1, p1, v1

    sub-int/2addr v1, v0

    .line 315
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :catch_45
    move-exception p1

    goto :goto_61

    .line 309
    :cond_47
    new-instance p1, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-direct {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw p1

    .line 318
    :cond_54
    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->encode(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_60
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_60} :catch_45

    return-void

    .line 322
    :goto_61
    new-instance v0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    .line 323
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    .line 324
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 325
    throw v0
.end method

.method public blacklist writeTag(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 977
    invoke-static {p1, p2}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    return-void
.end method

.method public blacklist writeUInt32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 181
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    return-void
.end method

.method public blacklist writeUInt32NoTag(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    return-void
.end method

.method public blacklist writeUInt64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 110
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    return-void
.end method

.method public blacklist writeUInt64NoTag(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    return-void
.end method
