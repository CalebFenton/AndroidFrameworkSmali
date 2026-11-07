.class public final Lcom/android/framework/protobuf/nano/WireFormatNano;
.super Ljava/lang/Object;
.source "WireFormatNano.java"


# static fields
.field public static final blacklist EMPTY_BOOLEAN_ARRAY:[Z

.field public static final blacklist EMPTY_BYTES:[B

.field public static final blacklist EMPTY_BYTES_ARRAY:[[B

.field public static final blacklist EMPTY_DOUBLE_ARRAY:[D

.field public static final blacklist EMPTY_FLOAT_ARRAY:[F

.field public static final blacklist EMPTY_INT_ARRAY:[I

.field public static final blacklist EMPTY_LONG_ARRAY:[J

.field public static final blacklist EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field static final blacklist TAG_TYPE_BITS:I = 0x3

.field static final blacklist TAG_TYPE_MASK:I = 0x7

.field static final blacklist WIRETYPE_END_GROUP:I = 0x4

.field static final blacklist WIRETYPE_FIXED32:I = 0x5

.field static final blacklist WIRETYPE_FIXED64:I = 0x1

.field static final blacklist WIRETYPE_LENGTH_DELIMITED:I = 0x2

.field static final blacklist WIRETYPE_START_GROUP:I = 0x3

.field static final blacklist WIRETYPE_VARINT:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 75
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    .line 76
    new-array v1, v0, [J

    sput-object v1, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    .line 77
    new-array v1, v0, [F

    sput-object v1, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    .line 78
    new-array v1, v0, [D

    sput-object v1, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    .line 79
    new-array v1, v0, [Z

    sput-object v1, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 80
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 81
    new-array v1, v0, [[B

    sput-object v1, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    .line 82
    new-array v0, v0, [B

    sput-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I
    .registers 5
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x1

    .line 114
    .local v0, "arrayLength":I
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 115
    .local v1, "startPos":I
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    .line 116
    :goto_8
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v2

    if-ne v2, p1, :cond_14

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 120
    :cond_14
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 121
    return v0
.end method

.method public static blacklist getTagFieldNumber(I)I
    .registers 2
    .param p0, "tag"    # I

    .line 67
    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method static blacklist getTagWireType(I)I
    .registers 2
    .param p0, "tag"    # I

    .line 62
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static blacklist makeTag(II)I
    .registers 3
    .param p0, "fieldNumber"    # I
    .param p1, "wireType"    # I

    .line 72
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static blacklist parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z
    .registers 3
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    return v0
.end method
