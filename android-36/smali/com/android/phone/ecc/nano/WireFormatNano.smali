.class public final Lcom/android/phone/ecc/nano/WireFormatNano;
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


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const/4 v0, 0x0

    .line 75
    new-array v1, v0, [I

    sput-object v1, Lcom/android/phone/ecc/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    .line 76
    new-array v1, v0, [J

    sput-object v1, Lcom/android/phone/ecc/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    .line 77
    new-array v1, v0, [F

    sput-object v1, Lcom/android/phone/ecc/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    .line 78
    new-array v1, v0, [D

    sput-object v1, Lcom/android/phone/ecc/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    .line 79
    new-array v1, v0, [Z

    sput-object v1, Lcom/android/phone/ecc/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 80
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/phone/ecc/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 81
    new-array v1, v0, [[B

    sput-object v1, Lcom/android/phone/ecc/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    .line 82
    new-array v0, v0, [B

    sput-object v0, Lcom/android/phone/ecc/nano/WireFormatNano;->EMPTY_BYTES:[B

    return-void
.end method

.method public static final blacklist getRepeatedFieldArrayLength(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->skipField(I)Z

    const/4 v1, 0x1

    .line 116
    :goto_8
    invoke-virtual {p0}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readTag()I

    move-result v2

    if-ne v2, p1, :cond_14

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->skipField(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 120
    :cond_14
    invoke-virtual {p0, v0}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    return v1
.end method

.method public static blacklist getTagFieldNumber(I)I
    .registers 1

    .line 0
    ushr-int/lit8 p0, p0, 0x3

    return p0
.end method

.method static blacklist getTagWireType(I)I
    .registers 1

    .line 0
    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method static blacklist makeTag(II)I
    .registers 2

    .line 0
    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method
