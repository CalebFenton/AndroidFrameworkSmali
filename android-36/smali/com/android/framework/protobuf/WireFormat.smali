.class public final Lcom/android/framework/protobuf/WireFormat;
.super Ljava/lang/Object;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/WireFormat$FieldType;,
        Lcom/android/framework/protobuf/WireFormat$Utf8Validation;,
        Lcom/android/framework/protobuf/WireFormat$JavaType;
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

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v2

    sput v2, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    .line 179
    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    .line 180
    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    .line 181
    nop

    .line 182
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

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

.method static blacklist readPrimitiveField(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;Lcom/android/framework/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;
    .registers 5
    .param p0, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .param p1, "type"    # Lcom/android/framework/protobuf/WireFormat$FieldType;
    .param p2, "utf8Validation"    # Lcom/android/framework/protobuf/WireFormat$Utf8Validation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    invoke-virtual {p1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_aa

    .line 269
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 253
    :pswitch_18
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 251
    :pswitch_21
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 249
    :pswitch_2a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 266
    :pswitch_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "readPrimitiveField() cannot handle enums."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :pswitch_3c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 245
    :pswitch_45
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 262
    :pswitch_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :pswitch_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :pswitch_5c
    invoke-virtual {p2, p0}, Lcom/android/framework/protobuf/WireFormat$Utf8Validation;->readString(Lcom/android/framework/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 243
    :pswitch_61
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 241
    :pswitch_6a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 239
    :pswitch_73
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 237
    :pswitch_7c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 235
    :pswitch_85
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 233
    :pswitch_8e
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 231
    :pswitch_97
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 229
    :pswitch_a0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_97
        :pswitch_8e
        :pswitch_85
        :pswitch_7c
        :pswitch_73
        :pswitch_6a
        :pswitch_61
        :pswitch_5c
        :pswitch_53
        :pswitch_4a
        :pswitch_45
        :pswitch_3c
        :pswitch_33
        :pswitch_2a
        :pswitch_21
        :pswitch_18
        :pswitch_f
    .end packed-switch
.end method
