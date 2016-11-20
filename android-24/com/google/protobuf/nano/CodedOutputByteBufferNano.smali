.class public final Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
.super Ljava/lang/Object;
.source "CodedOutputByteBufferNano.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;
    }
.end annotation


# static fields
.field public static final LITTLE_ENDIAN_32_SIZE:I = 0x4

.field public static final LITTLE_ENDIAN_64_SIZE:I = 0x8

.field private static final MAX_UTF8_EXPANSION:I = 0x3


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    iput-object p1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@5
    .line 65
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@7
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@c
    .line 63
    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 60
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;-><init>(Ljava/nio/ByteBuffer;)V

    #@7
    .line 59
    return-void
.end method

.method public static computeBoolSize(IZ)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 642
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSizeNoTag(Z)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static computeBoolSizeNoTag(Z)I
    .locals 1
    .param p0, "value"    # Z

    #@0
    .prologue
    .line 833
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public static computeBytesSize(II)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "length"    # I

    #@0
    .prologue
    .line 687
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSizeNoTag(I)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static computeBytesSize(I[B)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # [B

    #@0
    .prologue
    .line 678
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSizeNoTag([B)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static computeBytesSizeNoTag(I)I
    .locals 1
    .param p0, "length"    # I

    #@0
    .prologue
    .line 875
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    #@3
    move-result v0

    #@4
    add-int/2addr v0, p0

    #@5
    return v0
.end method

.method public static computeBytesSizeNoTag([B)I
    .locals 2
    .param p0, "value"    # [B

    #@0
    .prologue
    .line 867
    array-length v0, p0

    #@1
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    #@4
    move-result v0

    #@5
    array-length v1, p0

    #@6
    add-int/2addr v0, v1

    #@7
    return v0
.end method

.method public static computeDoubleSize(ID)I
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # D

    #@0
    .prologue
    .line 583
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSizeNoTag(D)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static computeDoubleSizeNoTag(D)I
    .locals 1
    .param p0, "value"    # D

    #@0
    .prologue
    .line 772
    const/16 v0, 0x8

    #@2
    return v0
.end method

.method public static computeEnumSize(II)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    #@0
    .prologue
    .line 704
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSizeNoTag(I)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static computeEnumSizeNoTag(I)I
    .locals 1
    .param p0, "value"    # I

    #@0
    .prologue
    .line 891
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static computeFixed32Size(II)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    #@0
    .prologue
    .line 633
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32SizeNoTag(I)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static computeFixed32SizeNoTag(I)I
    .locals 1
    .param p0, "value"    # I

    #@0
    .prologue
    .line 825
    const/4 v0, 0x4

    #@1
    return v0
.end method

.method public static computeFixed64Size(IJ)I
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    #@0
    .prologue
    .line 624
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64SizeNoTag(J)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static computeFixed64SizeNoTag(J)I
    .locals 1
    .param p0, "value"    # J

    #@0
    .prologue
    .line 817
    const/16 v0, 0x8

    #@2
    return v0
.end method

.method public static computeFloatSize(IF)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # F

    #@0
    .prologue
    .line 591
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSizeNoTag(F)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static computeFloatSizeNoTag(F)I
    .locals 1
    .param p0, "value"    # F

    #@0
    .prologue
    .line 780
    const/4 v0, 0x4

    #@1
    return v0
.end method

.method public static computeGroupSize(ILcom/google/protobuf/nano/MessageNano;)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lcom/google/protobuf/nano/MessageNano;

    #@0
    .prologue
    .line 660
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    #@3
    move-result v0

    #@4
    mul-int/lit8 v0, v0, 0x2

    #@6
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSizeNoTag(Lcom/google/protobuf/nano/MessageNano;)I

    #@9
    move-result v1

    #@a
    add-int/2addr v0, v1

    #@b
    return v0
.end method

.method public static computeGroupSizeNoTag(Lcom/google/protobuf/nano/MessageNano;)I
    .locals 1
    .param p0, "value"    # Lcom/google/protobuf/nano/MessageNano;

    #@0
    .prologue
    .line 850
    invoke-virtual {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static computeInt32Size(II)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    #@0
    .prologue
    .line 615
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static computeInt32SizeNoTag(I)I
    .locals 1
    .param p0, "value"    # I

    #@0
    .prologue
    .line 804
    if-ltz p0, :cond_0

    #@2
    .line 805
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    #@5
    move-result v0

    #@6
    return v0

    #@7
    .line 808
    :cond_0
    const/16 v0, 0xa

    #@9
    return v0
.end method

.method public static computeInt64Size(IJ)I
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    #@0
    .prologue
    .line 607
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static computeInt64SizeNoTag(J)I
    .locals 2
    .param p0, "value"    # J

    #@0
    .prologue
    .line 796
    invoke-static {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint64Size(J)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lcom/google/protobuf/nano/MessageNano;

    #@0
    .prologue
    .line 669
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSizeNoTag(Lcom/google/protobuf/nano/MessageNano;)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static computeMessageSizeNoTag(Lcom/google/protobuf/nano/MessageNano;)I
    .locals 2
    .param p0, "value"    # Lcom/google/protobuf/nano/MessageNano;

    #@0
    .prologue
    .line 858
    invoke-virtual {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 859
    .local v0, "size":I
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    #@7
    move-result v1

    #@8
    add-int/2addr v1, v0

    #@9
    return v1
.end method

.method public static computeRawVarint32Size(I)I
    .locals 1
    .param p0, "value"    # I

    #@0
    .prologue
    .line 1045
    and-int/lit8 v0, p0, -0x80

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 1046
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    #@8
    if-nez v0, :cond_1

    #@a
    const/4 v0, 0x2

    #@b
    return v0

    #@c
    .line 1047
    :cond_1
    const/high16 v0, -0x200000

    #@e
    and-int/2addr v0, p0

    #@f
    if-nez v0, :cond_2

    #@11
    const/4 v0, 0x3

    #@12
    return v0

    #@13
    .line 1048
    :cond_2
    const/high16 v0, -0x10000000

    #@15
    and-int/2addr v0, p0

    #@16
    if-nez v0, :cond_3

    #@18
    const/4 v0, 0x4

    #@19
    return v0

    #@1a
    .line 1049
    :cond_3
    const/4 v0, 0x5

    #@1b
    return v0
.end method

.method public static computeRawVarint64Size(J)I
    .locals 4
    .param p0, "value"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 1067
    const-wide/16 v0, -0x80

    #@4
    and-long/2addr v0, p0

    #@5
    cmp-long v0, v0, v2

    #@7
    if-nez v0, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 1068
    :cond_0
    const-wide/16 v0, -0x4000

    #@d
    and-long/2addr v0, p0

    #@e
    cmp-long v0, v0, v2

    #@10
    if-nez v0, :cond_1

    #@12
    const/4 v0, 0x2

    #@13
    return v0

    #@14
    .line 1069
    :cond_1
    const-wide/32 v0, -0x200000

    #@17
    and-long/2addr v0, p0

    #@18
    cmp-long v0, v0, v2

    #@1a
    if-nez v0, :cond_2

    #@1c
    const/4 v0, 0x3

    #@1d
    return v0

    #@1e
    .line 1070
    :cond_2
    const-wide/32 v0, -0x10000000

    #@21
    and-long/2addr v0, p0

    #@22
    cmp-long v0, v0, v2

    #@24
    if-nez v0, :cond_3

    #@26
    const/4 v0, 0x4

    #@27
    return v0

    #@28
    .line 1071
    :cond_3
    const-wide v0, -0x800000000L

    #@2d
    and-long/2addr v0, p0

    #@2e
    cmp-long v0, v0, v2

    #@30
    if-nez v0, :cond_4

    #@32
    const/4 v0, 0x5

    #@33
    return v0

    #@34
    .line 1072
    :cond_4
    const-wide v0, -0x40000000000L

    #@39
    and-long/2addr v0, p0

    #@3a
    cmp-long v0, v0, v2

    #@3c
    if-nez v0, :cond_5

    #@3e
    const/4 v0, 0x6

    #@3f
    return v0

    #@40
    .line 1073
    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    #@42
    and-long/2addr v0, p0

    #@43
    cmp-long v0, v0, v2

    #@45
    if-nez v0, :cond_6

    #@47
    const/4 v0, 0x7

    #@48
    return v0

    #@49
    .line 1074
    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    #@4b
    and-long/2addr v0, p0

    #@4c
    cmp-long v0, v0, v2

    #@4e
    if-nez v0, :cond_7

    #@50
    const/16 v0, 0x8

    #@52
    return v0

    #@53
    .line 1075
    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    #@55
    and-long/2addr v0, p0

    #@56
    cmp-long v0, v0, v2

    #@58
    if-nez v0, :cond_8

    #@5a
    const/16 v0, 0x9

    #@5c
    return v0

    #@5d
    .line 1076
    :cond_8
    const/16 v0, 0xa

    #@5f
    return v0
.end method

.method public static computeSFixed32Size(II)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    #@0
    .prologue
    .line 713
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32SizeNoTag(I)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static computeSFixed32SizeNoTag(I)I
    .locals 1
    .param p0, "value"    # I

    #@0
    .prologue
    .line 899
    const/4 v0, 0x4

    #@1
    return v0
.end method

.method public static computeSFixed64Size(IJ)I
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    #@0
    .prologue
    .line 722
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed64SizeNoTag(J)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static computeSFixed64SizeNoTag(J)I
    .locals 1
    .param p0, "value"    # J

    #@0
    .prologue
    .line 907
    const/16 v0, 0x8

    #@2
    return v0
.end method

.method public static computeSInt32Size(II)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    #@0
    .prologue
    .line 730
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32SizeNoTag(I)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static computeSInt32SizeNoTag(I)I
    .locals 1
    .param p0, "value"    # I

    #@0
    .prologue
    .line 915
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag32(I)I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static computeSInt64Size(IJ)I
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    #@0
    .prologue
    .line 738
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64SizeNoTag(J)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static computeSInt64SizeNoTag(J)I
    .locals 2
    .param p0, "value"    # J

    #@0
    .prologue
    .line 923
    invoke-static {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag64(J)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint64Size(J)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static computeStringSize(ILjava/lang/String;)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 651
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static computeStringSizeNoTag(Ljava/lang/String;)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 841
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encodedLength(Ljava/lang/CharSequence;)I

    #@3
    move-result v0

    #@4
    .line 842
    .local v0, "length":I
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    #@7
    move-result v1

    #@8
    add-int/2addr v1, v0

    #@9
    return v1
.end method

.method public static computeTagSize(I)I
    .locals 1
    .param p0, "fieldNumber"    # I

    #@0
    .prologue
    .line 1020
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    #@4
    move-result v0

    #@5
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public static computeUInt32Size(II)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    #@0
    .prologue
    .line 695
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32SizeNoTag(I)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static computeUInt32SizeNoTag(I)I
    .locals 1
    .param p0, "value"    # I

    #@0
    .prologue
    .line 883
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static computeUInt64Size(IJ)I
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    #@0
    .prologue
    .line 599
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64SizeNoTag(J)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static computeUInt64SizeNoTag(J)I
    .locals 2
    .param p0, "value"    # J

    #@0
    .prologue
    .line 788
    invoke-static {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint64Size(J)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static encode(Ljava/lang/CharSequence;[BII)I
    .locals 11
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 465
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v7

    #@4
    .line 466
    .local v7, "utf16Length":I
    move v3, p2

    #@5
    .line 467
    .local v3, "j":I
    const/4 v2, 0x0

    #@6
    .line 468
    .local v2, "i":I
    add-int v5, p2, p3

    #@8
    .line 471
    .local v5, "limit":I
    :goto_0
    if-ge v2, v7, :cond_0

    #@a
    add-int v8, v2, p2

    #@c
    if-ge v8, v5, :cond_0

    #@e
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@11
    move-result v0

    #@12
    .local v0, "c":C
    const/16 v8, 0x80

    #@14
    if-ge v0, v8, :cond_0

    #@16
    .line 472
    add-int v8, p2, v2

    #@18
    int-to-byte v9, v0

    #@19
    aput-byte v9, p1, v8

    #@1b
    .line 471
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 474
    .end local v0    # "c":C
    :cond_0
    if-ne v2, v7, :cond_1

    #@20
    .line 475
    add-int v8, p2, v7

    #@22
    return v8

    #@23
    .line 477
    :cond_1
    add-int v3, p2, v2

    #@25
    move v4, v3

    #@26
    .line 478
    .end local v3    # "j":I
    .local v4, "j":I
    :goto_1
    if-ge v2, v7, :cond_a

    #@28
    .line 479
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@2b
    move-result v0

    #@2c
    .line 480
    .restart local v0    # "c":C
    const/16 v8, 0x80

    #@2e
    if-ge v0, v8, :cond_2

    #@30
    if-ge v4, v5, :cond_2

    #@32
    .line 481
    add-int/lit8 v3, v4, 0x1

    #@34
    .end local v4    # "j":I
    .restart local v3    # "j":I
    int-to-byte v8, v0

    #@35
    aput-byte v8, p1, v4

    #@37
    .line 478
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@39
    move v4, v3

    #@3a
    .end local v3    # "j":I
    .restart local v4    # "j":I
    goto :goto_1

    #@3b
    .line 482
    :cond_2
    const/16 v8, 0x800

    #@3d
    if-ge v0, v8, :cond_3

    #@3f
    add-int/lit8 v8, v5, -0x2

    #@41
    if-gt v4, v8, :cond_3

    #@43
    .line 483
    add-int/lit8 v3, v4, 0x1

    #@45
    .end local v4    # "j":I
    .restart local v3    # "j":I
    ushr-int/lit8 v8, v0, 0x6

    #@47
    or-int/lit16 v8, v8, 0x3c0

    #@49
    int-to-byte v8, v8

    #@4a
    aput-byte v8, p1, v4

    #@4c
    .line 484
    add-int/lit8 v4, v3, 0x1

    #@4e
    .end local v3    # "j":I
    .restart local v4    # "j":I
    and-int/lit8 v8, v0, 0x3f

    #@50
    or-int/lit16 v8, v8, 0x80

    #@52
    int-to-byte v8, v8

    #@53
    aput-byte v8, p1, v3

    #@55
    move v3, v4

    #@56
    .line 482
    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    #@57
    .line 485
    .end local v3    # "j":I
    .restart local v4    # "j":I
    :cond_3
    const v8, 0xd800

    #@5a
    if-lt v0, v8, :cond_4

    #@5c
    const v8, 0xdfff

    #@5f
    if-ge v8, v0, :cond_5

    #@61
    :cond_4
    add-int/lit8 v8, v5, -0x3

    #@63
    if-gt v4, v8, :cond_5

    #@65
    .line 487
    add-int/lit8 v3, v4, 0x1

    #@67
    .end local v4    # "j":I
    .restart local v3    # "j":I
    ushr-int/lit8 v8, v0, 0xc

    #@69
    or-int/lit16 v8, v8, 0x1e0

    #@6b
    int-to-byte v8, v8

    #@6c
    aput-byte v8, p1, v4

    #@6e
    .line 488
    add-int/lit8 v4, v3, 0x1

    #@70
    .end local v3    # "j":I
    .restart local v4    # "j":I
    ushr-int/lit8 v8, v0, 0x6

    #@72
    and-int/lit8 v8, v8, 0x3f

    #@74
    or-int/lit16 v8, v8, 0x80

    #@76
    int-to-byte v8, v8

    #@77
    aput-byte v8, p1, v3

    #@79
    .line 489
    add-int/lit8 v3, v4, 0x1

    #@7b
    .end local v4    # "j":I
    .restart local v3    # "j":I
    and-int/lit8 v8, v0, 0x3f

    #@7d
    or-int/lit16 v8, v8, 0x80

    #@7f
    int-to-byte v8, v8

    #@80
    aput-byte v8, p1, v4

    #@82
    goto :goto_2

    #@83
    .line 490
    .end local v3    # "j":I
    .restart local v4    # "j":I
    :cond_5
    add-int/lit8 v8, v5, -0x4

    #@85
    if-gt v4, v8, :cond_7

    #@87
    .line 493
    add-int/lit8 v8, v2, 0x1

    #@89
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@8c
    move-result v9

    #@8d
    if-eq v8, v9, :cond_6

    #@8f
    .line 494
    add-int/lit8 v2, v2, 0x1

    #@91
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@94
    move-result v6

    #@95
    .local v6, "low":C
    invoke-static {v0, v6}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    #@98
    move-result v8

    #@99
    if-eqz v8, :cond_6

    #@9b
    .line 497
    invoke-static {v0, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    #@9e
    move-result v1

    #@9f
    .line 498
    .local v1, "codePoint":I
    add-int/lit8 v3, v4, 0x1

    #@a1
    .end local v4    # "j":I
    .restart local v3    # "j":I
    ushr-int/lit8 v8, v1, 0x12

    #@a3
    or-int/lit16 v8, v8, 0xf0

    #@a5
    int-to-byte v8, v8

    #@a6
    aput-byte v8, p1, v4

    #@a8
    .line 499
    add-int/lit8 v4, v3, 0x1

    #@aa
    .end local v3    # "j":I
    .restart local v4    # "j":I
    ushr-int/lit8 v8, v1, 0xc

    #@ac
    and-int/lit8 v8, v8, 0x3f

    #@ae
    or-int/lit16 v8, v8, 0x80

    #@b0
    int-to-byte v8, v8

    #@b1
    aput-byte v8, p1, v3

    #@b3
    .line 500
    add-int/lit8 v3, v4, 0x1

    #@b5
    .end local v4    # "j":I
    .restart local v3    # "j":I
    ushr-int/lit8 v8, v1, 0x6

    #@b7
    and-int/lit8 v8, v8, 0x3f

    #@b9
    or-int/lit16 v8, v8, 0x80

    #@bb
    int-to-byte v8, v8

    #@bc
    aput-byte v8, p1, v4

    #@be
    .line 501
    add-int/lit8 v4, v3, 0x1

    #@c0
    .end local v3    # "j":I
    .restart local v4    # "j":I
    and-int/lit8 v8, v1, 0x3f

    #@c2
    or-int/lit16 v8, v8, 0x80

    #@c4
    int-to-byte v8, v8

    #@c5
    aput-byte v8, p1, v3

    #@c7
    move v3, v4

    #@c8
    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto/16 :goto_2

    #@ca
    .line 495
    .end local v1    # "codePoint":I
    .end local v3    # "j":I
    .end local v6    # "low":C
    .restart local v4    # "j":I
    :cond_6
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@cc
    new-instance v9, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string/jumbo v10, "Unpaired surrogate at index "

    #@d4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v9

    #@d8
    add-int/lit8 v10, v2, -0x1

    #@da
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v9

    #@de
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v9

    #@e2
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e5
    throw v8

    #@e6
    .line 505
    :cond_7
    const v8, 0xd800

    #@e9
    if-gt v8, v0, :cond_8

    #@eb
    const v8, 0xdfff

    #@ee
    if-gt v0, v8, :cond_8

    #@f0
    .line 506
    add-int/lit8 v8, v2, 0x1

    #@f2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@f5
    move-result v9

    #@f6
    if-eq v8, v9, :cond_9

    #@f8
    .line 507
    add-int/lit8 v8, v2, 0x1

    #@fa
    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    #@fd
    move-result v8

    #@fe
    invoke-static {v0, v8}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    #@101
    move-result v8

    #@102
    if-eqz v8, :cond_9

    #@104
    .line 510
    :cond_8
    new-instance v8, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@106
    new-instance v9, Ljava/lang/StringBuilder;

    #@108
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    const-string/jumbo v10, "Failed writing "

    #@10e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v9

    #@112
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@115
    move-result-object v9

    #@116
    const-string/jumbo v10, " at index "

    #@119
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v9

    #@11d
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@120
    move-result-object v9

    #@121
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@124
    move-result-object v9

    #@125
    invoke-direct {v8, v9}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@128
    throw v8

    #@129
    .line 508
    :cond_9
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@12b
    new-instance v9, Ljava/lang/StringBuilder;

    #@12d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@130
    const-string/jumbo v10, "Unpaired surrogate at index "

    #@133
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v9

    #@137
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v9

    #@13b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13e
    move-result-object v9

    #@13f
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@142
    throw v8

    #@143
    .line 513
    .end local v0    # "c":C
    :cond_a
    return v4
.end method

.method private static encode(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 416
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 417
    new-instance v3, Ljava/nio/ReadOnlyBufferException;

    #@8
    invoke-direct {v3}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@b
    throw v3

    #@c
    .line 418
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    .line 421
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@15
    move-result-object v3

    #@16
    .line 422
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@19
    move-result v4

    #@1a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@1d
    move-result v5

    #@1e
    add-int/2addr v4, v5

    #@1f
    .line 423
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@22
    move-result v5

    #@23
    .line 420
    invoke-static {p0, v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encode(Ljava/lang/CharSequence;[BII)I

    #@26
    move-result v2

    #@27
    .line 424
    .local v2, "encoded":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@2a
    move-result v3

    #@2b
    sub-int v3, v2, v3

    #@2d
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 415
    .end local v2    # "encoded":I
    :goto_0
    return-void

    #@31
    .line 425
    :catch_0
    move-exception v1

    #@32
    .line 426
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v0, Ljava/nio/BufferOverflowException;

    #@34
    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    #@37
    .line 427
    .local v0, "boe":Ljava/nio/BufferOverflowException;
    invoke-virtual {v0, v1}, Ljava/nio/BufferOverflowException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@3a
    .line 428
    throw v0

    #@3b
    .line 431
    .end local v0    # "boe":Ljava/nio/BufferOverflowException;
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    invoke-static {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encodeDirect(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    #@3e
    goto :goto_0
.end method

.method private static encodeDirect(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/16 v7, 0x80

    #@2
    .line 436
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v4

    #@6
    .line 437
    .local v4, "utf16Length":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_5

    #@9
    .line 438
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@c
    move-result v0

    #@d
    .line 439
    .local v0, "c":C
    if-ge v0, v7, :cond_0

    #@f
    .line 440
    int-to-byte v5, v0

    #@10
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@13
    .line 437
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_0

    #@16
    .line 441
    :cond_0
    const/16 v5, 0x800

    #@18
    if-ge v0, v5, :cond_1

    #@1a
    .line 442
    ushr-int/lit8 v5, v0, 0x6

    #@1c
    or-int/lit16 v5, v5, 0x3c0

    #@1e
    int-to-byte v5, v5

    #@1f
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@22
    .line 443
    and-int/lit8 v5, v0, 0x3f

    #@24
    or-int/lit16 v5, v5, 0x80

    #@26
    int-to-byte v5, v5

    #@27
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@2a
    goto :goto_1

    #@2b
    .line 444
    :cond_1
    const v5, 0xd800

    #@2e
    if-lt v0, v5, :cond_2

    #@30
    const v5, 0xdfff

    #@33
    if-ge v5, v0, :cond_3

    #@35
    .line 446
    :cond_2
    ushr-int/lit8 v5, v0, 0xc

    #@37
    or-int/lit16 v5, v5, 0x1e0

    #@39
    int-to-byte v5, v5

    #@3a
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@3d
    .line 447
    ushr-int/lit8 v5, v0, 0x6

    #@3f
    and-int/lit8 v5, v5, 0x3f

    #@41
    or-int/lit16 v5, v5, 0x80

    #@43
    int-to-byte v5, v5

    #@44
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@47
    .line 448
    and-int/lit8 v5, v0, 0x3f

    #@49
    or-int/lit16 v5, v5, 0x80

    #@4b
    int-to-byte v5, v5

    #@4c
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@4f
    goto :goto_1

    #@50
    .line 451
    :cond_3
    add-int/lit8 v5, v2, 0x1

    #@52
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@55
    move-result v6

    #@56
    if-eq v5, v6, :cond_4

    #@58
    .line 452
    add-int/lit8 v2, v2, 0x1

    #@5a
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@5d
    move-result v3

    #@5e
    .local v3, "low":C
    invoke-static {v0, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    #@61
    move-result v5

    #@62
    if-eqz v5, :cond_4

    #@64
    .line 455
    invoke-static {v0, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    #@67
    move-result v1

    #@68
    .line 456
    .local v1, "codePoint":I
    ushr-int/lit8 v5, v1, 0x12

    #@6a
    or-int/lit16 v5, v5, 0xf0

    #@6c
    int-to-byte v5, v5

    #@6d
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@70
    .line 457
    ushr-int/lit8 v5, v1, 0xc

    #@72
    and-int/lit8 v5, v5, 0x3f

    #@74
    or-int/lit16 v5, v5, 0x80

    #@76
    int-to-byte v5, v5

    #@77
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@7a
    .line 458
    ushr-int/lit8 v5, v1, 0x6

    #@7c
    and-int/lit8 v5, v5, 0x3f

    #@7e
    or-int/lit16 v5, v5, 0x80

    #@80
    int-to-byte v5, v5

    #@81
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@84
    .line 459
    and-int/lit8 v5, v1, 0x3f

    #@86
    or-int/lit16 v5, v5, 0x80

    #@88
    int-to-byte v5, v5

    #@89
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@8c
    goto :goto_1

    #@8d
    .line 453
    .end local v1    # "codePoint":I
    .end local v3    # "low":C
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@8f
    new-instance v6, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v7, "Unpaired surrogate at index "

    #@97
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v6

    #@9b
    add-int/lit8 v7, v2, -0x1

    #@9d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v6

    #@a1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v6

    #@a5
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a8
    throw v5

    #@a9
    .line 435
    .end local v0    # "c":C
    :cond_5
    return-void
.end method

.method public static encodeZigZag32(I)I
    .locals 2
    .param p0, "n"    # I

    #@0
    .prologue
    .line 1111
    shl-int/lit8 v0, p0, 0x1

    #@2
    shr-int/lit8 v1, p0, 0x1f

    #@4
    xor-int/2addr v0, v1

    #@5
    return v0
.end method

.method public static encodeZigZag64(J)J
    .locals 4
    .param p0, "n"    # J

    #@0
    .prologue
    .line 1126
    const/4 v0, 0x1

    #@1
    shl-long v0, p0, v0

    #@3
    const/16 v2, 0x3f

    #@5
    shr-long v2, p0, v2

    #@7
    xor-long/2addr v0, v2

    #@8
    return-wide v0
.end method

.method private static encodedLength(Ljava/lang/CharSequence;)I
    .locals 10
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 348
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v2

    #@4
    .line 349
    .local v2, "utf16Length":I
    move v3, v2

    #@5
    .line 350
    .local v3, "utf8Length":I
    const/4 v1, 0x0

    #@6
    .line 353
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@8
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@b
    move-result v4

    #@c
    const/16 v5, 0x80

    #@e
    if-ge v4, v5, :cond_0

    #@10
    .line 354
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 358
    :cond_0
    :goto_1
    if-ge v1, v2, :cond_2

    #@15
    .line 359
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@18
    move-result v0

    #@19
    .line 360
    .local v0, "c":C
    const/16 v4, 0x800

    #@1b
    if-ge v0, v4, :cond_1

    #@1d
    .line 361
    rsub-int/lit8 v4, v0, 0x7f

    #@1f
    ushr-int/lit8 v4, v4, 0x1f

    #@21
    add-int/2addr v3, v4

    #@22
    .line 358
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_1

    #@25
    .line 363
    :cond_1
    invoke-static {p0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    #@28
    move-result v4

    #@29
    add-int/2addr v3, v4

    #@2a
    .line 368
    .end local v0    # "c":C
    :cond_2
    if-ge v3, v2, :cond_3

    #@2c
    .line 370
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@2e
    new-instance v5, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v6, "UTF-8 length does not fit in int: "

    #@36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    .line 371
    int-to-long v6, v3

    #@3b
    const-wide v8, 0x100000000L

    #@40
    add-long/2addr v6, v8

    #@41
    .line 370
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v4

    #@4d
    .line 373
    :cond_3
    return v3
.end method

.method private static encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .locals 8
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I

    #@0
    .prologue
    .line 377
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v3

    #@4
    .line 378
    .local v3, "utf16Length":I
    const/4 v4, 0x0

    #@5
    .line 379
    .local v4, "utf8Length":I
    move v2, p1

    #@6
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    #@8
    .line 380
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@b
    move-result v0

    #@c
    .line 381
    .local v0, "c":C
    const/16 v5, 0x800

    #@e
    if-ge v0, v5, :cond_1

    #@10
    .line 382
    rsub-int/lit8 v5, v0, 0x7f

    #@12
    ushr-int/lit8 v5, v5, 0x1f

    #@14
    add-int/2addr v4, v5

    #@15
    .line 379
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 384
    :cond_1
    add-int/lit8 v4, v4, 0x2

    #@1a
    .line 386
    const v5, 0xd800

    #@1d
    if-gt v5, v0, :cond_0

    #@1f
    const v5, 0xdfff

    #@22
    if-gt v0, v5, :cond_0

    #@24
    .line 388
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@27
    move-result v1

    #@28
    .line 389
    .local v1, "cp":I
    const/high16 v5, 0x10000

    #@2a
    if-ge v1, v5, :cond_2

    #@2c
    .line 390
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@2e
    new-instance v6, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v7, "Unpaired surrogate at index "

    #@36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@45
    throw v5

    #@46
    .line 392
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@48
    goto :goto_1

    #@49
    .line 396
    .end local v0    # "c":C
    .end local v1    # "cp":I
    :cond_3
    return v4
.end method

.method public static newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .locals 2
    .param p0, "flatArray"    # [B

    #@0
    .prologue
    .line 75
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([BII)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static newInstance([BII)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .locals 1
    .param p0, "flatArray"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 87
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;-><init>([BII)V

    #@5
    return-object v0
.end method


# virtual methods
.method public checkNoSpaceLeft()V
    .locals 2

    #@0
    .prologue
    .line 944
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->spaceLeft()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 945
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    .line 946
    const-string/jumbo v1, "Did not write as much data as expected."

    #@b
    .line 945
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 943
    :cond_0
    return-void
.end method

.method public position()I
    .locals 1

    #@0
    .prologue
    .line 954
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 964
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@5
    .line 963
    return-void
.end method

.method public spaceLeft()I
    .locals 1

    #@0
    .prologue
    .line 933
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public writeBool(IZ)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    #@4
    .line 145
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    #@7
    .line 143
    return-void
.end method

.method public writeBoolNoTag(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 300
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    #@6
    .line 299
    return-void

    #@7
    .line 300
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public writeBytes(I[B)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    #@4
    .line 174
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytesNoTag([B)V

    #@7
    .line 172
    return-void
.end method

.method public writeBytes(I[BII)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 181
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    #@4
    .line 182
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytesNoTag([BII)V

    #@7
    .line 180
    return-void
.end method

.method public writeBytesNoTag([B)V
    .locals 1
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 531
    array-length v0, p1

    #@1
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    #@4
    .line 532
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    #@7
    .line 530
    return-void
.end method

.method public writeBytesNoTag([BII)V
    .locals 0
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 538
    invoke-virtual {p0, p3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    #@3
    .line 539
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([BII)V

    #@6
    .line 537
    return-void
.end method

.method public writeDouble(ID)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    #@4
    .line 96
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    #@7
    .line 94
    return-void
.end method

.method public writeDoubleNoTag(D)V
    .locals 3
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 260
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian64(J)V

    #@7
    .line 259
    return-void
.end method

.method public writeEnum(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 198
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    #@4
    .line 199
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V

    #@7
    .line 197
    return-void
.end method

.method public writeEnumNoTag(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 552
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    #@3
    .line 551
    return-void
.end method

.method public writeFixed32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    const/4 v0, 0x5

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    #@4
    .line 138
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    #@7
    .line 136
    return-void
.end method

.method public writeFixed32NoTag(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian32(I)V

    #@3
    .line 294
    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 130
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    #@4
    .line 131
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    #@7
    .line 129
    return-void
.end method

.method public writeFixed64NoTag(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 290
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian64(J)V

    #@3
    .line 289
    return-void
.end method

.method public writeFloat(IF)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    const/4 v0, 0x5

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    #@4
    .line 103
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    #@7
    .line 101
    return-void
.end method

.method public writeFloatNoTag(F)V
    .locals 1
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 265
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian32(I)V

    #@7
    .line 264
    return-void
.end method

.method public writeGroup(ILcom/google/protobuf/nano/MessageNano;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 158
    const/4 v0, 0x3

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    #@4
    .line 159
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeGroupNoTag(Lcom/google/protobuf/nano/MessageNano;)V

    #@7
    .line 160
    const/4 v0, 0x4

    #@8
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    #@b
    .line 157
    return-void
.end method

.method public writeGroupNoTag(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 520
    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    #@3
    .line 519
    return-void
.end method

.method public writeInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 123
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    #@4
    .line 124
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    #@7
    .line 122
    return-void
.end method

.method public writeInt32NoTag(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 280
    if-ltz p1, :cond_0

    #@2
    .line 281
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    #@5
    .line 279
    :goto_0
    return-void

    #@6
    .line 284
    :cond_0
    int-to-long v0, p1

    #@7
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    #@a
    goto :goto_0
.end method

.method public writeInt64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    #@4
    .line 117
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    #@7
    .line 115
    return-void
.end method

.method public writeInt64NoTag(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 275
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    #@3
    .line 274
    return-void
.end method

.method public writeMessage(ILcom/google/protobuf/nano/MessageNano;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 166
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    #@4
    .line 167
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessageNoTag(Lcom/google/protobuf/nano/MessageNano;)V

    #@7
    .line 165
    return-void
.end method

.method public writeMessageNoTag(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 525
    invoke-virtual {p1}, Lcom/google/protobuf/nano/MessageNano;->getCachedSize()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    #@7
    .line 526
    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    #@a
    .line 524
    return-void
.end method

.method public writeRawByte(B)V
    .locals 3
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 983
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 985
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    #@a
    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@c
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    #@f
    move-result v1

    #@10
    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@12
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    #@15
    move-result v2

    #@16
    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    #@19
    throw v0

    #@1a
    .line 988
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@1c
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@1f
    .line 982
    return-void
.end method

.method public writeRawByte(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 993
    int-to-byte v0, p1

    #@1
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(B)V

    #@4
    .line 992
    return-void
.end method

.method public writeRawBytes([B)V
    .locals 2
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 998
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([BII)V

    #@5
    .line 997
    return-void
.end method

.method public writeRawBytes([BII)V
    .locals 3
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    #@5
    move-result v0

    #@6
    if-lt v0, p3, :cond_0

    #@8
    .line 1005
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@a
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    #@d
    .line 1003
    return-void

    #@e
    .line 1008
    :cond_0
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    #@10
    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@12
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    #@15
    move-result v1

    #@16
    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@18
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    #@1b
    move-result v2

    #@1c
    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    #@1f
    throw v0
.end method

.method public writeRawLittleEndian32(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1081
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x4

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 1082
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    #@b
    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@d
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    #@10
    move-result v1

    #@11
    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@13
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    #@16
    move-result v2

    #@17
    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    #@1a
    throw v0

    #@1b
    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@1d
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@20
    .line 1080
    return-void
.end method

.method public writeRawLittleEndian64(J)V
    .locals 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1091
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0x8

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 1092
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    #@c
    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@e
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    #@11
    move-result v1

    #@12
    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@14
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    #@17
    move-result v2

    #@18
    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    #@1b
    throw v0

    #@1c
    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@1e
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    #@21
    .line 1090
    return-void
.end method

.method public writeRawVarint32(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1029
    :goto_0
    and-int/lit8 v0, p1, -0x80

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1030
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    #@7
    .line 1031
    return-void

    #@8
    .line 1033
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    #@a
    or-int/lit16 v0, v0, 0x80

    #@c
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    #@f
    .line 1034
    ushr-int/lit8 p1, p1, 0x7

    #@11
    goto :goto_0
.end method

.method public writeRawVarint64(J)V
    .locals 5
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1055
    :goto_0
    const-wide/16 v0, -0x80

    #@2
    and-long/2addr v0, p1

    #@3
    const-wide/16 v2, 0x0

    #@5
    cmp-long v0, v0, v2

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1056
    long-to-int v0, p1

    #@a
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    #@d
    .line 1057
    return-void

    #@e
    .line 1059
    :cond_0
    long-to-int v0, p1

    #@f
    and-int/lit8 v0, v0, 0x7f

    #@11
    or-int/lit16 v0, v0, 0x80

    #@13
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    #@16
    .line 1060
    const/4 v0, 0x7

    #@17
    ushr-long/2addr p1, v0

    #@18
    goto :goto_0
.end method

.method public writeSFixed32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    const/4 v0, 0x5

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    #@4
    .line 206
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    #@7
    .line 204
    return-void
.end method

.method public writeSFixed32NoTag(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 557
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian32(I)V

    #@3
    .line 556
    return-void
.end method

.method public writeSFixed64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    #@4
    .line 213
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    #@7
    .line 211
    return-void
.end method

.method public writeSFixed64NoTag(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 562
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian64(J)V

    #@3
    .line 561
    return-void
.end method

.method public writeSInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    #@4
    .line 220
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    #@7
    .line 218
    return-void
.end method

.method public writeSInt32NoTag(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 567
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag32(I)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    #@7
    .line 566
    return-void
.end method

.method public writeSInt64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 226
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    #@4
    .line 227
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V

    #@7
    .line 225
    return-void
.end method

.method public writeSInt64NoTag(J)V
    .locals 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 572
    invoke-static {p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag64(J)J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    #@7
    .line 571
    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    #@4
    .line 152
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    #@7
    .line 150
    return-void
.end method

.method public writeStringNoTag(Ljava/lang/String;)V
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 309
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v6

    #@4
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    #@7
    move-result v2

    #@8
    .line 310
    .local v2, "minLengthVarIntSize":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v6

    #@c
    mul-int/lit8 v6, v6, 0x3

    #@e
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    #@11
    move-result v1

    #@12
    .line 311
    .local v1, "maxLengthVarIntSize":I
    if-ne v2, v1, :cond_1

    #@14
    .line 312
    iget-object v6, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@16
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    #@19
    move-result v4

    #@1a
    .line 316
    .local v4, "oldPosition":I
    iget-object v6, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@1c
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    #@1f
    move-result v6

    #@20
    if-ge v6, v2, :cond_0

    #@22
    .line 317
    new-instance v6, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    #@24
    add-int v7, v4, v2

    #@26
    iget-object v8, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@28
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    #@2b
    move-result v8

    #@2c
    invoke-direct {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    #@2f
    throw v6
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 329
    .end local v1    # "maxLengthVarIntSize":I
    .end local v2    # "minLengthVarIntSize":I
    .end local v4    # "oldPosition":I
    :catch_0
    move-exception v0

    #@31
    .line 330
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v5, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    #@33
    iget-object v6, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@35
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    #@38
    move-result v6

    #@39
    .line 331
    iget-object v7, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@3b
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    #@3e
    move-result v7

    #@3f
    .line 330
    invoke-direct {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    #@42
    .line 332
    .local v5, "outOfSpaceException":Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;
    invoke-virtual {v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@45
    .line 333
    throw v5

    #@46
    .line 319
    .end local v0    # "e":Ljava/nio/BufferOverflowException;
    .end local v5    # "outOfSpaceException":Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;
    .restart local v1    # "maxLengthVarIntSize":I
    .restart local v2    # "minLengthVarIntSize":I
    .restart local v4    # "oldPosition":I
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@48
    add-int v7, v4, v2

    #@4a
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@4d
    .line 320
    iget-object v6, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@4f
    invoke-static {p1, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encode(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    #@52
    .line 321
    iget-object v6, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@54
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    #@57
    move-result v3

    #@58
    .line 322
    .local v3, "newPosition":I
    iget-object v6, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@5a
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@5d
    .line 323
    sub-int v6, v3, v4

    #@5f
    sub-int/2addr v6, v2

    #@60
    invoke-virtual {p0, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    #@63
    .line 324
    iget-object v6, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@65
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@68
    .line 304
    .end local v3    # "newPosition":I
    .end local v4    # "oldPosition":I
    :goto_0
    return-void

    #@69
    .line 326
    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encodedLength(Ljava/lang/CharSequence;)I

    #@6c
    move-result v6

    #@6d
    invoke-virtual {p0, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    #@70
    .line 327
    iget-object v6, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    #@72
    invoke-static {p1, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->encode(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_1 .. :try_end_1} :catch_0

    #@75
    goto :goto_0
.end method

.method public writeTag(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "wireType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1015
    invoke-static {p1, p2}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    #@7
    .line 1014
    return-void
.end method

.method public writeUInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 188
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    #@4
    .line 189
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    #@7
    .line 187
    return-void
.end method

.method public writeUInt32NoTag(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 544
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    #@3
    .line 543
    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    #@4
    .line 110
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    #@7
    .line 108
    return-void
.end method

.method public writeUInt64NoTag(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    #@3
    .line 269
    return-void
.end method
