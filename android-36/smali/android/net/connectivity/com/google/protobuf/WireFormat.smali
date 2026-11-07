.class public final Landroid/net/connectivity/com/google/protobuf/WireFormat;
.super Ljava/lang/Object;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;,
        Landroid/net/connectivity/com/google/protobuf/WireFormat$Utf8Validation;,
        Landroid/net/connectivity/com/google/protobuf/WireFormat$JavaType;
    }
.end annotation


# static fields
.field static final blacklist FIXED32_SIZE:I = 0x4

.field static final blacklist FIXED64_SIZE:I = 0x8

.field static final blacklist MAX_VARINT32_SIZE:I = 0x5

.field static final blacklist MAX_VARINT64_SIZE:I = 0xa

.field static final blacklist MAX_VARINT_SIZE:I = 0xa

.field static final blacklist MESSAGE_SET_ITEM:I = 0x1

.field static final blacklist MESSAGE_SET_ITEM_END_TAG:I

.field static final blacklist MESSAGE_SET_ITEM_TAG:I

.field static final blacklist MESSAGE_SET_MESSAGE:I = 0x3

.field static final blacklist MESSAGE_SET_MESSAGE_TAG:I

.field static final blacklist MESSAGE_SET_TYPE_ID:I = 0x2

.field static final blacklist MESSAGE_SET_TYPE_ID_TAG:I

.field static final blacklist TAG_TYPE_BITS:I = 0x3

.field static final blacklist TAG_TYPE_MASK:I = 0x7

.field public static final blacklist WIRETYPE_END_GROUP:I = 0x4

.field public static final blacklist WIRETYPE_FIXED32:I = 0x5

.field public static final blacklist WIRETYPE_FIXED64:I = 0x1

.field public static final blacklist WIRETYPE_LENGTH_DELIMITED:I = 0x2

.field public static final blacklist WIRETYPE_START_GROUP:I = 0x3

.field public static final blacklist WIRETYPE_VARINT:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 178
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/net/connectivity/com/google/protobuf/WireFormat;->makeTag(II)I

    move-result v2

    sput v2, Landroid/net/connectivity/com/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    .line 179
    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroid/net/connectivity/com/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Landroid/net/connectivity/com/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    .line 180
    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {v2, v0}, Landroid/net/connectivity/com/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Landroid/net/connectivity/com/google/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    .line 181
    nop

    .line 182
    invoke-static {v1, v2}, Landroid/net/connectivity/com/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Landroid/net/connectivity/com/google/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    .line 181
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getTagFieldNumber(I)I
    .registers 2
    .param p0, "tag"    # I

    .line 72
    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method public static blacklist getTagWireType(I)I
    .registers 2
    .param p0, "tag"    # I

    .line 67
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static blacklist makeTag(II)I
    .registers 3
    .param p0, "fieldNumber"    # I
    .param p1, "wireType"    # I

    .line 77
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method static blacklist readPrimitiveField(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;Landroid/net/connectivity/com/google/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;
    .registers 5
    .param p0, "input"    # Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .param p1, "type"    # Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;
    .param p2, "utf8Validation"    # Landroid/net/connectivity/com/google/protobuf/WireFormat$Utf8Validation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_a6

    .line 269
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :pswitch_f
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 253
    :pswitch_18
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 251
    :pswitch_21
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 249
    :pswitch_2a
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 266
    :pswitch_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle enums."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :pswitch_3b
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 245
    :pswitch_44
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 262
    :pswitch_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :pswitch_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :pswitch_59
    invoke-virtual {p2, p0}, Landroid/net/connectivity/com/google/protobuf/WireFormat$Utf8Validation;->readString(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 243
    :pswitch_5e
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 241
    :pswitch_67
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 239
    :pswitch_70
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 237
    :pswitch_79
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 235
    :pswitch_82
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 233
    :pswitch_8b
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 231
    :pswitch_94
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 229
    :pswitch_9d
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_9d
        :pswitch_94
        :pswitch_8b
        :pswitch_82
        :pswitch_79
        :pswitch_70
        :pswitch_67
        :pswitch_5e
        :pswitch_59
        :pswitch_51
        :pswitch_49
        :pswitch_44
        :pswitch_3b
        :pswitch_33
        :pswitch_2a
        :pswitch_21
        :pswitch_18
        :pswitch_f
    .end packed-switch
.end method
